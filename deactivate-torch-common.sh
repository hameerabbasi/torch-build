unset MAX_JOBS
unset CMAKE_BUILD_TYPE
unset USE_CUDA
unset USE_PRECOMPILED_HEADERS
unset USE_PER_OPERATOR_HEADERS
unset CCACHE_COMPRESS
unset CCACHE_SLOPPINESS
unset USE_KINETO                               # profiler
unset USE_CUDNN                                # CNNs
unset USE_FBGEMM                               # GEMMs
unset BUILD_TEST                               # C++ tests
unset BUILD_CAFFE2                             # caffe2
unset BUILD_CAFFE2_OPS                         # caffe2
unset USE_SYSTEM_NCCL                          # distributed
unset USE_QNNPACK                              # quantized
unset USE_XNNPACK                              # quantized
unset USE_ROCM
unset CMAKE_LINKER_TYPE
unset CCACHE_SLOPPINESS
unset USE_PRECOMPILED_HEADERS
unset USE_RELATIVE_PATHS
unset USE_CUDNN
unset USE_DISTRIBUTED
unset USE_FBGEMM
unset USE_KINETO
unset BUILD_AOT_INDUCTOR_TEST
unset BUILD_TEST
unset USE_PYTORCH_QNNPACK
unset USE_XNNPACK
unset USE_FLASH_ATTENTION
unset USE_MEM_EFF_ATTENTION
unset CMAKE_PREFIX_PATH
unset CMAKE_C_COMPILER_LAUNCHER
unset CMAKE_CXX_COMPILER_LAUNCHER
if [[ $USE_CUDA -eq 1 ]]; then
  unset CMAKE_CUDA_COMPILER
  unset CMAKE_CUDA_COMPILER_LAUNCHER
  unset CUDA_PATH
  unset CUDA_HOME
  unset CUDA_INC_PATH
fi
unset USE_CUDA
