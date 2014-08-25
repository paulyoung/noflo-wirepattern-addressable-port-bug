{Component, helpers, InPorts, OutPorts} = require 'noflo'


class CreateList extends Component

  constructor: ->

    @inPorts = new InPorts
      name:
        datatype: 'string'
        required: true

      tasks:
        datatype: 'string'
        required: true
        addressable: true


    @outPorts = new OutPorts
      description:
        datatype: 'string'


module.exports =
  getComponent: ->
    component = new CreateList

    config =
      in: [
        'name'
        'tasks'
      ]
      out: 'description'
      arrayPolicy:
        in: 'all'

    helpers.WirePattern component, config, (data, groups, outPort) ->
      console.log data.tasks

    return component
