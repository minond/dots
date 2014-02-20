module.exports = function (grunt) {
    "use strict";

    var test_files = 'tests/**/*_test.js';
    var js_files = 'src/*';
    var css_files = 'public/css/*.css';

    grunt.initConfig({
        jshint: {
            all: {
                src: [ js_files ],
                options: {
                    globals: [ 'require' ]
                }
            },
            report: {
                src: [ js_files ],
                options: {
                    globals: [ 'require' ],
                    reporterOutput: 'build/code/lint/jshint.txt'
                }
            }
        },

        // docs: https://github.com/stubbornella/csslint/wiki/Rules
        csslint: {
            all: {
                // TODO: complete rules/options
                options: {
                    'import': 2,
                    'important': 2,
                    'empty-rules': 2,

                    formatters: [
                        {
                            id: 'junit-xml',
                            dest: 'build/code/lint/csslint_junit.xml'
                        },
                        {
                            id: 'csslint-xml',
                            dest: 'build/code/lint/csslint.xml'
                        }
                    ]
                },
                src: [ css_files ]
            }
        },

        // docs: https://github.com/vigetlabs/grunt-complexity
        // complexity: http://jscomplexity.org/complexity
        complexity: {
            all: {
                src: [ js_files ],
                options: {
                    jsLintXML: 'build/code/complexity/report.xml',
                    checkstyleXML: 'build/code/complexity/checkstyle.xml',
                    breakOnErrors: false,
                    errorsOnly: false,
                    cyclomatic: [ 3, 7, 12 ],
                    halstead: [ 8, 13, 20 ],
                    maintainability: 100
                }
            }
        },

        jasmine: {
            all: {
                src: [ js_files ],
                options: {
                    specs: [ test_files ],
                    template: require('grunt-template-jasmine-istanbul'),
                    templateOptions: {
                        coverage: 'build/tests/js/converage.json',
                        report: 'build/tests/js/report/',

                        // thresholds: {
                        //     lines: 75,
                        //     statements: 75,
                        //     branches: 75,
                        //     functions: 90
                        // },

                        template: require('grunt-template-jasmine-requirejs'),

                        // requirejs template configuration:
                        templateOptions: {
                        }
                    },
                    junit: {
                        path: 'build/tests/js/junit'
                    }
                }
            }
        },

        yuidoc: {
            all: {
                // name: '<%= pkg.name %>',
                // description: '<%= pkg.description %>',
                // version: '<%= pkg.version %>',
                options: {
                    paths: 'src',
                    outdir: 'build/code/documentation'
                }
            }
        },

        // go to http://localhost:9000
        connect: {
            server: {
                options: {
                    keepalive: true,
                    debug: true,
                    hostname: 'localhost',
                    port: 9000,
                    base: '.'
                }
            }
        },

        mkdir: {
            build: {
                options: {
                    create: [
                        'build/code/complexity'
                    ]
                },
            },
        },

        rm: {
            build: {
                dir: 'build'
            }
        },

        // livereload Google Chrome plugin: http://goo.gl/cRPr4f
        watch: {
            code: {
                files: [
                    js_files,
                    test_files,
                    css_files
                ],
                tasks: ['code'],
                options: {
                    livereload: 35729
                }
            },
            tests: {
                files: [
                    js_files,
                    test_files
                ],
                tasks: ['test'],
                options: {
                    livereload: 35729
                }
            }
        }
    });

    grunt.registerTask('default', [ 'build' ]);
    grunt.registerTask('clean', [ 'rm:build' ]);

    grunt.registerTask('test', [ 'jasmine:all' ]);
    grunt.registerTask('doc', [ 'yuidoc:all' ]);

    grunt.registerTask('build', [
        'clean',
        'code',
        'test'
    ]);

    grunt.registerTask('code', [
        'mkdir:build',
        'complexity:all',
        'jshint:all',
        'jshint:report',
        'csslint:all',
        'yuidoc:all'
    ]);

    grunt.loadNpmTasks('grunt-complexity');
    grunt.loadNpmTasks('grunt-contrib-connect');
    grunt.loadNpmTasks('grunt-contrib-csslint');
    grunt.loadNpmTasks('grunt-contrib-jasmine');
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-yuidoc');
    grunt.loadNpmTasks('grunt-mkdir');
    grunt.loadNpmTasks('grunt-rm');
};
