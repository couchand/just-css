# css unit

class Quantity
  constructor: (@label, @amount) ->
  toString: ->
    "#{@amount}#{@label}"

unit = (name, label) ->
  label = name unless label

  u = (amount) ->
    new Quantity label, amount

  u["is#{name[0].toUpperCase()}#{name[1...]}"] = (thing) ->
    thing instanceof Quantity and thing.label is label

  u

unit.isQuantity = (thing) ->
  thing instanceof Quantity

module.exports = unit
