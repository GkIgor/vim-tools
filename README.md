## Install to highligth sintaxe for llvm

```sh
git clone -b main git@github.com:GkIgor/vim-tools.git
mv ./vim-tools/llvm.vim ~/.config/neovim/syntax
echo "au BufRead,BufNewFile *.ll set filetype=llvm" > ~/.config/nvim/ftdetect/llvm.vim
```
