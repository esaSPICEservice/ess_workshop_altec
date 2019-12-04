KPL/FK

ExoMarsRSP Digital Shape Kernel Surfaces Definitions Kernel
========================================================================

   This frame kernel contains a set of ExoMarsRSP Target Body DSK Surface ID
   Codes for Phobos, Deimos, Mars, Surface Platform and Rover Module.


Version and Date
------------------------------------------------------------------------

   Version 0.0.0 -- November 29, 2019 -- Marc Costa Sitja, ESAC/ESA

      First version.


References
------------------------------------------------------------------------

   1. ``Frames Required Reading''

   2. ``Kernel Pool Required Reading''

   3. ``DS-Kernel Required Reading''

   4. ExoMarsRSP Rover Module Frames Kernel.

   5. ExoMarsRSP and Surface Platform Frames Kernel.


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


Implementation Notes
------------------------------------------------------------------------

  This file is used by the SPICE system as follows: programs that make use
  of this frame kernel must "load" the kernel normally during program
  initialization. Loading the kernel associates the data items with
  their names in a data structure called the "kernel pool".  The SPICELIB
  routine FURNSH loads a kernel into the pool as shown below:

    FORTRAN: (SPICELIB)

      CALL FURNSH ( frame_kernel_name )

    C: (CSPICE)

      furnsh_c ( frame_kernel_name );

    IDL: (ICY)

      cspice_furnsh, frame_kernel_name

    MATLAB: (MICE)

         cspice_furnsh ( 'frame_kernel_name' )

    PYTHON: (SPICEYPY)*

         furnsh( frame_kernel_name )

  In order for a program or routine to extract data from the pool, the
  SPICELIB routines GDPOOL, GIPOOL, and GCPOOL are used.  See [2] for
  more details.

  This file was created and may be updated with a text editor or word
  processor.

  * SPICEPY is a non-official, community developed Python wrapper for the
    NAIF SPICE toolkit. Its development is managed on Github.
    It is available at: https://github.com/AndrewAnnex/SpiceyPy


Definition Section
------------------------------------------------------------------------

   This section contains name to ID mappings for the ExoMarsRSP target
   body DSK surfaces. These mappings are supported by all SPICE
   toolkits with integrated DSK capabilities (version N0066 or later).

   Mars Surface name/IDs:

          DSK Surface Name          ID          Body ID
      ===========================  ==========  ==========
       RM_SITE_001_001             -174701001  -174701001


   Name-ID Mapping keywords:

   \begindata

      NAIF_BODY_NAME += ( 'RM_SITE_001_001' )
      NAIF_BODY_CODE += ( -174701001 )

      NAIF_SURFACE_NAME   += 'RM_SITE_001_001'
      NAIF_SURFACE_CODE   += -174701001
      NAIF_SURFACE_BODY   += -174701001

   \begintext


   NavCam and PanCam Mars Surface name/IDs:

        DSK Surface Name          ID    Body ID
      ===========================  =====  =======

       WAC_Pos5-000848_3D          400999     400


   Name-ID Mapping keywords:

   \begindata

      NAIF_SURFACE_NAME += 'WAC_Pos5-000848_3D'
      NAIF_SURFACE_CODE += 400999
      NAIF_SURFACE_BODY += 400

   \begintext


End of FK file.
