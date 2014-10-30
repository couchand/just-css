# css block

class Block
  constructor: (@selector, @rules) ->
  toString: ->
    """
    #{@selector} {
        #{(r.toString() for r in @rules).join '\n    '}
    }
    """

block = (selector, rules) ->
  new Block selector, rules

block.isBlock = (thing) ->
  thing instanceof Block

module.exports = block
