KPL/MK

Meta-kernel for ExoMarsRSP Dataset v050 -- Telemetry 20191204_001
==========================================================================

   This meta-kernel lists the ExoMarsRSP Operational SPICE kernels
   providing information for the full mission based on predicted, test
   and/or measured data.


Usage of the Meta-kernel
-------------------------------------------------------------------------

   The set of kernels listed in this meta-kernel and the order in which
   they are listed are picked to provide the best available data and
   the most complete coverage based on the information about the
   kernels available at the time this meta-kernel was made for the
   ExoMarsRSP Operational scenario.

   This file is used by the SPICE system as follows: programs that make use
   of this frame kernel must "load" the kernel normally during program
   initialization. Loading the kernel associates the data items with
   their names in a data structure called the "kernel pool". The SPICELIB
   routine FURNSH loads a kernel into the pool.

   Reading the comments of the binary SPK and C-Kernels is very helpful to
   understand the implemented S/C position and orientation. You can use the
   following NAIF command line utility to extract that information from the
   kernels:

      > commnt -r emrsp_*

   The kernels listed below can be obtained from the ESA SPICE FTP server:

      ftp://spiftp.esac.esa.int/data/SPICE/ExoMarsRSP/kernels/


Implementation Notes
-------------------------------------------------------------------------

   It is recommended that users make a local copy of this file and
   modify the value of the PATH_VALUES keyword to point to the actual
   location of the ExoMarsRSP SPICE data set's ``data'' directory on
   their system. Replacing ``/'' with ``\'' and converting line
   terminators to the format native to the user's system may also be
   required if this meta-kernel is to be used on a non-UNIX workstation.


-------------------

   This file was created on February 28, 2019 by Marc Costa Sitja ESA/ESAC.


   \begindata

     PATH_VALUES       = ( '/Users/mcosta/ess_workshop_altec/lesson_exomarsrsp/kernels' )

     PATH_SYMBOLS      = ( 'KERNELS' )

     KERNELS_TO_LOAD   = (

                           '$KERNELS/fk/emrsp_rm_v004.tf'
                           '$KERNELS/fk/emrsp_dsk_surfaces_v000.tf'
                           '$KERNELS/fk/emrsp_sp_v000.tf'

                           '$KERNELS/lsk/naif0012.tls'

                           '$KERNELS/sclk/emrsp_rm_test_ret_20191128_v001.tsc'

                           '$KERNELS/pck/pck00010.tpc'
                           '$KERNELS/pck/de-403-masses.tpc'

                           '$KERNELS/ik/emrsp_rm_navcam_v001.ti'
                           '$KERNELS/ik/emrsp_rm_pancam_v001.ti'
                           '$KERNELS/ik/emrsp_rm_loccam_v000.ti'
                           '$KERNELS/ik/emrsp_rm_isem_v000.ti'
                           '$KERNELS/ik/emrsp_rm_adron-rm_v000.ti'
                           '$KERNELS/ik/emrsp_rm_wisdom_v000.ti'
                           '$KERNELS/ik/emrsp_rm_clupi_v000.ti'

                           '$KERNELS/ck/emrsp_rm_surf_interp-tlm_0001_v001.bc'
                           '$KERNELS/ck/emrsp_rm_surf_rec_0001_v001.bc'

                           '$KERNELS/spk/emrsp_rm_ls-plan_v001.bsp'
                           '$KERNELS/spk/emrsp_rm_mech-tlm_0001_v001.bsp'
                           '$KERNELS/spk/emrsp_rm_rec_0001_v001.bsp'
                           '$KERNELS/spk/emrsp_rm_sites_v001.bsp'
                           '$KERNELS/spk/emrsp_rm_struct_v000.bsp'

                           '$KERNELS/spk/de432s.bsp'
                           '$KERNELS/spk/mar097.bsp'

                           '$KERNELS/dsk/emrsp_rm_site_001_001_v001.bds'

                         )

   \begintext


Contact Information
------------------------------------------------------------------------

   If you have any questions regarding this file contact SPICE support at
   ESAC:

           Marc Costa Sitja
           (+34) 91-8131-457
           mcosta@sciops.esa.int, esa_spice@sciops.esa.int


   or ROCC at Altec Space:

           Federico Salvioli
           +1 (818) 354-8136
           federico.salvioli@altecspace.it


End of MK file.