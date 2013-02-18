$(function() {
  $('#q_text').bind('textchange', function() {
    var length = $(this).val().length;
    var rest = 140 - length
    if (rest >= 0) {
      $('#text_count').text(rest);
      $('#text_count').removeClass('over');
      $('#new_q').find('input[type=submit]').removeAttr('disabled');
    } else {
      $('#text_count').text(rest);
      $('#text_count').addClass('over');
      $('#new_q').find('input[type=submit]').attr('disabled','disabled');
    }
  })
});
