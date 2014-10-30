# just css

sheet = require './sheet'
block = require './block'
rule = require './rule'
unit = require './unit'

select = (param, rules...) ->
  # sheet case
  if Array.isArray param
    sheet param
  else
    block param, rules

module.exports =

  _: select
  select: select

  color: rule 'color'
  backgroundColor: rule 'backgroundColor'
  width: rule 'width'
  height: rule 'height'
  margin: rule 'margin'
  marginLeft: rule 'marginLeft'
  marginTop: rule 'marginTop'
  marginRight: rule 'marginRight'
  marginBottom: rule 'marginBottom'
  padding: rule 'padding'
  paddingLeft: rule 'paddingLeft'
  paddingTop: rule 'paddingTop'
  paddingRight: rule 'paddingRight'
  paddingBottom: rule 'paddingBottom'

  pt: unit 'pt'
  pct: unit 'pct', '%'
  px: unit 'px'
