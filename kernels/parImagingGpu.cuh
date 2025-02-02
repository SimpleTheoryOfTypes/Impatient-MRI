/*
(C) Copyright 2010 The Board of Trustees of the University of Illinois.
All rights reserved.

Developed by:

                     IMPACT & MRFIL Research Groups
                University of Illinois, Urbana Champaign

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to
deal with the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimers.

Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimers in the documentation
and/or other materials provided with the distribution.

Neither the names of the IMPACT Research Group, MRFIL Research Group, the
University of Illinois, nor the names of its contributors may be used to
endorse or promote products derived from this Software without specific
prior written permission.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS WITH
THE SOFTWARE.
*/

/*****************************************************************************

    File Name   [parImagingGpu.cuh]

    Synopsis    [GPU version of the parallel imaging kernel wrappers.]

    Description []

    Revision    [1.0a; Initial build; Jiading Gai, Beckman Institute,
                 Xiao-Long Wu, ECE UIUC]
    Date        [10/24/2010]

 *****************************************************************************/

#ifndef PARIMAGINGGPU_CUH
#define PARIMAGINGGPU_CUH

/*---------------------------------------------------------------------------*/
/*  Included library headers                                                 */
/*---------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------*/
/*  Namespace declared - begin                                               */
/*---------------------------------------------------------------------------*/

//namespace uiuc_mri {

/*---------------------------------------------------------------------------*/
/*  Function prototypes                                                      */
/*---------------------------------------------------------------------------*/

    void
parallelFtGpu(
    FLOAT_T  *pGx_r, FLOAT_T  *pGx_i,
    const FLOAT_T *idata_r, const FLOAT_T *idata_i,
    const DataTraj *ktraj, const DataTraj *itraj,
    const FLOAT_T *fm, const FLOAT_T *time,
    const int num_k, const int in_num_k, const int num_i,
    const FLOAT_T *sensi_r, const FLOAT_T *sensi_i,
    const int num_coil);

    void
parallelIftGpu(
    FLOAT_T  *output_r,      FLOAT_T  *output_i,
    const FLOAT_T  *input_r, const FLOAT_T  *input_i,
    const DataTraj *ktraj,   const DataTraj *itraj,
    const FLOAT_T *fm, const FLOAT_T *time,
    const int num_k, const int num_k_cpu, const int num_i,
    const FLOAT_T  *sensi_r, const FLOAT_T  *sensi_i,
    const int num_coil);

/*---------------------------------------------------------------------------*/
/*  Namespace declared - end                                                 */
/*---------------------------------------------------------------------------*/

//}

#endif // PARIMAGINGGPU_CUH

