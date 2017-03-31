angular.module('rails-bootstrap', []);

/*
  Instead of including the ng-app to the layout or view it is included on turbolinks:load event.
  This will ensure the angular application to be properly initialized when using together with
  Turbolinks.
*/
$(document).on('turbolinks:load', function () {
  angular.bootstrap(document.body, ['rails-bootstrap']);
});
