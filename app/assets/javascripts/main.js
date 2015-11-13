$(document).ready(function() {
  // $.ajaxSettings.dataType = 'json';

  $('.vote-button').closest('form').on('ajax:beforeSend', function(event, xhr, settings) {
    // settings.dataType = 'html';
    console.log('beforeSend');
  });
  $('.vote-button').closest('form').on('ajax:success', function(event, data, status, xhr) {
    console.log('SUCCESS!');
    // debugger;
  });
  $('.vote-button').closest('form').on('ajax:error', function(event, xhr, status, error) {
    console.log('error');
    // debugger;
    // $(this).parents('ul').html(xhr);
  });
  $('.vote-button').closest('form').on('ajax:complete', function(event, xhr, status) {
    console.log('complete');
    // debugger;
  });
});

