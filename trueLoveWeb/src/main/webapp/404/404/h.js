(function(){var c={id:"8b61eff9879765ee65d2aac631970518",dm:["yxdown.com"],etrk:[],js:"tongji.baidu.com/hm-web/js/",icon:'',br:false,ctrk:false,align:-1,nv:-1,vdur:1800000,age:31536000000,se:[[1,'baidu.com','word|wd',1,'news,tieba,zhidao,mp3,image,video,hi,baike,wenku,open,jingyan'],[2,'google.com','q',0,'tbm=isch,tbm=vid,tbm=nws|source=newssearch,tbm=blg'],[3,'google.cn','q',0,''],[4,'sogou.com','query',1,'news,mp3,pic,v,zhishi,blogsearch'],[5,'zhongsou.com','w',1,'p,z,gouwu,bbs,mp3'],[6,'search.yahoo.com','p',1,'news,images,video'],[7,'one.cn.yahoo.com','p',1,'news,image,music'],[8,'soso.com','w',1,'image,video,music,sobar,wenwen,news,life,baike,blog'],[9,'114search.118114.cn','kw',0,''],[10,'search.live.com','q',0,''],[11,'youdao.com','q',1,'image,news,gouwu,mp3,video,blog,reader'],[12,'gougou.com','search',1,'movie,mp3,book,soft,game'],[13,'bing.com','q',2,'images,videos,news']]};var g=true,h=null;function j(a){var b=new Image,d="mini_tangram_log_"+Math.floor(Math.random()*2147483648).toString(36);window[d]=b;b.onload=b.onerror=b.onabort=function(){b.onload=b.onerror=b.onabort=h;b=window[d]=h};b.src=a};var l;function m(){if(!l)try{l=document.createElement("input"),l.type="hidden",l.style.display="none",l.addBehavior("#default#userData"),document.getElementsByTagName("head")[0].appendChild(l)}catch(a){return false}return g};function n(a,b,d){a.attachEvent?a.attachEvent("on"+b,function(b){d.call(a,b)}):a.addEventListener&&a.addEventListener(b,d,false)};function o(a,b){var d=a.match(RegExp("(^|&|\\?|#)("+b+")=([^&#]*)(&|$|#)",""));return d?d[3]:h}function p(a){var b;return(b=(a=a.match(/^(https?:\/\/)?([^\/\?#]*)/))?a[2].replace(/.*@/,""):h,a=b)?a.replace(/:\d+$/,""):a};var q=navigator.cookieEnabled,r=navigator.javaEnabled(),s=navigator.language||navigator.browserLanguage||navigator.systemLanguage||navigator.userLanguage||"",t=window.screen.width+"x"+window.screen.height,u=window.screen.colorDepth;var v=["cpro.baidu.com"],w=0,x=(new Date).getTime(),y=window.location.protocol,z="cc,cf,ci,ck,cl,cm,cp,cw,ds,ep,et,fl,ja,ln,lo,lt,nv,rnd,sb,se,si,st,su,sw,sse,v".split(",");function A(){this.a={};this.B=[];typeof window["_bdhm_loaded_"+c.id]=="undefined"&&(window["_bdhm_loaded_"+c.id]=g,this.s())}
A.prototype={q:function(){var a="";try{external.twGetVersion(external.twGetSecurityID(window))&&external.twGetRunPath.toLowerCase().indexOf("360se")>-1&&(a=17)}catch(b){}return a},e:function(a,b){var a=a.replace(/:\d+/,""),b=b.replace(/:\d+/,""),d=a.indexOf(b);return d>-1&&d+b.length==a.length},f:function(a,b){a=a.replace(/^https?:\/\//,"");return a.indexOf(b)==0},b:function(a){for(var b=0;b<c.dm.length;b++)if(c.dm[b].indexOf("/")>-1){if(this.f(a,c.dm[b]))return g}else{var d=p(a);if(d&&this.e(d,c.dm[b]))return g}return false},
n:function(){for(var a=window.location.hostname,b=0,d=c.dm.length;b<d;b++)if(this.e(a,c.dm[b]))return c.dm[b].replace(/(:\d+)?[\/\?#].*/,"");return a},o:function(){for(var a=0,b=c.dm.length;a<b;a++){var d=c.dm[a];if(d.indexOf("/")>-1&&this.f(window.location.href,d))return d.replace(/^[^\/]+(\/.*)/,"$2")+"/"}return"/"},r:function(){if(document.referrer)for(var a=function(a){for(var b=0,d=a[3]==2?a[1]+"/":"",e=a[3]==1?"."+a[1]:"",a=a[4].split(","),f=0,D=a.length;f<D;f++)if(a[f]!==""&&RegExp(d+a[f]+
e).test(document.referrer)){b=f+1;break}return b},b=function(a){if(/google.(com|cn)/.test(document.referrer)&&/(%25[0-9a-fA-F]{2}){2}/.test(a))try{a=decodeURIComponent(a)}catch(b){}if(/sogou.com/.test(document.referrer)&&/%u[0-9a-fA-F]{4}/.test(a))try{a=unescape(a)}catch(d){}for(var e=0,f=v.length;e<f;e++)document.referrer.indexOf(v[e])>-1&&(a="");return a},d=0,e=c.se.length;d<e;d++){if(RegExp(c.se[d][1]).test(document.referrer)){var f=o(document.referrer,c.se[d][2]);if(f)return this.a.se=c.se[d][0],
this.a.sse=a(c.se[d]),this.a.sw=b(f),2}}else return x-w>c.vdur?1:4;a=false;return(a=this.b(document.referrer)&&this.b(window.location.href)?g:this.e(p(document.referrer)||"",window.location.hostname))?x-w>c.vdur?1:4:3},getData:function(a){try{var b,d=RegExp("(^| )"+a+"=([^;]*)(;|$)").exec(document.cookie);if(!(b=d?d[2]:h)){var e;if(!(e=window.sessionStorage?window.sessionStorage.getItem(a):h))a:{if(window.localStorage){var f=window.localStorage.getItem(a);if(f){var i=f.indexOf("|"),k=f.substring(0,
i)-0;if(k&&k<(new Date).getTime()){e=f.substring(i+1);break a}}}else if(m()){l.load(window.location.hostname);e=l.getAttribute(a);break a}e=h}b=e}return b}catch(C){}},setData:function(a,b,d){try{var e=this.n(),f=this.o(),i;d&&(i=new Date,i.setTime(i.getTime()+d));document.cookie=a+"="+b+(e?"; domain="+e:"")+(f?"; path="+f:"")+(i?"; expires="+i.toGMTString():"")+"";if(d){var k=new Date;k.setTime(k.getTime()+d||31536E6);if(window.localStorage){b=k.getTime()+"|"+b;try{window.localStorage.setItem(a,b)}catch(C){}}else if(m())l.expires=
k.toUTCString(),l.load(window.location.hostname),l.setAttribute(a,b),l.save(window.location.hostname)}else if(window.sessionStorage)try{window.sessionStorage.setItem(a,b)}catch(F){}}catch(G){}},z:function(){var a,b,d,e;w=this.getData("Hm_lpvt_"+c.id)||0;b=this.r();a=b!=4?1:0;d=(d=this.getData("Hm_lvt_"+c.id))?Math.round((d-0)/1E3):"";this.setData("Hm_lvt_"+c.id,x,c.age);this.setData("Hm_lpvt_"+c.id,x);e=x==this.getData("Hm_lpvt_"+c.id)?"1":"0";if(c.nv==0&&this.b(window.location.href)&&(document.referrer==
""||this.b(document.referrer)))a=0,b=4;this.a.nv=a;this.a.st=b;this.a.cc=e;this.a.lt=d},w:function(){for(var a=[],b=0,d=z.length;b<d;b++){var e=z[b],f=this.a[e];typeof f!="undefined"&&f!==""&&a.push(e+"="+encodeURIComponent(f))}return a.join("&")},A:function(){this.z();this.a.si=c.id;this.a.su=document.referrer;this.a.ds=t;this.a.cl=u+"-bit";this.a.ln=s;this.a.ja=r?1:0;this.a.ck=q?1:0;this.a.lo=typeof _bdhm_top=="number"?1:0;var a=this.a,b="";if(navigator.plugins&&navigator.mimeTypes.length){var d=
navigator.plugins["Shockwave Flash"];d&&d.description&&(b=d.description.replace(/^.*\s+(\S+)\s+\S+$/,"$1"))}else if(window.ActiveXObject)try{if(d=new ActiveXObject("ShockwaveFlash.ShockwaveFlash"))(b=d.GetVariable("$version"))&&(b=b.replace(/^.*\s+(\d+),(\d+).*$/,"$1.$2"))}catch(e){}a.fl=b;this.a.sb=this.q();this.a.v="1.0.17";a=window.location.href;this.a.cm=o(a,"hmmd")||"";this.a.cp=o(a,"hmpl")||"";this.a.cw=o(a,"hmkw")||"";this.a.ci=o(a,"hmci")||"";this.a.cf=o(a,"hmsr")||"";this.a.et=0;this.a.ep=
0},s:function(){try{this.t(),this.A(),this.h(),this.l(),this.m(),this.k&&this.k(),this.j&&this.j(),this.d=new B,n(window,"beforeunload",this.u())}catch(a){var b=[];b.push("si="+c.id);b.push("n="+encodeURIComponent(a.name));b.push("m="+encodeURIComponent(a.message));b.push("r="+encodeURIComponent(document.referrer));j(y+"//hm.baidu.com/hm.gif?"+b.join("&"))}},t:function(){c.br&&document.write('<script src="'+("http"+(y=="http:"?"://":"s://r")+"qiao.baidu.com/site/"+this.p(c.id)%1E3+"/"+c.id+"/b.js")+
'" type="text/javascript" charset="utf-8"><\/script>')},p:function(a){for(var b=5381,d=a.length,e=0;e<d;e++)b=(b*33+new Number(a.charCodeAt(e)))%4294967296;b>2147483648&&(b-=2147483648);return b},u:function(){var a=this;return function(){a.a.et=3;a.a.ep=(new Date).getTime()-a.d.g+","+((new Date).getTime()-a.d.c+a.d.i);a.h()}},h:function(){this.a.rnd=Math.round(Math.random()*2147483647);j(y+"//hm.baidu.com/hm.gif?"+this.w())},l:function(){if(c.icon!=""){var a,b=c.icon.split("|"),d="http://tongji.baidu.com/hm-web/welcome/ico?s="+
c.id;a=(y=="http:"?"http://eiv":"https://bs")+".baidu.com"+b[0]+"."+b[1];switch(b[1]){case "swf":var e=b[2],b=b[3],d="s="+d,f="HolmesIcon"+x;a='<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="'+f+'" width="'+e+'" height="'+b+'"><param name="movie" value="'+a+'" /><param name="flashvars" value="'+d+'" /><param name="allowscriptaccess" value="always" /><embed type="application/x-shockwave-flash" name="'+f+'" width="'+e+'" height="'+b+'" src="'+a+'" flashvars="'+d+'" allowscriptaccess="always" /></object>';
break;case "gif":a='<a href="'+d+'" target="_blank"><img border="0" src="'+a+'" width="'+b[2]+'" height="'+b[3]+'"></a>';break;default:a='<a href="'+d+'" target="_blank">'+b[0]+"</a>"}document.write(a)}},m:function(){var a=window.location.hash.substring(1),b=RegExp(c.id),d=document.referrer.indexOf("baidu.com")>-1?g:false;a&&b.test(a)&&d&&(b=document.createElement("script"),b.setAttribute("type","text/javascript"),b.setAttribute("src",y+"//"+c.js+o(a,"jn")+"."+o(a,"sx")+"?"+this.a.rnd),a=document.getElementsByTagName("script")[0],
a.parentNode.insertBefore(b,a))}};function B(){this.c=this.g=(new Date).getTime();this.i=0;typeof document.C=="object"?(n(document,"focusin",E(this)),n(document,"focusout",E(this))):(n(window,"focus",E(this)),n(window,"blur",E(this)))}function E(a){return function(b){if(!(b.target&&b.target!=window)){if(b.type=="blur"||b.type=="focusout")a.i+=(new Date).getTime()-a.c;a.c=(new Date).getTime()}}}new A;})();