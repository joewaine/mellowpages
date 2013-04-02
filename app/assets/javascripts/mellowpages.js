$(document).ready(function() {

            $(".meat").css("display", "none");
            // $("body").css("background", "black");
            $(".meat").fadeIn(400);
// $(".meat").fadeOut(400);

         $(".headfoot").css("display", "none");
            // $("body").css("background", "black");
            $(".headfoot").fadeIn(200);

$('#example').dataTable();
$('#annoying').on('click', '#cancel_user_form', cancel_user_form);
$('#annoying').on('click', '#cancel_publication_form', cancel_publication_form);
$('#annoying').on('click', '#cancel_book_form', cancel_book_form);
$('#annoying').on('click', '#cancel_comment_form', cancel_comment_form);
$('#annoying').on('click', '#cancel_author_form', cancel_author_form);
$('img').hide().load(function () {
  $(this).fadeIn(500);
});

    });


function cancel_author_form()
{
  $('#user_form').empty();
}

function cancel_user_form()
{
  $('#new_user').empty();
}
function cancel_publication_form()
{
  $('#new_publication').empty();
}
function cancel_book_form()
{
  $('#new_book').empty();
}

function cancel_comment_form()
{
  $('#new_comment').empty();
}

function cancel_author_form()
{
  $('#new_author').empty();
}