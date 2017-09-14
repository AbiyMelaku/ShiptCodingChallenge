angular.module('groceryListHome', [])

.controller('showAllController', function($scope, $http) {
  //$scope.result=[];
  $scope.showAll = function() {
    $http({
      method: 'GET',
      url: '/home'
      }).then(function successCallback(response) {
        console.log('response from get REQ:  ', response);
        $scope.result = response.data;
      }, function errorCallback(response) {
        console.log('error from showAllController  ', response);
      });
  }
  
  //invoke that function immediately
  $scope.showAll();
});