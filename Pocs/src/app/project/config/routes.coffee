

# =============================================
# Main Module
# =============================================
angular.module 'IonicPocs'

  # =============================================
  # Config Twain
  # =============================================
  .config ($stateProvider, $urlRouterProvider) ->

    $urlRouterProvider.otherwise '/pocs/OAuth'