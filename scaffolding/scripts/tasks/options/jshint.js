module.exports = {
    all: {
        src: [
            '<%= config.files.js.all %>',
            '<%= config.files.tests.js %>'
        ],
        options: {
            // http://jslinterrors.com/
            jshintrc: '<%= config.files.configuration.jshint %>'
        }
    },
    report: {
        src: [
            '<%= config.files.js.all %>',
            '<%= config.files.tests.js %>'
        ],
        options: {
            jshintrc: '<%= config.files.configuration.jshint %>',
            reporter: 'checkstyle',
            reporterOutput: '<%= config.artifacts.linters.jshint %>',
        }
    }
};
