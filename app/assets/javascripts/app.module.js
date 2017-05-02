angular.module('rails-bootstrap', []);

/*
  Instead of including the ng-app to the layout or view it is included on turbolinks:load event.
  This will ensure the angular application to be properly initialized when using together with
  Turbolinks.
  Comment this code if you are not using Turbolinks
*/
$(document).on('turbolinks:load', function () {
  angular.bootstrap(document.body, ['rails-bootstrap']);
});

/*
  Instead of including the ng-app to the layout or view it is included only when the document is
  ready. This will ensure the angular application to be properly initialized when using together
  with Turbolinks.
  Uncomment this code if you are not using Turbolinks
*/
// $(document).ready(function () {
//   angular.bootstrap(document.body, ['rails-bootstrap']);
// });
