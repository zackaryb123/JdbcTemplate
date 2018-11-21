$(document).ready(function () {
    $('#username').on('input', function () {
        var input = $(this);
        var username = input.val();
        if(username && username === "admin")
            input.removeClass("invalid").addClass("valid");
        else
            input.removeClass("valid").addClass("invalid");

    });

    $('#password').on('input', function () {
        var input = $(this);
        var password = input.val();
        if(password && password === "admin")
            input.removeClass("invalid").addClass("valid");
        else
            input.removeClass("valid").addClass("invalid");
    });

    $('form').submit(function (event) {
        if(
            $('#username').hasClass('invalid') ||
            $('#password').hasClass('invalid')
        ){
            event.preventDefault();
            event.stopPropagation();
            $('#errorBox').html('One or more of the above fields are invalid!').css('color', 'red');
        }
    });

});
