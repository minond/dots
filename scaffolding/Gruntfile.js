/**
 * no need to edit this file. configured by config/build.yml
 * @link http://www.thomasboyt.com/2013/09/01/maintainable-grunt.html
 */
module.exports = function (grunt) {
    'use strict';

    var _, glob, config, tasks, task;

    _ = require('lodash');
    _.defaults = require('merge-defaults');
    glob = require('glob');
    config = grunt.file.readYAML('config/build.yml'),
    tasks = { config: config };

    // configs
    _(config.imports).each(function (file) {
        config = _.defaults(config,
            grunt.file.readYAML('config/build.yml'));
    });

    // options
    _(config.options).each(function (path) {
        glob.sync('*.js', { cwd: path }).forEach(function (option) {
            task = option.replace(/\.js$/,'');
            tasks[ task ] = require(path + option);
        });
    });

    grunt.initConfig(tasks);
    require('load-grunt-tasks')(grunt);

    // tasks
    _(config.aliases).forOwn(function (tasks, alias) {
        grunt.registerTask(alias, tasks);
    });
};
