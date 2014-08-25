{Component, InPorts, OutPorts} = require 'noflo'


class CreateTask extends Component

  constructor: ->

    @inPorts = new InPorts
      name:
        datatype: 'string'
        required: true

    @outPorts = new OutPorts
      name:
        datatype: 'string'


    @inPorts.name.on 'data', (data) =>
      @outPorts.name.send data


module.exports =
  getComponent: -> new CreateTask
