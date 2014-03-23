{ ok, equal, deepEqual } = require 'assert'
{ woot } = require "../#{process.env.JSLIB or 'lib'}/index"

describe 'my-package', ->

  it "should woot", ->
      equal woot(), 42
