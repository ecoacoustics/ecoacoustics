//= require bulma


window.onload = function() {

    document
        .querySelectorAll("script[type='math/tex']")
        .forEach(function(element) {
        element.outerHTML = katex.renderToString(
            element.textContent, 
            { displayMode: false }
        );
    });

    document
    .querySelectorAll("script[type='math/tex; mode=display']")
    .forEach(function(element) {
        element.outerHTML = katex.renderToString(
            element.textContent.replace(/%.*/g, ''), 
            { displayMode: true }
        );
    });

}