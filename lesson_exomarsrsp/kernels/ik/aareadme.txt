ExoMarsRSP IK files
===========================================================================

   This ``aareadme.txt'' file describes the contents of the kernels/ik
   directory of the ExoMarsRSP SPICE data server.

   It was last modified on June 5, 2019 by Marc Costa Sitja, ESAC/ESA.


Brief Summary
--------------------------------------------------------

   This directory contains the SPICE Instrument Kernel files for the
   ExoMarsRSP Rover, Surface Platform and Carrier Module, remote sensing
   instruments.


File naming conventions
--------------------------------------------------------

   The naming scheme for ExoMars2016 IKs is:

         emrsp_SC_INST_vNNN.ti

   where

         SC       accronym of the spacecraft (required):

                     cm: for the Carrier Module (CM) spacecraft;
                     sp: for the Surface Platform (SP) lander;
                     rm: for the Rover Module (RM) rover;

         INST     instrument identifier (required):

                     pancam    for PanCam
                     isem      for ISEM
                     clupi     for CLUPI
                     moma      for MOMA
                     adron-rm  for ADRON-RM
                     loccam    for LocCam
                     navcam    for NavCam
                     wisdom    for WISDOM
                     mircomega for MicroOMEGA
                     rls       for RLS
                     mamiss    for Ma_MISS

         NNN      version number -- three digits, incremental starting from
                  zero (required).

                  If multiple versions of an IK file are provided for an
                  instrument, always use the latest version (unless
                  earlier version is needed for some special reasons.)


Current IK Kernels Set
--------------------------------------------------------

   emrsp_rm_adron-rm_vNNN.ti

      SPICE IK file providing optics, detector, and field-of-view (FOV)
      parameters for the Rover Module Autonomous Detector of Radiation of
      Neutrons Onboard Rover (ADRON-RM). Created by the ESA SPICE
      Service (ESS).


   emrsp_rm_clupi_vNNN.ti

      SPICE IK file providing optics, detector, and field-of-view (FOV)
      parameters for the Rover Module Close-Up Imager (CLUPI) instrument
      and sensors. Created by the ESA SPICE Service (ESS).


   emrsp_rm_isem_vNNN.ti

      SPICE IK file providing optics, detector, and field-of-view (FOV)
      parameters for the Rover Module Infrared Spectrometer for ExoMars
      (ISEM). Created by the ESA SPICE Service (ESS).


   emrsp_rm_loccam_vNNN.ti

      SPICE IK file providing optics, detector, and field-of-view (FOV)
      parameters for the Rover Module Localisation Camera Left and Right
      (LOCCAM_L and LOCCAM_R). Created by the ESA SPICE Service (ESS).


   emrsp_rm_navcam_vNNN.ti

      SPICE IK file providing optics, detector, and field-of-view (FOV)
      parameters for the Rover Module Navigation Camera Left and Right
      (NAVCAM_L and NAVCAM_R). Created by the ESA SPICE Service (ESS).


   emrsp_rm_pancam_vNNN.ti

      SPICE IK file providing optics, detector, and field-of-view (FOV)
      parameters for the Rover Module Panoramic Camera (PANCAM). Created
      by the ESA SPICE Service (ESS).

   emrsp_rm_wisdom_vNNN.ti

      SPICE IK file providing, detector, and field-of-view (FOV) parameters
      fir the Rover Module Water Ice Subsurface Deposit Observation on Mars
      (WISDOM) ground-penetrating radar. Created by the ESA SPICE Service
      (ESS).


Other directory contents
--------------------------------------------------------

   aareadme.txt         This file.


Particulars
--------------------------------------------------------

    Nothing to report.


Kernel File Details
--------------------------------------------------------

   The most detailed description of the data in an IK file is provided in
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

   1. ``Kernel Pool Required Reading'', NAIF

   2. Header of GETFOV SPICE API, latest version


End of aareadme file.