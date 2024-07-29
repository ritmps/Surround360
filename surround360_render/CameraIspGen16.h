#ifndef HALIDE__CameraIspGen16_h
#define HALIDE__CameraIspGen16_h
#ifndef HALIDE_ATTRIBUTE_ALIGN
  #ifdef _MSC_VER
    #define HALIDE_ATTRIBUTE_ALIGN(x) __declspec(align(x))
  #else
    #define HALIDE_ATTRIBUTE_ALIGN(x) __attribute__((aligned(x)))
  #endif
#endif
#ifndef BUFFER_T_DEFINED
#define BUFFER_T_DEFINED
#include <stdbool.h>
#include <stdint.h>
typedef struct buffer_t {
    uint64_t dev;
    uint8_t* host;
    int32_t extent[4];
    int32_t stride[4];
    int32_t min[4];
    int32_t elem_size;
    HALIDE_ATTRIBUTE_ALIGN(1) bool host_dirty;
    HALIDE_ATTRIBUTE_ALIGN(1) bool dev_dirty;
    HALIDE_ATTRIBUTE_ALIGN(1) uint8_t _padding[10 - sizeof(void *)];
} buffer_t;
#endif
struct halide_filter_metadata_t;
#ifndef HALIDE_FUNCTION_ATTRS
#define HALIDE_FUNCTION_ATTRS
#endif
#ifdef __cplusplus
extern "C" {
#endif

int CameraIspGen16(buffer_t *_p0_buffer, int32_t _p1, int32_t _p2, buffer_t *_vignetteH_buffer, buffer_t *_vignetteV_buffer, float _blackLevelR, float _blackLevelG, float _blackLevelB, float _whiteBalanceGainR, float _whiteBalanceGainG, float _whiteBalanceGainB, float _clampMinR, float _clampMinG, float _clampMinB, float _clampMaxR, float _clampMaxG, float _clampMaxB, float _sharpenningR, float _sharpenningG, float _sharpenninngB, float _sharpeningSupport, float _noiseCore, buffer_t *_ccm_buffer, buffer_t *_toneTable_buffer, bool _p3, int32_t _bayerPattern, buffer_t *_sharpi_buffer) HALIDE_FUNCTION_ATTRS;
int CameraIspGen16_argv(void **args) HALIDE_FUNCTION_ATTRS;
// Result is never null and points to constant static data
const struct halide_filter_metadata_t *CameraIspGen16_metadata() HALIDE_FUNCTION_ATTRS;

#ifdef __cplusplus
}  // extern "C"
#endif
#endif
