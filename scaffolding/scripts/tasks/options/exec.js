module.exports = {
    scsslint: {
        cmd: 'scss-lint -f XML <%= config.files.sass.dir %> > <%= config.artifacts.linters.scsslint %>'
    },
    phpmd: {
        // removing controversial because of camelCame bs
        // cleancode rule not in 1.4.*
        cmd: 'bin/phpmd <%= config.files.php.dir %>,<%= config.files.tests.dir %> xml codesize,design,naming,unusedcode --reportfile <%= config.artifacts.linters.phpmd %> --strict'
    },
    phpcpd: {
        cmd: 'bin/phpcpd <%= config.files.php.all %> <%= config.files.tests.dir %>'
    },
    phpdcd: {
        cmd: 'bin/phpdcd <%= config.files.php.all %> <%= config.files.tests.dir %>'
    },
    apigen: {
        cmd: 'apigen -s=<%= config.files.php.dir %> -d=<%= config.artifacts.documentation.apigen %> --todo=yes --colors=no --progressbar=no'
    },
    phantomjs: {
        cmd: 'node_modules/.bin/phantomjs --webdriver=8643'
    },
    behat: {
        cmd: 'bin/behat --format junit,html,pretty --out <%= config.artifacts.tests.behat.junit %>,<%= config.artifacts.tests.behat.html %>'
    }
};
