$(document).ready ->

  window.ionicPocsEnv or= {}
  # setupData              = {}
  # waitForSetup           = false
  # hasHash                = window.location.search.indexOf('hash') > -1
  # hasOpcCodigo           = window.location.search.indexOf('opc_codigo') > -1
  # hasCompany             = window.location.search.indexOf('company') > -1
  # hasUrl                 = window.location.search.indexOf('url') > -1
  # ionicPocsEnv = window.ionicPocsEnv

  # # Verifica query parameters
  # if hasHash and hasOpcCodigo
  #   hash       = /hash=([^&]*)?/g.exec(window.location.search)[1]
  #   opc_codigo = /opc_codigo=([^&]*)?/g.exec(window.location.search)[1]

  # if hasCompany and hasUrl
  #   setupData =
  #     company: /company=([^&]*)?/g.exec(window.location.search)[1]
  #     url: decodeURIComponent(/url=([^&]*)?/g.exec(window.location.search)[1])

  #   waitForSetup = true

  # getSetup = ->
  #   $.ajax({
  #     type : "GET"
  #     url  : ionicPocsEnv.API_BASE_URL + 'app/setup'
  #   })

  # postSetup = ->
  #   $.ajax({
  #     type : "POST"
  #     url  : ionicPocsEnv.API_BASE_URL + 'app/setup'
  #     contentType: "application/json; charset=utf-8"
  #     dataType: 'json'
  #     data : JSON.stringify(setupData)
  #   })

  # Bootstrap da aplicação
  bootstrap = ->
    angular.bootstrap(document, ['IonicPocs'])
    return

  bootstrapWithLoggedUser = (result) ->
    window.ionicPocsEnv.user = result
    bootstrap()

  bootstrapWithoutLoggedUser = ->
    simpleStorage.deleteKey('scanAuthorization')
    window.ionicPocsEnv.user = null

    bootstrap()



  # ============================
  # Initialize
  # ============================
  # bootstrap()

  # getMe = ->
  #   $.ajax({
  #     type    : "GET"
  #     url     : ionicPocsEnv.API_BASE_URL + 'user/me'
  #     headers :
  #       'hash'           : hash
  #       'opc_codigo'     : opc_codigo
  #   }).success(bootstrapWithLoggedUser).error(bootstrapWithoutLoggedUser)

