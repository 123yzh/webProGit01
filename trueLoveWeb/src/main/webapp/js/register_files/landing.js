$(function () {
            var myDate = new Date();
            var i = 198971 + myDate.getDate(); ;
            setInterval(updateNum, 3000);
            updateNum();
            function updateNum() {
                $("#lannum").html(++i);
            }
        });
        //填充出生日期start
        $(document).ready(function () {
            var hyear = $("input[id$=hidYear]");
            var hmonth = $("input[id$=hidMonth]");
            var hday = $("input[id$=hidDay]");

            //每个月的初始天数
            var MonDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

            function initDate(year, month, day) {
                //当前的年份
                var y = new Date().getFullYear();
                //当前的月份
                var m = new Date().getMonth() + 1; //javascript月份为0-11
                //但前的天份
                //var d = new Date().getDate();
                //以99年前为准，向后于18年前，填充年份下拉框
                var i;
                for (i = y - 99; i < y - 18; i++) {
                    year.options.add(new Option(i, i));
                }
                year.value = hyear.val();

                //填充月份下拉框
                for (i = 1; i <= 12; i++) {
                    month.options.add(new Option(i, i));
                }
                month.value = hmonth.val();

                //获得当月的初始化天数
                var n = MonDays[m - 1];
                //如果为2月，天数加1
                if (m == 2 && isLeapYear(year.options[year.selectedIndex].value)) n++;
                //填充日期下拉框
                createDay(n, day);
                //选中当日
                day.value = hday.val();
            }

            function change(year, month, day) //年月变化，改变日
            {
                var y = year.options[year.selectedIndex].value;
                var m = month.options[month.selectedIndex].value;
                var d = day.options[day.selectedIndex].value;

                hyear.val(y);
                hmonth.val(m);
                hday.val(d);

                var n = MonDays[m - 1];
                if (m == 2 && isLeapYear(y)) {
                    n++;
                }
                createDay(n, day);
            }

            function createDay(n, day) //填充日期下拉框
            {
                //清空下拉框
                clearOptions(day);
                //几天，就写入几项
                for (var i = 1; i <= n; i++) {
                    day.options.add(new Option(i, i));
                }
            }

            function clearOptions(ctl) //删除下拉框中的所有选项
            {
                for (var i = ctl.options.length - 1; i >= 0; i--) {
                    ctl.remove(i);
                }
                ctl.options.add(new Option("日", 0));
            }

            function isLeapYear(yearNum) //判断是否闰年
            {
                return (yearNum % 4 == 0 || (yearNum % 100 == 0 && yearNum % 400 == 0));
            }

            var yearDdl = $("select[id$=ddlYears]");
            var monthDdl = $("select[id$=ddlMonthes]");
            var dayDdl = $("select[id$=ddlDays]");

            if (yearDdl[0] && monthDdl[0] && dayDdl[0]) {
                initDate(yearDdl[0], monthDdl[0], dayDdl[0]);
                yearDdl.change(function () {
                    change(yearDdl[0], monthDdl[0], dayDdl[0]);
                });
                monthDdl.change(function () {
                    change(yearDdl[0], monthDdl[0], dayDdl[0]);
                });
                dayDdl.change(function () {
                    hday.val(dayDdl.val());
                });
            }
        });
        //填充出生日期end


 // by lxh 2014.2.20
        $(function () {
            var members = $('.membercont'), card = $('.membercard'), arrow = card.find('.arrow');
            members.delegate('li', 'click', function () {
                var imgSrc = $(this).attr("bigimg");
                //var imgSrc= $(this).find("img").attr("src");
                var uname = $(this).attr("uname");
                var uage = $(this).attr("uage");
                var uadd = $(this).attr("uaddress");
                $("#uavator").attr("src", imgSrc);
                $("#uname").empty().append(uname);
                $("#uage").empty().append(uage);
                $("#uadd").empty().append(uadd);
                members.find('li').css('opacity', 0.5).removeClass('noblur');
                $(this).css('opacity', 1).addClass('noblur');
                card.stop().css('left', '10px').animate({ 'left': '-284px' }, 500);
                shake($("#cardtit"), "cred");
            }).delegate('li', 'mouseover', function () {
                members.find('li').css('opacity', 0.5);
                $(this).css('opacity', 1);
            }).delegate('li', 'mouseout', function () {
                $(this).css('opacity', 0.5);
            })
            arrow.click(function () {
                card.stop().animate({ 'left': '10px' }, 300);
            });
        });

        function shake(ele, cls) {
            var i = 0, t = false, o = ele.attr("class") + " ", c = "";
            if (t) return;
            t = setInterval(function () {
                i++;
                c = i % 2 ? o + cls : o;
                ele.attr("class", c);
            }, 200);
        };

        //下面代码验证代码使用线上的		
        function ValidateInfo() {
            var chkAllowAgreement = $("input[id$=chkAllowAgreement]");
            var txtBindTel = $("input[id$=txtBindTel]");
            var txtMobileVerifyCode = $("input[id$=txtMobileVerifyCode]");
            var txtLoginPass = $("input[id$=txtLoginPass]");
            var hidAreaId = $("input[id$=hidAreaId]");
            var hidYear = $("input[id$=hidYear]");
            var hidMonth = $("input[id$=hidMonth]");
            var hidDay = $("input[id$=hidDay]");

            var isChecked = $("input[id$=chkAllowAgreement]:checked").length > 0;
            var mobile = txtBindTel.val();
            var verifyCode = txtMobileVerifyCode.val();
            var password = txtLoginPass.val();

            var sexSel = $("input[name$='xb_one']:checked").length;
            var areaId = $("#city").val();
            var year = parseInt(hidYear.val());
            var month = parseInt(hidMonth.val());
            var day = parseInt(hidDay.val());

            if (!(/^1\d{10}$/.test(mobile))) {
                $.show_stip_error(txtBindTel, "注册电话号码不正确");
                return false;
            }

            if (!(/^[0-9]{6}$/.test(verifyCode))) {
                $.show_stip_error(txtMobileVerifyCode, "验证码为6位纯数字");
                return false;
            }

            if (password == '') {
                $.show_stip_error($("#password_empty"), "密码不能为空");
                return false;
            }

            if (!(/^[0-9]{6,20}$/.test(password))) {
                $.show_stip_error(txtLoginPass, "密码输入不正确,应为6-20位数字");
                return false;
            }

            if (sexSel == 0) {
                $.show_stip_error($("input[id$=rdBoy]"), "请选择您的性别");
                return false;
            }

            if (year == 0 || month == 0 || day == 0) {
                $.show_stip_error($("select[id$=ddlDays]"), "请选择您的生日");
                return false;
            }

            if (areaId == 0) {
                $.show_stip_error($("select[id$=ddlCities]"), "请选择您的所在地");
                return false;
            }
            if (!isChecked) {
                $.show_stip_error(chkAllowAgreement, "必须勾选同意《考米网服务条款》才可注册哦！");
                return false;
            }

            return true;
        }


 //发送短信验证码
        function sendCode() {
            var mobile = $("#txtBindTel").val();
            if (!isMobile(mobile)) {
                $("#txtBindTel").focus();
                $.fail("请输入正确的手机号码");
                return;
            }
            //发送信息
            $.getJSON("/ajax/Ajax_User.aspx", { t: 'sendregcode', mobile: mobile, r: Math.random() }, function (json) {
                if (json.result == "1") { 
                    $.success("短信发送成功，请查收!");
                }
                else { 
                    $.fail(json.error);
                }
            });
        }

        //判断是否是手机号码
        function isMobile(source) {
            return /^1\d{10}$/.test(source);
        }

        //输入手机号码验证请求
        $(document).on("blur", ".ValidateTel", function () {
            var mobile = $("#txtBindTel").val();
            if (!isMobile(mobile)) {
                $("#txtBindTel").focus();
                return;
            }
            $.getJSON("/ajax/Ajax_User.aspx", { t: 'validateCode', mobile: mobile, r: Math.random() }, function (json) {
            });
        });



 //覆盖输入框聚焦
        $(document).on("focus", ".jq_cover_input", function () {
            //空输入框
            var emptyObj = $(this);
            var emptytext = $(this).attr("title");
            var inputObj = $(this).prev("input[id$=" + emptyObj.attr("input_id") + "]");

            if (inputObj.length > 0) {
                emptyObj.css("display", "none");
                inputObj.css("display", "");
                inputObj.css("color", "#000000");
                inputObj.focus();

                //失去聚焦，绑定一次时
                inputObj.one("blur", function () { 
                    if (inputObj.val() == '') {
                        inputObj.css("display", "none");
                        emptyObj.css("display", "");
                        emptyObj.val(emptytext);
                    }
                });
            }
        });

        //基本输入框聚焦
        $(document).on("focus", ".jq_generic_input", function () {
            var inputObj = $(this);
            var emptytext = inputObj.attr("title");

            if (inputObj.val() == emptytext) {
                inputObj.css("color", "#000000");
                inputObj.val('');
            }
        });