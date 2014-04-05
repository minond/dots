module.exports = {
    all: {
        name: '', // '<%= config.name %>',
        description: '', // '<%= config.description %>',
        version: '', // '<%= config.version %>',
        options: {
            paths: '<%= config.files.js.dir %>',
            outdir: '<%= config.artifacts.documentation.yuidoc %>'
        }
    }
};
