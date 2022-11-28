syntax include @yaml syntax/yaml.vim
syntax region markdownYAMLFrontmatter start=/\%^---$/ end=/^---$/ keepend contains=@yaml
unlet b:current_syntax
