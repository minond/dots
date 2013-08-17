" mx abbreviations
ab mxmodule 
\mx.module.register("", function (module, settings, self) {
\<CR>
\<CR>});

ab mxconstructor 
\mx.module.constructor("", function (module, proto, settings, self) {
\<CR>proto.__construct(argv) {
\<CR>argv = self.util.fillin(argv, settings.defaults);
\<CR>};
\<CR>});

" php
ab phpfile <?php<CR><CR>namespace 

" jasmine.js
iabbrev itj it("", function() {<CR>});<ESC><UP>
iabbrev descj describe("", function() {<CR>});<ESC>
iabbrev beforej beforeEach(function() {<CR>});<ESC>

" javadocs
iabbrev /** /**<CR> * <CR>*/<ESC><UP><UP>
iabbrev @p * @param <ESC>
iabbrev @r * @return <ESC>
