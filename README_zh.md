## 项目简介 [English](./README.md)

`Go` 官方提供的 [nm](https://pkg.go.dev/cmd/nm) 工具可以方便地查看 `Go` 程序的符号表，但它依赖于 `.debug` 信息，所以查看线上应用时，往往提示 `no symbols`。

实际上，`Go` 为了支持运行时 `runtime` 的一些操作，在 `.gosymtab` (如果存在) 和 `.gopclntab` 这两个 `section` 里也添加了部分符号表。

因此，本工具在官方的 `nm` 基础上稍加改造，以便支持从 `.gopclntab` 中解析并输出函数入口地址等。

使用方法与 `nm` 一样，为了能单独编译，故从官方源码中选取了部分依赖并放到了 `internal` 目录下，直接 `make` 构建即可。

通过对比 `./nmpro ./hello | grep Hello` 和 `go tool nm ./hello | grep Hello` 即可看出区别。