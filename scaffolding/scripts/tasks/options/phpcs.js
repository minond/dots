module.exports = {
    all: {
        dir: [
            '<%= config.files.php.all %>',
            '<%= config.files.tests.php %>'
        ]
    },
    options: {
        bin: 'bin/phpcs',
        standard: 'PSR2',
        report: 'full',
        reportFile: '<%= config.artifacts.linters.phpcs %>'
    }
};
