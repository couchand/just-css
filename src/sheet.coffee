# css sheet

class Sheet
  constructor: (@blocks) ->
  toString: ->
    @blocks.join '\n'

sheet = (blocks) ->
  new Sheet blocks

sheet.isSheet = (thing) ->
  thing instanceof Sheet

module.exports = sheet
