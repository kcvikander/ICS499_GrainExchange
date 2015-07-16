$(document).ready(function () {
    var self = this;
    console.log("initialized");
    $("#spread").submit(function (event) {
        event.preventDefault();
        saveSpreadData();
    });
    $("#filters").submit(function (event) {
        event.preventDefault();
        filterData();
    });
    $('#all').click(function (event) {
        event.preventDefault();
        getHistoricalData();
    });
});

function saveSpreadData() {
    var i, len, temp, returnArray = [], listJson, settlementList = $('.settlement');
    len = settlementList.length;
    for (i = 0; i < len; i++) {
        temp = {
            spreadId: settlementList[i].name.split("_")[1],
            settlement: settlementList[i].value
        }
        returnArray.push(temp);
    }

    listJson = JSON.stringify(returnArray);
    $.ajax({
        method: "post",
        url: "/api/save",
        data: listJson,
        crossDomain: true,
        async: false,
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
}
function filterData() {
    var start, end, portfolioId;
    start = $('#start').val();
    end = $('#end').val();
    portfolioId = $('#portfolioId').val();
    getHistoricalData(start, end, portfolioId);
}
function getHistoricalData(start, end, portfolioId) {    
    $.ajax({
        method: "get",
        url: "/api/getHistoricalData?start="+start+"&end="+end+"&portfolioId="+portfolioId,
        crossDomain: true,
        async: false,
        returnType: 'json',
        success: function (data) {
            renderHistoryTable(data);
        },
        error: function (e) {
            console.log(e);
        }
    });
};

function renderHistoryTable(records) {
    var i, thisRecord, htmlString = "", len = records.length;
    if (len == 0) {
        htmlString += "<tr><td colspan=12>No records match that criteria.</td></tr>"
    } else {
        for (i = 0; i < len; i++) {
            thisRecord = records[i];
            htmlString += "<tr>";
            htmlString += "<td>" + thisRecord.portfolio + "</td>";   //<th>Portfolio</th>
            htmlString += "<td>" + thisRecord.Leg1 + "</td>";  //<th>Leg 1</th>
            htmlString += "<td>" + thisRecord.Leg1Settle + "</td>"; //<th>Leg 1 Settle</th>
            htmlString += "<td>" + thisRecord.Leg2 + "</td>";  //<th>Leg 2</th>
            htmlString += "<td>" + thisRecord.Leg2Settle + "</td>";  //<th>Leg 2 Settle</th>
            htmlString += "<td>" + thisRecord.Leg1Flux + "</td>";  //<th>Product 1 Flux</th>
            htmlString += "<td>" + thisRecord.Leg2Flux + "</td>"; //<th>Product 2 Flux</th>
            htmlString += "<td>" + thisRecord.spreadFlux + "</td>";  //<th>Spread Flux</th>
            htmlString += "<td>" + thisRecord.fluxExtension + "</td>";  //<th>Flux Extension</th>
            htmlString += "<td>" + thisRecord.marginRequirement + "</td>";  //<th>Margin Requirement</th>
            htmlString += "<td>" + thisRecord.marginCoverage + "</td>";  //<th>Margin Coverage</th>
            htmlString += "<td>" + thisRecord.settlementDate.split(" ")[0] + "</td>";  //<th>Settlement Date</th>
            htmlString += "</tr>"
        }
    }
    $('#results_table tbody').html(htmlString);
};