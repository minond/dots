# Coding Style
The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD",
"SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be
interpreted as described in [RFC 2119](http://www.ietf.org/rfc/rfc2119.txt).

-------------------------------------------------------------------------------

## Basics
* Code MUST be readable.
* Lines SHOULD not be longer than 80 characters long.
* White space SHOULD be used freely.
* Avoid trailing white-space.
* Four spaces. No tabs.

## Functions
* Keep functions short.
* And have then do one thing, and one thing only.
* And don't forget to document them.

## Comments
* Don't state the obvious.
* Make your documentation useful.

## General
* MUST NOT use [global state](http://stackoverflow.com/questions/137975/what-is-so-bad-about-singletons)
    or create [singletons](http://programmers.stackexchange.com/questions/148108/why-is-global-state-so-evil).
* SHOULD have 100% unit test code coverage.
* High [cohesion](http://en.wikipedia.org/wiki/Cohesion_(computer_science))
* Low [coupling](http://en.wikipedia.org/wiki/Coupling_(computer_programming))

-------------------------------------------------------------------------------

## Rules per file type
### Documentation
* Files SHOULD be written using [Markdown](http://daringfireball.net/projects/markdown/)

### Javascript
* Code MUST follow [JSHint](http://www.jshint.com/docs/options/) rules.
* Programmer MUST give a damn about [complexity](http://jscomplexity.org/complexity).
* Code MUST NOT be included as inline HTML.
* Code SHOULD follow [YUIDoc's](http://yui.github.io/yuidoc/syntax/index.html)
    comment formatting.

### CSS
* Code SHOULD follow [Harry Roberts' guidelines](https://github.com/csswizardry/CSS-Guidelines)
* Code SHOULD include a [table of contents](https://github.com/csswizardry/CSS-Guidelines#table-of-contents)
    if file is large (use your best judgement when sizing files when sizing
    files. If you're coming back to this file in six months, will you still
    know where existing rules are? Or where new ones should be added?)
    * Table of contents text and section titles should expand 80 characters.
    * No need to include an INDEX or CONTENTS section in table of contents.
        We already know what we're looking at.

-------------------------------------------------------------------------------

## Samples
### CSS table of contents

```css
/**
 * BASE................................................html and body tag styles
 * SOURCE...................................................source side section
 */

/*****************************************************************************\
  $BODY
\*****************************************************************************/
body {
    color: red;
}

/*****************************************************************************\
  $SOURCE
\*****************************************************************************/
.source {
    color: white;
}
```

### Javascript comment
```javascript
/**
 * I really hate that YUIDoc makes you use the "class" keyword. Javascript
 * doesn't have classes! It doesn't need classes!
 * @class SampleApp
 */
var SampleApp = {
    /**
     * this is my own property name. very nice
     * @property name
     * @type {String}
     */
    name: "SampleApp",

    /**
     * this is my method that returns the sum of two numbers
     * @static
     * @method sum
     * @param a {Int} the first number you want to add
     * @param b {Int} the second number you want to add
     * @return {Int} returns the sum of a and b
     */
    sum: function (a, b) {
        return a + b;
    }
};

```

-------------------------------------------------------------------------------

## Resources
* [AngularJS style guide](https://github.com/mgechev/angularjs-style-guide)
* [The Twelve-Factor App](http://12factor.net/)

