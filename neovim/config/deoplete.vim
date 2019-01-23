"Vim deoplete config
let g:deoplete#enable_at_startup = 1
let g:uname = system('uname')
if g:uname ==# "Darwin\n"
	let g:deoplete#sources#clang#libclang_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
elseif g:uname ==# "Linux\n"
	let g:deoplete#sources#clang#libclang_path='/usr/lib/llvm-7/lib/libclang.so'
endif
" \ '-Wall -Wextra -Werror -L ~/.brew/lib -I ~/.brew/include -lgtest -std=c++11'
let g:deoplete#sources#clang#flags=[
			\ '-Wall -Wextra -Werror'
			\]
call deoplete#custom#option('max_list', 10)
call deoplete#custom#option('smart_case', v:true)
"remove deoplete preview popup
set completeopt-=preview

" For conceal markers.
if has('conceal')
	set conceallevel=2 concealcursor=niv
endif
