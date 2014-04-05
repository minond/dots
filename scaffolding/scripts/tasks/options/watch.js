// livereload Google Chrome plugin: http://goo.gl/cRPr4f
module.exports = {
    all: {
        tasks: [
            'compile',
            'quality',
            'test'
        ],
        files: [
            '<%= config.files.sass.all %>',
            '<%= config.files.js.all %>',
            '<%= config.files.tests.js %>'
        ],
        options: {
            livereload: 35729
        }
    },

    compile: {
        tasks: [ 'compile' ],
        files: [
            '<%= config.files.sass.all %>'
        ],
    },

    code: {
        tasks: [ 'quality' ],
        files: [
            '<%= config.files.js.all %>',
            '<%= config.files.tests.js %>',
            '<%= config.files.css.all %>'
        ],
    },

    tests: {
        tasks: [ 'test' ],
        files: [
            '<%= config.files.js.all %>',
            '<%= config.files.tests.js %>'
        ],
    }
};
