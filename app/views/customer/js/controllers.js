var userControllers = angular.module('userControllers', ['ngDialog']);

userControllers.controller("indexController", ['$scope', 'ngDialog', function($scope, ngDialog) {
  this.customers = [{name: "ron", email: "ron@swanson.rit.edu", phone:"6666666666"}, {name: 'bruce', email:"bruce@batcave.net", phone: "8888888888"}]
  this.addCustomer = function(){
    ngDialog.openConfirm({
      className: 'ngdialog-theme-default',
      template: 'partials/addition.html',
      controller: 'AdditionController as addition',
      scope: $scope
    })
  }
  return this;
}]);

userControllers.controller('AdditionController', ['$scope',function($scope) {
    this.fName  = "";
    this.lName  = "";
    this.number = "";
    this.email  = "";
    this.title = "";
    this.addContact = function() {
        //rails stuff
    };
}]);
