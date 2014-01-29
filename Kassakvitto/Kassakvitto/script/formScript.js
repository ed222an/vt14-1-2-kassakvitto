"use strict";

var Page = {

    init: function (e) {

        // Sätter fokus på textfältet när sidan laddar.
        document.getElementById("SumTextBox").focus();
        $("SumTextBox").select();
    }
}

window.onload = Page.init;