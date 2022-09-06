# Hardware-Labs

07111902 王木吟 萧鸿民 樊复 刘奕棣

计算机组成原理课程设计 & 汇编与接口课程设计

**我们的项目将 CPU 与外设控制器整合为了一个片上系统，并开发了下板应用。该仓库包含了两门课程中团队项目的成果。**

## 仓库代码说明

根目录下的 `computer_system` 是一个 Vivado 项目，为了更好地使用版本控制系统 (Git)，我们使用了子目录 gitignore 文件来忽略 Vivado 在运行仿真和综合时产生的文件。我们的 Verilog 源码主要位于 `computer_system\computer_system.srcs\sources_1\new` 目录下。

根目录下的 `software` 中的内容则是我们的片上系统上运行的软件，`asm_src` 下不仅有应用程序的汇编源码，还有一些辅助性的脚本。我们已将下板的汇编程序转换为了机器码 coe 文件，其中的三组 coe 文件均可以用于写入存储器 IP 核并下板运行。

> CPU 部分的测试代码待补充

文件 `bit_backup/Computer_final.bit` 是我们下板成功的程序的 bitstream 文件，可直接使用该文件烧录进 FPGA 芯片，复现我们的应用。
