$( document ).ready(function() {
  // CHECKBOXES & RADIOS
  var pensionSlider = $('.js-pension-slider'),
      postCodeInput = $('.js-filter__postcode'),
      postCodeInputBoth = $('.js-filter__postcode--both'),
      $triggers = $('body').find('[data-target]'),
      $secondaryFilter = $('.secondary-filter');

  function handleCheck() {
    $triggers.each(function() {
      var $target = $($(this).attr('data-target'));

      if ( $(this).is(':checked') ) {
        $target.removeClass('is-hidden');
      } else {
        $target.addClass('is-hidden');
      }
    });
  }

  $triggers.on('click', handleCheck);
  $triggers.on('change', handleCheck);

  pensionSlider.addClass('is-hidden');
  postCodeInput.addClass('is-hidden');
  postCodeInputBoth.addClass('is-hidden');
  $secondaryFilter.addClass('is-hidden');

  $('.filter-button').click(function() {
    $secondaryFilter.toggleClass('is-hidden');

    if (!$secondaryFilter.is('.is-hidden')) {
      $('html, body').animate({
        scrollTop: $secondaryFilter.offset().top
      }, 600);
    }
  })

  // SLIDERS
  var $sliders = $('input[type="range"]');

  $sliders.each(function() {
    var $slider = $(this);

    if ($slider.attr('data-slider-target')) {
      var $target = $($slider.attr('data-slider-target'));
      $slider.on('input', function() {
        $target.html($(this).val());
      });

      $target.html($(this).val());
    }
  });

  // ANNUITIY PROVIDER COUNT
  $('.secondary-filter').find('input').on('change input click', function() {
    var newTotal = getRandomInt(0, 2000);
    $('.js-adviser-total').html(newTotal);
  });

  function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
  }
});
