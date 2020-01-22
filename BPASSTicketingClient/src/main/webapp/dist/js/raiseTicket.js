function raiseTicket(userId) {

//    console.log("Inside raiseTicket "+userId);
    item = {};
    item ["projectId"] = $("#project").val();
//    item ["title"] = $("#ticket_title").val();
    item ["title"] = $("#ticket_title").val();
    item ["raisedBy"] = userId;
    item ["priority"] = $("#priority").val();
    item ["contactEmail"] = $("#email").val();
    item ["contactMobile"] = $("#mob_no").val();
    item ["detailedDiscription"] = $("#detailed_description").val();

    console.log(JSON.stringify(item));

    setTimeout(function () {
        $.ajax({
            type: "GET",
            url: "raiseTicketAjax",
            async: false,
            data: item,
            success: function (response) {
                console.log(response);
                var obj = JSON.parse(response);
                swal("Ticket generated Successfully \n Ticket Number :"+obj.ticketId).then((value) => {
                   console.log("Coming here");
                        });
            },
        });
    }, 20);




}
