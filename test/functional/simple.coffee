# a simple stylesheet test

require '../helper'

{_, backgroundColor, width, height, pt, pct, px} = require 'just-css'

describe "a simple stylesheet", ->
  it "should generate css", ->

    sheet = _ [

      _ 'body',
        backgroundColor 'antiquewhite'

      _ 'h1, h2, h3',
        height pt 5

      _ 'h4, h5',
        height pt 3

      _ '.content',
        width pct 65
        height px 42

    ]

    sheet.toString()
      .should
      .equal  """
              body {
                  background-color: 'antiquewhite';
              }
              h1, h2, h3 {
                  height: 5pt;
              }
              h4, h5 {
                  height: 3pt;
              }
              .content {
                  width: 65%;
                  height: 42px;
              }
              """
