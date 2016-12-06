//********** base.master **********

$(function () {
    //初始化面板输出内容
    //$.init_content(document);
});
//STIP 4.1
; ; (function (win, namespace, undef) {
    var D = {
        $: function (id) { return document.getElementById(id); },
        gt: function (parent, nodeName) { return parent.getElementsByTagName(nodeName); },
        db: document.body,
        dd: document.documentElement,
        i: 0, // 最外层DOM id 元素开始数
        mix: function (r, s, a) {
            var i;
            for (i in s) {
                if (s.hasOwnProperty(i)) {
                    r[i] = s[i];
                }
            }
            return r;
        },
        html: "<div class=\"lj-stip lj-<%=kind%>\" id=\"ljTips-<%=r%>\">\
						<div class=\"lj-content\"></div>\
						<span class=\"lj-in lj-<%=p%>\"><span class=\"lj-in lj-span\"></span></span>\
						<a href=\"javascript:void(0)\" id=\"ljClose<%=r%>\" class=\"lj-close\">x</a>\
					</div>",
        cache: {}
    };

    /* 可配置参数 */
    var defaultConfig = {
        prefix: 'JunLu', // 最外层DOM元素ID前缀
        p: 'right', // 默认方向
        kind: 'ok', // 默认类型 ok or error
        closePrefix: 'ljClose', // 关闭按钮前缀
        wrapPrefix: 'ljTips-', //
        closeBtn: false, // 默认是否有关闭按钮
        time: null, // 默认显示时间 一直显示
        offset: null, //保存位置
        content: function (ele) { return ele.getAttribute("data-stip"); }, //默认内容
        of: 15, //偏移量
        rand: 0 //开始值
    };
    /* 可配置参数 end */

    var TIP = function (id, isCache) {

        if (!(this instanceof TIP)) {
            return new TIP(id);
        }
        var isStringId = (typeof id == "string");
        //this.elem = id ? isStringId ? D.$(id) : id : this;
        this.elem = isStringId ? D.$(id) : id;
        this.cacheKey = isStringId ? id : this.getCacheKey();

        var cache = D.cache[this.cacheKey]; //检查缓存
        if (cache && !isCache) {
            return cache;
        }
        D.cache[this.cacheKey] = this;

        this.defaultConfig = D.mix({}, defaultConfig); // 加载默认配置
        this._config = {}; //配置
        this.clearTime = null; // 显示时间
        this.func = null; //更新位置回调函数
        ; (D.db !== document.body) && this._init(); // 防止 D.db 对象加载失败
    };

    TIP.prototype = {
        // 显示
        constructor: TIP,
        getCacheKey: function () {
            var id = this.elem.getAttribute("id");
            if (!id) {
                id = "stip" + D.i;
                this.elem.setAttribute("id", id);
            }
            return id;
        },
        show: function (json) {

            var self = this, config = self._config,
				wrap, p, c, sp, type = Object.prototype.toString.call(json),
				content = self.defaultConfig.content;

            // 不传递参数 和不传递 .content 参数
            if (!json || (json && !json.content)) {
                json = D.mix(json || {}, { content: typeof content == "function" ? content.call(self.elem, self.elem) : content })
            }

            // 参数为 String 或者 Number
            if (/String|Number/.test(type)) {
                json = { content: json };
            }

            //参数为一个function
            if ("[object Function]" == type) {
                json = { content: json.call(self.elem, self.elem) };
            }

            D.mix(config, self.defaultConfig); // 调用默认参数配置
            D.mix(config, json); // 覆盖默认参数配置

            self._updateInfo();
            self.id && self.hide();

            wrap = self._append();

            D.gt(wrap, "DIV")[0].innerHTML = config.content;
            p = self._pos.call(self, config.p, wrap.offsetWidth, wrap.offsetHeight);
            sp = self._getScroll();


            wrap.style.top = p.top + sp.top + "px";
            wrap.style.left = p.left + sp.left + "px";

            self._winSizeCheck(wrap);
            if (config.time) {
                self.clearTime = setTimeout(function () { self.hide(c) }, config.time);
            }
            return false;
        },
        // 隐藏Stip
        hide: function () {
            var self = this
            self.clearTime && clearTimeout(self.clearTime);
            self._clear(D.$(self.id));
        },

        _init: function () {
            D.mix(D, { dd: document.body, db: document.documentElement });
        },
        _clear: function (a) {
            var config = this._config;
            a && a.parentNode && a.parentNode.removeChild(a);
            window.removeEventListener ? window.removeEventListener('resize', this.func, false) : window.detachEvent('onresize', this.func);
        },

        // 更新位置大小信息
        _updateInfo: function () {
            var self = this, elem = self.elem, config = self._config;
            config.width = elem.offsetWidth;
            config.height = elem.offsetHeight;
            config.offset = elem.getBoundingClientRect();
        },

        // 内部方法
        _append: function () {
            var self = this, config = self._config,
				r, x, div, wrap = D.$("StipJun");

            r = config.rand = ++D.i;
            x = document.createElement("DIV");
            x.id = config.prefix + r;
            self.id = x.id;

            x.innerHTML = D.html.replace("<%=p%>", config.p).replace(/<%=r%>/g, r).replace("<%=kind%>", config.kind);

            if (!wrap) {
                div = document.createElement('DIV');
                div.id = "StipJun";
                div.appendChild(x);
                document.body.appendChild(div);
            } else {
                wrap.appendChild(x);
            };

            if (config.closeBtn) { // 有关闭按钮
                var hide = function () { self.hide() };
                D.$(config.closePrefix + r).onclick = hide;
            } else {
                D.$(config.closePrefix + r).style.display = "none";
            }

            return D.$(config.wrapPrefix + r);
        },
        // 内部方法
        _pos: function (p, w, h) {
            var self = this, C = self._config;
            var a = {
                left: function (w, h) { return { "top": C.offset.top, "left": C.offset.left - w - C.of} },
                top: function (w, h) { return { "top": C.offset.top - h - C.of, "left": C.offset.left} },
                right: function (w, h) { return { "top": C.offset.top, "left": C.offset.left + C.width + C.of} },
                bottom: function (w, h) { return { "top": C.offset.top + C.height + C.of, "left": C.offset.left} }
            }

            return a[p](w, h);
        },
        // 内部方法
        _getScroll: function () {
            return {
                top: D.db.scrollTop + D.dd.scrollTop,
                left: D.db.scrollLeft + D.dd.scrollLeft
            }
        },
        // 内部方法
        _winSizeCheck: function (wrap) {
            var self = this, config = self._config;
            self.func = function () {
                self._updateInfo();
                var p = self._pos.call(self, config.p, wrap.offsetWidth, wrap.offsetHeight);
                var sp = self._getScroll();

                wrap.style.top = p.top + sp.top + "px";
                wrap.style.left = p.left + sp.left + "px";
            };

            window.addEventListener ? window.addEventListener('resize', self.func, false) : window.attachEvent('onresize', self.func);
        }
    }

    win[namespace] = TIP; // 声明命名空间
    win[namespace]['config'] = defaultConfig; // 静态默认配置
    win[namespace].cache = D.cache;

})(jQuery, 'Stip');

//复制功能
$(document).on("click", ".jq_copy", function () {
    var text = window.location.href;
    if (window.clipboardData) {
        window.clipboardData.setData("Text", text);
        alert('复制成功！');
    } else {
        alert('您的浏览器不支持该功能，请自行复制！');
    }
});

//赞操作
function AddPrise(sourceId, dynamicType, meterNo) {
    $.getJSON("/AJAX/Ajax_SNS.aspx", { t: 'AddPraise', SourceId: sourceId, DynamicType: dynamicType, m: meterNo, r: Math.random(0, 1) }, function (json) {
        if (json.isLogin == 0) {
            $.open_idialog("立即登录", {}, "/pop/login.aspx", 1200, 180, 500);
        } else {
            if (json.error.length > 0) {
                $.fail(json.error);
            } else {
                $.success("点赞成功");
                var likeNum = $(".lnkpriase" + dynamicType + "_" + sourceId).html();
                $(".lnkpriase" + dynamicType + "_" + sourceId).html(parseInt(likeNum) + 1);
            }
        }
    });
}
//举报
function Violation(meterNo, id) {    
    $.get("/Ajax/Ajax_User.aspx", { t: "checklogin", r: Math.random() }, function (json) {
        if (json == "1") {
            $.open_idialog("违规举报", { m: meterNo, vtitle: $(id).attr("vtitle"), SourceId: $(id).attr("vsourceId"), SourceType: $(id).attr("vsourceType") }, "/pop/ViolationReport.aspx", 1200, 270, 518);
        }
        else {
            $.open_idialog("立即登录", {}, "/pop/login.aspx", 1200, 180, 500);
        }
    });    
}
//登录操作
function login(type, frompage) {
    //验证输入框
    if (validateForm()) {
        var checks = $("#chkSave").is(":checked");


        var acc = $("#txtAccount").val();
        var pwd = $("#txtPassword").val();
        $.getJSON("/Ajax/Ajax_User.aspx", { t: "login", account: acc, password: pwd, autologin: checks, r: Math.random() }, function (json) {
            if (json.result == 1) {
                if (type == 0) {
                    //document.location.href = document.location.href;
                    //window.parent.location.href = window.parent.location.href;
                    window.parent.location.reload();
                } else if (type == 1) {
                    //document.location.href = document.location.href;
                    window.location.reload();
                } else {
                    document.location.href = frompage;
                }
            } else {
                $.fail(json.msg);
            }
        });
    }
}

//检测输入框是否信息是否输入正确
function validateForm() {
    var txtPassword = $("input[id$=txtPassword]");
    var password = txtPassword.val();
    var txtAccount = $("input[id$=txtAccount]");
    if (txtAccount.val() == "") {
        $.show_stip_error(txtAccount, '手机号/考米号/注册邮箱不能为空！');
        return false;
    }

    if (!(/^[0-9]{5,11}$|^[0-9a-zA-Z_]+([-+.][0-9a-zA-Z_]+)*@[0-9a-zA-Z_]+([-.][0-9a-zA-Z_]+)*\.[0-9a-zA-Z_]+([-.][0-9a-zA-Z_]+)*$/.test(txtAccount.val()))) {
        $.show_stip_error(txtAccount, '手机号/考米号/注册邮箱不正确！');
        return false;
    }

    if (password == '') {
        $.show_stip_error(txtPassword, "密码不能为空");
		txtPassword.focus();
        return false;
    }
    if (!(/^[0-9]{6,20}$/.test(password))) {
        $.show_stip_error(txtPassword, "密码输入不正确,应为6-20位数字");
		txtPassword.focus();
        return false;
    }

    return true;
}


//移动源文件(音频和照片)
function MoveSource(sourcId, DynamicType) {
    if (navigator.userAgent.indexOf("MSIE 6.0") > 0) {//解决IE6加载不出的bug
        $.get("/Ajax/Ajax_User.aspx", { t: "checklogin", r: Math.random() }, function (json) {
            if (json == "1") {
                $.open_idialog("资源移动", { s: sourcId, d: DynamicType }, "/SNS/MoveSource.aspx", 1200, 100, 400);
            }
            else {
                $.open_idialog("立即登录", {}, "/pop/login.aspx", 1200, 180, 500);
            }
        });
    }
    else {
        $.open_idialog("资源移动", { s: sourcId, d: DynamicType }, "/SNS/MoveSource.aspx", 1200, 100, 400);
    }
    
}

//发站内信调用
function SendMessage(meterNo) {
    $.get("/Ajax/Ajax_User.aspx", { t: "checklogin", r: Math.random() }, function (json) {
        if (json == "1") {
            if (meterNo.length > 0) {
                $.open_dialog('发送站内信', {}, "/SNS/Message/SendMessage.aspx?m=" + meterNo);
            } else {
                $.fail("请填写考米号");
            }
        } else {
            $.open_idialog("立即登录", {}, "/pop/login.aspx", 1200, 180, 500);
        }
    });

}

//******************************** TOP **************************************
$(function () {
    $(".jq_sexIcon").each(function () { //根据性别设置头像Icon
        var sender = (this);
        var s = sender.attr("s");
        if (s == "1")
            sender.addClass("ico_man");
        else
            sender.addClass("ico_girl");
    });

    $(".jq_callstateicon").each(function () { //根据性别设置头像Icon
        var css;
        var sender = $(this);
        var s = parseInt(sender.attr("s"));
        css = $.get_callstateIcon(s);
        sender.attr("class", css);
    });

    //初始选项卡
    $(".jq_turn_item").each(function () {
        var wrap = $(this);
        var action_tag = wrap.attr("turn-item");
        var turn_css = wrap.attr("turn-css");
        var default_css = wrap.attr("default-css");
        $("a", wrap).attr("class", default_css);
        $("a[action-tag=" + action_tag + "]", wrap).attr("class", turn_css);
    });


    //鼠标经过显示与隐藏2.0
    $(".show_on").hover(function () {
        $(this).addClass("ul_over");
        $(this).find(".jq_over").show();
    },
        function () {
            $(this).removeClass("ul_over");
            $(this).find(".jq_over").hide();
        });

    //下拉菜单
    $(".jq_menu").hover(function () {
        $(this).addClass("hover");
    },
        function () {
            $(this).removeClass("hover");
        });

    //随机显示
   var random_int = $.generic_random(1, 61);
    $("#flashBg .i_box img[src='']").each(function () {
        var img = $(this);
        img.attr("src", "http://r.52callme.com/www/images/" + img.attr("type") + "/" + random_int + ".png");
    });

    //列表鼠标经过显示与隐藏2.1
    $(".jq_list dl").hover(function () {
        $(this).addClass("jq_height_over");
        $(this).find(".jq_over").show();
    },
        function () {
            $(this).removeClass("jq_height_over");
            $(this).find(".jq_over").hide();
        });
    //处理IE6 浮动条不闪过	
    if ('undefined' == typeof (document.body.style.maxHeight)) {
        $(".bar").floatdiv({});
    }
});

/*---------------------JQuery 扩展----------------------------*/
$.extend({
    open_dialog: function (title, data, url, loadFunc, okValue, cancelValue, okFunc, cancelFunc) {
        $("<div></div>").load(url, data, function () {
            var container = $(this);
            var html = "<div class='jq_dialog'>" + container.html() + "</div>";
            var config = { title: title, content: html, fixed: true, lock: true };

            //配置节点
            if (!$.isEmptyObject(okValue)) {
                config.okValue = okValue;
                config.cancelValue = cancelValue;
                config.ok = okFunc;
                config.cancel = cancelFunc;
            }

            //提供关闭
            dialog = $.dialog(config);

            //找寻DOM中的添加元素
            var document_container = $(".jq_dialog");

            //执行请求
            if (loadFunc) {
                loadFunc(document_container);
            }

            //初始化加载的文本内容
          //  $.init_content(container);

            //初始化已出现音频
            //$.init_active(document_container);
        });
    },
    
    //打开对话框
    open_idialog: function (title, data, url, zIndex, height, width) {
        var tmps = "";
        if (data) {
            for (var key in data) {
                tmps = tmps + "&" + key + '=' + data[key];
            }
        }
        tmps = tmps ? "?" + tmps.substring(1) : "";
        zIndex = zIndex ? zIndex : 9998;
        var setSize = height ? " height='" + height + "px' width='" + width + "px' " : "";
        var div = $("<div id='pnlIframe' style='display:none'></div>");
        var iframe = $("<iframe  src=\"" + url + tmps + "\" " + setSize + "  frameborder=\"0\" scrolling=\"no\" ></iframe>");
        div.append(iframe);
        dialog = $.dialog({ title: title, content: div.html(), fixed: true, lock: true, zIndex: zIndex });
    },
	
	 //简单弹出提示框
    open_simpleDialog: function (title, content) {
        dialog = $.dialog({ title: title, content: content, fixed: true, lock: true });
    },

    //选择提示弹出框 //  id: 'shake-demo',
    open_confirm: function (title, content, okValue, cancelValue, okFunc, cancelFunc) {
        dialog = $.dialog({
            title: title,
            content: content,
            lock: true,
            fixed: true,
            ok: okFunc,
            cancel: cancelFunc,
            okValue: okValue,
            cancelValue: cancelValue
        });
    },

	
    /*-------------------------------------Notice-------------------------------------*/
    fail: function (msg) {
        $("<div id='fail'><div class='qz_msgbox_layer_wrap'><span class='qz_msgbox_layer'><span class='gtl_ico_fail'></span>" + msg + "<span class='gtl_end'></span></span></div></div>").appendTo("body").hide().fadeIn("fast").delay(2000).fadeOut("slow",
            function () {
                $(this).remove();
            });
    },
    success: function (msg) {
        $("<div id='success'><div class='qz_msgbox_layer_wrap'><span class='qz_msgbox_layer'><span class='gtl_ico_succ'></span>" + msg + "<span class='gtl_end'></span></span></div></div>").appendTo("body").hide().fadeIn("fast").delay(2000).fadeOut("slow",
        function () {
            $(this).remove();
        });
    },

    tip: function (msg) {
        $("<div id='tip'><div class='qz_msgbox_layer_wrap'><span class='qz_msgbox_layer'><span class='gtl_ico_hits'></span>" + msg + "<span class='gtl_end'></span></span></div></div>").appendTo("body").hide().fadeIn("fast").delay(2000).fadeOut("slow",
        function () {
            $(this).remove();
        });
    },

    wait: function (msg) {
        $("<div id='wait'><div class='qz_msgbox_layer_wrap'><span class='qz_msgbox_layer'><span class='gtl_ico_clear'></span><img alt='' src='http://ctc.qzonestyle.gtimg.cn/qzonestyle/qzone_client_v5/img/loading.gif'>" + msg + "<span class='gtl_end'></span></span></div></div>").appendTo("body").hide().fadeIn("fast").delay(2000).fadeOut("slow",
        function () {
            $(this).remove();
        });
    },
    integral: function (msg) { 
        $("<div id='integral'><div class='qz_msgbox_layer_wrap'><div class='qz_msgbox_layer2'><div class='integral_show'>" + msg + "</div></div></div></div>").appendTo("body").hide().fadeIn("fast").delay(2000).fadeOut("slow",
            function () {
                $(this).remove();
            });
    },
    //提示面板，主显示框的ID，文本
    show_stip_error: function (eron, text) {
        $.Stip(eron.attr("id")).show({
            content: text,
            kind: "error",
            p: "top",
            time: 3000
        });
    },
    //显示浮动提示框
    show_float_tip: function (text, type) {
        switch (type) {
            case 1:
                $.success(text);
                break;
            case 2:
                $.fail(text);
                break;
            case 3:
                $.wait(text);
                break;
            case 5:
                var arr = text.split("*"); // 在每个逗号(*)处进行分解。
                if (arr && arr.length > 1) { 
                    $.integral(arr[0] + "<br><span style='font-size:16px;font-weight:bolder'>" + arr[1] + "</span>");
                }
                break;
            default:
                $.tip(text);
                break;
        }
    },
    //页面中checkbox中mark属性为mark参数置为选中状态
    set_checkboxchecked: function (mark, sender) {
        var checked = sender.checked;
        if (checked) {
            $("input[type='checkbox'][mark='" + mark + "']").prop('checked', true);
        }
        else {
            $("input[type='checkbox'][mark='" + mark + "']").prop('checked', false);
        }
    }, //Edit By Liu.X 

    //更改页面中checkbox中mark属性为mark参数置为选中状态
    set_checkboxundo: function (mark, sender) {
        var checked = sender.checked; //(Boolean)($(sender).attr("checked"));
        if (!checked) {
            $("input[id$='chkAll'][mark='" + mark + "']").prop('checked', false);
        } else {
            var defaultLeng = $("input[type='checkbox'][mark='" + mark + "']").length - 1;
            var checkedLength = $("input[type='checkbox'][mark='" + mark + "']:checked").length;
            if (defaultLeng == checkedLength) {
                $("input[id$='chkAll'][mark='" + mark + "']").prop('checked', true);
            }
        }
    }, //Edit By Liu.X

    //获取页面中checkbox中mark属性为mark参数的checkbox值
    get_checkedvaluelist: function (mark) {
        var idList = "";
        $("input[type='checkbox'][mark='" + mark + "']:checked").each(function () {
            var value = $(this).val();
            if (value != 0 && value != "on" && value != "off") {
                idList += value + ",";
            }
        });
        idList = idList.substr(0, idList.length - 1);
        return idList;
    }, //Edit By Liu.X


    //获取页面中checkbox中mark属性为mark参数的checkbox值并赋值到Hidden中
    fill_hidden: function (hiddenMark) {
        var marks = $.get_checkedvaluelist(hiddenMark);
        $("input[type='hidden'][mark='" + hiddenMark + "']").val(marks);
    }, //Edit By Liu.

    //获取选中的checkbox选中的值
    get_checkedId: function () {
        var conStrId = "";
        $(".table_mail input[type='checkbox']:checked").each(function () {
            conStrId += $(this).val() + ",";
        });
        conStrId = conStrId.substr(0, conStrId.length - 1);
        return conStrId;
    }, //Edit By Liu.X

    bulk_operat: function (alertMes, conMes) {
        var checkedCount = $(".table-list01 input[type='checkbox']:checked").length;
        if (checkedCount == 0) {
            alert(alertMes);
            return false;
        } else {
            if (conMes) {
                if (confirm(conMes)) {
                    $("input[mark='IdList']").val($.get_checkedvaluelist());
                    return true;
                } else {
                    return false;
                }
            } else {
                $("input[mark='IdList']").val($.get_checkedvaluelist());
                return true;
            }
        }
    }, //Edit By Liu.X

    //批量删除站内信 
    del_bulk: function (typeid) {
        var checkedCount = $("input[type='checkbox']:checked").length;
        if (checkedCount == 0) {
            if (typeid == 0) {
                alert("请选择要删除的项！");
                return false;
            } else {
                alert("请选择要设置的项！");
                return false;
            }

        } else {
            var msg;
            if (typeid == 0) {
                msg = "确认要删除？";
            } else {
                msg = "确认要设置为已读？";
            }
            if (confirm(msg)) {
                var conStrId = $.get_checkedId();
                $("input[type='hidden'][mark='hidlist']").val(conStrId);
                return true;
            }
            return false;
        }
    }, //Edit By Liu.X 

    get_callstateIcon: function (s) {
        var css;
        switch (s) {
            case 1:
                css = "tel_litianz";
                break;
            case 2:
                css = "tel_online";
                break;
            case 3:
                css = "tel_mdr";
                break;
            case 4:
                css = "tel_bjt";
                break;
            case 5:
                css = "tel_kxz";
                break;
            default:
                css = "tel_wbd";
                break;
        }

        return css + " jq_callstateicon";
    }, //Edit by Liu.x
	
	//缩略文字
    short_text: function (input) {
        var len = parseFloat(input.attr('len'));
        var text = input.html();
        input.html($.cut_text(text, len));
    },

    //裁剪文字
    cut_text: function (text, len) {
        var trim_text = $.trim(text);
        var cut_text = new String();

        var cut_text_length = 0;
        for (var i = 0; i < trim_text.length; i++) {
            var temp_text = trim_text.charAt(i);
            cut_text_length++;
            if (escape(temp_text).length > 4) {
                //中文字符的长度经编码之后大于4   
                cut_text_length++;
            }

            cut_text = cut_text.concat(temp_text);

            if (cut_text_length >= len) {
                if (i != trim_text.length - 1) {
                    cut_text = cut_text.concat("...");
                }
                return cut_text;
            }
        }

        return text;
    },

    init_content: function (container) {
        //确认容器
        container = $.isEmptyObject(container) || container.length <= 0 ? $(document) : container;

        //格式化秒显示小时
        $(".jq_hourformat", container).each(function () {
            $(this).text($.hour_format($(this).attr("seconds")));
        });

        //格式化秒显示分钟
       // $(".jq_minuteformat", container).each(function () {
       //     $(this).text($.minute_format($(this).attr("seconds")));
       // });

        //格式化秒显示全时间
     //   $(".jq_timeformat", container).each(function () {
      //      $(this).text($.date_format($(this).attr("seconds")));
     //   });

        //缩略所有文字
        $('.jq_short_text', container).each(function () {
            $.short_text($(this));
        });

        //昵称格式化
        $(".jq_nick_cut", container).each(function () {
            var text_span = $(this);
            var nick = $.cut_text(text_span.text(), 10);
            text_span.text(nick);
        });
    },

    /**
    * @param {} second
    * @return {}
    * @desc 分钟转化成小时hh
    */
    hour_format: function (second) {
        var ss = typeof second === 'string' ? parseInt(second) : second;
        var hh = ss / 60 | 0;
        var hh_less = ss % 60;

        return (hh_less > 0 ? (hh + 1) : hh) + '小时';
    },

    // 验证合法输入内容
    validateContent: function (source, startLength, endLength) {
        var regformat = "^[^<>\\|\\/\\:\\*\\?\\']";
        var regContent = regformat + "{" + startLength;
        if (endLength > 0) {
            regContent += ("," + endLength);
        }
        regContent += "}$";
        var reg = RegExp(regContent, "m");

        return reg.test(source);
    },
    //验证用户是否登录
    verify_login: function () {
        document.domain = "52callme.com";
        $.ajaxSettings.async = false;
        var isLogin = false;
        $.getJSON("/verifylogin.do?r=" + Math.random(), function (json) {
            isLogin = $.callback_detect(json);
        });
        $.ajaxSettings.async = true;

        return isLogin;
    },
    //回传检测
    callback_detect: function (callback) {
        if ($.isEmptyObject(callback)) {
            $.fail("通讯失败！");
            return false;
        } else {
            var is_logined = !$.isEmptyObject(callback) && (callback.islogin == 'False' ? false : true);
            if (!is_logined) {
                $.show_loginbox();
                return false;
            } else {
                //  var is_raise_error = !$.isEmptyObject(callback.error);  
                var is_raise_error = !(!callback.error || typeof (callback.error) == "undefined");

                if (is_raise_error) {
                    if (callback.error.indexOf("积分") >= 0) {
                        $.open_simpleDialog("积分充值", "您的积分不足<a href='/bm/scoredelta.html' target='_blank'>积分充值>></a>");
                    } else {
                        $.fail(callback.error);
                    }
                    return false;
                }

            }

            return true;
        }
    },
    //生成随机数,上下限
    generic_random: function (under, over) {
        switch (arguments.length) {
            case 1:
                return parseInt(Math.random() * under + 1);
            case 2:
                return parseInt(Math.random() * (over - under + 1) + under);
            default:
                return 0;
        }
    }
});
//手机移动访问
$(document).ready(function () {
     if (is_mobilebrow()) {
	 var on = $.cookie('pcshow');		
	 var in_mobile = window.location.search;
	 var nnn = $.cookie('mmm');
	 var in_www = location.hostname;
		if (nnn==null||nnn==""){
			if ( in_mobile == "?type=checked") {
				$.cookie('mmm', 1);
				}
				/*else {
					document.location.href = 'http://m.52callme.com';
				}*/
		} else {
			$.cookie('mmm', 1);
		}
            if (on == 1) {
                $(".pclink").hide();
            } else {
                $(".pclink").show();
                $.cookie('pcshow', 0);
            }
            $(".pclinkclose").click(function () {
                $.cookie('pcshow', 1);
                $(".pclink").hide();
            });
        }
        else {
            $.cookie("pcshow", null);
        }
    });
		
  function is_mobilebrow() {
            var regex_match = /(nokia|iphone|android|motorola|^mot-|softbank|foma|docomo|kddi|up.browser|up.link|htc|dopod|blazer|netfront|helio|hosin|huawei|novarra|CoolPad|webos|techfaith|palmsource|blackberry|alcatel|amoi|ktouch|nexian|samsung|^sam-|s[cg]h|^lge|ericsson|philips|sagem|wellcom|bunjalloo|maui|symbian|smartphone|midp|wap|phone|windows ce|iemobile|^spice|^bird|^zte-|longcos|pantech|gionee|^sie-|portalmmm|jigs browser|hiptop|^benq|haier|^lct|operas*mobi|opera*mini|320x320|240x320|176x220)/i;
            var u = navigator.userAgent;
            if (null == u) {
                return true;
            }
            var result = regex_match.exec(u);

            if (null == result) {
                return false
            } else {
                return true
            }
        };


//获取URL参数
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return null;
}