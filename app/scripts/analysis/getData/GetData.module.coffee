'use strict'

Module = require 'scripts/BaseClasses/Module.coffee'

module.exports = getData = new Module

  # module id for registration
  id: 'app_analysis_getData'

  # module components
  components:
    services:
      'app_analysis_getData_initService': require 'scripts/analysis/GetData/GetDataInit.service.coffee'
      'app_analysis_getData_msgService': require 'scripts/analysis/GetData/GetDataMsgService.service.coffee'
      'app_analysis_getData_dataAdaptor': require 'scripts/analysis/GetData/GetDataDataAdaptor.service.coffee'
      'app_analysis_getData_inputCache': require 'scripts/analysis/GetData/GetDataInputCache.service.coffee'
      'app_analysis_getData_jsonParser': require 'scripts/analysis/GetData/GetDataJsonParser.service.coffee'
      'app_analysis_getData_showState': require 'scripts/analysis/GetData/GetDataShowState.service.coffee'
    controllers:
      'GetDataSidebarCtrl': require 'scripts/analysis/GetData/GetDataSidebarCtrl.controller.coffee'
      'GetDataMainCtrl': require 'scripts/analysis/GetData/GetDataMainCtrl.controller.coffee'

    directives: []

  # module state config
  state:
    # module name to show in UI
    name: 'Raw Data'
    url: '/getData'
    mainTemplate: require 'partials/analysis/getData/main.jade'
    sidebarTemplate: require 'partials/analysis/getData/sidebar.jade'
