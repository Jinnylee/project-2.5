// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function () {

  $('#signup').on('submit', function(e){
    e.preventDefault();
    $.auth.emailSignUp({
      email: $('#signup input[name="email"]').val(),
      name: $('#signup input[name="name"]').val(),
      username: $('#signup input[name="username"]').val(),
      password: $('#signup input[name="password"]').val(),
      password_confirmation: $('#signup input[name="password_confirmation"]').val()
    }).then(function(user){
      console.log(user);
    }).fail(function(resp){
      console.log(resp);
    });
  });

  $('#signin').on('submit', function(e){
    e.preventDefault();

    $.auth.emailSignIn({
      email: $('#signin input[name="email"]').val(),
      password: $('#signin input[name="password"]').val(),
    }).then(function(user){
      console.log(user);
    }).fail(function(resp){
      console.log(resp);
    });
  });

  $('#signout-btn').on('click', function(){
    $.auth.signOut();
  }).then(function(resp){
    console.log(resp);
  }).fail(function(resp){
    console.log(resp);
  });


});