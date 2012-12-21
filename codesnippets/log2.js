define(['util/handlebars'], function (Handlebars) {
  function z (){ 
    console.log(arguments);
  }
  Handlebars.registerHelper('log2', z);
  return z;
});
