(window.webpackJsonp=window.webpackJsonp||[]).push([[0],{37:function(e,t,a){e.exports=a.p+"static/media/qplogo.107bb8ef.png"},41:function(e,t,a){e.exports=a(71)},50:function(e,t,a){},52:function(e,t,a){},54:function(e,t,a){},71:function(e,t,a){"use strict";a.r(t);var n=a(0),r=a.n(n),c=a(36),o=a.n(c),l=(a(50),a(13)),i=a(37),s=a.n(i),d=(a(52),a(38)),u=a(39),p=a(63),m=a(40),h=a(64),f=(a(54),a(18));var v=-1,g=1,E=function(e){var t=e.maxValue,a=e.selectedValue,n=e.radius,c=e.strokeWidth,o=e.label,l=e.activeStrokeColor,i=e.inactiveStrokeColor,s=e.backgroundColor,d=e.textColor,u=e.labelFontSize,p=e.valueFontSize,m=e.withGradient,h=e.anticlockwise,E=e.initialAngularDisplacement,b=function(e){var c=h?g:v,o=360/t*(t-1),s="rotate(".concat(c*E+-1*c*o+e*c*o,", ").concat(n,", ").concat(n,")"),d=function(e){var t=n-Math.cos(2*Math.PI/(100/e))*n,a=n+Math.sin(2*Math.PI/(100/e))*n,r=e<=50?0:1;return"M".concat(n," ").concat(n," L").concat(n," ",0," A").concat(n," ").concat(n," 0 ").concat(r," 1 ").concat(a," ").concat(t," Z")}(function(e){var t=360/e;return Math.floor(t/4)<1?1:Math.floor(t/4)}(t)),u=m?function(e,t){var a=parseInt(e.substring(1,3),16),n=parseInt(e.substring(3,5),16),r=parseInt(e.substring(5,7),16);a=parseInt("".concat(a*(100+t)/100),10),n=(n=parseInt("".concat(n*(100+t)/100),10))<255?n:255,r=(r=parseInt("".concat(r*(100+t)/100),10))<255?r:255;var c=1===(a=a<255?a:255).toString(16).length?"0".concat(a.toString(16)):a.toString(16),o=1===n.toString(16).length?"0".concat(n.toString(16)):n.toString(16),l=1===r.toString(16).length?"0".concat(r.toString(16)):r.toString(16);return"#".concat(c).concat(o).concat(l)}(l,(e+1)*t/50):l,p=a>0&&e<=a?u:i;return r.a.createElement("path",{style:{opacity:0===e?0:1},key:e,d:d,fill:p,transform:s})},y=r.a.createElement("text",{fill:d,fontSize:u,x:n,y:n+u,textAnchor:"middle"},o),k=o?n:n+p/3;return r.a.createElement("svg",{width:2*n,height:2*n},Object(f.a)(Array(t+1)).map(function(e,t){return b(t)}),r.a.createElement("circle",{r:n-c,cx:n,cy:n,fill:s}),r.a.createElement("text",{fill:d,fontSize:p,fontWeight:"bold",x:n,y:k,textAnchor:"middle"},a),!!o.length&&y)};E.defaultProps={maxValue:10,selectedValue:0,radius:60,strokeWidth:6,label:"",activeStrokeColor:"#05a168",inactiveStrokeColor:"#ddd",backgroundColor:"#fff",textColor:"#000",labelFontSize:Math.floor(20),valueFontSize:Math.floor(24),withGradient:!1,anticlockwise:!1,initialAngularDisplacement:0};var b=E,y=a(97),k=a(100),M=a(99),C=function(e){function t(e){return Object(d.a)(this,t),Object(p.a)(this,Object(m.a)(t).call(this,e))}return Object(h.a)(t,e),Object(u.a)(t,[{key:"buildCard",value:function(e,t,a,n){return r.a.createElement(y.a,{className:"card",key:a,sx:{maxWidth:200}},r.a.createElement("div",{className:"circularProgressBar"},r.a.createElement(b,{selectedValue:Math.round(100*t)/100,maxValue:n,textColor:"#f00",activeStrokeColor:"#cc6600",withGradient:!0})),r.a.createElement(k.a,null,r.a.createElement(M.a,{gutterBottom:!0,variant:"h5",component:"div"},e),r.a.createElement(M.a,{variant:"body2",color:"text.secondary"},this.props.data.labels.LABEL_CARD.replace("%number%",Math.round(100*t)/100))))}},{key:"render",value:function(){var e=this;return r.a.createElement("div",{className:"RepCards"},r.a.createElement("div",{className:"RepCardsTitle"},r.a.createElement("h1",{className:"RepCardsTitleH1"},this.props.data&&this.props.data.repLevels[this.props.selectedMenu]?this.props.data.labels.TITLE_MENU.replace("%title%",this.props.data.repLevels[this.props.selectedMenu].title):"")),r.a.createElement("div",{className:"RepCardsBody"},Object.keys(this.props.data.repLevels[this.props.selectedMenu].metadata).map(function(t,a){return e.buildCard(t,e.props.data.repLevels[e.props.selectedMenu].metadata[t],a,e.props.data.maxRep)})))}}]),t}(n.Component),S=a(96),x=a(62),w=a.n(x);var A=function(){function e(){c({display:"none",selectedMenu:0,data:{}}),fetch("https://qp-reputation/closeMenu",{method:"POST",headers:{"Content-Type":"application/json; charset=UTF-8"},body:""}).then(function(e){return e.json()}).then(function(e){})}var t=r.a.useState({display:"none",data:{},selectedMenu:0}),a=Object(l.a)(t,2),n=a[0],c=a[1],o=function(t){"Escape"!=t.key&&"Backspace"!=t.key||e()},i=function(e){switch(e.data.action){case"open":c({display:"flex",selectedMenu:0,data:e.data});break;case"close":c({display:"none",selectedMenu:0,data:{}})}};if(r.a.useEffect(function(){window.addEventListener("message",i),window.addEventListener("keydown",o)},[]),n.data&&n.data.repLevels)return r.a.createElement("div",{className:"App",style:{display:n.display}},r.a.createElement("header",{className:"App-header"},r.a.createElement("img",{src:s.a,className:"App-logo",alt:"logo"}),r.a.createElement("div",{className:"App-menu"},Object.keys(n.data.repLevels).map(function(e,t){return r.a.createElement("a",{className:n.selectedMenu==e?"App-link App-link-selected":"App-link",key:e,onClick:function(){return t=e,void c({display:n.display,data:n.data,selectedMenu:t});var t}},n.data.repLevels[e].title)})),r.a.createElement("div",{className:"App-menu-footer"},r.a.createElement(S.a,{variant:"outlined",startIcon:r.a.createElement(w.a,null),onClick:function(){return e()}},n.data.labels.TITLE_EXIT))),r.a.createElement(C,{data:n.data,selectedMenu:n.selectedMenu}))},L=function(e){e&&e instanceof Function&&a.e(1).then(a.bind(null,95)).then(function(t){var a=t.getCLS,n=t.getFID,r=t.getFCP,c=t.getLCP,o=t.getTTFB;a(e),n(e),r(e),c(e),o(e)})};o.a.createRoot(document.getElementById("root")).render(r.a.createElement(r.a.StrictMode,null,r.a.createElement(A,null))),L()}},[[41,3,2]]]);
//# sourceMappingURL=main.3a14a5ff.chunk.js.map