#!/usr/bin/env node
const {run} = require('@cli-engine/engine')
const config = {
  channel: 'stable',
  version: '6.15.19-f4f84f6'
}
run(process.argv, config)
