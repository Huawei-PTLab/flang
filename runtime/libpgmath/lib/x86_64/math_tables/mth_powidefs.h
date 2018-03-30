/*
 * Copyright (c) 2017-2018, NVIDIA CORPORATION.  All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

/*
 * float/double raised to integer exponent.
 * Integer exponent can be either 4 or 8 bytes.
 * Not to be confused with float/double raised to float/double
 */

/* EM64T */
/* R(:)**I4 */
MTHINTRIN(powi1, ss   , em64t      , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, ds   , em64t      , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, sv4  , em64t      , __fx_powi1_4          , __fx_powi1_4          , __px_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, dv2  , em64t      , __fx_powi1_2          , __fx_powi1_2          , __px_powi1_2          ,__math_dispatch_error)
/* R(:)**I4(:) */
MTHINTRIN(powi , ss   , em64t      , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi , ds   , em64t      , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi , sv4  , em64t      , __gs_powi_4           , __gs_powi_4           , __px_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , dv2  , em64t      , __gd_powi_2           , __gd_powi_2           , __px_powi_2           ,__math_dispatch_error)
/* R(:)**I8 */
MTHINTRIN(powk1, ss   , em64t      , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, ds   , em64t      , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, sv4  , em64t      , __fx_powk1_4          , __fx_powk1_4          , __px_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, dv2  , em64t      , __fx_powk1_2          , __fx_powk1_2          , __px_powk1_2          ,__math_dispatch_error)
/* R(:)**I8(:) */
MTHINTRIN(powk , ss   , em64t      , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk , ds   , em64t      , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk , sv4  , em64t      , __gs_powk_4           , __gs_powk_4           , __px_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , dv2  , em64t      , __gd_powk_2           , __gd_powk_2           , __px_powk_2           ,__math_dispatch_error)
/* C(:)**I4 */
MTHINTRIN(powi , cs   , em64t      , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     ,__math_dispatch_error)
MTHINTRIN(powi , zs   , em64t      , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    ,__math_dispatch_error)
MTHINTRIN(powi , zv1  , em64t      , __gz_powi_1v          , __gz_powi_1v          , __gz_powi_1v          ,__math_dispatch_error)
/* C(:)**I8 */
MTHINTRIN(powk , cs   , em64t      , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     ,__math_dispatch_error)
MTHINTRIN(powk , zs   , em64t      , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    ,__math_dispatch_error)
MTHINTRIN(powk , zv1  , em64t      , __gz_powk_1v          , __gz_powk_1v          , __gz_powk_1v          ,__math_dispatch_error)

/* SSE4 */
/* R(:)**I4 */
MTHINTRIN(powi1, ss   , sse4       , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, ds   , sse4       , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, sv4  , sse4       , __fx_powi1_4          , __fx_powi1_4          , __px_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, dv2  , sse4       , __fx_powi1_2          , __fx_powi1_2          , __px_powi1_2          ,__math_dispatch_error)
/* R(:)**I4(:) */
MTHINTRIN(powi , ss   , sse4       , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi , ds   , sse4       , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi , sv4  , sse4       , __gs_powi_4           , __gs_powi_4           , __px_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , dv2  , sse4       , __gd_powi_2           , __gd_powi_2           , __px_powi_2           ,__math_dispatch_error)
/* R(:)**I8 */
MTHINTRIN(powk1, ss   , sse4       , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, ds   , sse4       , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, sv4  , sse4       , __fx_powk1_4          , __fx_powk1_4          , __px_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, dv2  , sse4       , __fx_powk1_2          , __fx_powk1_2          , __px_powk1_2          ,__math_dispatch_error)
/* R(:)**I8(:) */
MTHINTRIN(powk , ss   , sse4       , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk , ds   , sse4       , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk , sv4  , sse4       , __gs_powk_4           , __gs_powk_4           , __px_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , dv2  , sse4       , __gd_powk_2           , __gd_powk_2           , __px_powk_2           ,__math_dispatch_error)
/* C(:)**I4 */
MTHINTRIN(powi , cs   , sse4       , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     ,__math_dispatch_error)
MTHINTRIN(powi , zs   , sse4       , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    ,__math_dispatch_error)
MTHINTRIN(powi , zv1  , sse4       , __gz_powi_1v          , __gz_powi_1v          , __gz_powi_1v          ,__math_dispatch_error)
/* C(:)**I8 */
MTHINTRIN(powk , cs   , sse4       , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     ,__math_dispatch_error)
MTHINTRIN(powk , zs   , sse4       , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    ,__math_dispatch_error)
MTHINTRIN(powk , zv1  , sse4       , __gz_powk_1v          , __gz_powk_1v          , __gz_powk_1v          ,__math_dispatch_error)

/* AVX */
/* R(:)**I4 */
MTHINTRIN(powi1, ss   , avx        , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, ds   , avx        , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, sv4  , avx        , __fx_powi1_4          , __fx_powi1_4          , __px_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, dv2  , avx        , __fx_powi1_2          , __fx_powi1_2          , __px_powi1_2          ,__math_dispatch_error)
MTHINTRIN(powi1, sv8  , avx        , __fy_powi1_8          , __fy_powi1_8          , __py_powi1_8          ,__math_dispatch_error)
MTHINTRIN(powi1, dv4  , avx        , __fy_powi1_4          , __fy_powi1_4          , __py_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, sv4m , avx        , __fs_powi1_4_mn       , __rs_powi1_4_mn       , __ps_powi1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, dv2m , avx        , __fd_powi1_2_mn       , __rd_powi1_2_mn       , __pd_powi1_2_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, sv8m , avx        , __fs_powi1_8_mn       , __rs_powi1_8_mn       , __ps_powi1_8_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, dv4m , avx        , __fd_powi1_4_mn       , __rd_powi1_4_mn       , __pd_powi1_4_mn       ,__math_dispatch_error)
/* R(:)**I4(:) */
MTHINTRIN(powi , ss   , avx        , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi , ds   , avx        , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi , sv4  , avx        , __gs_powi_4           , __gs_powi_4           , __px_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , dv2  , avx        , __gd_powi_2           , __gd_powi_2           , __px_powi_2           ,__math_dispatch_error)
MTHINTRIN(powi , sv8  , avx        , __gs_powi_8           , __gs_powi_8           , __py_powi_8           ,__math_dispatch_error)
MTHINTRIN(powi , dv4  , avx        , __gd_powi_4           , __gd_powi_4           , __py_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , sv4m , avx        , __fs_powi_4_mn        , __rs_powi_4_mn        , __ps_powi_4_mn        ,__math_dispatch_error)
MTHINTRIN(powi , dv2m , avx        , __fd_powi_2_mn        , __rd_powi_2_mn        , __pd_powi_2_mn        ,__math_dispatch_error)
MTHINTRIN(powi , sv8m , avx        , __fs_powi_8_mn        , __rs_powi_8_mn        , __ps_powi_8_mn        ,__math_dispatch_error)
MTHINTRIN(powi , dv4m , avx        , __fd_powi_4_mn        , __rd_powi_4_mn        , __pd_powi_4_mn        ,__math_dispatch_error)
/* R(:)**I8 */
MTHINTRIN(powk1, ss   , avx        , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, ds   , avx        , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, sv4  , avx        , __fx_powk1_4          , __fx_powk1_4          , __px_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, dv2  , avx        , __fx_powk1_2          , __fx_powk1_2          , __px_powk1_2          ,__math_dispatch_error)
MTHINTRIN(powk1, sv8  , avx        , __fy_powk1_8          , __fy_powk1_8          , __py_powk1_8          ,__math_dispatch_error)
MTHINTRIN(powk1, dv4  , avx        , __fy_powk1_4          , __fy_powk1_4          , __py_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, sv4m , avx        , __fs_powk1_4_mn       , __rs_powk1_4_mn       , __ps_powk1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, dv2m , avx        , __fd_powk1_2_mn       , __rd_powk1_2_mn       , __pd_powk1_2_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, sv8m , avx        , __fs_powk1_8_mn       , __rs_powk1_8_mn       , __ps_powk1_8_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, dv4m , avx        , __fd_powk1_4_mn       , __rd_powk1_4_mn       , __pd_powk1_4_mn       ,__math_dispatch_error)
/* R(:)**I8(:) */
MTHINTRIN(powk , ss   , avx        , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk , ds   , avx        , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk , sv4  , avx        , __gs_powk_4           , __gs_powk_4           , __px_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , dv2  , avx        , __gd_powk_2           , __gd_powk_2           , __px_powk_2           ,__math_dispatch_error)
MTHINTRIN(powk , sv8  , avx        , __gs_powk_8           , __gs_powk_8           , __py_powk_8           ,__math_dispatch_error)
MTHINTRIN(powk , dv4  , avx        , __gd_powk_4           , __gd_powk_4           , __py_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , sv4m , avx        , __fs_powk_4_mn        , __rs_powk_4_mn        , __ps_powk_4_mn        ,__math_dispatch_error)
MTHINTRIN(powk , dv2m , avx        , __fd_powk_2_mn        , __rd_powk_2_mn        , __pd_powk_2_mn        ,__math_dispatch_error)
MTHINTRIN(powk , sv8m , avx        , __fs_powk_8_mn        , __rs_powk_8_mn        , __ps_powk_8_mn        ,__math_dispatch_error)
MTHINTRIN(powk , dv4m , avx        , __fd_powk_4_mn        , __rd_powk_4_mn        , __pd_powk_4_mn        ,__math_dispatch_error)
/* C(:)**I4 */
MTHINTRIN(powi , cs   , avx        , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     ,__math_dispatch_error)
MTHINTRIN(powi , zs   , avx        , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    ,__math_dispatch_error)
MTHINTRIN(powi , zv1  , avx        , __gz_powi_1v          , __gz_powi_1v          , __gz_powi_1v          ,__math_dispatch_error)
/* C(:)**I8 */
MTHINTRIN(powk , cs   , avx        , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     ,__math_dispatch_error)
MTHINTRIN(powk , zs   , avx        , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    ,__math_dispatch_error)
MTHINTRIN(powk , zv1  , avx        , __gz_powk_1v          , __gz_powk_1v          , __gz_powk_1v          ,__math_dispatch_error)

/* AVXFMA4 */
/* R(:)**I4 */
MTHINTRIN(powi1, ss   , avxfma4    , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, ds   , avxfma4    , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, sv4  , avxfma4    , __fx_powi1_4          , __fx_powi1_4          , __px_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, dv2  , avxfma4    , __fx_powi1_2          , __fx_powi1_2          , __px_powi1_2          ,__math_dispatch_error)
MTHINTRIN(powi1, sv8  , avxfma4    , __fy_powi1_8          , __fy_powi1_8          , __py_powi1_8          ,__math_dispatch_error)
MTHINTRIN(powi1, dv4  , avxfma4    , __fy_powi1_4          , __fy_powi1_4          , __py_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, sv4m , avxfma4    , __fs_powi1_4_mn       , __rs_powi1_4_mn       , __ps_powi1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, dv2m , avxfma4    , __fd_powi1_2_mn       , __rd_powi1_2_mn       , __pd_powi1_2_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, sv8m , avxfma4    , __fs_powi1_8_mn       , __rs_powi1_8_mn       , __ps_powi1_8_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, dv4m , avxfma4    , __fd_powi1_4_mn       , __rd_powi1_4_mn       , __pd_powi1_4_mn       ,__math_dispatch_error)
/* R(:)**I4(:) */
MTHINTRIN(powi , ss   , avxfma4    , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi , ds   , avxfma4    , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi , sv4  , avxfma4    , __gs_powi_4           , __gs_powi_4           , __px_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , dv2  , avxfma4    , __gd_powi_2           , __gd_powi_2           , __px_powi_2           ,__math_dispatch_error)
MTHINTRIN(powi , sv8  , avxfma4    , __gs_powi_8           , __gs_powi_8           , __py_powi_8           ,__math_dispatch_error)
MTHINTRIN(powi , dv4  , avxfma4    , __gd_powi_4           , __gd_powi_4           , __py_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , sv4m , avxfma4    , __fs_powi_4_mn        , __rs_powi_4_mn        , __ps_powi_4_mn        ,__math_dispatch_error)
MTHINTRIN(powi , dv2m , avxfma4    , __fd_powi_2_mn        , __rd_powi_2_mn        , __pd_powi_2_mn        ,__math_dispatch_error)
MTHINTRIN(powi , sv8m , avxfma4    , __fs_powi_8_mn        , __rs_powi_8_mn        , __ps_powi_8_mn        ,__math_dispatch_error)
MTHINTRIN(powi , dv4m , avxfma4    , __fd_powi_4_mn        , __rd_powi_4_mn        , __pd_powi_4_mn        ,__math_dispatch_error)
/* R(:)**I8 */
MTHINTRIN(powk1, ss   , avxfma4    , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, ds   , avxfma4    , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, sv4  , avxfma4    , __fx_powk1_4          , __fx_powk1_4          , __px_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, dv2  , avxfma4    , __fx_powk1_2          , __fx_powk1_2          , __px_powk1_2          ,__math_dispatch_error)
MTHINTRIN(powk1, sv8  , avxfma4    , __fy_powk1_8          , __fy_powk1_8          , __py_powk1_8          ,__math_dispatch_error)
MTHINTRIN(powk1, dv4  , avxfma4    , __fy_powk1_4          , __fy_powk1_4          , __py_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, sv4m , avxfma4    , __fs_powk1_4_mn       , __rs_powk1_4_mn       , __ps_powk1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, dv2m , avxfma4    , __fd_powk1_2_mn       , __rd_powk1_2_mn       , __pd_powk1_2_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, sv8m , avxfma4    , __fs_powk1_8_mn       , __rs_powk1_8_mn       , __ps_powk1_8_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, dv4m , avxfma4    , __fd_powk1_4_mn       , __rd_powk1_4_mn       , __pd_powk1_4_mn       ,__math_dispatch_error)
/* R(:)**I8(:) */
MTHINTRIN(powk , ss   , avxfma4    , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk , ds   , avxfma4    , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk , sv4  , avxfma4    , __gs_powk_4           , __gs_powk_4           , __px_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , dv2  , avxfma4    , __gd_powk_2           , __gd_powk_2           , __px_powk_2           ,__math_dispatch_error)
MTHINTRIN(powk , sv8  , avxfma4    , __gs_powk_8           , __gs_powk_8           , __py_powk_8           ,__math_dispatch_error)
MTHINTRIN(powk , dv4  , avxfma4    , __gd_powk_4           , __gd_powk_4           , __py_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , sv4m , avxfma4    , __fs_powk_4_mn        , __rs_powk_4_mn        , __ps_powk_4_mn        ,__math_dispatch_error)
MTHINTRIN(powk , dv2m , avxfma4    , __fd_powk_2_mn        , __rd_powk_2_mn        , __pd_powk_2_mn        ,__math_dispatch_error)
MTHINTRIN(powk , sv8m , avxfma4    , __fs_powk_8_mn        , __rs_powk_8_mn        , __ps_powk_8_mn        ,__math_dispatch_error)
MTHINTRIN(powk , dv4m , avxfma4    , __fd_powk_4_mn        , __rd_powk_4_mn        , __pd_powk_4_mn        ,__math_dispatch_error)
/* C(:)**I4 */
MTHINTRIN(powi , cs   , avxfma4    , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     ,__math_dispatch_error)
MTHINTRIN(powi , zs   , avxfma4    , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    ,__math_dispatch_error)
MTHINTRIN(powi , zv1  , avxfma4    , __gz_powi_1v          , __gz_powi_1v          , __gz_powi_1v          ,__math_dispatch_error)
/* C(:)**I8 */
MTHINTRIN(powk , cs   , avxfma4    , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     ,__math_dispatch_error)
MTHINTRIN(powk , zs   , avxfma4    , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    ,__math_dispatch_error)
MTHINTRIN(powk , zv1  , avxfma4    , __gz_powk_1v          , __gz_powk_1v          , __gz_powk_1v          ,__math_dispatch_error)

/* AVX2 */
/* R(:)**I4 */
MTHINTRIN(powi1, ss   , avx2       , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, ds   , avx2       , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, sv4  , avx2       , __fx_powi1_4          , __fx_powi1_4          , __px_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, dv2  , avx2       , __fx_powi1_2          , __fx_powi1_2          , __px_powi1_2          ,__math_dispatch_error)
MTHINTRIN(powi1, sv8  , avx2       , __fy_powi1_8          , __fy_powi1_8          , __py_powi1_8          ,__math_dispatch_error)
MTHINTRIN(powi1, dv4  , avx2       , __fy_powi1_4          , __fy_powi1_4          , __py_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, sv4m , avx2       , __fs_powi1_4_mn       , __rs_powi1_4_mn       , __ps_powi1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, dv2m , avx2       , __fd_powi1_2_mn       , __rd_powi1_2_mn       , __pd_powi1_2_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, sv8m , avx2       , __fs_powi1_8_mn       , __rs_powi1_8_mn       , __ps_powi1_8_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, dv4m , avx2       , __fd_powi1_4_mn       , __rd_powi1_4_mn       , __pd_powi1_4_mn       ,__math_dispatch_error)
/* R(:)**I4(:) */
MTHINTRIN(powi , ss   , avx2       , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi , ds   , avx2       , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi , sv4  , avx2       , __gs_powi_4           , __gs_powi_4           , __px_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , dv2  , avx2       , __gd_powi_2           , __gd_powi_2           , __px_powi_2           ,__math_dispatch_error)
MTHINTRIN(powi , sv8  , avx2       , __gs_powi_8           , __gs_powi_8           , __py_powi_8           ,__math_dispatch_error)
MTHINTRIN(powi , dv4  , avx2       , __gd_powi_4           , __gd_powi_4           , __py_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , sv4m , avx2       , __fs_powi_4_mn        , __rs_powi_4_mn        , __ps_powi_4_mn        ,__math_dispatch_error)
MTHINTRIN(powi , dv2m , avx2       , __fd_powi_2_mn        , __rd_powi_2_mn        , __pd_powi_2_mn        ,__math_dispatch_error)
MTHINTRIN(powi , sv8m , avx2       , __fs_powi_8_mn        , __rs_powi_8_mn        , __ps_powi_8_mn        ,__math_dispatch_error)
MTHINTRIN(powi , dv4m , avx2       , __fd_powi_4_mn        , __rd_powi_4_mn        , __pd_powi_4_mn        ,__math_dispatch_error)
/* R(:)**I8 */
MTHINTRIN(powk1, ss   , avx2       , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, ds   , avx2       , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, sv4  , avx2       , __fx_powk1_4          , __fx_powk1_4          , __px_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, dv2  , avx2       , __fx_powk1_2          , __fx_powk1_2          , __px_powk1_2          ,__math_dispatch_error)
MTHINTRIN(powk1, sv8  , avx2       , __fy_powk1_8          , __fy_powk1_8          , __py_powk1_8          ,__math_dispatch_error)
MTHINTRIN(powk1, dv4  , avx2       , __fy_powk1_4          , __fy_powk1_4          , __py_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, sv4m , avx2       , __fs_powk1_4_mn       , __rs_powk1_4_mn       , __ps_powk1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, dv2m , avx2       , __fd_powk1_2_mn       , __rd_powk1_2_mn       , __pd_powk1_2_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, sv8m , avx2       , __fs_powk1_8_mn       , __rs_powk1_8_mn       , __ps_powk1_8_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, dv4m , avx2       , __fd_powk1_4_mn       , __rd_powk1_4_mn       , __pd_powk1_4_mn       ,__math_dispatch_error)
/* R(:)**I8(:) */
MTHINTRIN(powk , ss   , avx2       , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk , ds   , avx2       , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk , sv4  , avx2       , __gs_powk_4           , __gs_powk_4           , __px_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , dv2  , avx2       , __gd_powk_2           , __gd_powk_2           , __px_powk_2           ,__math_dispatch_error)
MTHINTRIN(powk , sv8  , avx2       , __gs_powk_8           , __gs_powk_8           , __py_powk_8           ,__math_dispatch_error)
MTHINTRIN(powk , dv4  , avx2       , __gd_powk_4           , __gd_powk_4           , __py_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , sv4m , avx2       , __fs_powk_4_mn        , __rs_powk_4_mn        , __ps_powk_4_mn        ,__math_dispatch_error)
MTHINTRIN(powk , dv2m , avx2       , __fd_powk_2_mn        , __rd_powk_2_mn        , __pd_powk_2_mn        ,__math_dispatch_error)
MTHINTRIN(powk , sv8m , avx2       , __fs_powk_8_mn        , __rs_powk_8_mn        , __ps_powk_8_mn        ,__math_dispatch_error)
MTHINTRIN(powk , dv4m , avx2       , __fd_powk_4_mn        , __rd_powk_4_mn        , __pd_powk_4_mn        ,__math_dispatch_error)
/* C(:)**I4 */
MTHINTRIN(powi , cs   , avx2       , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     ,__math_dispatch_error)
MTHINTRIN(powi , zs   , avx2       , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    ,__math_dispatch_error)
MTHINTRIN(powi , zv1  , avx2       , __gz_powi_1v          , __gz_powi_1v          , __gz_powi_1v          ,__math_dispatch_error)
/* C(:)**I8 */
MTHINTRIN(powk , cs   , avx2       , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     ,__math_dispatch_error)
MTHINTRIN(powk , zs   , avx2       , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    ,__math_dispatch_error)
MTHINTRIN(powk , zv1  , avx2       , __gz_powk_1v          , __gz_powk_1v          , __gz_powk_1v          ,__math_dispatch_error)

/* AVX512KNL */
/* R(:)**I4 */
MTHINTRIN(powi1, ss   , avx512knl  , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, ds   , avx512knl  , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, sv4  , avx512knl  , __fx_powi1_4          , __fx_powi1_4          , __px_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, dv2  , avx512knl  , __fx_powi1_2          , __fx_powi1_2          , __px_powi1_2          ,__math_dispatch_error)
MTHINTRIN(powi1, sv8  , avx512knl  , __fy_powi1_8          , __fy_powi1_8          , __py_powi1_8          ,__math_dispatch_error)
MTHINTRIN(powi1, dv4  , avx512knl  , __fy_powi1_4          , __fy_powi1_4          , __py_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, sv16 , avx512knl  , __gs_powi1_16         , __gs_powi1_16         , __pz_powi1_16         ,__math_dispatch_error)
MTHINTRIN(powi1, dv8  , avx512knl  , __gd_powi1_8          , __gd_powi1_8          , __pz_powi1_8          ,__math_dispatch_error)
MTHINTRIN(powi1, sv4m , avx512knl  , __fs_powi1_4_mn       , __rs_powi1_4_mn       , __ps_powi1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, dv2m , avx512knl  , __fd_powi1_2_mn       , __rd_powi1_2_mn       , __pd_powi1_2_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, sv8m , avx512knl  , __fs_powi1_8_mn       , __rs_powi1_8_mn       , __ps_powi1_8_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, dv4m , avx512knl  , __fd_powi1_4_mn       , __rd_powi1_4_mn       , __pd_powi1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, sv16m, avx512knl  , __fs_powi1_16_mn      , __rs_powi1_16_mn      , __ps_powi1_16_mn      ,__math_dispatch_error)
MTHINTRIN(powi1, dv8m , avx512knl  , __fd_powi1_8_mn       , __rd_powi1_8_mn       , __pd_powi1_8_mn       ,__math_dispatch_error)
/* R(:)**I4(:) */
MTHINTRIN(powi , ss   , avx512knl  , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi , ds   , avx512knl  , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi , sv4  , avx512knl  , __gs_powi_4           , __gs_powi_4           , __px_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , dv2  , avx512knl  , __gd_powi_2           , __gd_powi_2           , __px_powi_2           ,__math_dispatch_error)
MTHINTRIN(powi , sv8  , avx512knl  , __gs_powi_8           , __gs_powi_8           , __py_powi_8           ,__math_dispatch_error)
MTHINTRIN(powi , dv4  , avx512knl  , __gd_powi_4           , __gd_powi_4           , __py_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , sv16 , avx512knl  , __gs_powi_16          , __gs_powi_16          , __pz_powi_16          ,__math_dispatch_error)
MTHINTRIN(powi , dv8  , avx512knl  , __gd_powi_8           , __gd_powi_8           , __pz_powi_8           ,__math_dispatch_error)
MTHINTRIN(powi , sv4m , avx512knl  , __fs_powi_4_mn        , __rs_powi_4_mn        , __ps_powi_4_mn        ,__math_dispatch_error)
MTHINTRIN(powi , dv2m , avx512knl  , __fd_powi_2_mn        , __rd_powi_2_mn        , __pd_powi_2_mn        ,__math_dispatch_error)
MTHINTRIN(powi , sv8m , avx512knl  , __fs_powi_8_mn        , __rs_powi_8_mn        , __ps_powi_8_mn        ,__math_dispatch_error)
MTHINTRIN(powi , dv4m , avx512knl  , __fd_powi_4_mn        , __rd_powi_4_mn        , __pd_powi_4_mn        ,__math_dispatch_error)
MTHINTRIN(powi , sv16m, avx512knl  , __fs_powi_16_mn       , __rs_powi_16_mn       , __ps_powi_16_mn       ,__math_dispatch_error)
MTHINTRIN(powi , dv8m , avx512knl  , __fd_powi_8_mn        , __rd_powi_8_mn        , __pd_powi_8_mn        ,__math_dispatch_error)
/* R(:)**I8 */
MTHINTRIN(powk1, ss   , avx512knl  , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, ds   , avx512knl  , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, sv4  , avx512knl  , __fx_powk1_4          , __fx_powk1_4          , __px_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, dv2  , avx512knl  , __fx_powk1_2          , __fx_powk1_2          , __px_powk1_2          ,__math_dispatch_error)
MTHINTRIN(powk1, sv8  , avx512knl  , __fy_powk1_8          , __fy_powk1_8          , __py_powk1_8          ,__math_dispatch_error)
MTHINTRIN(powk1, dv4  , avx512knl  , __fy_powk1_4          , __fy_powk1_4          , __py_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, sv16 , avx512knl  , __gs_powk1_16         , __gs_powk1_16         , __pz_powk1_16         ,__math_dispatch_error)
MTHINTRIN(powk1, dv8  , avx512knl  , __gd_powk1_8          , __gd_powk1_8          , __pz_powk1_8          ,__math_dispatch_error)
MTHINTRIN(powk1, sv4m , avx512knl  , __fs_powk1_4_mn       , __rs_powk1_4_mn       , __ps_powk1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, dv2m , avx512knl  , __fd_powk1_2_mn       , __rd_powk1_2_mn       , __pd_powk1_2_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, sv8m , avx512knl  , __fs_powk1_8_mn       , __rs_powk1_8_mn       , __ps_powk1_8_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, dv4m , avx512knl  , __fd_powk1_4_mn       , __rd_powk1_4_mn       , __pd_powk1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, sv16m, avx512knl  , __fs_powk1_16_mn      , __rs_powk1_16_mn      , __ps_powk1_16_mn      ,__math_dispatch_error)
MTHINTRIN(powk1, dv8m , avx512knl  , __fd_powk1_8_mn       , __rd_powk1_8_mn       , __pd_powk1_8_mn       ,__math_dispatch_error)
/* R(:)**I8(:) */
MTHINTRIN(powk , ss   , avx512knl  , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk , ds   , avx512knl  , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk , sv4  , avx512knl  , __gs_powk_4           , __gs_powk_4           , __px_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , dv2  , avx512knl  , __gd_powk_2           , __gd_powk_2           , __px_powk_2           ,__math_dispatch_error)
MTHINTRIN(powk , sv8  , avx512knl  , __gs_powk_8           , __gs_powk_8           , __py_powk_8           ,__math_dispatch_error)
MTHINTRIN(powk , dv4  , avx512knl  , __gd_powk_4           , __gd_powk_4           , __py_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , sv16 , avx512knl  , __gs_powk_16          , __gs_powk_16          , __pz_powk_16          ,__math_dispatch_error)
MTHINTRIN(powk , dv8  , avx512knl  , __gd_powk_8           , __gd_powk_8           , __pz_powk_8           ,__math_dispatch_error)
MTHINTRIN(powk , sv4m , avx512knl  , __fs_powk_4_mn        , __rs_powk_4_mn        , __ps_powk_4_mn        ,__math_dispatch_error)
MTHINTRIN(powk , dv2m , avx512knl  , __fd_powk_2_mn        , __rd_powk_2_mn        , __pd_powk_2_mn        ,__math_dispatch_error)
MTHINTRIN(powk , sv8m , avx512knl  , __fs_powk_8_mn        , __rs_powk_8_mn        , __ps_powk_8_mn        ,__math_dispatch_error)
MTHINTRIN(powk , dv4m , avx512knl  , __fd_powk_4_mn        , __rd_powk_4_mn        , __pd_powk_4_mn        ,__math_dispatch_error)
MTHINTRIN(powk , sv16m, avx512knl  , __fs_powk_16_mn       , __rs_powk_16_mn       , __ps_powk_16_mn       ,__math_dispatch_error)
MTHINTRIN(powk , dv8m , avx512knl  , __fd_powk_8_mn        , __rd_powk_8_mn        , __pd_powk_8_mn        ,__math_dispatch_error)
/* C(:)**I4 */
MTHINTRIN(powi , cs   , avx512knl  , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     ,__math_dispatch_error)
MTHINTRIN(powi , zs   , avx512knl  , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    ,__math_dispatch_error)
MTHINTRIN(powi , zv1  , avx512knl  , __gz_powi_1v          , __gz_powi_1v          , __gz_powi_1v          ,__math_dispatch_error)
/* C(:)**I8 */
MTHINTRIN(powk , cs   , avx512knl  , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     ,__math_dispatch_error)
MTHINTRIN(powk , zs   , avx512knl  , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    ,__math_dispatch_error)
MTHINTRIN(powk , zv1  , avx512knl  , __gz_powk_1v          , __gz_powk_1v          , __gz_powk_1v          ,__math_dispatch_error)

/* AVX512 */
/* R(:)**I4 */
MTHINTRIN(powi1, ss   , avx512     , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, ds   , avx512     , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi1, sv4  , avx512     , __fx_powi1_4          , __fx_powi1_4          , __px_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, dv2  , avx512     , __fx_powi1_2          , __fx_powi1_2          , __px_powi1_2          ,__math_dispatch_error)
MTHINTRIN(powi1, sv8  , avx512     , __fy_powi1_8          , __fy_powi1_8          , __py_powi1_8          ,__math_dispatch_error)
MTHINTRIN(powi1, dv4  , avx512     , __fy_powi1_4          , __fy_powi1_4          , __py_powi1_4          ,__math_dispatch_error)
MTHINTRIN(powi1, sv16 , avx512     , __gs_powi1_16         , __gs_powi1_16         , __pz_powi1_16         ,__math_dispatch_error)
MTHINTRIN(powi1, dv8  , avx512     , __gd_powi1_8          , __gd_powi1_8          , __pz_powi1_8          ,__math_dispatch_error)
MTHINTRIN(powi1, sv4m , avx512     , __fs_powi1_4_mn       , __rs_powi1_4_mn       , __ps_powi1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, dv2m , avx512     , __fd_powi1_2_mn       , __rd_powi1_2_mn       , __pd_powi1_2_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, sv8m , avx512     , __fs_powi1_8_mn       , __rs_powi1_8_mn       , __ps_powi1_8_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, dv4m , avx512     , __fd_powi1_4_mn       , __rd_powi1_4_mn       , __pd_powi1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powi1, sv16m, avx512     , __fs_powi1_16_mn      , __rs_powi1_16_mn      , __ps_powi1_16_mn      ,__math_dispatch_error)
MTHINTRIN(powi1, dv8m , avx512     , __fd_powi1_8_mn       , __rd_powi1_8_mn       , __pd_powi1_8_mn       ,__math_dispatch_error)
/* R(:)**I4(:) */
MTHINTRIN(powi , ss   , avx512     , __mth_i_rpowi         , __mth_i_rpowi         , __pmth_i_rpowi        ,__math_dispatch_error)
MTHINTRIN(powi , ds   , avx512     , __mth_i_dpowi         , __mth_i_dpowi         , __pmth_i_dpowi        ,__math_dispatch_error)
MTHINTRIN(powi , sv4  , avx512     , __gs_powi_4           , __gs_powi_4           , __px_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , dv2  , avx512     , __gd_powi_2           , __gd_powi_2           , __px_powi_2           ,__math_dispatch_error)
MTHINTRIN(powi , sv8  , avx512     , __gs_powi_8           , __gs_powi_8           , __py_powi_8           ,__math_dispatch_error)
MTHINTRIN(powi , dv4  , avx512     , __gd_powi_4           , __gd_powi_4           , __py_powi_4           ,__math_dispatch_error)
MTHINTRIN(powi , sv16 , avx512     , __gs_powi_16          , __gs_powi_16          , __pz_powi_16          ,__math_dispatch_error)
MTHINTRIN(powi , dv8  , avx512     , __gd_powi_8           , __gd_powi_8           , __pz_powi_8           ,__math_dispatch_error)
MTHINTRIN(powi , sv4m , avx512     , __fs_powi_4_mn        , __rs_powi_4_mn        , __ps_powi_4_mn        ,__math_dispatch_error)
MTHINTRIN(powi , dv2m , avx512     , __fd_powi_2_mn        , __rd_powi_2_mn        , __pd_powi_2_mn        ,__math_dispatch_error)
MTHINTRIN(powi , sv8m , avx512     , __fs_powi_8_mn        , __rs_powi_8_mn        , __ps_powi_8_mn        ,__math_dispatch_error)
MTHINTRIN(powi , dv4m , avx512     , __fd_powi_4_mn        , __rd_powi_4_mn        , __pd_powi_4_mn        ,__math_dispatch_error)
MTHINTRIN(powi , sv16m, avx512     , __fs_powi_16_mn       , __rs_powi_16_mn       , __ps_powi_16_mn       ,__math_dispatch_error)
MTHINTRIN(powi , dv8m , avx512     , __fd_powi_8_mn        , __rd_powi_8_mn        , __pd_powi_8_mn        ,__math_dispatch_error)
/* R(:)**I8 */
MTHINTRIN(powk1, ss   , avx512     , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, ds   , avx512     , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk1, sv4  , avx512     , __fx_powk1_4          , __fx_powk1_4          , __px_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, dv2  , avx512     , __fx_powk1_2          , __fx_powk1_2          , __px_powk1_2          ,__math_dispatch_error)
MTHINTRIN(powk1, sv8  , avx512     , __fy_powk1_8          , __fy_powk1_8          , __py_powk1_8          ,__math_dispatch_error)
MTHINTRIN(powk1, dv4  , avx512     , __fy_powk1_4          , __fy_powk1_4          , __py_powk1_4          ,__math_dispatch_error)
MTHINTRIN(powk1, sv16 , avx512     , __gs_powk1_16         , __gs_powk1_16         , __pz_powk1_16         ,__math_dispatch_error)
MTHINTRIN(powk1, dv8  , avx512     , __gd_powk1_8          , __gd_powk1_8          , __pz_powk1_8          ,__math_dispatch_error)
MTHINTRIN(powk1, sv4m , avx512     , __fs_powk1_4_mn       , __rs_powk1_4_mn       , __ps_powk1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, dv2m , avx512     , __fd_powk1_2_mn       , __rd_powk1_2_mn       , __pd_powk1_2_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, sv8m , avx512     , __fs_powk1_8_mn       , __rs_powk1_8_mn       , __ps_powk1_8_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, dv4m , avx512     , __fd_powk1_4_mn       , __rd_powk1_4_mn       , __pd_powk1_4_mn       ,__math_dispatch_error)
MTHINTRIN(powk1, sv16m, avx512     , __fs_powk1_16_mn      , __rs_powk1_16_mn      , __ps_powk1_16_mn      ,__math_dispatch_error)
MTHINTRIN(powk1, dv8m , avx512     , __fd_powk1_8_mn       , __rd_powk1_8_mn       , __pd_powk1_8_mn       ,__math_dispatch_error)
/* R(:)**I8(:) */
MTHINTRIN(powk , ss   , avx512     , __mth_i_rpowk         , __mth_i_rpowk         , __pmth_i_rpowk        ,__math_dispatch_error)
MTHINTRIN(powk , ds   , avx512     , __mth_i_dpowk         , __mth_i_dpowk         , __pmth_i_dpowk        ,__math_dispatch_error)
MTHINTRIN(powk , sv4  , avx512     , __gs_powk_4           , __gs_powk_4           , __px_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , dv2  , avx512     , __gd_powk_2           , __gd_powk_2           , __px_powk_2           ,__math_dispatch_error)
MTHINTRIN(powk , sv8  , avx512     , __gs_powk_8           , __gs_powk_8           , __py_powk_8           ,__math_dispatch_error)
MTHINTRIN(powk , dv4  , avx512     , __gd_powk_4           , __gd_powk_4           , __py_powk_4           ,__math_dispatch_error)
MTHINTRIN(powk , sv16 , avx512     , __gs_powk_16          , __gs_powk_16          , __pz_powk_16          ,__math_dispatch_error)
MTHINTRIN(powk , dv8  , avx512     , __gd_powk_8           , __gd_powk_8           , __pz_powk_8           ,__math_dispatch_error)
MTHINTRIN(powk , sv4m , avx512     , __fs_powk_4_mn        , __rs_powk_4_mn        , __ps_powk_4_mn        ,__math_dispatch_error)
MTHINTRIN(powk , dv2m , avx512     , __fd_powk_2_mn        , __rd_powk_2_mn        , __pd_powk_2_mn        ,__math_dispatch_error)
MTHINTRIN(powk , sv8m , avx512     , __fs_powk_8_mn        , __rs_powk_8_mn        , __ps_powk_8_mn        ,__math_dispatch_error)
MTHINTRIN(powk , dv4m , avx512     , __fd_powk_4_mn        , __rd_powk_4_mn        , __pd_powk_4_mn        ,__math_dispatch_error)
MTHINTRIN(powk , sv16m, avx512     , __fs_powk_16_mn       , __rs_powk_16_mn       , __ps_powk_16_mn       ,__math_dispatch_error)
MTHINTRIN(powk , dv8m , avx512     , __fd_powk_8_mn        , __rd_powk_8_mn        , __pd_powk_8_mn        ,__math_dispatch_error)
/* C(:)**I4 */
MTHINTRIN(powi , cs   , avx512     , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     , __mth_i_cpowi_c99     ,__math_dispatch_error)
MTHINTRIN(powi , zs   , avx512     , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    , __mth_i_cdpowi_c99    ,__math_dispatch_error)
MTHINTRIN(powi , zv1  , avx512     , __gz_powi_1v          , __gz_powi_1v          , __gz_powi_1v          ,__math_dispatch_error)
/* C(:)**I8 */
MTHINTRIN(powk , cs   , avx512     , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     , __mth_i_cpowk_c99     ,__math_dispatch_error)
MTHINTRIN(powk , zs   , avx512     , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    , __mth_i_cdpowk_c99    ,__math_dispatch_error)
MTHINTRIN(powk , zv1  , avx512     , __gz_powk_1v          , __gz_powk_1v          , __gz_powk_1v          ,__math_dispatch_error)