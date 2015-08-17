

# =============================================
# Main Module
# =============================================
angular.module 'IonicPocs'

  # =============================================
  # Config
  # =============================================
  .config ($stateProvider, $urlRouterProvider) ->

    $stateProvider
      .state "pocs.map",
        url         : "/map"
        views:
          'map':
            templateUrl : "app/features/map/templates/main.html"
            controller  : 'MapController'