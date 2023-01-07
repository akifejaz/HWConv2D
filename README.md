# 2D Convolution on Hardware

## INTRO

This repo contains simple code for convolution of type `valid` .



## Dir. Structure

```

.
├── ...
├── Conv2d.hw                                 # 
├── Conv2d.ip_user_files                      # 
├── Conv2d.runs                               # 
├── Conv2d.srcs                               # src directory
│   ├── sources_1                             #
│   	├── new                               # src files
            ├── matrix_accumulator.sv
            ├── tb_controller.sv
            ├── matrix_compute.sv
            ├── test_matrix_accumulator.sv
            ├── Static_RAM.sv
            └── conv2d_controller.sv
└── README.md
```



## Explanation

working ... 



## Usage:

Just clone and open with Vivado software `.xpr` file.

In order to generate `conv_kernal.txt` and `conv_outputV2.txt` follow the repo. [CLICK HERE](https://github.com/akifejaz/HwVerification#testbench-for-2d-convolution)



## TODOs:

- Some Code Formatting
- Multi-precision testing
