(function(){
  var form_has_been_submitted = false;
  var last_field_changed;

  var validations_til_valid = 5;

  var isFormInvalid = function(){
    validations_til_valid--;
    console.log('Validate ' + validations_til_valid + ' more times.');
    return (validations_til_valid > 0);
  };

  $('input').on('input', function(e){
    var name = $(this).attr('name');
    if (last_field_changed !== name) {
      last_field_changed = name;
      _gaq.push(['_trackEvent', 'Form', name + ' change']);
      console.log(name + ' change');
    }
    if (form_has_been_submitted) { isFormInvalid(); }
  });

  $('form').on('submit', function(e){
    form_has_been_submitted = true;
    if (isFormInvalid()) {
      _gaq.push(['_trackEvent', 'Form', 'client-side validation fail']);
      console.log('client-side validation fail');
      last_field_changed = false;
      e.preventDefault();
    }
  });
})();
