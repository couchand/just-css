# css rule

hyphenize = (str) ->
  words = str.split /(?=[A-Z])/
  (w.toLowerCase() for w in words).join '-'

class Rule
  constructor: (@label, @attributes) ->

  hasAttributes: ->
    @attributes and
      Array.isArray(@attributes) and
      @attributes.length

  toString: ->
    attrs = unless @hasAttributes()
      ''
    else
      strs = (attr.toString() for attr in @attributes)
      strs.join ' '

    "#{@label}: #{attrs};"

rule = (name) ->
  label = hyphenize name

  t = (attributes...) ->
    new Rule label, attributes

  t["is#{name[0].toUpperCase()}#{name[1...]}"] = (thing) ->
    thing instanceof Rule and thing.label is label

  t

rule.isRule = (thing) ->
  thing instanceof Rule

module.exports = rule
