/******************************************************************************
 * @file     o1_update_cl.cl
 * @author   Vadim Demchik <vadimdi@yahoo.com>
 * @author   Natalia Kolomoyets <rknv7@mail.ru>
 * @version  1.0
 *
 * @brief    [QCDGPU]
 *           Contains functions for lattice update (O(1) theory)
 *
 * @section  LICENSE
 *
 * Copyright (c) 2013-2017, Vadim Demchik, Natalia Kolomoyets
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 *    Redistributions of source code must retain the above copyright notice,
 *      this list of conditions and the following disclaimer.
 *
 *    Redistributions in binary form must reproduce the above copyright notice,
 *      this list of conditions and the following disclaimer in the documentation
 *      and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 *****************************************************************************/

#ifndef O1UPDATECL_CL
#define O1UPDATECL_CL

                  HGPU_INLINE_PREFIX_VOID void
lattice_unity_o_1(gpu_o_1* matrix)
{
    (*matrix).uv1 = 1.0;
}

                  HGPU_INLINE_PREFIX_VOID void
lattice_ground_o_1(gpu_o_1* matrix)
{
    (*matrix).uv1 = 0.25;
}

                    HGPU_INLINE_PREFIX_VOID void
lattice_random_o_1(gpu_o_1* matrix,
                   __global const hgpu_single4 * prns,
                       uint gidprn1,
                hgpu_float* maxU)
{
    (*matrix).uv1 = ((hgpu_float) prns[gidprn1].x) * (*maxU);
}

#endif
