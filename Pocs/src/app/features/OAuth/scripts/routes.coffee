

# =============================================
# Main Module
# =============================================
angular.module 'IonicPocs'

  # =============================================
  # Config Twain
  # =============================================
  .config ($stateProvider, $urlRouterProvider) ->


    $stateProvider
      .state "pocs.oauth",
        url         : "/OAuth"
        views:
          'oAuth':
            templateUrl : "app/features/OAuth/templates/main.html"
            controller  : 'MainOAuthController'



    # $urlRouterProvider.otherwise '/OAuth'