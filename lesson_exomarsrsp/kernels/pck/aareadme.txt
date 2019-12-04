ExoMarsRSP PCK files
===========================================================================

   This ``aareadme.txt'' file describes the contents of the kernels/pck
   directory of the ExoMarsRSP SPICE data server.

   It was last modified on June 6, 2019 by Marc Costa Sitja, ESAC/ESA.


Brief Summary
--------------------------------------------------------

   This directory contains generic and mission-specific SPICE Planetary
   Constants Kernel files for the ExoMarsRSP mission. The data in these
   kernels correspond to the best knowledge of the orientation, size and
   shape of Mars, its satellites and the Earth.


File naming conventions
--------------------------------------------------------

   Naming Scheme for Generic PCKs

     The naming scheme for generic PCKs is:

           pckNNNNN.tpc

     where

           NNNNN    version number (required)(e.g. 00010);

                    If multiple versions of a generic PCK Kernel file are
                    provided, always use the latest version (unless an
                    earlier version is needed for some special reasons.)


   Naming Scheme for Earth high-precision PCKs

     The naming scheme for the Earth high-precision PCKs is:

           earth_SDAT_EDAT_PDAT.bpc

     where

           SDAT     is the file's coverage start time in YYMMDD format;

           EDAT     is the file's coverage end time in YYMMDD format;

           PDAT     is the date from which the information contained
                    in the file corresponds to predicted data. Any data
                    prior to this date corresponds to actual measurements.


Current PCK Kernels Set
--------------------------------------------------------

   pck00010.tpc

      SPICE text PCK file containing constants from the IAU 2009 report,
      created by NAIF, JPL.


   de-403-masses.tpc

      SPICE text PCK file containing the masses for the sun, planets,
      satellites and planetary barycenters. These masses are given as
      ratios to of Solar GM to barycenter GM. Created by Bill Taber.


Other directory contents
--------------------------------------------------------

   aareadme.txt         This file.


Particulars
--------------------------------------------------------

    Nothing to report.


Kernel File Details
--------------------------------------------------------

   The most detailed description of the data in a text PCK file is
   provided in metadata included inside the descriptive text areas
   of the file. This information can be viewed using any text
   editor.

   For binary PCK files, this description is provided in metadata
   included inside the comment area of the file. This information
   can be viewed using the utility programs COMMNT and SPACIT
   included in the NAIF Toolkit.


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

   or NAIF at JPL:

           Boris Semenov
           (818) 354-8136
           Boris.Semenov@jpl.nasa.gov


References and required readings
--------------------------------------------------------

   1. ``PCK Required Reading'', NAIF

   2. ``NAIF Integer ID Codes Required Reading,'' NAIF


End of aareadme file.