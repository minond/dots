// http://www.thomasboyt.com/2013/09/01/maintainable-grunt.html
module.exports = function (grunt) {
    'use strict';

    var glob, config, tasks, task, path;

    glob = require('glob');
    config = grunt.file.readYAML('config/build.yml'),
    path = config.files.tasks.options.dir;
    tasks = { config: config };

    glob.sync('*', { cwd: path }).forEach(function (option) {
        task = option.replace(/\.js$/,'');
        tasks[ task ] = require(path + option);
    });

    grunt.initConfig(tasks);
    require('load-grunt-tasks')(grunt);

    grunt.registerTask('default', [ 'build' ]);
    grunt.registerTask('prepare', [ 'mkdir:build' ]);
    grunt.registerTask('clean', [ 'rm:build' ]);
    grunt.registerTask('compile', [ 'sass:all' ]);
    grunt.registerTask('server', [ 'connect:server' ]);

    grunt.registerTask('build', [ 'prepare', 'clean', 'prepare', 'compile' ]);
    grunt.registerTask('documentation', [ 'yuidoc:all', 'exec:apigen' ]);
    grunt.registerTask('ci', [ 'quality', 'test', 'documentation' ]);

    grunt.registerTask('test', [ 'test:unit', 'test:integration' ]);
    grunt.registerTask('test:integration', [ 'prepare', 'exec:behat' ]);
    grunt.registerTask('test:unit', [ 'test:unit:js', 'test:unit:php' ]);
    grunt.registerTask('test:unit:js', [ 'jasmine:all' ]);
    grunt.registerTask('test:unit:php', [ 'phpunit:all' ]);

    grunt.registerTask('quality', [
        'prepare',
        'complexity:all',
        'jshint:all',
        'jshint:report',
        'exec:scsslint',
        'exec:phpcpd',
        'exec:phpcpd',
        'exec:phpmd',
        'phpcs:all'
    ]);
};
