module.exports = (grunt) ->

  require('jit-grunt')(grunt, {
    sasslint: 'grunt-sass-lint'
  })

  # Project configuration
  grunt.initConfig

    sasslint:
      options:
        configFile: 'config/.sass-lint.yml'
      target: [
        'sass/**/*.scss',
      ]

  grunt.registerTask 'default', [
    'sasslint'
  ]

