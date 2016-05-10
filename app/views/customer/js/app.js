var krutz = angular.module('krutz', [
  'ui.router',
  'userControllers'
])

krutz.config(function($stateProvider, $urlRouterProvider){

  $urlRouterProvider.otherwise("/index");
  $stateProvider
    .state('index', {
      url: "/index",
      controller: 'indexController as index',
			templateUrl: 'partials/customerSelect.html'
    })
});
