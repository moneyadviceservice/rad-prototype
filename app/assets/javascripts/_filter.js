$( document ).ready(function() {

  var pensionSlider = $('.js-pension-slider'),
      postCodeInput = $('.js-filter__postcode'),
      postCodeInputBoth = $('.js-filter__postcode--both'),
      $triggers = $('body').find('[data-target]');

  function handleCheck() {
    var $target = $($(this).attr('data-target'));

    if ( $(this).is(':checked') ) {
      $target.removeClass('is-hidden');
    } else {
      $target.addClass('is-hidden');
    }
  }
  
  $triggers.on('click', handleCheck);

  pensionSlider.addClass('is-hidden');
  postCodeInput.addClass('is-hidden');
  postCodeInputBoth.addClass('is-hidden');
});
