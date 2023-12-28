## Introduction [中文](./README_zh.md)

The [nm](https://pkg.go.dev/cmd/nm) tool officially provided by Go can easily view the symbol table of a Go program, but it relies on `.debug_*` sections. For online applications, we can only get the warning "no symbols".

But in fact, in order to facilitate some operations at runtime, Go has also added some symbol tables in the two sections `.gosymtab` (if it exists) and `.gopclntab`, which means we can get the function entry address from these.

Therefore, this tool is slightly modified based on the official tool nm, to support parsing function entry address from `.gopclntab`.

The usage method is the same as nm. In order to compile it separately, some dependencies are selected from the official source code and placed in the internal directory. Just execute `make` directly.

Finally, you can find the difference by running `./nmpro ./hello | grep Hello` and `go tool nm ./hello | grep Hello`.