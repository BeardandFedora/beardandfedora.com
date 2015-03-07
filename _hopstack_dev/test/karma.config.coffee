##
# Created with HopStack.
# User: thinq4yourself
# Date: 2014-09-08
# Time: 12:52 AM
# To change this template use Tools | Templates.
##

# Karma configuration
# http://karma-runner.github.io/0.12/config/configuration-file.html
# Generated on 2014-09-07 using
# generator-karma 0.8.3


module.exports = (config) ->
    config.set
        # base path, that will be used to resolve files and exclude
        basePath: '../'

        frameworks: ['jasmine']

        # list of files / patterns to load in the browser
        files: [
            'test/lib/jquery/dist/jquery.min.js'
            'test/lib/angular/angular.min.js'
            'test/lib/angular-mocks/angular-mocks.js'
            'test/lib/angular-validator/dist/angular-validator.js'
            'test/lib/angular-validator/dist/angular-validator-rules.js'
            'dist/scripts/ui.js'
            'dist/scripts/app.js'
            #'test/specs/*.coffee'
        ]

        preprocessors:
            '**/*.coffee': 'coffee'

        # list of files to exclude
        exclude: []

        # use dots reporter, as travis terminal does not support escaping sequences
        # possible values: 'dots', 'progress'
        # CLI --reporters progress
        reporters: ['progress']

        # web server port
        # CLI --port 9876
        port: 8081

        # enable / disable colors in the output (reporters and logs)
        # CLI --colors --no-colors
        colors: yes

        # level of logging
        # possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
        # CLI --log-level debug
        logLevel: config.LOG_DEBUG

        # enable / disable watching file and executing tests whenever any file changes
        # CLI --auto-watch --no-auto-watch
        autoWatch: no

        # Start these browsers, currently available:
        # - Chrome
        # - ChromeCanary
        # - Firefox
        # - Opera
        # - Safari (only Mac)
        # - PhantomJS
        # - IE (only Windows)
        # CLI --browsers Chrome,Firefox,Safari
        browsers: ['PhantomJS']

        # If browser does not capture in given timeout [ms], kill it
        # CLI --capture-timeout 5000
        captureTimeout: 20000

        # Auto run tests on start (when browsers are captured) and exit
        # CLI --single-run --no-single-run
        singleRun: yes

        # report which specs are slower than 500ms
        # CLI --report-slower-than 500
        reportSlowerThan: 500