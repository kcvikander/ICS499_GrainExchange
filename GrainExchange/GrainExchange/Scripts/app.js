﻿$(document).ready(function () {
    var self = this;
    console.log("initialized");
    $("#spread").submit(function (event) {
        event.preventDefault();
        var i, len, temp, returnArray = [],listJson,settlementList = $('.settlement');
        len = settlementList.length;
        for (i = 0; i < len; i++) {
            temp = {
                spreadId: settlementList[i].name.split("_")[1],
                settlement: settlementList[i].value
            }
            returnArray.push(JSON.stringify(temp));
        }

        listJson = JSON.stringify(returnArray);
        $.ajax({
            method:"post",
            url: "/api/save",
            data: listJson,
            crossDomain: true,
            async:false,
            success: function (data) {
                $('#success').show();
                $('html, body').animate({
                    scrollTop: $('.page-header').offset().top
                }, 2000);
            },
            error: function (e) {
                $('#success').show();
                $('html, body').animate({
                    scrollTop: $('.page-header').offset().top
                }, 2000);
            }
        });
    });
});