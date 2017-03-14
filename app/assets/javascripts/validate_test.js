$.validator.addMethod("validemail", function (value, element) {
    return this.optional(element) || isValidEmail(value);
  }, "Invalid email");

  function isValidEmail(str) {
    r = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i;
    return r.test(str);
  }

//---- validate new post 
$("#new_post").validate({
  errorPlacement: function (error, element) {
    error.insertAfter(element);
  },
  //debug: true,  //mở cái này không submit dc
  rules: {
    //'post[title]': {required: true},
    //'post[content]': {required: true}
  },
  messages: {},
  onfocusout: function(element) {
    this.element(element);
  },
  submitHandler: function(form) {
    form.submit();
  }
});

//---- validate new comment
$("#new_comment").validate({
  errorPlacement: function (error, element) {
    error.insertAfter(element);
  },
  //debug: true,  //mở cái này không submit dc
  rules: {
    //'comment[name]': {required: true},
    //'comment[content]': {required: true}
  },
  messages: {},
  onfocusout: function(element) {
    this.element(element);
  },
  submitHandler: function(form) {
    form.submit();
  }
});

//--- validate sign up

$("#new_user").validate({
  errorPlacement: function (error, element) {
    error.insertAfter(element);
  },
  //debug: true,  //mở cái này không submit dc
  rules: {
    //'comment[name]': {required: true},
    //'comment[content]': {required: true}
  },
  messages: {},
  onfocusout: function(element) {
    this.element(element);
  },
  submitHandler: function(form) {
    form.submit();
  }
});

//--- validate edit user

$("#edit_user").validate({
  errorPlacement: function (error, element) {
    error.insertAfter(element);
  },
  //debug: true,  //mở cái này không submit dc
  rules: {
    //'comment[name]': {required: true},
    //'comment[content]': {required: true}
  },
  messages: {},
  onfocusout: function(element) {
    this.element(element);
  },
  submitHandler: function(form) {
    form.submit();
  }
});

