angular.module('groceryDatabase',['groceryListHome', 'ngRoute'])

.config( function($routeProvider) {
  $routeProvider
    .when('/home', {
      templateUrl: 'home.html',
      controller: 'showAllController'
    })
    .otherwise({
      redirectTo: '/home'
    });
});
