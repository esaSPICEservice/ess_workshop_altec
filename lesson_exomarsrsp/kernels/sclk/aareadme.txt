ExoMarsRSP SCLK files
===========================================================================

   This ``aareadme.txt'' file describes the contents of the kernels/sclk
   directory of the ExoMarsRSP SPICE data server.

   It was last modified on June 6, 2019 by Marc Costa Sitja, ESAC/ESA.


Brief Summary
--------------------------------------------------------

   This directory contains the SPICE Spacecraft Clock-Kernel files for the
   ExoMarsRSP Rover (RM), Surface Platform (SP) and Carrier Module (CM)
   on-board clock and the Local Mean Solar Time (LMST).


File naming conventions
--------------------------------------------------------

   The naming scheme for RSP SCLKs is:

        emrsp_SC[_test]_TYPE_YYYYMMDD_vNNN.tsc

   where

        SC       accronym of the spacecraft (required):

                     cm: for the Carrier Module (CM) spacecraft;
                     sp: for the Surface Platform (SP) lander;
                     rm: for the Rover Module (RM) rover;

        test     indicates if it is a test SCLK with ``fictional'' data
                 (optional);

        TYPE     SCLK data type contained within the file:

                 lmst:   SCLK implementing Local Mean Solar Time (LMST) at
                         landing site;

                 ret:    SLKC created using a 'step' strategy, i.e.
                         additional TCPs are created between real ones in
                         order to match the time correlation provided by a
                         TCP packet N at 60 seconds before TCP packet N+1,
                         so that continuity is forced;

        YYYYMMDD start time of applicability, i.e. either release date for
                 LMST SCLKs or date of the last TCP used to generate
                 the SCLK in step mode.


Current SCLK Kernels Set
--------------------------------------------------------

   emrsp_rm_ret_YYYYMMDD_vNNN.tsc

      SPICE SCLK file includes time correlation information to convert the
      rover onboard clock (Rover Elapsed Time aka RET) to ET (and therefore
      UTC). Created by the Rover Operations Control Center (ROCC).


   emrsp_rm_test_ret_YYYYMMDD_vNNN.tsc

      SPICE SCLK file assuming an absolutely constant clock rate for the RM.
      This file is used for working with planning data. Created by the ESA
      SPICE Service (ESS).


   emrsp_rm_lmst_YYYYMMDD_vNNN.tsc

      SPICE SCLK implementing Local Mean Solar Time (LMST) required to
      convert between Ephemeris Time (ET) and LMST at the RM landing site.
      Created by the ESA SPICE Service (ESS).


Other directory contents
--------------------------------------------------------

   aareadme.txt         This file.


Particulars
--------------------------------------------------------

   Nothing to report.


Kernel File Details
--------------------------------------------------------

   The most detailed description of the data in an SCLK file is provided
   in metadata included inside the descriptive text areas of the file.
   This information can be viewed using any text editor.


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

   1.   ``SCLK required Reading'', NAIF Document

   2.   ``TIME Required Reading'', NAIF Document

   3.   ``KERNEL Pool Required Reading'', NAIF Document


End of aareadme file.