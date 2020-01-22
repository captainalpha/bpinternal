function renderAllTicket(userId) {

    console.log("Coming here in Raise Ticket for user :: " + userId);

    var tableData;
    var tdrow = "";

    setTimeout(function () {
        $.ajax({
            type: "GET",
            url: "getAllTicketsAjax",
            async: false,
            data: userId,
            success: function (response) {
//                console.log(response);
                tableData = response;
                var jsonArr = JSON.parse(tableData);

                $("#allTicketTable tbody tr").remove();
                for (var i = 0; i < jsonArr.length; i++) {
                    tdrow += "<tr><td>" + jsonArr[i].ticketInstanceId + "</td>";
                    tdrow += "<td>" + jsonArr[i].title + "</td>";
                    tdrow += "<td>" + jsonArr[i].raisedOn + "</td>";
                    tdrow += "<td>" + jsonArr[i].ticketStauts + "</td>";
                    tdrow += "</tr>";
                }
                console.log("Table Data :: " + tdrow);
                $("#allTicketTable tbody").append(tdrow);
                $("#allTicketTable").DataTable();
            },
        });
    }, 20);


//    $(function () {
//        $("#allTicketTable").DataTable();
//    });
}
