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

  backgroundColor: rule 'backgroundColor'
  width: rule 'width'
  height: rule 'height'

  pt: unit 'pt'
  pct: unit 'pct', '%'
  px: unit 'px'
