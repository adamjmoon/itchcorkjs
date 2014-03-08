module.exports = (grunt) ->
  spawn = require('child_process').spawn
  fs = require('fs')
  root = __dirname
  test = root + '/'
    
  grunt.loadNpmTasks 'grunt-contrib-requirejs'

  # Configure Grunt
  grunt.initConfig
    requirejs:
      compile:
        options:
          name:  'itchcork'
          baseUrl: './lib/itchcork'
          paths: {
                  'lodash' : '../../lib/lodash',
                  'benchmark' : '../../lib/benchmark',
                  'platform' : '../../lib/platform'
                  'lib': '../../lib'
          }
          inlineText: true,
          optimizeAllPluginResources: true
          pragmas: {
              build: true
          }
          stubModules: ['text']
          out: 'lib/itchcork.js'
    grunt.log.write 'Waiting...'
    done = async