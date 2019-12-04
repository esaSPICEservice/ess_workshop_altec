ExoMarsRSP FK files
===========================================================================

   This ``aareadme.txt'' file describes the contents of the kernels/fk
   directory of the ExoMarsRSP SPICE data server.

   It was last modified on June 5, 2019 by Marc Costa Sitja, ESAC/ESA.


Brief Summary
--------------------------------------------------------

   This directory contains the SPICE Frames Definition Kernel files for the
   ExoMarsRSP Rover, Surface Platform and Carrier Module, its structures,
   and science instruments.


File naming conventions
--------------------------------------------------------

   The following table provides information on which file contains which
   frames, their file naming conventions and some particular details:

      File                         Contents
     ---------------------------  -----------------------------------------
      emrsp_cm_vNNN.tf             ExoMarsRSP Carrier Module, structures,
                                   instruments and sensors frames.

      emrsp_sp_vNNN.tf             ExoMarsRSP Surface Platform, structures,
                                   instruments and sensors frames.

      emrsp_rm_vNNN.tf             ExoMarsRSP Rover Module, structures,
                                   instruments and sensors frames.

      emrsp_dsk_surfaces_vNNN.tf   ExoMars2016 RSP Surface definitions for
                                   Digital Shape Kernels.


   where

           NNN      version number -- three digits, incremental starting from
                    zero (required).

                    If multiple versions of a Frames Kernel file are
                    provided, always use the latest version (unless
                    earlier version is needed for some special reasons.)


 Current FK Kernels Set
--------------------------------------------------------

   emrsp_cm_vNNN.tf

      SPICE FK file that provides Carrier Module spacecraft and structures
      frames. Created by the ESA SPICE Service.


   emrsp_sp_vNNN.tf

      SPICE FK file that provides Surface Platform spacecraft, structures
      instrument and sensor frames. Created by IKI.


   emrsp_rm_vNNN.tf

      SPICE FK file that provides Surface Platform spacecraft, structures
      instrument and sensor frames. Created by the ESA SPICE Service.


   emrsp_dsk_surfaces_vNNN.tf

      SPICE FK file containing surface definitions for the Digital Shape
      Kernels of Phobos, Deimos, Mars and TGO. Created by the ESA SPICE
      Service.


Other directory contents
--------------------------------------------------------

    aareadme.txt         This file.


Particulars
--------------------------------------------------------

    Nothing to report.


Kernel File Details
--------------------------------------------------------

   The most detailed description of the data in an FK file is provided in
   metadata included inside the descriptive text areas of the file. This
   information can be viewed using any text editor.


Contact Information
--------------------------------------------------------

   If you have any questions regarding this directory or its
   contents, please contact SPICE support at ESAC:

             Marc Costa Sitja
             (+34) 91-8131-457
             mcosta@sciops.esa.int, esa_spice@sciops.esa.int

   or SPICE support at IKI:

             Alexander Abbakumov
             +7 (495) 333-40-13
             aabbakumov@romance.iki.rssi.ru

   or ROCC at Altec Space:

            Federico Salvioli
            +1 (818) 354-8136
            federico.salvioli@altecspace.it


References and required readings
--------------------------------------------------------

   1. ``Frames Required Reading'', NAIF Document

   2. ``Kernel Pool Required Reading'', NAIF

   3. ``C-Kernel Required Reading'', NAIF


End of aareadme file.