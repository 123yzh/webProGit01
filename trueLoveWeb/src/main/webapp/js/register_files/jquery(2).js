/**********************************************************************
* Author		: 
* Date			:
* Description	:公用插件集合
**********************************************************************/

//Public
$.extend({
    get_rooturl: function () {
        return location.href.match(/http:\/\/([^\/]+)\//i)[0];
    },

    goto_rooturl: function () {
        location.href = $.get_rooturl();
    },

    goto_url: function (win, url) {
        win.location.href = url;
    }
});
//表情
(function ($) {
    var em = [{ 'id': 1, 'phrase': '[织]', 'url': 'zz2_thumb.gif' }, { 'id': 2, 'phrase': '[神马]', 'url': 'horse2_thumb.gif' }, { 'id': 3, 'phrase': '[浮云]', 'url': 'fuyun_thumb.gif' }, { 'id': 4, 'phrase': '[给力]', 'url': 'geili_thumb.gif' }, { 'id': 5, 'phrase': '[围观]', 'url': 'wg_thumb.gif' }, { 'id': 6, 'phrase': '[威武]', 'url': 'vw_thumb.gif' }, { 'id': 7, 'phrase': '[熊猫]', 'url': 'panda_thumb.gif' }, { 'id': 8, 'phrase': '[兔子]', 'url': 'rabbit_thumb.gif' }, { 'id': 9, 'phrase': '[奥特曼]', 'url': 'otm_thumb.gif' }, { 'id': 10, 'phrase': '[囧]', 'url': 'j_thumb.gif' }, { 'id': 11, 'phrase': '[互粉]', 'url': 'hufen_thumb.gif' }, { 'id': 12, 'phrase': '[礼物]', 'url': 'liwu_thumb.gif' }, { 'id': 13, 'phrase': '[呵呵]', 'url': 'smilea_thumb.gif' }, { 'id': 14, 'phrase': '[嘻嘻]', 'url': 'tootha_thumb.gif' }, { 'id': 15, 'phrase': '[哈哈]', 'url': 'laugh.gif' }, { 'id': 16, 'phrase': '[可爱]', 'url': 'tza_thumb.gif' }, { 'id': 17, 'phrase': '[可怜]', 'url': 'kl_thumb.gif' }, { 'id': 18, 'phrase': '[挖鼻屎]', 'url': 'kbsa_thumb.gif' }, { 'id': 19, 'phrase': '[吃惊]', 'url': 'cj_thumb.gif' }, { 'id': 20, 'phrase': '[害羞]', 'url': 'shamea_thumb.gif' }, { 'id': 21, 'phrase': '[挤眼]', 'url': 'zy_thumb.gif' }, { 'id': 22, 'phrase': '[闭嘴]', 'url': 'bz_thumb.gif' }, { 'id': 23, 'phrase': '[鄙视]', 'url': 'bs2_thumb.gif' }, { 'id': 24, 'phrase': '[爱你]', 'url': 'lovea_thumb.gif' }, { 'id': 25, 'phrase': '[泪]', 'url': 'sada_thumb.gif' }, { 'id': 26, 'phrase': '[偷笑]', 'url': 'heia_thumb.gif' }, { 'id': 27, 'phrase': '[亲亲]', 'url': 'qq_thumb.gif' }, { 'id': 28, 'phrase': '[生病]', 'url': 'sb_thumb.gif' }, { 'id': 29, 'phrase': '[太开心]', 'url': 'mb_thumb.gif' }, { 'id': 30, 'phrase': '[懒得理你]', 'url': 'ldln_thumb.gif' }, { 'id': 31, 'phrase': '[右哼哼]', 'url': 'yhh_thumb.gif' }, { 'id': 32, 'phrase': '[左哼哼]', 'url': 'zhh_thumb.gif' }, { 'id': 33, 'phrase': '[嘘]', 'url': 'x_thumb.gif' }, { 'id': 34, 'phrase': '[衰]', 'url': 'cry.gif' }, { 'id': 35, 'phrase': '[委屈]', 'url': 'wq_thumb.gif' }, { 'id': 36, 'phrase': '[吐]', 'url': 't_thumb.gif' }, { 'id': 37, 'phrase': '[打哈气]', 'url': 'k_thumb.gif' }, { 'id': 38, 'phrase': '[抱抱]', 'url': 'bba_thumb.gif' }, { 'id': 39, 'phrase': '[怒]', 'url': 'angrya_thumb.gif' }, { 'id': 40, 'phrase': '[疑问]', 'url': 'yw_thumb.gif' }, { 'id': 41, 'phrase': '[馋嘴]', 'url': 'cza_thumb.gif' }, { 'id': 42, 'phrase': '[拜拜]', 'url': '88_thumb.gif' }, { 'id': 43, 'phrase': '[思考]', 'url': 'sk_thumb.gif' }, { 'id': 44, 'phrase': '[汗]', 'url': 'sweata_thumb.gif' }, { 'id': 45, 'phrase': '[困]', 'url': 'sleepya_thumb.gif' }, { 'id': 46, 'phrase': '[睡觉]', 'url': 'sleepa_thumb.gif' }, { 'id': 47, 'phrase': '[钱]', 'url': 'money_thumb.gif' }, { 'id': 48, 'phrase': '[失望]', 'url': 'sw_thumb.gif' }, { 'id': 49, 'phrase': '[酷]', 'url': 'cool_thumb.gif' }, { 'id': 50, 'phrase': '[花心]', 'url': 'hsa_thumb.gif' }, { 'id': 51, 'phrase': '[哼]', 'url': 'hatea_thumb.gif' }, { 'id': 52, 'phrase': '[鼓掌]', 'url': 'gza_thumb.gif' }, { 'id': 53, 'phrase': '[晕]', 'url': 'dizzya_thumb.gif' }, { 'id': 54, 'phrase': '[悲伤]', 'url': 'bs_thumb.gif' }, { 'id': 55, 'phrase': '[抓狂]', 'url': 'crazya_thumb.gif' }, { 'id': 56, 'phrase': '[黑线]', 'url': 'h_thumb.gif' }, { 'id': 57, 'phrase': '[阴险]', 'url': 'yx_thumb.gif' }, { 'id': 58, 'phrase': '[怒骂]', 'url': 'nm_thumb.gif' }, { 'id': 59, 'phrase': '[心]', 'url': 'hearta_thumb.gif' }, { 'id': 60, 'phrase': '[伤心]', 'url': 'unheart.gif' }, { 'id': 61, 'phrase': '[猪头]', 'url': 'pig.gif' }, { 'id': 62, 'phrase': '[ok]', 'url': 'ok_thumb.gif' }, { 'id': 63, 'phrase': '[耶]', 'url': 'ye_thumb.gif' }, { 'id': 64, 'phrase': '[good]', 'url': 'good_thumb.gif' }, { 'id': 65, 'phrase': '[不要]', 'url': 'no_thumb.gif' }, { 'id': 66, 'phrase': '[赞]', 'url': 'z2_thumb.gif' }, { 'id': 67, 'phrase': '[来]', 'url': 'come_thumb.gif' }, { 'id': 68, 'phrase': '[弱]', 'url': 'sad_thumb.gif' }, { 'id': 69, 'phrase': '[蜡烛]', 'url': 'lazu_thumb.gif' }, { 'id': 70, 'phrase': '[钟]', 'url': 'clock_thumb.gif' }, { 'id': 71, 'phrase': '[蛋糕]', 'url': 'cake.gif' }, { 'id': 72, 'phrase': '[话筒]', 'url': 'm_thumb.gif'}]; $.fn.extend({ jqfaceedit: function (options) {
        var defaults = { txtAreaObj: '', containerObj: '', emotions: em, imageurl: 'http://r.52callme.com/www/images/face/', top: 0, left: 0 };
        options.box.isinit = true;
        options = $.extend(defaults, options);
        return this.each(function () {
            var Obj = $(this); var container = options.containerObj; $(Obj).bind("click", function (e) {
                e.stopPropagation(); var faceHtml = '<div id="face">'; faceHtml += '<div id="texttb"><a class="f_close" title="关闭" href="javascript:void(0);"></a></div>'; faceHtml += '<div id="facebox">'; faceHtml += '<div id="face_detailto" class="facebox clearfix_face"><ul>'; for (i = 0; i < options.emotions.length; i++) { faceHtml += '<li text=' + options.emotions[i].phrase + ' type=' + i + '><img title=' + options.emotions[i].phrase + ' src="' + options.imageurl + options.emotions[i].url + '"  style="cursor:pointer; position:relative;"   /></li>'; }
                faceHtml += '</ul></div>'; faceHtml += '</div><div class="arrow arrow_t"></div></div>'; container.find('#face').remove(); container.append(faceHtml);
                container.find("#face_detailto ul >li").bind("click", function () { var txt = $(this).attr("text"); var faceText = txt; var val = options.txtAreaObj.val().replace("记录心情，说说今天想聊什么", "").replace("我来说一句", ""); options.txtAreaObj.val(val + faceText); container.find("#face").remove(); var setFocusText = options.txtAreaObj; var setFocusTextLeg = setFocusText.val().length; setFocusText.focus(); if ($.support.msie) {txt = setFocusText[0].createTextRange();txt.moveStart('character', setFocusTextLeg); txt.collapse(true); txt.select(); } }); container.find(".f_close").bind("click", function () { container.find("#face").remove(); }); 
                $('body').bind("click", function () { container.find('#face').remove();
                    if ($("#ifrmComment", window.parent.document).length > 0) {   var sender = $("#ifrmComment", window.parent.document);  sender.height($(".jq_commentbox").height()); 
                        
                         
        } }); 
                
        // if ($("#ifrmComment", window.parent.document).length > 0) {   var sender = $("#ifrmComment", window.parent.document);  sender.height($(".jq_commentbox").height()); 
                      

                
            container.find('#face').bind("click", function (e) { e.stopPropagation(); }); var offset = $(e.target).offset(); if ($("#jq_tanface").length > 0) { offset.top += options.top; offset.left += options.left; container.find("#face").css({ "position": "fixed", "margin-left": "-28px" }).show(); } else { offset.top += options.top; offset.left += options.left; container.find("#face").css(offset).show(); } 
            });
        });
    }, emotionsToHtml: function () {
        return this.each(function () {
            var msgObj = $(this); var rContent = msgObj.html(); var regx = /(\[[\u4e00-\u9fa5]*\w*\])/g; var rs = rContent.match(regx); if (rs) { for (i = 0; i < rs.length; i++) { for (var n = 0; n < em.length; n++) { if (em[n].phrase == rs[i]) { var t = "<img src='http://r.52callme.com/www/images/face/" + em[n].url + "'/>"; rContent = rContent.replace(rs[i], t); break; } } } }
            msgObj.html(rContent);
        });
    } 
    });
})(jQuery);
//QueryString plugin
new function (settings) { var $separator = settings.separator || '&'; var $spaces = settings.spaces === false ? false : true; var $suffix = settings.suffix === false ? '' : '[]'; var $prefix = settings.prefix === false ? false : true; var $hash = $prefix ? settings.hash === true ? "#" : "?" : ""; var $numbers = settings.numbers === false ? false : true; jQuery.query = new function () { var is = function (o, t) { return o != undefined && o !== null && (!!t ? o.constructor == t : true) }; var parse = function (path) { var m, rx = /\[([^[]*)\]/g, match = /^([^[]+)(\[.*\])?$/.exec(path), base = match[1], tokens = []; while (m = rx.exec(match[2])) tokens.push(m[1]); return [base, tokens] }; var set = function (target, tokens, value) { var o, token = tokens.shift(); if (typeof target != 'object') target = null; if (token === "") { if (!target) target = []; if (is(target, Array)) { target.push(tokens.length == 0 ? value : set(null, tokens.slice(0), value)) } else if (is(target, Object)) { var i = 0; while (target[i++] != null); target[--i] = tokens.length == 0 ? value : set(target[i], tokens.slice(0), value) } else { target = []; target.push(tokens.length == 0 ? value : set(null, tokens.slice(0), value)) } } else if (token && token.match(/^\s*[0-9]+\s*$/)) { var index = parseInt(token, 10); if (!target) target = []; target[index] = tokens.length == 0 ? value : set(target[index], tokens.slice(0), value) } else if (token) { var index = token.replace(/^\s*|\s*$/g, ""); if (!target) target = {}; if (is(target, Array)) { var temp = {}; for (var i = 0; i < target.length; ++i) { temp[i] = target[i] } target = temp } target[index] = tokens.length == 0 ? value : set(target[index], tokens.slice(0), value) } else { return value } return target }; var queryObject = function (a) { var self = this; self.keys = {}; if (a.queryObject) { jQuery.each(a.get(), function (key, val) { self.SET(key, val) }) } else { jQuery.each(arguments, function () { var q = "" + this; q = q.replace(/^[?#]/, ''); q = q.replace(/[;&]$/, ''); if ($spaces) q = q.replace(/[+]/g, ' '); jQuery.each(q.split(/[&;]/), function () { var key = decodeURIComponent(this.split('=')[0] || ""); var val = decodeURIComponent(this.split('=')[1] || ""); if (!key) return; if ($numbers) { if (/^[+-]?[0-9]+\.[0-9]*$/.test(val)) val = parseFloat(val); else if (/^[+-]?[0-9]+$/.test(val)) val = parseInt(val, 10) } val = (!val && val !== 0) ? true : val; if (val !== false && val !== true && typeof val != 'number') val = val; self.SET(key, val) }) }) } return self }; queryObject.prototype = { queryObject: true, has: function (key, type) { var value = this.get(key); return is(value, type) }, GET: function (key) { if (!is(key)) return this.keys; var parsed = parse(key), base = parsed[0], tokens = parsed[1]; var target = this.keys[base]; while (target != null && tokens.length != 0) { target = target[tokens.shift()] } return typeof target == 'number' ? target : target || "" }, get: function (key) { var target = this.GET(key); if (is(target, Object)) return jQuery.extend(true, {}, target); else if (is(target, Array)) return target.slice(0); return target }, SET: function (key, val) { var value = !is(val) ? null : val; var parsed = parse(key), base = parsed[0], tokens = parsed[1]; var target = this.keys[base]; this.keys[base] = set(target, tokens.slice(0), value); return this }, set: function (key, val) { return this.copy().SET(key, val) }, REMOVE: function (key) { return this.SET(key, null).COMPACT() }, remove: function (key) { return this.copy().REMOVE(key) }, EMPTY: function () { var self = this; jQuery.each(self.keys, function (key, value) { delete self.keys[key] }); return self }, load: function (url) { var hash = url.replace(/^.*?[#](.+?)(?:\?.+)?$/, "$1"); var search = url.replace(/^.*?[?](.+?)(?:#.+)?$/, "$1"); return new queryObject(url.length == search.length ? '' : search, url.length == hash.length ? '' : hash) }, empty: function () { return this.copy().EMPTY() }, copy: function () { return new queryObject(this) }, COMPACT: function () { function build(orig) { var obj = typeof orig == "object" ? is(orig, Array) ? [] : {} : orig; if (typeof orig == 'object') { function add(o, key, value) { if (is(o, Array)) o.push(value); else o[key] = value } jQuery.each(orig, function (key, value) { if (!is(value)) return true; add(obj, key, build(value)) }) } return obj } this.keys = build(this.keys); return this }, compact: function () { return this.copy().COMPACT() }, toString: function () { var i = 0, queryString = [], chunks = [], self = this; var encode = function (str) { str = str + ""; if ($spaces) str = str.replace(/ /g, "+"); return encodeURIComponent(str) }; var addFields = function (arr, key, value) { if (!is(value) || value === false) return; var o = [encode(key)]; if (value !== true) { o.push("="); o.push(encode(value)) } arr.push(o.join("")) }; var build = function (obj, base) { var newKey = function (key) { return !base || base == "" ? [key].join("") : [base, "[", key, "]"].join("") }; jQuery.each(obj, function (key, value) { if (typeof value == 'object') build(value, newKey(key)); else addFields(chunks, newKey(key), value) }) }; build(this.keys); if (chunks.length > 0) queryString.push($hash); queryString.push(chunks.join($separator)); return queryString.join("") } }; return new queryObject(location.search, location.hash) } } (jQuery.query || {});
//Cookie plugin
jQuery.cookie = function (name, value, options) {
    if (typeof value != 'undefined') {
        options = options || {}; if (value === null) { value = ''; options.expires = -1; }
        var expires = ''; if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
            var date; if (typeof options.expires == 'number') { date = new Date(); date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000)); } else { date = options.expires; }
            expires = '; expires=' + date.toUTCString();
        }
        var path = options.path ? '; path=' + options.path : ''; var domain = options.domain ? '; domain=' + options.domain : ''; var secure = options.secure ? '; secure' : ''; document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
    } else {
        var cookieValue = null; if (document.cookie && document.cookie != '') { var cookies = document.cookie.split(';'); for (var i = 0; i < cookies.length; i++) { var cookie = jQuery.trim(cookies[i]); if (cookie.substring(0, name.length + 1) == (name + '=')) { cookieValue = decodeURIComponent(cookie.substring(name.length + 1)); break; } } }
        return cookieValue;
    } 
};
//LazyLoad plugin
eval(function (p, a, c, k, e, d) { e = function (c) { return (c < a ? '' : e(parseInt(c / a))) + ((c = c % a) > 35 ? String.fromCharCode(c + 29) : c.toString(36)) }; if (!''.replace(/^/, String)) { while (c--) { d[e(c)] = k[c] || e(c) } k = [function (e) { return d[e] } ]; e = function () { return '\\w+' }; c = 1 }; while (c--) { if (k[c]) { p = p.replace(new RegExp('\\b' + e(c) + '\\b', 'g'), k[c]) } } return p } ('(5($){$.J.L=5(r){8 1={d:0,A:0,b:"h",v:"N",3:4};6(r){$.D(1,r)}8 m=9;6("h"==1.b){$(1.3).p("h",5(b){8 C=0;m.t(5(){6(!$.k(9,1)&&!$.l(9,1)){$(9).z("o")}j{6(C++>1.A){g B}}});8 w=$.M(m,5(f){g!f.e});m=$(w)})}g 9.t(5(){8 2=9;$(2).c("s",$(2).c("i"));6("h"!=1.b||$.k(2,1)||$.l(2,1)){6(1.u){$(2).c("i",1.u)}j{$(2).K("i")}2.e=B}j{2.e=x}$(2).T("o",5(){6(!9.e){$("<V />").p("X",5(){$(2).Y().c("i",$(2).c("s"))[1.v](1.Z);2.e=x}).c("i",$(2).c("s"))}});6("h"!=1.b){$(2).p(1.b,5(b){6(!2.e){$(2).z("o")}})}})};$.k=5(f,1){6(1.3===E||1.3===4){8 7=$(4).F()+$(4).O()}j{8 7=$(1.3).n().G+$(1.3).F()}g 7<=$(f).n().G-1.d};$.l=5(f,1){6(1.3===E||1.3===4){8 7=$(4).I()+$(4).U()}j{8 7=$(1.3).n().q+$(1.3).I()}g 7<=$(f).n().q-1.d};$.D($.P[\':\'],{"Q-H-7":"$.k(a, {d : 0, 3: 4})","R-H-7":"!$.k(a, {d : 0, 3: 4})","S-y-7":"$.l(a, {d : 0, 3: 4})","q-y-7":"!$.l(a, {d : 0, 3: 4})"})})(W);', 62, 62, '|settings|self|container|window|function|if|fold|var|this||event|attr|threshold|loaded|element|return|scroll|src|else|belowthefold|rightoffold|elements|offset|appear|bind|left|options|original|each|placeholder|effect|temp|true|of|trigger|failurelimit|false|counter|extend|undefined|height|top|the|width|fn|removeAttr|lazyload|grep|show|scrollTop|expr|below|above|right|one|scrollLeft|img|jQuery|load|hide|effectspeed'.split('|'), 0, {}));
//Gallery plugin
(function ($) {
    $.fn.adGallery = function (options) { var defaults = { loader_image: 'http://r.52callme.com/www/images/loader.gif', start_at_index: 0, description_wrapper: false, thumb_opacity: 0.7, animate_first_image: false, animation_speed: 400, width: false, height: false, display_next_and_prev: true, display_back_and_forward: true, scroll_jump: 0, slideshow: { enable: true, autostart: false, speed: 5000, start_label: '自动播放', stop_label: '停止播放', stop_on_scroll: true, countdown_prefix: '(', countdown_sufix: ')', onStart: false, onStop: false }, effect: 'slide-hori', enable_keyboard_move: true, cycle: true, callbacks: { init: false, afterImageVisible: false, beforeImageVisible: false} }; var settings = $.extend(false, defaults, options); if (options && options.slideshow) { settings.slideshow = $.extend(false, defaults.slideshow, options.slideshow); }; if (!settings.slideshow.enable) { settings.slideshow.autostart = false; }; var galleries = []; $(this).each(function () { var gallery = new AdGallery(this, settings); galleries[galleries.length] = gallery; }); return galleries; }; function VerticalSlideAnimation(img_container, direction, desc) { var current_top = parseInt(img_container.css('top'), 10); if (direction == 'left') { var old_image_top = '-' + this.image_wrapper_height + 'px'; img_container.css('top', this.image_wrapper_height + 'px'); } else { var old_image_top = this.image_wrapper_height + 'px'; img_container.css('top', '-' + this.image_wrapper_height + 'px'); }; if (desc) { desc.css('bottom', '-' + desc[0].offsetHeight + 'px'); desc.animate({ bottom: 0 }, this.settings.animation_speed * 2); }; if (this.current_description) { this.current_description.animate({ bottom: '-' + this.current_description[0].offsetHeight + 'px' }, this.settings.animation_speed * 2); }; return { old_image: { top: old_image_top }, new_image: { top: current_top} }; }; function HorizontalSlideAnimation(img_container, direction, desc) { var current_left = parseInt(img_container.css('left'), 10); if (direction == 'left') { var old_image_left = '-' + this.image_wrapper_width + 'px'; img_container.css('left', this.image_wrapper_width + 'px'); } else { var old_image_left = this.image_wrapper_width + 'px'; img_container.css('left', '-' + this.image_wrapper_width + 'px'); }; if (desc) { desc.css('bottom', '-' + desc[0].offsetHeight + 'px'); desc.animate({ bottom: 0 }, this.settings.animation_speed * 2); }; if (this.current_description) { this.current_description.animate({ bottom: '-' + this.current_description[0].offsetHeight + 'px' }, this.settings.animation_speed * 2); }; return { old_image: { left: old_image_left }, new_image: { left: current_left} }; }; function ResizeAnimation(img_container, direction, desc) { var image_width = img_container.width(); var image_height = img_container.height(); var current_left = parseInt(img_container.css('left'), 10); var current_top = parseInt(img_container.css('top'), 10); img_container.css({ width: 0, height: 0, top: this.image_wrapper_height / 2, left: this.image_wrapper_width / 2 }); return { old_image: { width: 0, height: 0, top: this.image_wrapper_height / 2, left: this.image_wrapper_width / 2 }, new_image: { width: image_width, height: image_height, top: current_top, left: current_left} }; }; function FadeAnimation(img_container, direction, desc) { img_container.css('opacity', 0); return { old_image: { opacity: 0 }, new_image: { opacity: 1} }; }; function NoneAnimation(img_container, direction, desc) { img_container.css('opacity', 0); return { old_image: { opacity: 0 }, new_image: { opacity: 1 }, speed: 0 }; }; function AdGallery(wrapper, settings) { this.init(wrapper, settings); }; AdGallery.prototype = { wrapper: false, image_wrapper: false, gallery_info: false, nav: false, loader: false, preloads: false, thumbs_wrapper: false, scroll_back: false, scroll_forward: false, next_link: false, prev_link: false, slideshow: false, image_wrapper_width: 0, image_wrapper_height: 0, current_index: 0, current_image: false, current_description: false, nav_display_width: 0, settings: false, images: false, in_transition: false, animations: false, init: function (wrapper, settings) { var context = this; this.wrapper = $(wrapper); this.settings = settings; this.setupElements(); this.setupAnimations(); if (this.settings.width) { this.image_wrapper_width = this.settings.width; this.image_wrapper.width(this.settings.width); this.wrapper.width(this.settings.width); } else { this.image_wrapper_width = this.image_wrapper.width(); }; if (this.settings.height) { this.image_wrapper_height = this.settings.height; this.image_wrapper.height(this.settings.height); } else { this.image_wrapper_height = this.image_wrapper.height(); }; this.nav_display_width = this.nav.width(); this.current_index = 0; this.current_image = false; this.current_description = false; this.in_transition = false; this.findImages(); if (this.settings.display_next_and_prev) { this.initNextAndPrev(); }; var nextimage_callback = function (callback) { return context.nextImage(callback); }; this.slideshow = new AdGallerySlideshow(nextimage_callback, this.settings.slideshow); this.controls.append(this.slideshow.create()); if (this.settings.slideshow.enable) { this.slideshow.enable(); } else { this.slideshow.disable(); }; if (this.settings.display_back_and_forward) { this.initBackAndForward(); }; if (this.settings.enable_keyboard_move) { this.initKeyEvents(); }; var start_at = parseInt(this.settings.start_at_index, 10); if (window.location.hash && window.location.hash.indexOf('#photo_image') === 0) { start_at = window.location.hash.replace(/[^0-9]+/g, ''); if ((start_at * 1) != start_at) { start_at = this.settings.start_at_index; }; }; this.loading(true); this.showImage(start_at, function () { if (context.settings.slideshow.autostart) { context.preloadImage(start_at + 1); context.slideshow.start(); }; }); this.fireCallback(this.settings.callbacks.init); }, setupAnimations: function () { this.animations = { 'slide-vert': VerticalSlideAnimation, 'slide-hori': HorizontalSlideAnimation, 'resize': ResizeAnimation, 'fade': FadeAnimation, 'none': NoneAnimation }; }, setupElements: function () { this.controls = this.wrapper.find('.photo_controls'); this.gallery_info = $('<p class="photo_info"></p>'); this.controls.append(this.gallery_info); this.image_wrapper = this.wrapper.find('.photo_image_wrapper'); this.image_wrapper.empty(); this.nav = this.wrapper.find('.photo_nav'); this.thumbs_wrapper = this.nav.find('.photo_thumbs'); this.preloads = $('<div class="photo_preloads"></div>'); this.loader = $('<img class="photo_loader" src="' + this.settings.loader_image + '">'); this.image_wrapper.append(this.loader); this.loader.hide(); $(document.body).append(this.preloads); }, loading: function (bool) { if (bool) { this.loader.show(); } else { this.loader.hide(); }; }, addAnimation: function (name, fn) { if ($.isFunction(fn)) { this.animations[name] = fn; }; }, findImages: function () {
        var context = this; this.images = []; var thumb_wrapper_width = 0; var thumbs_loaded = 0; var thumbs = this.thumbs_wrapper.find('a'); var thumb_count = thumbs.length; if (this.settings.thumb_opacity < 1) { thumbs.find('img').css('opacity', this.settings.thumb_opacity); }; thumbs.each(function (i) { var link = $(this); var image_src = link.attr('href'); var thumb = link.find('img'); if (!context.isImageLoaded(thumb[0])) { thumb.load(function () { thumb_wrapper_width += this.parentNode.parentNode.offsetWidth; thumbs_loaded++; }); } else { thumb_wrapper_width += thumb[0].parentNode.parentNode.offsetWidth; thumbs_loaded++; }; link.addClass('photo_thumb' + i); link.click(function () { context.showImage(i); context.slideshow.stop(); return false; }).hover(function () { if (!$(this).is('.photo_active') && context.settings.thumb_opacity < 1) { $(this).find('img').fadeTo(300, 1); }; context.preloadImage(i); }, function () { if (!$(this).is('.photo_active') && context.settings.thumb_opacity < 1) { $(this).find('img').fadeTo(300, context.settings.thumb_opacity); }; }); var link = false; if (thumb.data('photo_link')) { link = thumb.data('photo_link'); } else if (thumb.attr('longdesc') && thumb.attr('longdesc').length) { link = thumb.attr('longdesc'); }; var desc = false; if (thumb.data('photo_desc')) { desc = thumb.data('photo_desc'); } else if (thumb.attr('alt') && thumb.attr('alt').length) { desc = thumb.attr('alt'); }; var title = false; if (thumb.data('photo_title')) { title = thumb.data('photo_title'); } else if (thumb.attr('title') && thumb.attr('title').length) { title = thumb.attr('title'); }; context.images[i] = { thumb: thumb.attr('src'), image: image_src, error: false, preloaded: false, desc: desc, title: title, size: false, link: link }; }); var inter = setInterval(function () {
            if (thumb_count == thumbs_loaded) {
                thumb_wrapper_width -= 100; var list = context.nav.find('.photo_thumb-list'); list.css('width', thumb_wrapper_width + 'px'); var i = 1; var last_height = list.height(); while (i < 201) {
                    list.css('width', (thumb_wrapper_width + i) + 'px'); if (last_height != list.height()) { break; }
                    last_height = list.height(); i++;
                }
                clearInterval(inter);
            };
        }, 100);
    }, initKeyEvents: function () { var context = this; $(document).keydown(function (e) { if (e.keyCode == 39) { context.nextImage(); context.slideshow.stop(); } else if (e.keyCode == 37) { context.prevImage(); context.slideshow.stop(); }; }); }, initNextAndPrev: function () { this.next_link = $('<div class="photo_next"><div class="photo_next-image"></div></div>'); this.prev_link = $('<div class="photo_prev"><div class="photo_prev-image"></div></div>'); this.image_wrapper.append(this.next_link); this.image_wrapper.append(this.prev_link); var context = this; this.prev_link.add(this.next_link).mouseover(function (e) { $(this).css('height', context.image_wrapper_height); $(this).find('div').show(); }).mouseout(function (e) { $(this).find('div').hide(); }).click(function () { if ($(this).is('.photo_next')) { context.nextImage(); context.slideshow.stop(); } else { context.prevImage(); context.slideshow.stop(); }; }).find('div').css('opacity', 0.7); }, initBackAndForward: function () { var context = this; this.scroll_forward = $('<div class="photo_forward"></div>'); this.scroll_back = $('<div class="photo_back"></div>'); this.nav.append(this.scroll_forward); this.nav.prepend(this.scroll_back); var has_scrolled = 0; var thumbs_scroll_interval = false; $(this.scroll_back).add(this.scroll_forward).click(function () { var width = context.nav_display_width - 50; if (context.settings.scroll_jump > 0) { var width = context.settings.scroll_jump; }; if ($(this).is('.photo_forward')) { var left = context.thumbs_wrapper.scrollLeft() + width; } else { var left = context.thumbs_wrapper.scrollLeft() - width; }; if (context.settings.slideshow.stop_on_scroll) { context.slideshow.stop(); }; context.thumbs_wrapper.animate({ scrollLeft: left + 'px' }); return false; }).css('opacity', 0.6).hover(function () { var direction = 'left'; if ($(this).is('.photo_forward')) { direction = 'right'; }; thumbs_scroll_interval = setInterval(function () { has_scrolled++; if (has_scrolled > 30 && context.settings.slideshow.stop_on_scroll) { context.slideshow.stop(); }; var left = context.thumbs_wrapper.scrollLeft() + 1; if (direction == 'left') { left = context.thumbs_wrapper.scrollLeft() - 1; }; context.thumbs_wrapper.scrollLeft(left); }, 10); $(this).css('opacity', 1); }, function () { has_scrolled = 0; clearInterval(thumbs_scroll_interval); $(this).css('opacity', 0.6); }); }, _afterShow: function () { this.gallery_info.html((this.current_index + 1) + ' / ' + this.images.length); if (!this.settings.cycle) { this.prev_link.show().css('height', this.image_wrapper_height); this.next_link.show().css('height', this.image_wrapper_height); if (this.current_index == (this.images.length - 1)) { this.next_link.hide(); }; if (this.current_index == 0) { this.prev_link.hide(); }; }; this.fireCallback(this.settings.callbacks.afterImageVisible); }, _getContainedImageSize: function (image_width, image_height) { if (image_height > this.image_wrapper_height) { var ratio = image_width / image_height; image_height = this.image_wrapper_height; image_width = this.image_wrapper_height * ratio; }; if (image_width > this.image_wrapper_width) { var ratio = image_height / image_width; image_width = this.image_wrapper_width; image_height = this.image_wrapper_width * ratio; }; return { width: image_width, height: image_height }; }, _centerImage: function (img_container, image_width, image_height) { img_container.css('top', '0px'); if (image_height < this.image_wrapper_height) { var dif = this.image_wrapper_height - image_height; img_container.css('top', (dif / 2) + 'px'); }; img_container.css('left', '0px'); if (image_width < this.image_wrapper_width) { var dif = this.image_wrapper_width - image_width; img_container.css('left', (dif / 2) + 'px'); }; }, _getDescription: function (image) { }, showImage: function (index, callback) { if (this.images[index] && !this.in_transition) { var context = this; var image = this.images[index]; this.in_transition = true; if (!image.preloaded) { this.loading(true); this.preloadImage(index, function () { context.loading(false); context._showWhenLoaded(index, callback); }); } else { this._showWhenLoaded(index, callback); }; }; }, _showWhenLoaded: function (index, callback) {
        if (this.images[index]) {
            var context = this; var image = this.images[index]; var img_container = $(document.createElement('div')).addClass('photo_image'); var img = $(new Image()).attr('src', image.image); if (image.link) { var link = $('<a href="' + image.link + '" target="_blank"></a>'); link.append(img); img_container.append(link); } else { img_container.append(img); }
            this.image_wrapper.prepend(img_container); var size = this._getContainedImageSize(image.size.width, image.size.height); img.attr('width', size.width); img.attr('height', size.height); img_container.css({ width: size.width + 'px', height: size.height + 'px' }); this._centerImage(img_container, size.width, size.height); var desc = this._getDescription(image, img_container); if (desc) { if (!this.settings.description_wrapper) { img_container.append(desc); var width = size.width - parseInt(desc.css('padding-left'), 10) - parseInt(desc.css('padding-right'), 10); desc.css('width', width + 'px'); } else { this.settings.description_wrapper.append(desc); } }; this.highLightThumb(this.nav.find('.photo_thumb' + index)); var direction = 'right'; if (this.current_index < index) { direction = 'left'; }; this.fireCallback(this.settings.callbacks.beforeImageVisible); if (this.current_image || this.settings.animate_first_image) { var animation_speed = this.settings.animation_speed; var easing = 'swing'; var animation = this.animations[this.settings.effect].call(this, img_container, direction, desc); if (typeof animation.speed != 'undefined') { animation_speed = animation.speed; }; if (typeof animation.easing != 'undefined') { easing = animation.easing; }; if (this.current_image) { var old_image = this.current_image; var old_description = this.current_description; old_image.animate(animation.old_image, animation_speed, easing, function () { old_image.remove(); if (old_description) old_description.remove(); }); }; img_container.animate(animation.new_image, animation_speed, easing, function () { context.current_index = index; context.current_image = img_container; context.current_description = desc; context.in_transition = false; context._afterShow(); context.fireCallback(callback); }); } else { this.current_index = index; this.current_image = img_container; context.current_description = desc; this.in_transition = false; context._afterShow(); this.fireCallback(callback); };
        };
    }, nextIndex: function () { if (this.current_index == (this.images.length - 1)) { if (!this.settings.cycle) { return false; }; var next = 0; } else { var next = this.current_index + 1; }; return next; }, nextImage: function (callback) { var next = this.nextIndex(); if (next === false) return false; this.preloadImage(next + 1); this.showImage(next, callback); return true; }, prevIndex: function () { if (this.current_index == 0) { if (!this.settings.cycle) { return false; }; var prev = this.images.length - 1; } else { var prev = this.current_index - 1; }; return prev; }, prevImage: function (callback) { var prev = this.prevIndex(); if (prev === false) return false; this.preloadImage(prev - 1); this.showImage(prev, callback); return true; }, preloadAll: function () { var context = this; var i = 0; function preloadNext() { if (i < context.images.length) { i++; context.preloadImage(i, preloadNext); }; }; context.preloadImage(i, preloadNext); }, preloadImage: function (index, callback) { if (this.images[index]) { var image = this.images[index]; if (!this.images[index].preloaded) { var img = $(new Image()); img.attr('src', image.image); if (!this.isImageLoaded(img[0])) { this.preloads.append(img); var context = this; img.load(function () { image.preloaded = true; image.size = { width: this.width, height: this.height }; context.fireCallback(callback); }).error(function () { image.error = true; image.preloaded = false; image.size = false; }); } else { image.preloaded = true; image.size = { width: img[0].width, height: img[0].height }; this.fireCallback(callback); }; } else { this.fireCallback(callback); }; }; }, isImageLoaded: function (img) { if (typeof img.complete != 'undefined' && !img.complete) { return false; }; if (typeof img.naturalWidth != 'undefined' && img.naturalWidth == 0) { return false; }; return true; }, highLightThumb: function (thumb) { this.thumbs_wrapper.find('.photo_active').removeClass('photo_active'); thumb.addClass('photo_active'); if (this.settings.thumb_opacity < 1) { this.thumbs_wrapper.find('a:not(.photo_active) img').fadeTo(300, this.settings.thumb_opacity); thumb.find('img').fadeTo(300, 1); }; var left = thumb[0].parentNode.offsetLeft; left -= (this.nav_display_width / 2) - (thumb[0].offsetWidth / 2); this.thumbs_wrapper.animate({ scrollLeft: left + 'px' }); }, fireCallback: function (fn) { if ($.isFunction(fn)) { fn.call(this); }; } 
    }; function AdGallerySlideshow(nextimage_callback, settings) { this.init(nextimage_callback, settings); }; AdGallerySlideshow.prototype = { start_link: false, stop_link: false, countdown: false, controls: false, settings: false, nextimage_callback: false, enabled: false, running: false, countdown_interval: false, init: function (nextimage_callback, settings) { var context = this; this.nextimage_callback = nextimage_callback; this.settings = settings; }, create: function () { this.start_link = $('<span class="photo_slideshow-start">' + this.settings.start_label + '</span>'); this.stop_link = $('<span class="photo_slideshow-stop">' + this.settings.stop_label + '</span>'); this.countdown = $('<span class="photo_slideshow-countdown"></span>'); this.controls = $('<div class="photo_slideshow-controls"></div>'); this.controls.append(this.start_link).append(this.stop_link).append(this.countdown); this.countdown.hide(); var context = this; this.start_link.click(function () { context.start(); }); this.stop_link.click(function () { context.stop(); }); $(document).keydown(function (e) { if (e.keyCode == 83) { if (context.running) { context.stop(); } else { context.start(); }; }; }); return this.controls; }, disable: function () { this.enabled = false; this.stop(); this.controls.hide(); }, enable: function () { this.enabled = true; this.controls.show(); }, toggle: function () { if (this.enabled) { this.disable(); } else { this.enable(); }; }, start: function () { if (this.running || !this.enabled) return false; var context = this; this.running = true; this.controls.addClass('photo_slideshow-running'); this._next(); this.fireCallback(this.settings.onStart); return true; }, stop: function () { if (!this.running) return false; this.running = false; this.countdown.hide(); this.controls.removeClass('photo_slideshow-running'); clearInterval(this.countdown_interval); this.fireCallback(this.settings.onStop); return true; }, _next: function () { var context = this; var pre = this.settings.countdown_prefix; var su = this.settings.countdown_sufix; clearInterval(context.countdown_interval); this.countdown.show().html(pre + (this.settings.speed / 1000) + su); var slide_timer = 0; this.countdown_interval = setInterval(function () { slide_timer += 1000; if (slide_timer >= context.settings.speed) { var whenNextIsShown = function () { if (context.running) { context._next(); }; slide_timer = 0; }; if (!context.nextimage_callback(whenNextIsShown)) { context.stop(); }; slide_timer = 0; }; var sec = parseInt(context.countdown.text().replace(/[^0-9]/g, ''), 10); sec--; if (sec > 0) { context.countdown.html(pre + sec + su); }; }, 1000); }, fireCallback: function (fn) { if ($.isFunction(fn)) { fn.call(this); }; } };
})(jQuery);
//Raty plugin
; (function ($) {
    var methods = { init: function (options) {
        return this.each(function () {
            var opt = $.extend({}, $.fn.raty.defaults, options), $this = $(this).data('options', opt); if (opt.number > 20) { opt.number = 20; } else if (opt.number < 0) { opt.number = 0; }
            if (opt.round.down === undefined) { opt.round.down = $.fn.raty.defaults.round.down; }
            if (opt.round.full === undefined) { opt.round.full = $.fn.raty.defaults.round.full; }
            if (opt.round.up === undefined) { opt.round.up = $.fn.raty.defaults.round.up; }
            if (opt.path.substring(opt.path.length - 1, opt.path.length) != '/') { opt.path += '/'; }
            if (typeof opt.start == 'function') { opt.start = opt.start.call(this); }
            var isValidStart = !isNaN(parseInt(opt.start, 10)), start = ''; if (isValidStart) { start = (opt.start > opt.number) ? opt.number : opt.start; }
            var starFile = opt.starOn, space = (opt.space) ? 4 : 0, hint = ''; for (var i = 1; i <= opt.number; i++) { starFile = (start < i) ? opt.starOff : opt.starOn; hint = (i <= opt.hintList.length && opt.hintList[i - 1] !== null) ? opt.hintList[i - 1] : i; $this.append('<img src="' + opt.path + starFile + '" alt="' + i + '" title="' + hint + '" />'); if (opt.space) { $this.append((i < opt.number) ? '&nbsp;' : ''); } }
            var $score = $('<input/>', { type: 'hidden', name: opt.scoreName }).appendTo($this); if (isValidStart) {
                if (opt.start > 0) { $score.val(start); }
                methods.roundStar.call($this, start);
            }
            if (opt.iconRange) { methods.fillStar.call($this, start); }
            methods.setTarget.call($this, start, opt.targetKeep); var width = opt.width || (opt.number * opt.size + opt.number * space); if (opt.cancel) {
                var $cancel = $('<img src="' + opt.path + opt.cancelOff + '" alt="x" title="' + opt.cancelHint + '" class="raty-cancel"/>'); if (opt.cancelPlace == 'left') { $this.prepend('&nbsp;').prepend($cancel); } else { $this.append('&nbsp;').append($cancel); }
                width += opt.size + space;
            }
            if (opt.readOnly) { methods.fixHint.call($this); $this.children('.raty-cancel').hide(); } else { $this.css('cursor', 'pointer'); methods.bindAction.call($this); }
            $this.css('width', width);
        });
    }, bindAction: function () {
        var self = this, opt = this.data('options'), $score = this.children('input'); self.mouseleave(function () { methods.initialize.call(self, $score.val()); methods.setTarget.call(self, $score.val(), opt.targetKeep); }); var $stars = this.children('img').not('.raty-cancel'), action = (opt.half) ? 'mousemove' : 'mouseover'; if (opt.cancel) { self.children('.raty-cancel').mouseenter(function () { $(this).attr('src', opt.path + opt.cancelOn); $stars.attr('src', opt.path + opt.starOff); methods.setTarget.call(self, null, true); }).mouseleave(function () { $(this).attr('src', opt.path + opt.cancelOff); self.mouseout(); }).click(function (evt) { $score.removeAttr('value'); if (opt.click) { opt.click.call(self[0], null, evt); } }); }
        $stars.bind(action, function (evt) {
            var value = parseInt(this.alt, 10); if (opt.half) {
                var position = parseFloat((evt.pageX - $(this).offset().left) / opt.size), diff = (position > .5) ? 1 : .5; value = parseFloat(this.alt) - 1 + diff; methods.fillStar.call(self, value); if (opt.precision) { value = value - diff + position; }
                methods.showHalf.call(self, value);
            } else { methods.fillStar.call(self, value); }
            self.data('score', value); methods.setTarget.call(self, value, true);
        }).click(function (evt) { $score.val((opt.half || opt.precision) ? self.data('score') : this.alt); if (opt.click) { opt.click.call(self[0], $score.val(), evt); } });
    }, cancel: function (isClick) {
        return this.each(function () {
            var $this = $(this); if ($this.data('readonly') == 'readonly') { return false; }
            if (isClick) { methods.click.call($this, null); } else { methods.start.call($this, null); }
            $this.mouseleave().children('input').removeAttr('value');
        });
    }, click: function (score) {
        return this.each(function () {
            var $this = $(this); if ($this.data('readonly') == 'readonly') { return false; }
            methods.initialize.call($this, score); var opt = $this.data('options'); if (opt.click) { opt.click.call($this[0], score); } else { $.error('you must add the "click: function(score, evt) { }" callback.'); }
            methods.setTarget.call($this, score, true);
        });
    }, fillStar: function (score) {
        var opt = this.data('options'), $stars = this.children('img').not('.raty-cancel'), qtyStar = $stars.length, count = 0, $star, star, icon; for (var i = 1; i <= qtyStar; i++) {
            $star = $stars.eq(i - 1); if (opt.iconRange && opt.iconRange.length > count) {
                star = opt.iconRange[count]; if (opt.single) { icon = (i == score) ? (star.on || opt.starOn) : (star.off || opt.starOff); } else { icon = (i <= score) ? (star.on || opt.starOn) : (star.off || opt.starOff); }
                if (i <= star.range) { $star.attr('src', opt.path + icon); }
                if (i == star.range) { count++; } 
            } else {
                if (opt.single) { icon = (i == score) ? opt.starOn : opt.starOff; } else { icon = (i <= score) ? opt.starOn : opt.starOff; }
                $star.attr('src', opt.path + icon);
            } 
        } 
    }, fixHint: function () {
        var opt = this.data('options'), $score = this.children('input'), score = parseInt($score.val(), 10), hint = opt.noRatedMsg; if (!isNaN(score) && score > 0) { hint = (score <= opt.hintList.length && opt.hintList[score - 1] !== null) ? opt.hintList[score - 1] : score; }
        $score.attr('readonly', 'readonly'); this.css('cursor', 'default').data('readonly', 'readonly').attr('title', hint).children('img').attr('title', hint);
    }, readOnly: function (isReadOnly) {
        return this.each(function () {
            var $this = $(this), $cancel = $this.children('.raty-cancel'); if ($cancel.length) { if (isReadOnly) { $cancel.hide(); } else { $cancel.show(); } }
            if (isReadOnly) { $this.unbind(); $this.children('img').unbind(); methods.fixHint.call($this); } else { methods.bindAction.call($this); methods.unfixHint.call($this); } 
        });
    }, roundStar: function (score) {
        var opt = this.data('options'), diff = (score - Math.floor(score)).toFixed(2); if (diff > opt.round.down) {
            var icon = opt.starOn; if (diff < opt.round.up && opt.halfShow) { icon = opt.starHalf; } else if (diff < opt.round.full) { icon = opt.starOff; }
            this.children('img').not('.raty-cancel').eq(Math.ceil(score) - 1).attr('src', opt.path + icon);
        } 
    }, score: function () { var score = [], value; this.each(function () { value = $(this).children('input').val(); value = (value == '') ? null : parseFloat(value); score.push(value); }); return (score.length > 1) ? score : score[0]; }, setTarget: function (value, isKeep) {
        var opt = this.data('options'); if (opt.target) {
            var $target = $(opt.target); if ($target.length == 0) { $.error('target selector invalid or missing!'); } else {
                var score = value; if (score == null && !opt.cancel) { $.error('you must enable the "cancel" option to set hint on target.'); } else {
                    if (!isKeep || score == '') { score = opt.targetText; } else { if (opt.targetType == 'hint') { if (score === null && opt.cancel) { score = opt.cancelHint; } else { score = opt.hintList[Math.ceil(score - 1)]; } } else { if (score != '' && !opt.precision) { score = parseInt(score, 10); } else { score = parseFloat(score).toFixed(1); } } }
                    if (opt.targetFormat.indexOf('{score}') < 0) { $.error('template "{score}" missing!'); } else if (value !== null) { score = opt.targetFormat.toString().replace('{score}', score); }
                    if ($target.is(':input')) { $target.val(score); } else { $target.html(score); } 
                } 
            } 
        } 
    }, showHalf: function (score) { var opt = this.data('options'), diff = (score - Math.floor(score)).toFixed(1); if (diff > 0 && diff < .6) { this.children('img').not('.raty-cancel').eq(Math.ceil(score) - 1).attr('src', opt.path + opt.starHalf); } }, start: function (score) {
        return this.each(function () {
            var $this = $(this); if ($this.data('readonly') == 'readonly') { return false; }
            methods.initialize.call($this, score); var opt = $this.data('options'); methods.setTarget.call($this, score, true);
        });
    }, initialize: function (score) {
        var opt = this.data('options'); if (score < 0) { score = 0; } else if (score > opt.number) { score = opt.number; }
        methods.fillStar.call(this, score); if (score != '') {
            if (opt.halfShow) { methods.roundStar.call(this, score); }
            this.children('input').val(score);
        } 
    }, unfixHint: function () {
        var opt = this.data('options'), $imgs = this.children('img').filter(':not(.raty-cancel)'); for (var i = 0; i < opt.number; i++) { $imgs.eq(i).attr('title', (i < opt.hintList.length && opt.hintList[i] !== null) ? opt.hintList[i] : i); }
        this.css('cursor', 'pointer').removeData('readonly').removeAttr('title').children('input').attr('readonly', 'readonly');
    } 
    }; $.fn.raty = function (method) { if (methods[method]) { return methods[method].apply(this, Array.prototype.slice.call(arguments, 1)); } else if (typeof method === 'object' || !method) { return methods.init.apply(this, arguments); } else { $.error('Method ' + method + ' does not exist!'); } }; $.fn.raty.defaults = { cancel: false, cancelHint: 'cancel this rating!', cancelOff: 'cancel-off.png', cancelOn: 'cancel-on.png', cancelPlace: 'left', click: undefined, half: false, halfShow: true, hintList: ['bad', 'poor', 'regular', 'good', 'gorgeous'], iconRange: undefined, noRatedMsg: 'not rated yet', number: 5, path: 'img/', precision: false, round: { down: .25, full: .6, up: .76 }, readOnly: false, scoreName: 'score', single: false, size: 16, space: true, starHalf: 'star-half.png', starOff: 'star-off.png', starOn: 'star-on.png', start: 0, target: undefined, targetFormat: '{score}', targetKeep: false, targetText: '', targetType: 'hint', width: undefined };
})(jQuery);
//jPlayer 2.3
(function(b,f){"function"===typeof define&&define.amd?define(["jquery"],f):f(b.jQuery)})(this,function(b,f){b.fn.jPlayer=function(a){var c="string"===typeof a,d=Array.prototype.slice.call(arguments,1),e=this;a=!c&&d.length?b.extend.apply(null,[!0,a].concat(d)):a;if(c&&"_"===a.charAt(0))return e;c?this.each(function(){var c=b.data(this,"jPlayer"),h=c&&b.isFunction(c[a])?c[a].apply(c,d):c;if(h!==c&&h!==f)return e=h,!1}):this.each(function(){var c=b.data(this,"jPlayer");c?c.option(a||{}):b.data(this,
"jPlayer",new b.jPlayer(a,this))});return e};b.jPlayer=function(a,c){if(arguments.length){this.element=b(c);this.options=b.extend(!0,{},this.options,a);var d=this;this.element.bind("remove.jPlayer",function(){d.destroy()});this._init()}};b.jPlayer.emulateMethods="load play pause";b.jPlayer.emulateStatus="src readyState networkState currentTime duration paused ended playbackRate";b.jPlayer.emulateOptions="muted volume";b.jPlayer.reservedEvent="ready flashreset resize repeat error warning";b.jPlayer.event=
{};b.each("ready flashreset resize repeat click error warning loadstart progress suspend abort emptied stalled play pause loadedmetadata loadeddata waiting playing canplay canplaythrough seeking seeked timeupdate ended ratechange durationchange volumechange".split(" "),function(){b.jPlayer.event[this]="jPlayer_"+this});b.jPlayer.htmlEvent="loadstart abort emptied stalled loadedmetadata loadeddata canplay canplaythrough ratechange".split(" ");b.jPlayer.pause=function(){b.each(b.jPlayer.prototype.instances,
function(a,c){c.data("jPlayer").status.srcSet&&c.jPlayer("pause")})};b.jPlayer.timeFormat={showHour:!1,showMin:!0,showSec:!0,padHour:!1,padMin:!0,padSec:!0,sepHour:":",sepMin:":",sepSec:""};var l=function(){this.init()};l.prototype={init:function(){this.options={timeFormat:b.jPlayer.timeFormat}},time:function(a){var c=new Date(1E3*(a&&"number"===typeof a?a:0)),b=c.getUTCHours();a=this.options.timeFormat.showHour?c.getUTCMinutes():c.getUTCMinutes()+60*b;c=this.options.timeFormat.showMin?c.getUTCSeconds():
c.getUTCSeconds()+60*a;b=this.options.timeFormat.padHour&&10>b?"0"+b:b;a=this.options.timeFormat.padMin&&10>a?"0"+a:a;c=this.options.timeFormat.padSec&&10>c?"0"+c:c;b=""+(this.options.timeFormat.showHour?b+this.options.timeFormat.sepHour:"");b+=this.options.timeFormat.showMin?a+this.options.timeFormat.sepMin:"";return b+=this.options.timeFormat.showSec?c+this.options.timeFormat.sepSec:""}};var m=new l;b.jPlayer.convertTime=function(a){return m.time(a)};b.jPlayer.uaBrowser=function(a){a=a.toLowerCase();
var b=/(opera)(?:.*version)?[ \/]([\w.]+)/,d=/(msie) ([\w.]+)/,e=/(mozilla)(?:.*? rv:([\w.]+))?/;a=/(webkit)[ \/]([\w.]+)/.exec(a)||b.exec(a)||d.exec(a)||0>a.indexOf("compatible")&&e.exec(a)||[];return{browser:a[1]||"",version:a[2]||"0"}};b.jPlayer.uaPlatform=function(a){var b=a.toLowerCase(),d=/(android)/,e=/(mobile)/;a=/(ipad|iphone|ipod|android|blackberry|playbook|windows ce|webos)/.exec(b)||[];b=/(ipad|playbook)/.exec(b)||!e.exec(b)&&d.exec(b)||[];a[1]&&(a[1]=a[1].replace(/\s/g,"_"));return{platform:a[1]||
"",tablet:b[1]||""}};b.jPlayer.browser={};b.jPlayer.platform={};var j=b.jPlayer.uaBrowser(navigator.userAgent);j.browser&&(b.jPlayer.browser[j.browser]=!0,b.jPlayer.browser.version=j.version);j=b.jPlayer.uaPlatform(navigator.userAgent);j.platform&&(b.jPlayer.platform[j.platform]=!0,b.jPlayer.platform.mobile=!j.tablet,b.jPlayer.platform.tablet=!!j.tablet);b.jPlayer.getDocMode=function(){var a;b.jPlayer.browser.msie&&(document.documentMode?a=document.documentMode:(a=5,document.compatMode&&"CSS1Compat"===
document.compatMode&&(a=7)));return a};b.jPlayer.browser.documentMode=b.jPlayer.getDocMode();b.jPlayer.nativeFeatures={init:function(){var a=document,b=a.createElement("video"),d={w3c:"fullscreenEnabled fullscreenElement requestFullscreen exitFullscreen fullscreenchange fullscreenerror".split(" "),moz:"mozFullScreenEnabled mozFullScreenElement mozRequestFullScreen mozCancelFullScreen mozfullscreenchange mozfullscreenerror".split(" "),webkit:" webkitCurrentFullScreenElement webkitRequestFullScreen webkitCancelFullScreen webkitfullscreenchange ".split(" "),
webkitVideo:"webkitSupportsFullscreen webkitDisplayingFullscreen webkitEnterFullscreen webkitExitFullscreen  ".split(" ")},e=["w3c","moz","webkit","webkitVideo"],g,h;this.fullscreen=b={support:{w3c:!!a[d.w3c[0]],moz:!!a[d.moz[0]],webkit:"function"===typeof a[d.webkit[3]],webkitVideo:"function"===typeof b[d.webkitVideo[2]]},used:{}};g=0;for(h=e.length;g<h;g++){var f=e[g];if(b.support[f]){b.spec=f;b.used[f]=!0;break}}if(b.spec){var k=d[b.spec];b.api={fullscreenEnabled:!0,fullscreenElement:function(b){b=
b?b:a;return b[k[1]]},requestFullscreen:function(a){return a[k[2]]()},exitFullscreen:function(b){b=b?b:a;return b[k[3]]()}};b.event={fullscreenchange:k[4],fullscreenerror:k[5]}}else b.api={fullscreenEnabled:!1,fullscreenElement:function(){return null},requestFullscreen:function(){},exitFullscreen:function(){}},b.event={}}};b.jPlayer.nativeFeatures.init();b.jPlayer.focus=null;b.jPlayer.keyIgnoreElementNames="INPUT TEXTAREA";var n=function(a){var c=b.jPlayer.focus,d;c&&(b.each(b.jPlayer.keyIgnoreElementNames.split(/\s+/g),
function(b,c){if(a.target.nodeName.toUpperCase()===c.toUpperCase())return d=!0,!1}),d||b.each(c.options.keyBindings,function(d,g){if(g&&a.which===g.key&&b.isFunction(g.fn))return a.preventDefault(),g.fn(c),!1}))};b.jPlayer.keys=function(a){b(document.documentElement).unbind("keydown.jPlayer");a&&b(document.documentElement).bind("keydown.jPlayer",n)};b.jPlayer.keys(!0);b.jPlayer.prototype={count:0,version:{script:"2.3.0",needFlash:"2.3.0",flash:"unknown"},options:{swfPath:"js", playid: '0',solution:"html, flash",
supplied:"mp3",preload:"metadata",volume:0.8,muted:!1,wmode:"opaque",backgroundColor:"#000000",cssSelectorAncestor:"#jp_container_1",cssSelector:{videoPlay:".jp-video-play",play:".jp-play",pause:".jp-pause",stop:".jp-stop",seekBar:".jp-seek-bar",playBar:".jp-play-bar",mute:".jp-mute",unmute:".jp-unmute",volumeBar:".jp-volume-bar",volumeBarValue:".jp-volume-bar-value",volumeMax:".jp-volume-max",currentTime:".jp-current-time",duration:".jp-duration",fullScreen:".jp-full-screen",restoreScreen:".jp-restore-screen",
repeat:".jp-repeat",repeatOff:".jp-repeat-off",gui:".jp-gui",noSolution:".jp-no-solution"},smoothPlayBar:!1,fullScreen:!1,fullWindow:!1,autohide:{restored:!1,full:!0,fadeIn:200,fadeOut:600,hold:1E3},loop:!1,repeat:function(a){a.jPlayer.options.loop?b(this).unbind(".jPlayerRepeat").bind(b.jPlayer.event.ended+".jPlayer.jPlayerRepeat",function(){b(this).jPlayer("play")}):b(this).unbind(".jPlayerRepeat")},nativeVideoControls:{},noFullWindow:{msie:/msie [0-6]\./,ipad:/ipad.*?os [0-4]\./,iphone:/iphone/,
ipod:/ipod/,android_pad:/android [0-3]\.(?!.*?mobile)/,android_phone:/android.*?mobile/,blackberry:/blackberry/,windows_ce:/windows ce/,iemobile:/iemobile/,webos:/webos/},noVolume:{ipad:/ipad/,iphone:/iphone/,ipod:/ipod/,android_pad:/android(?!.*?mobile)/,android_phone:/android.*?mobile/,blackberry:/blackberry/,windows_ce:/windows ce/,iemobile:/iemobile/,webos:/webos/,playbook:/playbook/},timeFormat:{},keyEnabled:!1,audioFullScreen:!1,keyBindings:{play:{key:32,fn:function(a){a.status.paused?a.play():
a.pause()}},fullScreen:{key:13,fn:function(a){(a.status.video||a.options.audioFullScreen)&&a._setOption("fullScreen",!a.options.fullScreen)}},muted:{key:8,fn:function(a){a._muted(!a.options.muted)}},volumeUp:{key:38,fn:function(a){a.volume(a.options.volume+0.1)}},volumeDown:{key:40,fn:function(a){a.volume(a.options.volume-0.1)}}},verticalVolume:!1,idPrefix:"jp",noConflict:"jQuery",emulateHtml:!1,errorAlerts:!1,warningAlerts:!1},optionsAudio:{size:{width:"0px",height:"0px",cssClass:""},sizeFull:{width:"0px",
height:"0px",cssClass:""}},optionsVideo:{size:{width:"480px",height:"270px",cssClass:"jp-video-270p"},sizeFull:{width:"100%",height:"100%",cssClass:"jp-video-full"}},instances:{},status:{src:"",media:{},paused:!0,format:{},formatType:"",waitForPlay:!0,waitForLoad:!0,srcSet:!1,video:!1,seekPercent:0,currentPercentRelative:0,currentPercentAbsolute:0,currentTime:0,duration:0,videoWidth:0,videoHeight:0,readyState:0,networkState:0,playbackRate:1,ended:0},internal:{ready:!1},solution:{html:!0,flash:!0},
format:{mp3:{codec:'audio/mpeg; codecs="mp3"',flashCanPlay:!0,media:"audio"},m4a:{codec:'audio/mp4; codecs="mp4a.40.2"',flashCanPlay:!0,media:"audio"},oga:{codec:'audio/ogg; codecs="vorbis"',flashCanPlay:!1,media:"audio"},wav:{codec:'audio/wav; codecs="1"',flashCanPlay:!1,media:"audio"},webma:{codec:'audio/webm; codecs="vorbis"',flashCanPlay:!1,media:"audio"},fla:{codec:"audio/x-flv",flashCanPlay:!0,media:"audio"},rtmpa:{codec:'audio/rtmp; codecs="rtmp"',flashCanPlay:!0,media:"audio"},m4v:{codec:'video/mp4; codecs="avc1.42E01E, mp4a.40.2"',
flashCanPlay:!0,media:"video"},ogv:{codec:'video/ogg; codecs="theora, vorbis"',flashCanPlay:!1,media:"video"},webmv:{codec:'video/webm; codecs="vorbis, vp8"',flashCanPlay:!1,media:"video"},flv:{codec:"video/x-flv",flashCanPlay:!0,media:"video"},rtmpv:{codec:'video/rtmp; codecs="rtmp"',flashCanPlay:!0,media:"video"}},_init:function(){var a=this;this.element.empty();this.status=b.extend({},this.status);this.internal=b.extend({},this.internal);this.options.timeFormat=b.extend({},b.jPlayer.timeFormat,
this.options.timeFormat);this.internal.cmdsIgnored=b.jPlayer.platform.ipad||b.jPlayer.platform.iphone||b.jPlayer.platform.ipod;this.internal.domNode=this.element.get(0);this.options.keyEnabled&&!b.jPlayer.focus&&(b.jPlayer.focus=this);this.formats=[];this.solutions=[];this.require={};this.htmlElement={};this.html={};this.html.audio={};this.html.video={};this.flash={};this.css={};this.css.cs={};this.css.jq={};this.ancestorJq=[];this.options.volume=this._limitValue(this.options.volume,0,1);b.each(this.options.supplied.toLowerCase().split(","),
function(c,d){var e=d.replace(/^\s+|\s+$/g,"");if(a.format[e]){var f=!1;b.each(a.formats,function(a,b){if(e===b)return f=!0,!1});f||a.formats.push(e)}});b.each(this.options.solution.toLowerCase().split(","),function(c,d){var e=d.replace(/^\s+|\s+$/g,"");if(a.solution[e]){var f=!1;b.each(a.solutions,function(a,b){if(e===b)return f=!0,!1});f||a.solutions.push(e)}});this.internal.instance="jp_"+this.count;this.instances[this.internal.instance]=this.element;this.element.attr("id")||this.element.attr("id",
this.options.idPrefix+"_jplayer_"+this.options.playid);this.internal.self=b.extend({},{id:this.element.attr("id"),jq:this.element});this.internal.audio=b.extend({},{id:this.options.idPrefix+"_audio_"+this.count,jq:f});this.internal.video=b.extend({},{id:this.options.idPrefix+"_video_"+this.count,jq:f});this.internal.flash=b.extend({},{id:this.options.idPrefix+"_flash_"+this.count,jq:f,swf:this.options.swfPath+(".swf"!==this.options.swfPath.toLowerCase().slice(-4)?(this.options.swfPath&&"/"!==this.options.swfPath.slice(-1)?
"/":"")+"Jplayer.swf":"")});this.internal.poster=b.extend({},{id:this.options.idPrefix+"_poster_"+this.count,jq:f});b.each(b.jPlayer.event,function(b,c){a.options[b]!==f&&(a.element.bind(c+".jPlayer",a.options[b]),a.options[b]=f)});this.require.audio=!1;this.require.video=!1;b.each(this.formats,function(b,c){a.require[a.format[c].media]=!0});this.options=this.require.video?b.extend(!0,{},this.optionsVideo,this.options):b.extend(!0,{},this.optionsAudio,this.options);this._setSize();this.status.nativeVideoControls=
this._uaBlocklist(this.options.nativeVideoControls);this.status.noFullWindow=this._uaBlocklist(this.options.noFullWindow);this.status.noVolume=this._uaBlocklist(this.options.noVolume);b.jPlayer.nativeFeatures.fullscreen.api.fullscreenEnabled&&this._fullscreenAddEventListeners();this._restrictNativeVideoControls();this.htmlElement.poster=document.createElement("img");this.htmlElement.poster.id=this.internal.poster.id;this.htmlElement.poster.onload=function(){(!a.status.video||a.status.waitForPlay)&&
a.internal.poster.jq.show()};this.element.append(this.htmlElement.poster);this.internal.poster.jq=b("#"+this.internal.poster.id);this.internal.poster.jq.css({width:this.status.width,height:this.status.height});this.internal.poster.jq.hide();this.internal.poster.jq.bind("click.jPlayer",function(){a._trigger(b.jPlayer.event.click)});this.html.audio.available=!1;this.require.audio&&(this.htmlElement.audio=document.createElement("audio"),this.htmlElement.audio.id=this.internal.audio.id,this.html.audio.available=
!!this.htmlElement.audio.canPlayType&&this._testCanPlayType(this.htmlElement.audio));this.html.video.available=!1;this.require.video&&(this.htmlElement.video=document.createElement("video"),this.htmlElement.video.id=this.internal.video.id,this.html.video.available=!!this.htmlElement.video.canPlayType&&this._testCanPlayType(this.htmlElement.video));this.flash.available=this._checkForFlash(10.1);this.html.canPlay={};this.flash.canPlay={};b.each(this.formats,function(b,c){a.html.canPlay[c]=a.html[a.format[c].media].available&&
""!==a.htmlElement[a.format[c].media].canPlayType(a.format[c].codec);a.flash.canPlay[c]=a.format[c].flashCanPlay&&a.flash.available});this.html.desired=!1;this.flash.desired=!1;b.each(this.solutions,function(c,d){if(0===c)a[d].desired=!0;else{var e=!1,f=!1;b.each(a.formats,function(b,c){a[a.solutions[0]].canPlay[c]&&("video"===a.format[c].media?f=!0:e=!0)});a[d].desired=a.require.audio&&!e||a.require.video&&!f}});this.html.support={};this.flash.support={};b.each(this.formats,function(b,c){a.html.support[c]=
a.html.canPlay[c]&&a.html.desired;a.flash.support[c]=a.flash.canPlay[c]&&a.flash.desired});this.html.used=!1;this.flash.used=!1;b.each(this.solutions,function(c,d){b.each(a.formats,function(b,c){if(a[d].support[c])return a[d].used=!0,!1})});this._resetActive();this._resetGate();this._cssSelectorAncestor(this.options.cssSelectorAncestor);!this.html.used&&!this.flash.used?(this._error({type:b.jPlayer.error.NO_SOLUTION,context:"{solution:'"+this.options.solution+"', supplied:'"+this.options.supplied+
"'}",message:b.jPlayer.errorMsg.NO_SOLUTION,hint:b.jPlayer.errorHint.NO_SOLUTION}),this.css.jq.noSolution.length&&this.css.jq.noSolution.show()):this.css.jq.noSolution.length&&this.css.jq.noSolution.hide();if(this.flash.used){var c,d="jQuery="+encodeURI(this.options.noConflict)+"&id="+encodeURI(this.internal.self.id)+"&vol="+this.options.volume+"&muted="+this.options.muted;if(b.jPlayer.browser.msie&&(9>Number(b.jPlayer.browser.version)||9>b.jPlayer.browser.documentMode)){d=['<param name="movie" value="'+
this.internal.flash.swf+'" />','<param name="FlashVars" value="'+d+'" />','<param name="allowScriptAccess" value="always" />','<param name="bgcolor" value="'+this.options.backgroundColor+'" />','<param name="wmode" value="'+this.options.wmode+'" />'];c=document.createElement('<object id="'+this.internal.flash.id+'" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="0" height="0" tabindex="-1"></object>');for(var e=0;e<d.length;e++)c.appendChild(document.createElement(d[e]))}else e=function(a,
b,c){var d=document.createElement("param");d.setAttribute("name",b);d.setAttribute("value",c);a.appendChild(d)},c=document.createElement("object"),c.setAttribute("id",this.internal.flash.id),c.setAttribute("data",this.internal.flash.swf),c.setAttribute("type","application/x-shockwave-flash"),c.setAttribute("width","1"),c.setAttribute("height","1"),c.setAttribute("tabindex","-1"),e(c,"flashvars",d),e(c,"allowscriptaccess","always"),e(c,"bgcolor",this.options.backgroundColor),e(c,"wmode",this.options.wmode);
this.element.append(c);this.internal.flash.jq=b(c)}this.html.used&&(this.html.audio.available&&(this._addHtmlEventListeners(this.htmlElement.audio,this.html.audio),this.element.append(this.htmlElement.audio),this.internal.audio.jq=b("#"+this.internal.audio.id)),this.html.video.available&&(this._addHtmlEventListeners(this.htmlElement.video,this.html.video),this.element.append(this.htmlElement.video),this.internal.video.jq=b("#"+this.internal.video.id),this.status.nativeVideoControls?this.internal.video.jq.css({width:this.status.width,
height:this.status.height}):this.internal.video.jq.css({width:"0px",height:"0px"}),this.internal.video.jq.bind("click.jPlayer",function(){a._trigger(b.jPlayer.event.click)})));this.options.emulateHtml&&this._emulateHtmlBridge();this.html.used&&!this.flash.used&&setTimeout(function(){a.internal.ready=!0;a.version.flash="n/a";a._trigger(b.jPlayer.event.repeat);a._trigger(b.jPlayer.event.ready)},100);this._updateNativeVideoControls();this._updateInterface();this._updateButtons(!1);this._updateAutohide();
this._updateVolume(this.options.volume);this._updateMute(this.options.muted);this.css.jq.videoPlay.length&&this.css.jq.videoPlay.hide();b.jPlayer.prototype.count++},destroy:function(){this.clearMedia();this._removeUiClass();this.css.jq.currentTime.length&&this.css.jq.currentTime.text("");this.css.jq.duration.length&&this.css.jq.duration.text("");b.each(this.css.jq,function(a,b){b.length&&b.unbind(".jPlayer")});this.internal.poster.jq.unbind(".jPlayer");this.internal.video.jq&&this.internal.video.jq.unbind(".jPlayer");
this._fullscreenRemoveEventListeners();this===b.jPlayer.focus&&(b.jPlayer.focus=null);this.options.emulateHtml&&this._destroyHtmlBridge();this.element.removeData("jPlayer");this.element.unbind(".jPlayer");this.element.empty();delete this.instances[this.internal.instance]},enable:function(){},disable:function(){},_testCanPlayType:function(a){try{return a.canPlayType(this.format.mp3.codec),!0}catch(b){return!1}},_uaBlocklist:function(a){var c=navigator.userAgent.toLowerCase(),d=!1;b.each(a,function(a,
b){if(b&&b.test(c))return d=!0,!1});return d},_restrictNativeVideoControls:function(){this.require.audio&&this.status.nativeVideoControls&&(this.status.nativeVideoControls=!1,this.status.noFullWindow=!0)},_updateNativeVideoControls:function(){this.html.video.available&&this.html.used&&(this.htmlElement.video.controls=this.status.nativeVideoControls,this._updateAutohide(),this.status.nativeVideoControls&&this.require.video?(this.internal.poster.jq.hide(),this.internal.video.jq.css({width:this.status.width,
height:this.status.height})):this.status.waitForPlay&&this.status.video&&(this.internal.poster.jq.show(),this.internal.video.jq.css({width:"0px",height:"0px"})))},_addHtmlEventListeners:function(a,c){var d=this;a.preload=this.options.preload;a.muted=this.options.muted;a.volume=this.options.volume;a.addEventListener("progress",function(){c.gate&&(d.internal.cmdsIgnored&&0<this.readyState&&(d.internal.cmdsIgnored=!1),d._getHtmlStatus(a),d._updateInterface(),d._trigger(b.jPlayer.event.progress))},!1);
a.addEventListener("timeupdate",function(){c.gate&&(d._getHtmlStatus(a),d._updateInterface(),d._trigger(b.jPlayer.event.timeupdate))},!1);a.addEventListener("durationchange",function(){c.gate&&(d._getHtmlStatus(a),d._updateInterface(),d._trigger(b.jPlayer.event.durationchange))},!1);a.addEventListener("play",function(){c.gate&&(d._updateButtons(!0),d._html_checkWaitForPlay(),d._trigger(b.jPlayer.event.play))},!1);a.addEventListener("playing",function(){c.gate&&(d._updateButtons(!0),d._seeked(),d._trigger(b.jPlayer.event.playing))},
!1);a.addEventListener("pause",function(){c.gate&&(d._updateButtons(!1),d._trigger(b.jPlayer.event.pause))},!1);a.addEventListener("waiting",function(){c.gate&&(d._seeking(),d._trigger(b.jPlayer.event.waiting))},!1);a.addEventListener("seeking",function(){c.gate&&(d._seeking(),d._trigger(b.jPlayer.event.seeking))},!1);a.addEventListener("seeked",function(){c.gate&&(d._seeked(),d._trigger(b.jPlayer.event.seeked))},!1);a.addEventListener("volumechange",function(){c.gate&&(d.options.volume=a.volume,
d.options.muted=a.muted,d._updateMute(),d._updateVolume(),d._trigger(b.jPlayer.event.volumechange))},!1);a.addEventListener("suspend",function(){c.gate&&(d._seeked(),d._trigger(b.jPlayer.event.suspend))},!1);a.addEventListener("ended",function(){c.gate&&(b.jPlayer.browser.webkit||(d.htmlElement.media.currentTime=0),d.htmlElement.media.pause(),d._updateButtons(!1),d._getHtmlStatus(a,!0),d._updateInterface(),d._trigger(b.jPlayer.event.ended))},!1);a.addEventListener("error",function(){c.gate&&(d._updateButtons(!1),
d._seeked(),d.status.srcSet&&(clearTimeout(d.internal.htmlDlyCmdId),d.status.waitForLoad=!0,d.status.waitForPlay=!0,d.status.video&&!d.status.nativeVideoControls&&d.internal.video.jq.css({width:"0px",height:"0px"}),d._validString(d.status.media.poster)&&!d.status.nativeVideoControls&&d.internal.poster.jq.show(),d.css.jq.videoPlay.length&&d.css.jq.videoPlay.show(),d._error({type:b.jPlayer.error.URL,context:d.status.src,message:b.jPlayer.errorMsg.URL,hint:b.jPlayer.errorHint.URL})))},!1);b.each(b.jPlayer.htmlEvent,
function(e,g){a.addEventListener(this,function(){c.gate&&d._trigger(b.jPlayer.event[g])},!1)})},_getHtmlStatus:function(a,b){var d=0,e=0,g=0,f=0;isFinite(a.duration)&&(this.status.duration=a.duration);d=a.currentTime;e=0<this.status.duration?100*d/this.status.duration:0;"object"===typeof a.seekable&&0<a.seekable.length?(g=0<this.status.duration?100*a.seekable.end(a.seekable.length-1)/this.status.duration:100,f=0<this.status.duration?100*a.currentTime/a.seekable.end(a.seekable.length-1):0):(g=100,
f=e);b&&(e=f=d=0);this.status.seekPercent=g;this.status.currentPercentRelative=f;this.status.currentPercentAbsolute=e;this.status.currentTime=d;this.status.videoWidth=a.videoWidth;this.status.videoHeight=a.videoHeight;this.status.readyState=a.readyState;this.status.networkState=a.networkState;this.status.playbackRate=a.playbackRate;this.status.ended=a.ended},_resetStatus:function(){this.status=b.extend({},this.status,b.jPlayer.prototype.status)},_trigger:function(a,c,d){a=b.Event(a);a.jPlayer={};
a.jPlayer.version=b.extend({},this.version);a.jPlayer.options=b.extend(!0,{},this.options);a.jPlayer.status=b.extend(!0,{},this.status);a.jPlayer.html=b.extend(!0,{},this.html);a.jPlayer.flash=b.extend(!0,{},this.flash);c&&(a.jPlayer.error=b.extend({},c));d&&(a.jPlayer.warning=b.extend({},d));this.element.trigger(a)},jPlayerFlashEvent:function(a,c){if(a===b.jPlayer.event.ready)if(this.internal.ready){if(this.flash.gate){if(this.status.srcSet){var d=this.status.currentTime,e=this.status.paused;this.setMedia(this.status.media);
0<d&&(e?this.pause(d):this.play(d))}this._trigger(b.jPlayer.event.flashreset)}}else this.internal.ready=!0,this.internal.flash.jq.css({width:"0px",height:"0px"}),this.version.flash=c.version,this.version.needFlash!==this.version.flash&&this._error({type:b.jPlayer.error.VERSION,context:this.version.flash,message:b.jPlayer.errorMsg.VERSION+this.version.flash,hint:b.jPlayer.errorHint.VERSION}),this._trigger(b.jPlayer.event.repeat),this._trigger(a);if(this.flash.gate)switch(a){case b.jPlayer.event.progress:this._getFlashStatus(c);
this._updateInterface();this._trigger(a);break;case b.jPlayer.event.timeupdate:this._getFlashStatus(c);this._updateInterface();this._trigger(a);break;case b.jPlayer.event.play:this._seeked();this._updateButtons(!0);this._trigger(a);break;case b.jPlayer.event.pause:this._updateButtons(!1);this._trigger(a);break;case b.jPlayer.event.ended:this._updateButtons(!1);this._trigger(a);break;case b.jPlayer.event.click:this._trigger(a);break;case b.jPlayer.event.error:this.status.waitForLoad=!0;this.status.waitForPlay=
!0;this.status.video&&this.internal.flash.jq.css({width:"0px",height:"0px"});this._validString(this.status.media.poster)&&this.internal.poster.jq.show();this.css.jq.videoPlay.length&&this.status.video&&this.css.jq.videoPlay.show();this.status.video?this._flash_setVideo(this.status.media):this._flash_setAudio(this.status.media);this._updateButtons(!1);this._error({type:b.jPlayer.error.URL,context:c.src,message:b.jPlayer.errorMsg.URL,hint:b.jPlayer.errorHint.URL});break;case b.jPlayer.event.seeking:this._seeking();
this._trigger(a);break;case b.jPlayer.event.seeked:this._seeked();this._trigger(a);break;case b.jPlayer.event.ready:break;default:this._trigger(a)}return!1},_getFlashStatus:function(a){this.status.seekPercent=a.seekPercent;this.status.currentPercentRelative=a.currentPercentRelative;this.status.currentPercentAbsolute=a.currentPercentAbsolute;this.status.currentTime=a.currentTime;this.status.duration=a.duration;this.status.videoWidth=a.videoWidth;this.status.videoHeight=a.videoHeight;this.status.readyState=
4;this.status.networkState=0;this.status.playbackRate=1;this.status.ended=!1},_updateButtons:function(a){a!==f&&(this.status.paused=!a,this.css.jq.play.length&&this.css.jq.pause.length&&(a?(this.css.jq.play.hide(),this.css.jq.pause.show()):(this.css.jq.play.show(),this.css.jq.pause.hide())));this.css.jq.restoreScreen.length&&this.css.jq.fullScreen.length&&(this.status.noFullWindow?(this.css.jq.fullScreen.hide(),this.css.jq.restoreScreen.hide()):this.options.fullWindow?(this.css.jq.fullScreen.hide(),
this.css.jq.restoreScreen.show()):(this.css.jq.fullScreen.show(),this.css.jq.restoreScreen.hide()));this.css.jq.repeat.length&&this.css.jq.repeatOff.length&&(this.options.loop?(this.css.jq.repeat.hide(),this.css.jq.repeatOff.show()):(this.css.jq.repeat.show(),this.css.jq.repeatOff.hide()))},_updateInterface:function(){this.css.jq.seekBar.length&&this.css.jq.seekBar.width(this.status.seekPercent+"%");this.css.jq.playBar.length&&(this.options.smoothPlayBar?this.css.jq.playBar.stop().animate({width:this.status.currentPercentAbsolute+
"%"},250,"linear"):this.css.jq.playBar.width(this.status.currentPercentRelative+"%"));this.css.jq.currentTime.length&&this.css.jq.currentTime.text(this._convertTime(this.status.currentTime));this.css.jq.duration.length&&this.css.jq.duration.text(this._convertTime(this.status.duration))},_convertTime:l.prototype.time,_seeking:function(){this.css.jq.seekBar.length&&this.css.jq.seekBar.addClass("jp-seeking-bg")},_seeked:function(){this.css.jq.seekBar.length&&this.css.jq.seekBar.removeClass("jp-seeking-bg")},
_resetGate:function(){this.html.audio.gate=!1;this.html.video.gate=!1;this.flash.gate=!1},_resetActive:function(){this.html.active=!1;this.flash.active=!1},setMedia:function(a){var c=this,d=!1,e=this.status.media.poster!==a.poster;this._resetMedia();this._resetGate();this._resetActive();b.each(this.formats,function(e,f){var j="video"===c.format[f].media;b.each(c.solutions,function(b,e){if(c[e].support[f]&&c._validString(a[f])){var g="html"===e;j?(g?(c.html.video.gate=!0,c._html_setVideo(a),c.html.active=
!0):(c.flash.gate=!0,c._flash_setVideo(a),c.flash.active=!0),c.css.jq.videoPlay.length&&c.css.jq.videoPlay.show(),c.status.video=!0):(g?(c.html.audio.gate=!0,c._html_setAudio(a),c.html.active=!0):(c.flash.gate=!0,c._flash_setAudio(a),c.flash.active=!0),c.css.jq.videoPlay.length&&c.css.jq.videoPlay.hide(),c.status.video=!1);d=!0;return!1}});if(d)return!1});if(d){if((!this.status.nativeVideoControls||!this.html.video.gate)&&this._validString(a.poster))e?this.htmlElement.poster.src=a.poster:this.internal.poster.jq.show();
this.status.srcSet=!0;this.status.media=b.extend({},a);this._updateButtons(!1);this._updateInterface()}else this._error({type:b.jPlayer.error.NO_SUPPORT,context:"{supplied:'"+this.options.supplied+"'}",message:b.jPlayer.errorMsg.NO_SUPPORT,hint:b.jPlayer.errorHint.NO_SUPPORT})},_resetMedia:function(){this._resetStatus();this._updateButtons(!1);this._updateInterface();this._seeked();this.internal.poster.jq.hide();clearTimeout(this.internal.htmlDlyCmdId);this.html.active?this._html_resetMedia():this.flash.active&&
this._flash_resetMedia()},clearMedia:function(){this._resetMedia();this.html.active?this._html_clearMedia():this.flash.active&&this._flash_clearMedia();this._resetGate();this._resetActive()},load:function(){this.status.srcSet?this.html.active?this._html_load():this.flash.active&&this._flash_load():this._urlNotSetError("load")},focus:function(){this.options.keyEnabled&&(b.jPlayer.focus=this)}, play: function(time) {
    var self = this;
  var handlerPath = "/Ajax/Ajax_SNS.aspx";
        if (!this.status.srcSet) { 
	   var mo=$("#jp_container_"+self.options.playid).attr("mo"); 
            $.get(handlerPath, { tid: self.options.playid, t: 'playMusic',m:mo}, function(callback) { 
                if ($.callback_detect(callback)) {
                    $.prompt_score("成功播放", callback.score); 
                    self.setMedia({ mp3: callback.text });
                    $("#dl_" + self.options.id).find("em:eq(0)").text("已播放" + callback.playcount + "次");
                    self.play_t(time);
                }
            }, "json");
        } else {
            self.play_t(time);
        }
},
play_t:function(a){a="number"===typeof a?a:NaN;this.status.srcSet?(this.focus(),this.html.active?this._html_play(a):
this.flash.active&&this._flash_play(a)):this._urlNotSetError("play")},videoPlay:function(){this.play()},pause:function(a){a="number"===typeof a?a:NaN;this.status.srcSet?this.html.active?this._html_pause(a):this.flash.active&&this._flash_pause(a):this._urlNotSetError("pause")},pauseOthers:function(){var a=this;b.each(this.instances,function(b,d){a.element!==d&&d.data("jPlayer").status.srcSet&&d.jPlayer("pause")})},stop:function(){this.status.srcSet?this.html.active?this._html_pause(0):this.flash.active&&
this._flash_pause(0):this._urlNotSetError("stop")},playHead:function(a){a=this._limitValue(a,0,100);this.status.srcSet?this.html.active?this._html_playHead(a):this.flash.active&&this._flash_playHead(a):this._urlNotSetError("playHead")},_muted:function(a){this.options.muted=a;this.html.used&&this._html_mute(a);this.flash.used&&this._flash_mute(a);!this.html.video.gate&&!this.html.audio.gate&&(this._updateMute(a),this._updateVolume(this.options.volume),this._trigger(b.jPlayer.event.volumechange))},
mute:function(a){a=a===f?!0:!!a;this._muted(a)},unmute:function(a){a=a===f?!0:!!a;this._muted(!a)},_updateMute:function(a){a===f&&(a=this.options.muted);this.css.jq.mute.length&&this.css.jq.unmute.length&&(this.status.noVolume?(this.css.jq.mute.hide(),this.css.jq.unmute.hide()):a?(this.css.jq.mute.hide(),this.css.jq.unmute.show()):(this.css.jq.mute.show(),this.css.jq.unmute.hide()))},volume:function(a){a=this._limitValue(a,0,1);this.options.volume=a;this.html.used&&this._html_volume(a);this.flash.used&&
this._flash_volume(a);!this.html.video.gate&&!this.html.audio.gate&&(this._updateVolume(a),this._trigger(b.jPlayer.event.volumechange))},volumeBar:function(a){if(this.css.jq.volumeBar.length){var b=this.css.jq.volumeBar.offset(),d=a.pageX-b.left,e=this.css.jq.volumeBar.width();a=this.css.jq.volumeBar.height()-a.pageY+b.top;b=this.css.jq.volumeBar.height();this.options.verticalVolume?this.volume(a/b):this.volume(d/e)}this.options.muted&&this._muted(!1)},volumeBarValue:function(a){this.volumeBar(a)},
_updateVolume:function(a){a===f&&(a=this.options.volume);a=this.options.muted?0:a;this.status.noVolume?(this.css.jq.volumeBar.length&&this.css.jq.volumeBar.hide(),this.css.jq.volumeBarValue.length&&this.css.jq.volumeBarValue.hide(),this.css.jq.volumeMax.length&&this.css.jq.volumeMax.hide()):(this.css.jq.volumeBar.length&&this.css.jq.volumeBar.show(),this.css.jq.volumeBarValue.length&&(this.css.jq.volumeBarValue.show(),this.css.jq.volumeBarValue[this.options.verticalVolume?"height":"width"](100*a+
"%")),this.css.jq.volumeMax.length&&this.css.jq.volumeMax.show())},volumeMax:function(){this.volume(1);this.options.muted&&this._muted(!1)},_cssSelectorAncestor:function(a){var c=this;this.options.cssSelectorAncestor=a;this._removeUiClass();this.ancestorJq=a?b(a):[];a&&1!==this.ancestorJq.length&&this._warning({type:b.jPlayer.warning.CSS_SELECTOR_COUNT,context:a,message:b.jPlayer.warningMsg.CSS_SELECTOR_COUNT+this.ancestorJq.length+" found for cssSelectorAncestor.",hint:b.jPlayer.warningHint.CSS_SELECTOR_COUNT});
this._addUiClass();b.each(this.options.cssSelector,function(a,b){c._cssSelector(a,b)})},_cssSelector:function(a,c){var d=this;"string"===typeof c?b.jPlayer.prototype.options.cssSelector[a]?(this.css.jq[a]&&this.css.jq[a].length&&this.css.jq[a].unbind(".jPlayer"),this.options.cssSelector[a]=c,this.css.cs[a]=this.options.cssSelectorAncestor+" "+c,this.css.jq[a]=c?b(this.css.cs[a]):[],this.css.jq[a].length&&this.css.jq[a].bind("click.jPlayer",function(c){c.preventDefault();d[a](c);b(this).blur()}),c&&
1!==this.css.jq[a].length&&this._warning({type:b.jPlayer.warning.CSS_SELECTOR_COUNT,context:this.css.cs[a],message:b.jPlayer.warningMsg.CSS_SELECTOR_COUNT+this.css.jq[a].length+" found for "+a+" method.",hint:b.jPlayer.warningHint.CSS_SELECTOR_COUNT})):this._warning({type:b.jPlayer.warning.CSS_SELECTOR_METHOD,context:a,message:b.jPlayer.warningMsg.CSS_SELECTOR_METHOD,hint:b.jPlayer.warningHint.CSS_SELECTOR_METHOD}):this._warning({type:b.jPlayer.warning.CSS_SELECTOR_STRING,context:c,message:b.jPlayer.warningMsg.CSS_SELECTOR_STRING,
hint:b.jPlayer.warningHint.CSS_SELECTOR_STRING})},seekBar:function(a){if(this.css.jq.seekBar){var b=this.css.jq.seekBar.offset();a=a.pageX-b.left;b=this.css.jq.seekBar.width();this.playHead(100*a/b)}},playBar:function(a){this.seekBar(a)},repeat:function(){this._loop(!0)},repeatOff:function(){this._loop(!1)},_loop:function(a){this.options.loop!==a&&(this.options.loop=a,this._updateButtons(),this._trigger(b.jPlayer.event.repeat))},currentTime:function(){},duration:function(){},gui:function(){},noSolution:function(){},
option:function(a,c){var d=a;if(0===arguments.length)return b.extend(!0,{},this.options);if("string"===typeof a){var e=a.split(".");if(c===f){for(var d=b.extend(!0,{},this.options),g=0;g<e.length;g++)if(d[e[g]]!==f)d=d[e[g]];else return this._warning({type:b.jPlayer.warning.OPTION_KEY,context:a,message:b.jPlayer.warningMsg.OPTION_KEY,hint:b.jPlayer.warningHint.OPTION_KEY}),f;return d}for(var g=d={},h=0;h<e.length;h++)h<e.length-1?(g[e[h]]={},g=g[e[h]]):g[e[h]]=c}this._setOptions(d);return this},_setOptions:function(a){var c=
this;b.each(a,function(a,b){c._setOption(a,b)});return this},_setOption:function(a,c){var d=this;switch(a){case "volume":this.volume(c);break;case "muted":this._muted(c);break;case "cssSelectorAncestor":this._cssSelectorAncestor(c);break;case "cssSelector":b.each(c,function(a,b){d._cssSelector(a,b)});break;case "fullScreen":if(this.options[a]!==c){var e=b.jPlayer.nativeFeatures.fullscreen.used.webkitVideo;if(!e||e&&!this.status.waitForPlay)e||(this.options[a]=c),c?this._requestFullscreen():this._exitFullscreen(),
e||this._setOption("fullWindow",c)}break;case "fullWindow":this.options[a]!==c&&(this._removeUiClass(),this.options[a]=c,this._refreshSize());break;case "size":!this.options.fullWindow&&this.options[a].cssClass!==c.cssClass&&this._removeUiClass();this.options[a]=b.extend({},this.options[a],c);this._refreshSize();break;case "sizeFull":this.options.fullWindow&&this.options[a].cssClass!==c.cssClass&&this._removeUiClass();this.options[a]=b.extend({},this.options[a],c);this._refreshSize();break;case "autohide":this.options[a]=
b.extend({},this.options[a],c);this._updateAutohide();break;case "loop":this._loop(c);break;case "nativeVideoControls":this.options[a]=b.extend({},this.options[a],c);this.status.nativeVideoControls=this._uaBlocklist(this.options.nativeVideoControls);this._restrictNativeVideoControls();this._updateNativeVideoControls();break;case "noFullWindow":this.options[a]=b.extend({},this.options[a],c);this.status.nativeVideoControls=this._uaBlocklist(this.options.nativeVideoControls);this.status.noFullWindow=
this._uaBlocklist(this.options.noFullWindow);this._restrictNativeVideoControls();this._updateButtons();break;case "noVolume":this.options[a]=b.extend({},this.options[a],c);this.status.noVolume=this._uaBlocklist(this.options.noVolume);this._updateVolume();this._updateMute();break;case "emulateHtml":this.options[a]!==c&&((this.options[a]=c)?this._emulateHtmlBridge():this._destroyHtmlBridge());break;case "timeFormat":this.options[a]=b.extend({},this.options[a],c);break;case "keyEnabled":this.options[a]=
c;!c&&this===b.jPlayer.focus&&(b.jPlayer.focus=null);break;case "keyBindings":this.options[a]=b.extend(!0,{},this.options[a],c);break;case "audioFullScreen":this.options[a]=c}return this},_refreshSize:function(){this._setSize();this._addUiClass();this._updateSize();this._updateButtons();this._updateAutohide();this._trigger(b.jPlayer.event.resize)},_setSize:function(){this.options.fullWindow?(this.status.width=this.options.sizeFull.width,this.status.height=this.options.sizeFull.height,this.status.cssClass=
this.options.sizeFull.cssClass):(this.status.width=this.options.size.width,this.status.height=this.options.size.height,this.status.cssClass=this.options.size.cssClass);this.element.css({width:this.status.width,height:this.status.height})},_addUiClass:function(){this.ancestorJq.length&&this.ancestorJq.addClass(this.status.cssClass)},_removeUiClass:function(){this.ancestorJq.length&&this.ancestorJq.removeClass(this.status.cssClass)},_updateSize:function(){this.internal.poster.jq.css({width:this.status.width,
height:this.status.height});!this.status.waitForPlay&&this.html.active&&this.status.video||this.html.video.available&&this.html.used&&this.status.nativeVideoControls?this.internal.video.jq.css({width:this.status.width,height:this.status.height}):!this.status.waitForPlay&&(this.flash.active&&this.status.video)&&this.internal.flash.jq.css({width:this.status.width,height:this.status.height})},_updateAutohide:function(){var a=this,b=function(){a.css.jq.gui.fadeIn(a.options.autohide.fadeIn,function(){clearTimeout(a.internal.autohideId);
a.internal.autohideId=setTimeout(function(){a.css.jq.gui.fadeOut(a.options.autohide.fadeOut)},a.options.autohide.hold)})};this.css.jq.gui.length&&(this.css.jq.gui.stop(!0,!0),clearTimeout(this.internal.autohideId),this.element.unbind(".jPlayerAutohide"),this.css.jq.gui.unbind(".jPlayerAutohide"),this.status.nativeVideoControls?this.css.jq.gui.hide():this.options.fullWindow&&this.options.autohide.full||!this.options.fullWindow&&this.options.autohide.restored?(this.element.bind("mousemove.jPlayer.jPlayerAutohide",
b),this.css.jq.gui.bind("mousemove.jPlayer.jPlayerAutohide",b),this.css.jq.gui.hide()):this.css.jq.gui.show())},fullScreen:function(){this._setOption("fullScreen",!0)},restoreScreen:function(){this._setOption("fullScreen",!1)},_fullscreenAddEventListeners:function(){var a=this,c=b.jPlayer.nativeFeatures.fullscreen;c.api.fullscreenEnabled&&c.event.fullscreenchange&&("function"!==typeof this.internal.fullscreenchangeHandler&&(this.internal.fullscreenchangeHandler=function(){a._fullscreenchange()}),
document.addEventListener(c.event.fullscreenchange,this.internal.fullscreenchangeHandler,!1))},_fullscreenRemoveEventListeners:function(){var a=b.jPlayer.nativeFeatures.fullscreen;this.internal.fullscreenchangeHandler&&document.addEventListener(a.event.fullscreenchange,this.internal.fullscreenchangeHandler,!1)},_fullscreenchange:function(){this.options.fullScreen&&!b.jPlayer.nativeFeatures.fullscreen.api.fullscreenElement()&&this._setOption("fullScreen",!1)},_requestFullscreen:function(){var a=this.ancestorJq.length?
this.ancestorJq[0]:this.element[0],c=b.jPlayer.nativeFeatures.fullscreen;c.used.webkitVideo&&(a=this.htmlElement.video);c.api.fullscreenEnabled&&c.api.requestFullscreen(a)},_exitFullscreen:function(){var a=b.jPlayer.nativeFeatures.fullscreen,c;a.used.webkitVideo&&(c=this.htmlElement.video);a.api.fullscreenEnabled&&a.api.exitFullscreen(c)},_html_initMedia:function(a){var c=b(this.htmlElement.media).empty();b.each(a.track||[],function(a,b){var g=document.createElement("track");g.setAttribute("kind",
b.kind?b.kind:"");g.setAttribute("src",b.src?b.src:"");g.setAttribute("srclang",b.srclang?b.srclang:"");g.setAttribute("label",b.label?b.label:"");b.def&&g.setAttribute("default",b.def);c.append(g)});this.htmlElement.media.src=this.status.src;"none"!==this.options.preload&&this._html_load();this._trigger(b.jPlayer.event.timeupdate)},_html_setFormat:function(a){var c=this;b.each(this.formats,function(b,e){if(c.html.support[e]&&a[e])return c.status.src=a[e],c.status.format[e]=!0,c.status.formatType=
e,!1})},_html_setAudio:function(a){this._html_setFormat(a);this.htmlElement.media=this.htmlElement.audio;this._html_initMedia(a)},_html_setVideo:function(a){this._html_setFormat(a);this.status.nativeVideoControls&&(this.htmlElement.video.poster=this._validString(a.poster)?a.poster:"");this.htmlElement.media=this.htmlElement.video;this._html_initMedia(a)},_html_resetMedia:function(){this.htmlElement.media&&(this.htmlElement.media.id===this.internal.video.id&&!this.status.nativeVideoControls&&this.internal.video.jq.css({width:"0px",
height:"0px"}),this.htmlElement.media.pause())},_html_clearMedia:function(){this.htmlElement.media&&(this.htmlElement.media.src="about:blank",this.htmlElement.media.load())},_html_load:function(){this.status.waitForLoad&&(this.status.waitForLoad=!1,this.htmlElement.media.load());clearTimeout(this.internal.htmlDlyCmdId)},_html_play:function(a){var b=this,d=this.htmlElement.media;this._html_load();if(isNaN(a))d.play();else{this.internal.cmdsIgnored&&d.play();try{if(!d.seekable||"object"===typeof d.seekable&&
0<d.seekable.length)d.currentTime=a,d.play();else throw 1;}catch(e){this.internal.htmlDlyCmdId=setTimeout(function(){b.play(a)},250);return}}this._html_checkWaitForPlay()},_html_pause:function(a){var b=this,d=this.htmlElement.media;0<a?this._html_load():clearTimeout(this.internal.htmlDlyCmdId);d.pause();if(!isNaN(a))try{if(!d.seekable||"object"===typeof d.seekable&&0<d.seekable.length)d.currentTime=a;else throw 1;}catch(e){this.internal.htmlDlyCmdId=setTimeout(function(){b.pause(a)},250);return}0<
a&&this._html_checkWaitForPlay()},_html_playHead:function(a){var b=this,d=this.htmlElement.media;this._html_load();try{if("object"===typeof d.seekable&&0<d.seekable.length)d.currentTime=a*d.seekable.end(d.seekable.length-1)/100;else if(0<d.duration&&!isNaN(d.duration))d.currentTime=a*d.duration/100;else throw"e";}catch(e){this.internal.htmlDlyCmdId=setTimeout(function(){b.playHead(a)},250);return}this.status.waitForLoad||this._html_checkWaitForPlay()},_html_checkWaitForPlay:function(){this.status.waitForPlay&&
(this.status.waitForPlay=!1,this.css.jq.videoPlay.length&&this.css.jq.videoPlay.hide(),this.status.video&&(this.internal.poster.jq.hide(),this.internal.video.jq.css({width:this.status.width,height:this.status.height})))},_html_volume:function(a){this.html.audio.available&&(this.htmlElement.audio.volume=a);this.html.video.available&&(this.htmlElement.video.volume=a)},_html_mute:function(a){this.html.audio.available&&(this.htmlElement.audio.muted=a);this.html.video.available&&(this.htmlElement.video.muted=
a)},_flash_setAudio:function(a){var c=this;try{b.each(this.formats,function(b,d){if(c.flash.support[d]&&a[d]){switch(d){case "m4a":case "fla":c._getMovie().fl_setAudio_m4a(a[d]);break;case "mp3":c._getMovie().fl_setAudio_mp3(a[d]);break;case "rtmpa":c._getMovie().fl_setAudio_rtmp(a[d])}c.status.src=a[d];c.status.format[d]=!0;c.status.formatType=d;return!1}}),"auto"===this.options.preload&&(this._flash_load(),this.status.waitForLoad=!1)}catch(d){this._flashError(d)}},_flash_setVideo:function(a){var c=
this;try{b.each(this.formats,function(b,d){if(c.flash.support[d]&&a[d]){switch(d){case "m4v":case "flv":c._getMovie().fl_setVideo_m4v(a[d]);break;case "rtmpv":c._getMovie().fl_setVideo_rtmp(a[d])}c.status.src=a[d];c.status.format[d]=!0;c.status.formatType=d;return!1}}),"auto"===this.options.preload&&(this._flash_load(),this.status.waitForLoad=!1)}catch(d){this._flashError(d)}},_flash_resetMedia:function(){this.internal.flash.jq.css({width:"0px",height:"0px"});this._flash_pause(NaN)},_flash_clearMedia:function(){try{this._getMovie().fl_clearMedia()}catch(a){this._flashError(a)}},
_flash_load:function(){try{this._getMovie().fl_load()}catch(a){this._flashError(a)}this.status.waitForLoad=!1},_flash_play:function(a){try{this._getMovie().fl_play(a)}catch(b){this._flashError(b)}this.status.waitForLoad=!1;this._flash_checkWaitForPlay()},_flash_pause:function(a){try{this._getMovie().fl_pause(a)}catch(b){this._flashError(b)}0<a&&(this.status.waitForLoad=!1,this._flash_checkWaitForPlay())},_flash_playHead:function(a){try{this._getMovie().fl_play_head(a)}catch(b){this._flashError(b)}this.status.waitForLoad||
this._flash_checkWaitForPlay()},_flash_checkWaitForPlay:function(){this.status.waitForPlay&&(this.status.waitForPlay=!1,this.css.jq.videoPlay.length&&this.css.jq.videoPlay.hide(),this.status.video&&(this.internal.poster.jq.hide(),this.internal.flash.jq.css({width:this.status.width,height:this.status.height})))},_flash_volume:function(a){try{this._getMovie().fl_volume(a)}catch(b){this._flashError(b)}},_flash_mute:function(a){try{this._getMovie().fl_mute(a)}catch(b){this._flashError(b)}},_getMovie:function(){return document[this.internal.flash.id]},
_getFlashPluginVersion:function(){var a=0,b;if(window.ActiveXObject)try{if(b=new ActiveXObject("ShockwaveFlash.ShockwaveFlash")){var d=b.GetVariable("$version");d&&(d=d.split(" ")[1].split(","),a=parseInt(d[0],10)+"."+parseInt(d[1],10))}}catch(e){}else navigator.plugins&&0<navigator.mimeTypes.length&&(b=navigator.plugins["Shockwave Flash"])&&(a=navigator.plugins["Shockwave Flash"].description.replace(/.*\s(\d+\.\d+).*/,"$1"));return 1*a},_checkForFlash:function(a){var b=!1;this._getFlashPluginVersion()>=
a&&(b=!0);return b},_validString:function(a){return a&&"string"===typeof a},_limitValue:function(a,b,d){return a<b?b:a>d?d:a},_urlNotSetError:function(a){this._error({type:b.jPlayer.error.URL_NOT_SET,context:a,message:b.jPlayer.errorMsg.URL_NOT_SET,hint:b.jPlayer.errorHint.URL_NOT_SET})},_flashError:function(a){var c;c=this.internal.ready?"FLASH_DISABLED":"FLASH";this._error({type:b.jPlayer.error[c],context:this.internal.flash.swf,message:b.jPlayer.errorMsg[c]+a.message,hint:b.jPlayer.errorHint[c]});
this.internal.flash.jq.css({width:"1px",height:"1px"})},_error:function(a){this._trigger(b.jPlayer.event.error,a);this.options.errorAlerts&&this._alert("Error!"+(a.message?"\n\n"+a.message:"")+(a.hint?"\n\n"+a.hint:"")+"\n\nContext: "+a.context)},_warning:function(a){this._trigger(b.jPlayer.event.warning,f,a);this.options.warningAlerts&&this._alert("Warning!"+(a.message?"\n\n"+a.message:"")+(a.hint?"\n\n"+a.hint:"")+"\n\nContext: "+a.context)},_alert:function(a){alert("jPlayer "+this.version.script+
" : id='"+this.internal.self.id+"' : "+a)},_emulateHtmlBridge:function(){var a=this;b.each(b.jPlayer.emulateMethods.split(/\s+/g),function(b,d){a.internal.domNode[d]=function(b){a[d](b)}});b.each(b.jPlayer.event,function(c,d){var e=!0;b.each(b.jPlayer.reservedEvent.split(/\s+/g),function(a,b){if(b===c)return e=!1});e&&a.element.bind(d+".jPlayer.jPlayerHtml",function(){a._emulateHtmlUpdate();var b=document.createEvent("Event");b.initEvent(c,!1,!0);a.internal.domNode.dispatchEvent(b)})})},_emulateHtmlUpdate:function(){var a=
this;b.each(b.jPlayer.emulateStatus.split(/\s+/g),function(b,d){a.internal.domNode[d]=a.status[d]});b.each(b.jPlayer.emulateOptions.split(/\s+/g),function(b,d){a.internal.domNode[d]=a.options[d]})},_destroyHtmlBridge:function(){var a=this;this.element.unbind(".jPlayerHtml");b.each((b.jPlayer.emulateMethods+" "+b.jPlayer.emulateStatus+" "+b.jPlayer.emulateOptions).split(/\s+/g),function(b,d){delete a.internal.domNode[d]})}};b.jPlayer.error={FLASH:"e_flash",FLASH_DISABLED:"e_flash_disabled",NO_SOLUTION:"e_no_solution",
NO_SUPPORT:"e_no_support",URL:"e_url",URL_NOT_SET:"e_url_not_set",VERSION:"e_version"};b.jPlayer.errorMsg={FLASH:"jPlayer's Flash fallback is not configured correctly, or a command was issued before the jPlayer Ready event. Details: ",FLASH_DISABLED:"jPlayer's Flash fallback has been disabled by the browser due to the CSS rules you have used. Details: ",NO_SOLUTION:"No solution can be found by jPlayer in this browser. Neither HTML nor Flash can be used.",NO_SUPPORT:"It is not possible to play any media format provided in setMedia() on this browser using your current options.",
URL:"Media URL could not be loaded.",URL_NOT_SET:"Attempt to issue media playback commands, while no media url is set.",VERSION:"jPlayer "+b.jPlayer.prototype.version.script+" needs Jplayer.swf version "+b.jPlayer.prototype.version.needFlash+" but found "};b.jPlayer.errorHint={FLASH:"Check your swfPath option and that Jplayer.swf is there.",FLASH_DISABLED:"Check that you have not display:none; the jPlayer entity or any ancestor.",NO_SOLUTION:"Review the jPlayer options: support and supplied.",NO_SUPPORT:"Video or audio formats defined in the supplied option are missing.",
URL:"Check media URL is valid.",URL_NOT_SET:"Use setMedia() to set the media URL.",VERSION:"Update jPlayer files."};b.jPlayer.warning={CSS_SELECTOR_COUNT:"e_css_selector_count",CSS_SELECTOR_METHOD:"e_css_selector_method",CSS_SELECTOR_STRING:"e_css_selector_string",OPTION_KEY:"e_option_key"};b.jPlayer.warningMsg={CSS_SELECTOR_COUNT:"The number of css selectors found did not equal one: ",CSS_SELECTOR_METHOD:"The methodName given in jPlayer('cssSelector') is not a valid jPlayer method.",CSS_SELECTOR_STRING:"The methodCssSelector given in jPlayer('cssSelector') is not a String or is empty.",
OPTION_KEY:"The option requested in jPlayer('option') is undefined."};b.jPlayer.warningHint={CSS_SELECTOR_COUNT:"Check your css selector and the ancestor.",CSS_SELECTOR_METHOD:"Check your method name.",CSS_SELECTOR_STRING:"Check your css selector is a string.",OPTION_KEY:"Check your option name."}});


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
//滚动插件
(function ($) {
    $.fn.hoverDelay = function (options) {
        var defaults = { hoverDuring: 300, outDuring: 300, hoverEvent: function () { $.noop(); }, outEvent: function () { $.noop(); } };
        var sets = $.extend(defaults, options || {});
        var hover_timer, out_timer;
        return $(this).each(function () {
            var t = this;
            $(this).hover(function () {
                clearTimeout(out_timer);
                hover_timer = setTimeout(function () { sets.hoverEvent.apply(t); }, sets.hoverDuring);
            }, function () {
                clearTimeout(hover_timer);
                out_timer = setTimeout(function () { sets.outEvent.apply(t); }, sets.outDuring);
            });
        });
    };
    $.fn.slideImg = function (settings) {
        settings = jQuery.extend({ speed: "normal", timer: 1000 }, settings);
        return this.each(function () { $.fn.slideImg.scllor($(this), settings); });
    };
    $.fn.extend({
        Scroll: function (opt) {
            if (!opt) {
                opt = {};
            }
            var timer_id;
            var _this = this.eq(0).find("ul:first");
            var line_h = _this.find("dl:first").height(), line = opt.line ? parseInt(opt.line, 10) : parseInt(this.height() / line_h, 10), speed = opt.speed ? parseInt(opt.speed, 10) : 500;
            timer = opt.timer ? parseInt(opt.timer, 10) : 3000;
            if (line == 0) {
                line = 1;
            }
            var up_height = 0 - line * line_h;
            var scroll_up = function () {
                _this.animate({ marginTop: up_height }, speed, function () {
                    for (i = 1; i <= line; i++) {
                        _this.find("dl:first").appendTo(_this);
                    }
                    _this.css({ marginTop: 0 });
                });
            };
            var scroll_down = function () {
                for (i = 1; i <= line; i++) {
                    _this.find("dl:last").show().prependTo(_this);
                }
                _this.css({ marginTop: up_height });
                _this.animate({ marginTop: 0 }, speed);
            };
            var auto_play = function () {
                if (timer) {
                    timer_id = window.setInterval(scroll_down, timer);
                }
            };
            var auto_stop = function () {
                if (timer) {
                    window.clearInterval(timer_id);
                }
            };
            _this.hover(auto_stop, auto_play).mouseout();
        }
    });
})(jQuery);

//jQuery.floatdiv.js
jQuery.fn.floatdiv=function(e){var t="undefined"==typeof document.body.style.maxHeight,n,r;return self.innerHeight?(n=self.innerWidth,r=self.innerHeight):document.documentElement&&document.documentElement.clientHeight?(n=document.documentElement.clientWidth,r=document.documentElement.clientHeight):document.body&&(n=document.body.clientWidth,r=document.body.clientHeight),this.each(function(){var i,s=$("<div></div>"),o=-1;if(e==undefined||e.constructor==String)switch(e){case"rightbottom":i={right:"0px",bottom:"0px"};break;case"leftbottom":i={left:"0px",bottom:"0px"};break;case"lefttop":i={left:"0px",top:"0px"},o=0;break;case"righttop":i={right:"0px",top:"0px"},o=0;break;case"middletop":i={left:n/2-$(this).width()/2+"px",top:"0px"},o=0;break;case"middlebottom":i={left:n/2-$(this).width()/2+"px",bottom:"0px"};break;case"leftmiddle":i={left:"0px",top:r/2-$(this).height()/2+"px"},o=r/2-$(this).height()/2;break;case"rightmiddle":i={right:"0px",top:r/2-$(this).height()/2+"px"},o=r/2-$(this).height()/2;break;case"middle":var u=0,a=0;u=n/2-$(this).width()/2,a=r/2-$(this).height()/2,o=a,i={left:u+"px",top:a+"px"};break;default:e="rightbottom",i={right:"0px",bottom:"0px"}}else{i=e;var f=i.top;typeof f!="undefined"&&(f=f.replace("px",""),o=f)}t&&(o>=0?s=$('<div style="top:expression(documentElement.scrollTop+'+o+');"></div>'):s=$('<div style="top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight);"></div>')),$("body").append(s),s.css(i).css({position:"fixed",z_index:"1"}),t&&(s.css("position","absolute"),$("body").css("background-attachment","fixed").css("background-image","url(n1othing.txt)")),$(this).appendTo(s)})}