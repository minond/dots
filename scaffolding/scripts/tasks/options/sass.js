module.exports = {
    all: {
        options: {
            loadPath: '<%= config.files.sass.deps %>'
        },

        // http://gruntjs.com/configuring-tasks#building-the-files-object-dynamically
        files: [{
            expand: true,
            cwd: '<%= config.files.sass.dir %>',
            src: [ '**/*.scss' ],
            dest: '<%= config.files.css.dest %>',
            ext: '.css'
        }]
    }
};
