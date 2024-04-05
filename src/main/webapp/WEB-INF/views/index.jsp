<%--
  Created by IntelliJ IDEA.
  User: jdh
  Date: 2024-04-05
  Time: 오후 3:09
  To change this template use File | Settings | File Templates.
--%>


<!doctype html>
<html>
<head>
    <title>모임신청</title>

    <!-- BEGIN SENTRY -->
    <script id="sentry">
        (function(c,u,v,n,p,e,z,A,w){function k(a){if(!x){x=!0;var l=u.getElementsByTagName(v)[0],d=u.createElement(v);d.src=A;d.crossorigin="anonymous";d.addEventListener("load",function(){try{c[n]=r;c[p]=t;var b=c[e],d=b.init;b.init=function(a){for(var b in a)Object.prototype.hasOwnProperty.call(a,b)&&(w[b]=a[b]);d(w)};B(a,b)}catch(g){console.error(g)}});l.parentNode.insertBefore(d,l)}}function B(a,l){try{for(var d=m.data,b=0;b<a.length;b++)if("function"===typeof a[b])a[b]();var e=!1,g=c.__SENTRY__;"undefined"!==
        typeof g&&g.hub&&g.hub.getClient()&&(e=!0);g=!1;for(b=0;b<d.length;b++)if(d[b].f){g=!0;var f=d[b];!1===e&&"init"!==f.f&&l.init();e=!0;l[f.f].apply(l,f.a)}!1===e&&!1===g&&l.init();var h=c[n],k=c[p];for(b=0;b<d.length;b++)d[b].e&&h?h.apply(c,d[b].e):d[b].p&&k&&k.apply(c,[d[b].p])}catch(C){console.error(C)}}for(var f=!0,y=!1,q=0;q<document.scripts.length;q++)if(-1<document.scripts[q].src.indexOf(z)){f="no"!==document.scripts[q].getAttribute("data-lazy");break}var x=!1,h=[],m=function(a){(a.e||a.p||a.f&&
            -1<a.f.indexOf("capture")||a.f&&-1<a.f.indexOf("showReportDialog"))&&f&&k(h);m.data.push(a)};m.data=[];c[e]=c[e]||{};c[e].onLoad=function(a){h.push(a);f&&!y||k(h)};c[e].forceLoad=function(){y=!0;f&&setTimeout(function(){k(h)})};"init addBreadcrumb captureMessage captureException captureEvent configureScope withScope showReportDialog".split(" ").forEach(function(a){c[e][a]=function(){m({f:a,a:arguments})}});var r=c[n];c[n]=function(a,e,d,b,f){m({e:[].slice.call(arguments)});r&&r.apply(c,arguments)};
            var t=c[p];c[p]=function(a){m({p:a.reason});t&&t.apply(c,arguments)};f||setTimeout(function(){k(h)})})(window,document,"script","onerror","onunhandledrejection","Sentry","b4e7a2b423b54000ac2058644c76f718","https://static.parastorage.com/unpkg/@sentry/browser@5.27.4/build/bundle.min.js",{"dsn":"https://b4e7a2b423b54000ac2058644c76f718@sentry.wixpress.com/217"});
    </script>

    <script type="text/javascript">
        window.Sentry.onLoad(function () {
            window.Sentry.init({
                "release": "1.2134.0",
                "environment": "production",
                "allowUrls": undefined,
                "denyUrls": undefined
            });
            window.Sentry.configureScope(function (scope) {
                scope.setUser({
                    id: "null-user-id:e0c7a78a-1c63-4ffc-ac8d-c5ed53c04185",
                    clientId: "e0c7a78a-1c63-4ffc-ac8d-c5ed53c04185",
                });
                scope.setExtra("user.authenticated", false);
                scope.setExtra("sessionId", "9fd8aaf0-2f50-4541-b43e-f754071c22ca");
            });
        });
    </script>
    <!-- END SENTRY -->
    <script src="https://static.parastorage.com/polyfill/v3/polyfill.min.js?features=default,es6,es7,es2017,es2018,es2019,fetch&flags=gated&unknown=polyfill"></script>

    <script>
        window.onWixFedopsLoggerLoaded = function () {
            window.fedopsLogger && window.fedopsLogger.reportAppLoadStarted('marketing-template-viewer');
        }
    </script>
    <script onload="onWixFedopsLoggerLoaded()" src="//static.parastorage.com/unpkg/@wix/fedops-logger@5.502.0/dist/statics/fedops-logger.bundle.min.js" crossorigin></script>

    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />


    <link rel="icon" sizes="192x192" href="https://www.wix.com/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="https://www.wix.com/favicon.ico" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="https://www.wix.com/favicon.ico" type="image/x-icon"/>

    <link rel="stylesheet" href="https://static.parastorage.com/services/third-party/fonts/Helvetica/fontFace.css">
    <link rel="stylesheet" href="https://static.parastorage.com/unpkg/@wix/wix-fonts@1.14.0/madefor.min.css">
    <link rel="stylesheet" href="https://static.parastorage.com/unpkg/@wix/wix-fonts@1.14.0/madeforDisplay.min.css">
    <link rel="stylesheet" href="//static.parastorage.com/services/marketing-template-viewer/1.2134.0/app.min.css">

    <meta name="description" content="ìµœì‹  íŠ¸ë Œë“œì— ê±¸ë§žëŠ” ê°•ë ¬í•œ ë””ìžì¸ì˜ í…œí”Œë¦¿ìœ¼ë¡œ íŒë§¤ ì œí’ˆì„ ì†Œê°œí•´ë³´ì„¸ìš”. Wix Storesë¥¼ ì‚¬ìš©í•˜ë©´ ì¹´íŠ¸ì— ì•„ì´í…œ ì¶”ê°€í•˜ê¸°, ì˜¨ë¼ì¸ ê²°ì œ, ìœ„ì‹œë¦¬ìŠ¤íŠ¸ ìƒì„±, í• ì¸ ë° ì¿ í° ì ìš©ì´ ë”ìš± ê°„íŽ¸í•´ì§‘ë‹ˆë‹¤. ë˜í•œ, Wix Chatì„ í†µí•´ ê³ ê°ê³¼ ì‹¤ì‹œê°„ìœ¼ë¡œ ì†Œí†µí•˜ê³  ë§¤ì¶œì„ ë†’ì¼ ìˆ˜ ìžˆìŠµë‹ˆë‹¤. ë‚´ ë¹„ì¦ˆë‹ˆìŠ¤ì— ìµœì í™”ëœ ì˜¨ë¼ì¸ ì‡¼í•‘ëª° ì‚¬ì´íŠ¸ë¥¼ ì œìž‘í•  ì¤€ë¹„ê°€ ë˜ì…¨ë‹¤ë©´ ì§€ê¸ˆ ë°”ë¡œ ì‹œìž‘í•˜ì„¸ìš”!">
    <meta name="author" content="Wixpress">
    <meta http-equiv="content-language" content="ko"/>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>

    <meta property="og:title" content="ì˜¨ë¼ì¸ í‹°ì…”ì¸  ë§¤ìž¥ í…œí”Œë¦¿ | WIX"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="https://ko.wix.com/website-template/view/html/2936"/>
    <meta property="og:image" content="//static.wixstatic.com/media//templates/image/bdd8ef56ae89ee0437f1da34131754847731cde4764006e459595faade2b69e91649414922788.jpg"/>
    <meta content="Wix" property="og:site_name">
    <meta property="og:description" content="ìµœì‹  íŠ¸ë Œë“œì— ê±¸ë§žëŠ” ê°•ë ¬í•œ ë””ìžì¸ì˜ í…œí”Œë¦¿ìœ¼ë¡œ íŒë§¤ ì œí’ˆì„ ì†Œê°œí•´ë³´ì„¸ìš”. Wix Storesë¥¼ ì‚¬ìš©í•˜ë©´ ì¹´íŠ¸ì— ì•„ì´í…œ ì¶”ê°€í•˜ê¸°, ì˜¨ë¼ì¸ ê²°ì œ, ìœ„ì‹œë¦¬ìŠ¤íŠ¸ ìƒì„±, í• ì¸ ë° ì¿ í° ì ìš©ì´ ë”ìš± ê°„íŽ¸í•´ì§‘ë‹ˆë‹¤. ë˜í•œ, Wix Chatì„ í†µí•´ ê³ ê°ê³¼ ì‹¤ì‹œê°„ìœ¼ë¡œ ì†Œí†µí•˜ê³  ë§¤ì¶œì„ ë†’ì¼ ìˆ˜ ìžˆìŠµë‹ˆë‹¤. ë‚´ ë¹„ì¦ˆë‹ˆìŠ¤ì— ìµœì í™”ëœ ì˜¨ë¼ì¸ ì‡¼í•‘ëª° ì‚¬ì´íŠ¸ë¥¼ ì œìž‘í•  ì¤€ë¹„ê°€ ë˜ì…¨ë‹¤ë©´ ì§€ê¸ˆ ë°”ë¡œ ì‹œìž‘í•˜ì„¸ìš”!"/>
    <meta property="fb:admins" content="731184828"/>
    <meta name="fb:app_id" content="236335823061286"/>
    <meta name="google-site-verification" content="QXhlrY-V2PWOmnGUb8no0L-fKzG48uJ5ozW0ukU7Rpo"/>

    <link rel="canonical" href="https://ko.wix.com/website-template/view/html/2936"/>

    <link rel="alternate" hreflang="fr" href="https://fr.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="pt" href="https://pt.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="cs" href="https://cs.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="it" href="https://it.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="nl" href="https://nl.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="ko" href="https://ko.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="de" href="https://de.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="ru" href="https://ru.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="sv" href="https://sv.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="tr" href="https://tr.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="da" href="https://da.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="en" href="https://www.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="es" href="https://es.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="hi" href="https://hi.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="ja" href="https://ja.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="no" href="https://no.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="pl" href="https://pl.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="vi" href="https://vi.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="uk" href="https://uk.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="zh" href="https://zh.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="th" href="https://th.wix.com/website-template/view/html/2936"/>
    <link rel="alternate" hreflang="x-default" href="https://www.wix.com/website-template/view/html/2936" />

</head>
<body>
<script>
    window.onWixRecorderLoaded = function () {
        window.dispatchEvent(new Event('wixRecorderReady'));
    };
</script>

<script async src="//static.parastorage.com/unpkg-semver/wix-recorder/app.bundle.min.js"
        crossorigin onload="onWixRecorderLoaded()"></script>

<script src="//static.parastorage.com/services/cookie-sync-service/1.347.20/embed-cidx.bundle.min.js"></script>
<script src="//static.parastorage.com/services/tag-manager-client/1.827.0/hostTags.bundle.min.js"></script>
<div id="root"><div data-hook="app"><div data-hook="tool-bar" class="sbWfkE"><div class="Mn4893"><div class="bZOLNF"><a data-hook="logo" href="/" class="nHuSJZ"><span class="AV8G6s">wix.com</span></a></div><div class="wKSaYa"><button data-hook="desktop-view" class="is65hl sdsgLW"><span class="XFdFwl">ë°ìŠ¤í¬í†±ë·° ë³´ê¸°</span></button><hr class="hS1yv1"/><button data-hook="mobile-view" class="fB70N2"><span class="XFdFwl">ëª¨ë°”ì¼ë·° ë³´ê¸°</span></button></div></div><div class="TYXuEX"><div class="RyxoSg"><p data-hook="tool-bar-title" class="VaexPL">ì‚¬ì´íŠ¸ íŽ¸ì§‘ì„ í´ë¦­í•´ ë§žì¶¤í˜• í™ˆíŽ˜ì´ì§€ë¥¼ ì§ì ‘ ì œìž‘í•´ë³´ì„¸ìš”.</p><a data-hook="info-view" class="bggdgE" tabindex="0" role="dialog" href="#">ìžì„¸ížˆ ë³´ê¸°</a><a class="Ydu4WK" data-hook="editor-link" href="https://manage.wix.com/edit-template/from-intro?originTemplateId=881ec819-3d5a-4b7d-8394-5a8209c3d378&amp;editorSessionId=64b9af53-78e0-481b-8d70-d7fd8fe90f1a" target="_blank" tabindex="0">ì‹œìž‘í•˜ê¸°</a></div></div></div><div data-hook="template-demo" class="CJ4D6R"><div data-hook="desktop-view" class="Woz8P7"><iframe data-hook="desktop-iframe" src="https://www.wix.com/templatesko/2936-t--shirt-store" title="ì˜¨ë¼ì¸ í‹°ì…”ì¸  ë§¤ìž¥" width="100%" height="100%" class="eZTjsa"></iframe></div></div><div data-hook="info-pop-up" class="M05QSQ"><div class="E0wHmq"><button data-hook="card-close" class="eds_d0"><span class="ydbrSa">ì •ë³´ ë‹«ê¸°</span></button><div class="qLnKwP"><h1 data-hook="card-title" class="PHJvhr">ì˜¨ë¼ì¸ í‹°ì…”ì¸  ë§¤ìž¥ - Website Template</h1><div class="CEjC4K"><h3 data-hook="card-good-for-title" class="xqspyG">ìš©ë„:</h3><p data-hook="card-good-for" class="gsbPc5">ì˜ë¥˜ ì˜¨ë¼ì¸ ì‡¼í•‘ëª°, íŒ¨ì…˜ ë¶€í‹°í¬, ì˜ë¥˜ ë§¤ìž¥, ì˜·ê°€ê²Œ ë“±</p></div><div class="CEjC4K"><h3 class="xqspyG">ì„¤ëª…</h3><p data-hook="card-description" class="gsbPc5">ìµœì‹  íŠ¸ë Œë“œì— ê±¸ë§žëŠ” ê°•ë ¬í•œ ë””ìžì¸ì˜ í…œí”Œë¦¿ìœ¼ë¡œ íŒë§¤ ì œí’ˆì„ ì†Œê°œí•´ë³´ì„¸ìš”. Wix Storesë¥¼ ì‚¬ìš©í•˜ë©´ ì¹´íŠ¸ì— ì•„ì´í…œ ì¶”ê°€í•˜ê¸°, ì˜¨ë¼ì¸ ê²°ì œ, ìœ„ì‹œë¦¬ìŠ¤íŠ¸ ìƒì„±, í• ì¸ ë° ì¿ í° ì ìš©ì´ ë”ìš± ê°„íŽ¸í•´ì§‘ë‹ˆë‹¤. ë˜í•œ, Wix Chatì„ í†µí•´ ê³ ê°ê³¼ ì‹¤ì‹œê°„ìœ¼ë¡œ ì†Œí†µí•˜ê³  ë§¤ì¶œì„ ë†’ì¼ ìˆ˜ ìžˆìŠµë‹ˆë‹¤. ë‚´ ë¹„ì¦ˆë‹ˆìŠ¤ì— ìµœì í™”ëœ ì˜¨ë¼ì¸ ì‡¼í•‘ëª° ì‚¬ì´íŠ¸ë¥¼ ì œìž‘í•  ì¤€ë¹„ê°€ ë˜ì…¨ë‹¤ë©´ ì§€ê¸ˆ ë°”ë¡œ ì‹œìž‘í•˜ì„¸ìš”!</p></div></div><div class="KiqsRq"><a data-hook="card-editor-url" class="XpwCp3 sKD7vO" target="_blank" href="https://manage.wix.com/edit-template/from-intro?originTemplateId=881ec819-3d5a-4b7d-8394-5a8209c3d378&amp;editorSessionId=64b9af53-78e0-481b-8d70-d7fd8fe90f1a">íŽ¸ì§‘í•˜ê¸°</a></div></div></div></div></div>
<script>
    window.__BASEURL__ = "https:\u002F\u002Fko.wix.com\u002Fwebsite-template\u002Fview\u002Fhtml\u002F";
    window.__INITIAL_I18N__ = {"locale":"ko","resources":{"errorPage.templatesLinkText":"í…œí”Œë¦¿","template.viewer.page.title":"{{- title}} í…œí”Œë¦¿ | WIX","template.viewer.studio.page.title":"{{- title}} Responsive Template | Wix Studio","template.viewer.studio.page.description":"This {{- title}} is ready to be customized to your exact needs. Click \"Edit Template\" and try it on any device","template_button_label":"íŽ¸ì§‘í•˜ê¸°","template_seeFeatures_label":"ì „ì²´ ê¸°ëŠ¥ ë³´ê¸°","template_expand_examples_text":"ìš©ë„","template_expand_header":"í…œí”Œë¦¿ ê¸°ëŠ¥","template.viewer.title":"ì‚¬ì´íŠ¸ íŽ¸ì§‘ì„ í´ë¦­í•´ ë§žì¶¤í˜• í™ˆíŽ˜ì´ì§€ë¥¼ ì§ì ‘ ì œìž‘í•´ë³´ì„¸ìš”.","template.viewer.edit.button":"ì‹œìž‘í•˜ê¸°","template.viewer.read.more":"ìžì„¸ížˆ ë³´ê¸°","template.viewer.back":"ë’¤ë¡œ","template.viewer.info.edit.button":"íŽ¸ì§‘í•˜ê¸°","template.viewer.price":"ìš”ê¸ˆ:","template.viewer.info.title":"{{- title}} - Website Template","template.viewer.info.goodFor":"ìš©ë„:","template.viewer.info.description":"ì„¤ëª…","template.viewer.info.desktop.only.notice":"í•´ë‹¹ í…œí”Œë¦¿ì„ íŽ¸ì§‘í•˜ë ¤ë©° ë°ìŠ¤í¬í†± PCì—ì„œ Wix.comìœ¼ë¡œ ì´ë™í•˜ì„¸ìš”. ëª¨ë“  í…œí”Œë¦¿ì€ ìžìœ ìžìž¬ë¡œ íŽ¸ì§‘í•˜ì‹¤ ìˆ˜ ìžˆìŠµë‹ˆë‹¤.","template.viewer.see.all.templates":"See All Templates","template.viewer.seeAllExpressions":"See all expressions","template.viewer.goToBiggerScreen":"To start designing, go to your desktop.","template.viewer.getStarted":"Get Started","template.viewer.startNow":"Start Now","template.viewer.features":"Features","template.viewer.allFeatures":"All Features","template.viewer.expressions":"Expressions","template.viewer.tutorials":"Tutorials","template.viewer.updatesAndReleases":"Updates & Releases","template.viewer.comingSoon":"Coming soon","template.viewer.academy":"Academy","template.viewer.editTemplate":"í…œí”Œë¦¿ íŽ¸ì§‘","template.viewer.header.backToTemplates":"í…œí”Œë¦¿ìœ¼ë¡œ ëŒì•„ê°€ê¸°","a11y.desktop.button":"ë°ìŠ¤í¬í†±ë·° ë³´ê¸°","a11y.mobile.button":"ëª¨ë°”ì¼ë·° ë³´ê¸°","a11y.close.popup.button":"ì •ë³´ ë‹«ê¸°","toolbar.tooltip.desktop":"1001px ì´ìƒ","toolbar.tooltip.tablet":"751-1000px","toolbar.tooltip.mobile":"320-750px","errorPage.4xx.title":"ê²€ìƒ‰í•œ í…œí”Œë¦¿ì„ ì°¾ì„ ìˆ˜ ì—†ìŠµë‹ˆë‹¤.","errorPage.5xx.title":"í…œí”Œë¦¿ì„ ë¶ˆëŸ¬ì˜¬ ìˆ˜ ì—†ìŠµë‹ˆë‹¤.","errorPage.subTitle":"ì˜¤ë¥˜ {{- code }}","errorPage.4xx.details":"\u003Clink\u003Eì—¬ê¸°\u003C\u002Flink\u003Eì„œ ë‹¤ë¥¸ í…œí”Œë¦¿ì„ ê²€ìƒ‰ í•´ ë³´ì„¸ìš”. ","errorPage.5xx.details":"ë‹¹ì‚¬ ì¸¡ì˜ ì¼ì‹œì ì¸ ê¸°ìˆ  ë¬¸ì œë¡œ ì¸í•´ í˜„ìž¬ íŽ˜ì´ì§€ë¥¼ ë¡œë“œí•˜ì§€ ëª»í–ˆìŠµë‹ˆë‹¤.  ìž ì‹œ í›„ì— ë‹¤ì‹œ ì‹œë„í•´ì£¼ì„¸ìš”.","errorPage.5xx.action":"ìƒˆë¡œê³ ì¹¨"}};
    window.__INITIAL_STATE__ = {"viewMode":"desktop","isInfoShown":false,"isEditButtonHidden":false,"template":{"title":"ì˜¨ë¼ì¸ í‹°ì…”ì¸  ë§¤ìž¥","description":"ìµœì‹  íŠ¸ë Œë“œì— ê±¸ë§žëŠ” ê°•ë ¬í•œ ë””ìžì¸ì˜ í…œí”Œë¦¿ìœ¼ë¡œ íŒë§¤ ì œí’ˆì„ ì†Œê°œí•´ë³´ì„¸ìš”. Wix Storesë¥¼ ì‚¬ìš©í•˜ë©´ ì¹´íŠ¸ì— ì•„ì´í…œ ì¶”ê°€í•˜ê¸°, ì˜¨ë¼ì¸ ê²°ì œ, ìœ„ì‹œë¦¬ìŠ¤íŠ¸ ìƒì„±, í• ì¸ ë° ì¿ í° ì ìš©ì´ ë”ìš± ê°„íŽ¸í•´ì§‘ë‹ˆë‹¤. ë˜í•œ, Wix Chatì„ í†µí•´ ê³ ê°ê³¼ ì‹¤ì‹œê°„ìœ¼ë¡œ ì†Œí†µí•˜ê³  ë§¤ì¶œì„ ë†’ì¼ ìˆ˜ ìžˆìŠµë‹ˆë‹¤. ë‚´ ë¹„ì¦ˆë‹ˆìŠ¤ì— ìµœì í™”ëœ ì˜¨ë¼ì¸ ì‡¼í•‘ëª° ì‚¬ì´íŠ¸ë¥¼ ì œìž‘í•  ì¤€ë¹„ê°€ ë˜ì…¨ë‹¤ë©´ ì§€ê¸ˆ ë°”ë¡œ ì‹œìž‘í•˜ì„¸ìš”!","image":"\u002Ftemplates\u002Fimage\u002Fbdd8ef56ae89ee0437f1da34131754847731cde4764006e459595faade2b69e91649414922788.jpg","id":"2936","lng":"ko","price":"ì‡¼í•‘ëª°","docUrl":"https:\u002F\u002Fwww.wix.com\u002Ftemplatesko\u002F2936-t--shirt-store","editorUrl":"https:\u002F\u002Fmanage.wix.com\u002Fedit-template\u002Ffrom-intro?originTemplateId=881ec819-3d5a-4b7d-8394-5a8209c3d378&editorSessionId=64b9af53-78e0-481b-8d70-d7fd8fe90f1a","goodFor":"ì˜ë¥˜ ì˜¨ë¼ì¸ ì‡¼í•‘ëª°, íŒ¨ì…˜ ë¶€í‹°í¬, ì˜ë¥˜ ë§¤ìž¥, ì˜·ê°€ê²Œ ë“±","siteId":"17dc4dcc-7574-4c85-8204-a40184d839c0","metaSiteId":"881ec819-3d5a-4b7d-8394-5a8209c3d378","editorSessionId":"64b9af53-78e0-481b-8d70-d7fd8fe90f1a","isResponsive":false,"isStudio":false,"templateId":"e774dccd-6003-44d7-99f6-7d86e39aecae","url":"https:\u002F\u002Fwww.wix.com\u002Ftemplatesko\u002F2936-t--shirt-store"},"activeExperiments":["StudioTemplatesPageNewUI","OpenTemplateInSameTabForDashboardFirstUsers","TemplateViewerHydrationRender"],"config":{"locale":"ko","dealerCmsTranslationsUrl":"\u002F\u002Fstatic.parastorage.com\u002Fservices\u002Fdealer-cms-translations\u002F1.6685.0\u002F","dealerLightboxUrl":"\u002F\u002Fstatic.parastorage.com\u002Fservices\u002Fdealer-lightbox\u002F2.0.260\u002F"},"userData":{"isLoggedIn":false}};
    window.__BI__ = {"siteId":"17dc4dcc-7574-4c85-8204-a40184d839c0","originUrl":"https:\u002F\u002Fko.wix.com\u002Fwebsite\u002Ftemplates\u002Fhtml\u002Fonline-store\u002Ffashion-clothing","editorSessionId":"64b9af53-78e0-481b-8d70-d7fd8fe90f1a"};
    window.__DEVICE__ = "desktop";
    window.__CONSENT_POLICY__ = {"essential":true,"functional":true,"analytics":true,"advertising":true,"dataToThirdParty":true};
</script>

<script src="//static.parastorage.com/unpkg/react@18.2.0/umd/react.production.min.js" crossorigin></script>
<script src="//static.parastorage.com/unpkg/react-dom@18.2.0/umd/react-dom.production.min.js" crossorigin></script>
<script src="//static.parastorage.com/services/cookie-consent-policy-client/1.866.0/app.bundle.min.js"></script>


<script src="//static.parastorage.com/services/dealer-lightbox/2.0.260/dealer-lightbox.bundle.min.js"></script>


<script src="//static.parastorage.com/services/marketing-template-viewer/1.2134.0/app.bundle.min.js"></script>
</body>
</html>

