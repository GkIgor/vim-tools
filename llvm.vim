" Instructions (Keywords for operations)
syntax keyword llvmInstructions define alloca store call ret br label declare attributes align getelementptr inbounds add nsw resume invoke to label sext landingpad personality unwind bitcast unreachable


" Modifiers and Attributes (Keywords for modifying behavior)
syntax keyword llvmModifiers dso_local noundef undef noalias nonull zeroext zeroinitializer


" Metadata (Keywords related to metadata information)
syntax keyword llvmMetadata source_filename target datalayout triple


" Types (LLVM types)
syntax keyword llvmTypes i8 i16 i32 i64 ptr void float double
syntax match llvmArrayType /\[[0-9]\+ x [a-z0-9]\+\]/


" Constants (Keywords related to constants and fixed values)
syntax keyword llvmConstants null true false undef


" Operators (Aritméticos, bitwise, compare and others)
syntax keyword llvmOperators add sub mul udiv sdiv urem srem shl lshr ashr and or xor not icmp fcmp select phi extractvalue insertvalue


" Symbols (Parênteses, colchetes, atribuições, etc.)
syntax match llvmSymbols "[\(\)\{\}\[\],;=\.]"
" syntax match llvmSymbols "[\(\)\{\}\[\],;=\.]\%(\s*\)\+"

" Operations and Special Keywords (Other important operational keywords)
syntax keyword llvmOperations sext zext trunc fpext fptrunc icmp fcmp phi select


" Function and Label Identifiers (Keywords for functions and labels)
syntax match llvmIdentifier "%[a-zA-Z0-9_]\+"
syntax match llvmLabel "^[a-zA-Z0-9_.]\+:"
syntax match llvmFunction "@\%(\k*\.\)*\k*\>"


" Comments
syntax match llvmComment ";.*$"


" Strings
syntax region llvmString start=+"+ skip=+\\\\+ end=+"+"


" Highlighting links
highlight link llvmInstructions Keyword
highlight link llvmModifiers Statement
highlight link llvmMetadata PreProc
highlight link llvmTypes Type
highlight link llvmArrayType Type
highlight link llvmConstants Constant
highlight link llvmOperators Operator
highlight link llvmOperations Operator
highlight link llvmSymbols Special
highlight link llvmFunction Function
highlight link llvmIdentifier Identifier
highlight link llvmLabel Label
highlight link llvmComment Comment
highlight link llvmString String


" Color change for identifier
highlight llvmIdentifier guifg=#a0a8b7


" Match qualquer palavra que não seja identificador e marque como erro
" syntax match llvmError /\v[^%a-zA-Z0-9_]+/
" syntax match llvmError /\v^(?!%[a-zA-Z0-9_]+|[a-zA-Z0-9_]+[\(\)\{\}\[\],;=\.])[^\s]+$/

" Highlighting for the error
highlight llvmError guifg=#ff0000 guibg=#000000 gui=bold


" Error highlight for unknown tokens (optional)
syntax match llvmError /<unknown token>/
highlight link llvmError Error
