
# =============================================
# Vendors Module
# =============================================
angular.module 'IonicPocs.vendors' , [
  'objectToArray'
  'ui.select'
  'ui.bootstrap'
  'ui.utils.masks'
  'ngAnimate'
  'ngCookies'
  'ngTouch'
  'ngSanitize'
  'ngResource'
  'ngCordova'
  'ionic'
  'timeoutzeroMap'
]

# =============================================
# Modules
# =============================================
angular.module 'IonicPocs.controllers' , ['IonicPocs.vendors']
angular.module 'IonicPocs.filters'     , ['IonicPocs.vendors']
angular.module 'IonicPocs.factories'   , ['IonicPocs.vendors']
angular.module 'IonicPocs.services'    , ['IonicPocs.vendors']
angular.module 'IonicPocs.constants'   , ['IonicPocs.vendors']
angular.module 'IonicPocs.directives'  , ['IonicPocs.vendors']
angular.module 'IonicPocs.mocks'       , ['IonicPocs.vendors']
angular.module 'IonicPocs.providers'   , ['IonicPocs.vendors']
angular.module 'IonicPocs.templates'   , ['IonicPocs.vendors']
angular.module 'IonicPocs.configs'     , ['IonicPocs.vendors']




# =============================================
# Scripts Module
# =============================================
angular.module 'IonicPocs.scripts'     , [
  'IonicPocs.controllers'
  'IonicPocs.constants'
  'IonicPocs.filters'
  'IonicPocs.factories'
  'IonicPocs.services'
  'IonicPocs.directives'
  'IonicPocs.mocks'
  'IonicPocs.providers'
  'IonicPocs.templates'
  'IonicPocs.configs'
]


# =============================================
# Main Module
# =============================================
angular.module 'IonicPocs', [
  'ui.router'
  'IonicPocs.vendors'
  'IonicPocs.scripts'
]