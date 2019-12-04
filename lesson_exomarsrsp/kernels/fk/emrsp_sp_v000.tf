KPL/FK

ExoMarsRSP Kazachok Surface Platform (SP) Frames Kernel
===============================================================================

   This frame kernel contains a complete set of frame definitions for the
   ExoMarsRSP Surface Platform including definitions for the structures
   science instrument frames. This kernel also contains NAIF ID/name mapping
   for the ExoMarsRSP Surface Platform instruments.


Version and Date
------------------------------------------------------------------------

   Version 0.0.0 -- November 19, 2019 -- Stanislav Bober, IKI
                                         Marc Costa Sitja, ESAC/ESA

      Descent path was removed from frame chaining.
	  LARA frames added. Added several frame definitions.
	  Based on ExoMars 2016 EDM (Schiaparelli) Frame
      Definitions Kernel.


References
------------------------------------------------------------------------

    1. ``Frames Required Reading'', NAIF

    2. ``Kernel Pool Required Reading'', NAIF

    3. ``C-Kernel Required Reading'', NAIF

    4. ExoMars 2016 EDM (Schiaparelli) Lander Frames Kernel,
       em16_edm_v01.tf

    4. Email from Marc Costa <mcosta@sciops.esa.int>
       ``Special consideration for LaRa in the Surface Platform FK''
       on 12 July 2019

    5. Email from Alexander Abbakumov <aabbakumov@romance.iki.rssi.ru>
       ``The layout of the EM2020 DM'' on 31 July 2019

    6. Email from Oleg Batanov <obat@romance.iki.rssi.ru>
       ``EM20 PNI'' on 19 September 2019


Contact Information
------------------------------------------------------------------------

   If you have any questions regarding this file contact the
   ESA SPICE Service at ESAC:

           Marc Costa Sitja
           (+34) 91-8131-457
           marc.costa@esa.int, esa_spice@sciops.esa.int

   or SPICE support at IKI:

           Alexander Abbakumov
           +7 (495) 333-40-13
           aabbakumov@romance.iki.rssi.ru

           Stanislav Bober
           +7 (985) 285-24-94
           stasbober@rlab.iki.rssi.ru


Implementation Notes
------------------------------------------------------------------------

  This file is used by the SPICE system as follows: programs that make use
  of this frame kernel must "load" the kernel normally during program
  initialization. Loading the kernel associates the data items with
  their names in a data structure called the "kernel pool". The SPICELIB
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


SP NAIF ID Codes -- Summary Section
------------------------------------------------------------------------

   The following names and NAIF ID codes are assigned to the ExoMars
   Surface Platform, its structures and science instruments (the keywords
   implementing these definitions are located in the section "ExoMars
   Surface Platform NAIF ID Codes -- Definitions Section" at the end of
   this file):

   ExoMars Surface Platform and it's Structures names/IDs:

      EXOMARS SURFACE PLATFORM    -173     (synonyms:
                                            EXOMARS RSP SURFACE PLATFORM,
                                            EXOMARS RSP SP)

      SP_LANDER                   -173000
      SP_LANDING_SITE             -174700  (synonyms: RM_LANDING_SITE,
                                            RM_MLG_000)

	    LARA                        -197     (synonyms: EXOMARS LARA,
										                        EXOMARS RSP LARA)

	    LARA_ANT_TX1                -197001
	    LARA_ANT_TX2                -197002
	    LARA_ANT_RX                 -197003


SP Frames
------------------------------------------------------------------------

   The following ExoMars Surface Platform frames are defined in this
   kernel file:

        Name                      Relative to                 Type    NAIF ID
      ======================    ==========================   =======  =======
        SP_LANDER                 SP_LANDER_CRUISE,           CK      -173000
                                  SP_TOPO
        SP_LANDER_CRUISE          CM_SPACECRAFT               FIXED   -173001

        SP_TOPO                   IAU_MARS                    FIXED   -173900

		    LARA_ANT_BASE    		      SP_LANDER                   FIXED   -197000
		    LARA_ANT_TX1    		      LARA_ANT_BASE               FIXED   -197001
		    LARA_ANT_TX2    		      LARA_ANT_BASE               FIXED   -197002
		    LARA_ANT_RX     		      LARA_ANT_BASE               FIXED   -197003


ExoMars RSP Mission Description
--------------------------------------------------------------------------

   The mission can be broadly described as follows: launch the ExoMarsRSP
   Spacecraft and fly it to Mars; land on Mars, deliver the Rover to the
   surface and perform the nominal exploration mission on the surface.
   The launch configuration is the Spacecraft Composite (SCC), which is
   composed of the Carrier Module (CM) and the Descent Module (DM). The CM
   is jettisoned upon arrival at Mars, and the DM will enter the Mars
   atmosphere and land, carrying the ``Kazachok'' Surface Platform (SP) and
   the ``Rosalind Franklin'' Rover (RM). The CM and the RM are developed by
   ESA. The DM and SP are developed by Roscosmos with ESA contributions.
   The elements of the spacecraft composite are shown below.

     CM          DM            SP                  RM

     |           .'.                           =
     |--.      .'   |               |          |
   )-|  |     |     |     -------------       |-----------                 RM
     |--'      '.   |       '-------'          /\____\|
     |           '.'         /     \          0  0    0

     |           |              |                |
     |           |              |                |
     |           |              |                |
     |           |              |                V           _=_______
     |           |              |                           |0  0    0\
     |           |              '-------------> (+) ---->  -------------   LPC
     |           |                                           '-------'
     |           |                               |            /     \
     |           |                               |
     |           |                               |
     |           |                               V               .'.
     |           |                                             .' -o|
     |           '----------------------------> (+) ---->     |  | ||      DM
     |                                                         '.._o|
     |                                           |               '.'
     |                                           |
     |                                           |
     |                                           V            |      .'.
     |                                                        |--. .' -o|
     '----------------------------------------> (+) ---->   )-|  ||  | ||  SCC
                                                              |--' '.._o|
                                                              |      '.'

   Please note that this Frames Kernel file solely implements the Frames for
   the ExoMars RSP Surface Platform Component (SP).


ExoMars Surface Platform Frames Hierarchy
--------------------------------------------------------------------------

   The diagram below shows the ExoMars Surface Platform frames hierarchy:


                           "J2000" INERTIAL
                   +-------------------------------+
                   |                               |
                   |<-ck                           |<-pck
                   |                               |
                   v                               v
             "CM_SPACECRAFT"                   "IAU_MARS"
             ---------------                MARS TOPOGRAPHIC
                   |                        ----------------
                   |                               |
                   |<-fixed                        |<-fixed
                   |                               |
                   v                               v
            "SP_LANDER_CRUISE"                 "SP_TOPO" (**)
            -----------------               MARS TOPOGRAPHIC
                   |                        ----------------
                   |                                |
                   |<-ck(*)                         |<-ck
                   v           "SP_LANDER"          v
                   +--------------------------------+
                                    |
                                    v
                               "SP_LANDER"
                               -----------
								                    |
								                  	| <--fixed
								                  	v
						    	            "LARA_ANT_BASE"
			          		+-------------------------------+
			          		|               |               |
			          		|<--fixed       |<--fixed       |<--fixed
			          		v               v               v
			           "LARA_ANT_TX1"  "LARA_ANT_TX2"  "LARA_ANT_RX"
                 --------------  --------------  -------------

   (*)      In these cases transformation is fixed but it has to be
            stored in a CK to make SPICE "traverse" appropriate frame
            tree branch based on the time of interest and/or loaded
            kernels.

   (**)     This frame sohould be equivalent to the RM_MLG frame defined in
            the ExoMarsRSP Rover Module Frames Kernel (emrsp_rm_vNNN.tf).


Implementation of Frame Chains for Different Mission Phases
-------------------------------------------------------------------------------

   Different routes along the branches of the SP frame hierarchy
   are implemented for different mission phases depending on the
   availability of the orientation data and the source, format and type
   of the data.

   This subsection summarises mission phase specific implementations.


Cruise
------

     "J2000" Inertial
     ----------------
            |
            | <----------- CK segment containing telemetry data
            |
            v
      "CM_SPACECRAFT"
      ---------------
            |
            | <----------- Fixed rotation based on frame definitions
            |
            v
    "SP_LANDER_CRUISE"
    -------------------
            |
            | <----------- CK segment representing fixed rotation defined
            |              by the lander design and to make SPICE "transverse"
            V              to the appropriate frame chain
       "SP_LANDER"
       ------------


Surface Mission (after landing)
---------------------------------------------------------

     "J2000" Inertial
     ----------------
            |
            | <----------- PCK-based transformation
            V
        "IAU_MARS"
        ----------
            |
            | <----------- Fixed rotation based on the landing site
            |              coordinates. Generated using PINPOINT utility.
            V
        "SP_TOPO"
        ---------
            |
            | <----------- CK segment containing telemetry data
            |
            V
       "SP_LANDER"
       ------------


SP Mars Local Geodetic Landing Site Frame:
-------------------------------------------------

   The Surface Platform landing site site Gaussian longitude and latitude
   upon which the definition is built are:

      Lon = 335.45 degrees East
      Lat =  18.20 degrees North

   This corresponds to one of the two final landing site locations.

   The coordinates specified above are given with respect to the 'IAU_MARS'
   instance defined by the rotation/shape model from the the PCK file
   'pck00010.tpc'.

   Topocentric frame SP_TOPO is centered at the site
   SP_LANDING_SITE which has planetodetic coordinates

      Longitude (deg):       -24.5500000000000E+00
      Latitude  (deg):        18.2000000000000E+00
      Altitude   (km):        -0.0000000000000E+00

   These planetodetic coordinates are expressed relative to
   a reference spheroid having the dimensions

      Equatorial radius (km):  3.3961900000000E+03
      Polar radius      (km):  3.3762000000000E+03

   These keywords implement the frame definition.

   \begindata

      FRAME_SP_TOPO                       =  -173900
      FRAME_-173900_NAME                  =  'SP_TOPO'
      FRAME_-173900_CLASS                 =  4
      FRAME_-173900_CLASS_ID              =  -173900
      FRAME_-173900_CENTER                =  -173900

      OBJECT_-173900_FRAME                =  'SP_TOPO'

      TKFRAME_-173900_RELATIVE            =  'IAU_MARS'
      TKFRAME_-173900_SPEC                =  'ANGLES'
      TKFRAME_-173900_UNITS               =  'DEGREES'
      TKFRAME_-173900_AXES                =  ( 3, 2, 3 )
      TKFRAME_-173900_ANGLES              =  ( -335.4500000000000,
                                                -71.8000000000000,
                                                270.0000000000000 )

   \begintext


ExoMars Surface Platform Lander and Lander Structures Frames
--------------------------------------------------------------------

   This section of the file contains the definitions of the spacecraft
   and spacecraft structures frames.


SP Lander Frame
----------------------------------------------------------------------------

   According to ? the SP lander frame -- SP_ROVER -- is defined as follows:

      -  +Z axis ?;

      -  +X axis ?;

      -  +Y axis completes the right-handed frame;

      - the origin of this fram is defined by ?

   The orientation of SP w.r.t. the Topographic frame after landing and
   after RM disposal will be incorporated by this frame.

   These diagrams illustrate the ExoMarsRSP Surface Platform frame (SP_LANDER):

   -Y side view:
   -------------

                                                __
                                               /\\\
                         _____________________ |\\|
                       ||                       ||\
                       ||                       || \
                       ||                       ||  \
             .---------||                       ||---'-----.
            /          ||                       ||          \
           |           ||                       ||           |
           |           ||                       ||           |
    _______|___________||_______+Ysc____________||___________|______
   |________________________________x---> +Zsc________BASE PLANE____|
    `.                              |                              .'
      `.                            | +Xsc                       .'
        `.__________________________v__________________________.'
           |   /   .'        `.            .'       `.   \   |
           |  /  .'            `.________.'           `.  \  |
           | / .'                                       `. \ |
          | /.'                      |                    `.\ |
       '._|/'__.'                    |                  '.__`\|_.'
         ======                      |                    ======
                                     v towards Mars



   -X top view:
   ------------



                                _.-----._
                            _.-'         '-._
                        _.-'                 '-._
                    _.-'                         '-._
                _.-'                                 '-._
              -'                        BASE PLANE       '-
             /   .--.                                .--.  \
            /     \_|                                |_/    \
           /                                                 \
          / =================|             |================= \
         /--|---------------.               .---------------|--\
        /   |               ||             ||               |   \
       /    |               ||             ||               |    \
      /     |               ||  .-------.  ||               |     \
     /      |               || /         \ ||               |      \
    .       |               ||/       +Ysc\||               |       .
    |       |               |' +Xsc x--->  '|               |       |
    |       |               |'      |      '|               |       |
    '       |               ||\     | +Zsc/||               |       '
     \      |               || \    v    / ||               |      /
      \     |               ||  `-------'  ||               |     /
       \    |               ||             ||               |    /
        \   |               ||             ||               |   /
         \--|---------------'               '---------------|--/
          \ =================|             |================= /
           \       _                                  _      /
            \     / |                                | \    /
             \_  '--'                                '--' _/
               '-._                                   _.-'
                   '-._                           _.-'
                       '-._                   _.-'
                           '-._           _.-'
                               '-._____.-'



   These sets of keywords define the ExoMars Surface Platform Spacecraft
   frames:

   \begindata

      FRAME_SP_LANDER                  = -173000
      FRAME_-173000_NAME               = 'SP_LANDER'
      FRAME_-173000_CLASS              =  3
      FRAME_-173000_CLASS_ID           = -173000
      FRAME_-173000_CENTER             = -173
      CK_-173000_SCLK                  = -173
      CK_-173000_SPK                   = -173
      OBJECT_-173_FRAME                = 'SP_LANDER'

   \begintext


SP Lander Cruise Frame
----------------------------------------------------------------------------

    The SP Lander Cruise frame -- SP_LANDER_CRUISE -- is a special
    frame used in cruise in order to "attach" the SP spacecraft to the CM
    during the cruise phase, it is defined as follows:

      - +Z axis is parallel to CM's +Z axis;

      - +X axis is parallel to CM's +X axis;

      - +Y axis completes the right-handed frame;

      - the origin of this frame is the CM/SP interface
        point on the separation plane.

    This frame is defined a fixed-offset frame.

    Since the SPICE frames subsystem calls for specifying the reverse
    transformation--going from the instrument or structure frame to the
    base frame--as compared to the description given above, the order of
    rotations assigned to the TKFRAME_*_AXES keyword is also reversed
    compared to the above text, and the signs associated with the
    rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
    opposite from what is written in the above text.

    \begindata

       FRAME_SP_LANDER_CRUISE           = -173001
       FRAME_-173001_NAME               = 'MTM_SPACECRAFT_CRUISE'
       FRAME_-173001_CLASS              =  4
       FRAME_-173001_CLASS_ID           = -173001
       FRAME_-173001_CENTER             = -173
       TKFRAME_-173001_RELATIVE         = 'CM_SPACECRAFT'
       TKFRAME_-173001_SPEC             = 'ANGLES'
       TKFRAME_-173001_UNITS            = 'DEGREES'
       TKFRAME_-173001_AXES             = (    1,     3,       1  )
       TKFRAME_-173001_ANGLES           = (  0.0,   0.0,     0.0  )

    \begintext


SP LARA Antennas Frames
------------------------------------------

	ExoMars Surface Platform LARA antennas frames base -- LARA_ANT_BASE -- is
  defined as follows:

		 - +X axis points at zenith direction of Surface Platform

     - +Y ?

     - +Z completes the right-handed frame;

     - the origin of this frame is located at SP_LANDER origin.


   TODO: Please briefly describe/define TX1, TX2 and RX before defining the
   frame.

   The ExoMars Surface Platform LARA antennas frames -- LARA_ANT_TX1,
   LARA_ANT_TX2, LARA_ANT_RX -- provide the orientation relative to the
   LARA_ANT_BASE (i.e. SP zenith), acquired during calibration, and are
   defined as follows:

      - +X axis ?

      - +Y axis ?

     - +Z completes the right-handed frame;

	    - Frame origins located in LARA_ANT_TX1, LARA_ANT_TX2 and
        LARA_ANT_RX objects.


   These diagrams illustrate the LARA antenna frames:

   TODO: Provide location and frames of the LARA antenas.

   -Y side view:
   -------------


                                                __
                                               /\\\
                         _____________________ |\\|
                       ||                       ||\
                       ||                       || \
                       ||                       ||  \
             .---------||                       ||---'-----.
            /          ||                       ||          \
           |           ||                       ||           |
           |           ||                       ||           |
    _______|___________||_______+Ysc____________||___________|______
   |________________________________x---> +Zsc________BASE PLANE____|
    `.                              |                              .'
      `.                            | +Xsc                       .'
        `.__________________________v__________________________.'
           |   /   .'        `.            .'       `.   \   |
           |  /  .'            `.________.'           `.  \  |
           | / .'                                       `. \ |
          | /.'                      |                    `.\ |
       '._|/'__.'                    |                  '.__`\|_.'
         ======                      |                    ======
                                     v towards Mars



   -X top view:
   ------------



                                _.-----._
                            _.-'         '-._
                        _.-'                 '-._
                    _.-'                         '-._
                _.-'                                 '-._
              -'                        BASE PLANE       '-
             /   .--.                                .--.  \
            /     \_|                                |_/    \
           /                                                 \
          / =================|             |================= \
         /--|---------------.               .---------------|--\
        /   |               ||             ||               |   \
       /    |               ||             ||               |    \
      /     |               ||  .-------.  ||               |     \
     /      |               || /         \ ||               |      \
    .       |               ||/       +Ysc\||               |       .
    |       |               |' +Xsc x--->  '|               |       |
    |       |               |'      |      '|               |       |
    '       |               ||\     | +Zsc/||               |       '
     \      |               || \    v    / ||               |      /
      \     |               ||  `-------'  ||               |     /
       \    |               ||             ||               |    /
        \   |               ||             ||               |   /
         \--|---------------'               '---------------|--/
          \ =================|             |================= /
           \       _                                  _      /
            \     / |                                | \    /
             \_  '--'                                '--' _/
               '-._                                   _.-'
                   '-._                           _.-'
                       '-._                   _.-'
                           '-._           _.-'
                               '-._____.-'



   These sets of keywords define the ExoMars Surface Platform Spacecraft
   frames:

   \begindata

      FRAME_LARA_ANT_BASE              = -197000
      FRAME_-197000_NAME               = 'LARA_ANT_BASE'
      FRAME_-197000_CLASS              =  4
      FRAME_-197000_CLASS_ID           =  -197000
      FRAME_-197000_CENTER             =  -197
      TKFRAME_-197000_RELATIVE         = 'SP_TOPO'
      TKFRAME_-197000_SPEC             = 'ANGLES'
      TKFRAME_-197000_UNITS            = 'DEGREES'
      TKFRAME_-197000_AXES             = (   3,   2,   3  )
      TKFRAME_-197000_ANGLES           = ( 0.0, 0.0, 0.0  )

      FRAME_LARA_ANT_TX1               = -197011
      FRAME_-197011_NAME               = 'LARA_ANT_TX1'
      FRAME_-197011_CLASS              =  4
      FRAME_-197011_CLASS_ID           =  -197011
      FRAME_-197011_CENTER             =  -197001
      TKFRAME_-197011_RELATIVE         = 'LARA_ANT_BASE'
      TKFRAME_-197011_SPEC             = 'ANGLES'
      TKFRAME_-197011_UNITS            = 'DEGREES'
      TKFRAME_-197011_AXES             = (   3,   2,   3  )
      TKFRAME_-197011_ANGLES           = ( 0.0, 0.0, 0.0  )
      OBJECT_-197001_FRAME             = -197011

      FRAME_LARA_ANT_TX2               = -197012
      FRAME_-197012_NAME               = 'LARA_ANT_TX2'
      FRAME_-197012_CLASS              =  4
      FRAME_-197012_CLASS_ID           =  -197012
      FRAME_-197012_CENTER             =  -197002
      TKFRAME_-197012_RELATIVE         = 'LARA_ANT_BASE'
      TKFRAME_-197012_SPEC             = 'ANGLES'
      TKFRAME_-197012_UNITS            = 'DEGREES'
      TKFRAME_-197012_AXES             = (   3,   2,   3  )
      TKFRAME_-197012_ANGLES           = ( 0.0, 0.0, 0.0  )
      OBJECT_-197002_FRAME             = -197012

      FRAME_LARA_ANT_RX                = -197013
      FRAME_-197013_NAME               = 'LARA_ANT_RX'
      FRAME_-197013_CLASS              =  4
      FRAME_-197013_CLASS_ID           =  -197013
      FRAME_-197013_CENTER             =  -197003
      TKFRAME_-197013_RELATIVE         = 'LARA_ANT_BASE'
      TKFRAME_-197013_SPEC             = 'ANGLES'
      TKFRAME_-197013_UNITS            = 'DEGREES'
      TKFRAME_-197013_AXES             = (   3,   2,   3  )
      TKFRAME_-197013_ANGLES           = ( 0.0, 0.0, 0.0  )
      OBJECT_-197003_FRAME             = -197013

   \begintext


ExoMarsRSP Surface Platform NAIF ID Codes -- Definitions
===============================================================================

   This section contains name to NAIF ID mappings for the ExoMarsRSP mission.
   Once the contents of this file is loaded into the KERNEL POOL, these
   mappings become available within SPICE, making it possible to use names
   instead of ID code in the high level SPICE routine calls.

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------

      EXOMARS SURFACE PLATFORM    -173   (synonyms:
                                          EXOMARS RSP SURFACE PLATFORM,
                                          EXOMARS RSP SP,
                                          EM RSP SP)
      SP_LANDER                   -173000
      SP_LANDING_SITE             -174700 (synonyms: RM_LANDING_SITE)

	    LARA                        -197    (synonyms: EXOMARS LARA,
										                       EXOMARS RSP LARA)

	    LARA_ANT_TX1                -197001
	    LARA_ANT_TX2                -197002
	    LARA_ANT_RX                 -197003


   The mappings summarized in this table are implemented by the keywords
   below.

   \begindata

      NAIF_BODY_NAME += ( 'SP'                           )
      NAIF_BODY_CODE += ( -173                           )

      NAIF_BODY_NAME += ( 'SP_LANDER'                    )
      NAIF_BODY_CODE += ( -173000                        )

      NAIF_BODY_NAME += ( 'SP_LANDING_SITE'              )
      NAIF_BODY_CODE += ( -174700                        )

      NAIF_BODY_NAME += ( 'EXOMARS SURFACE PLATFORM'     )
      NAIF_BODY_CODE += ( -173                           )

      NAIF_BODY_NAME += ( 'EXOMARS RSP SURFACE PLATFORM' )
      NAIF_BODY_CODE += ( -173                           )

      NAIF_BODY_NAME += ( 'EXOMARS RSP SP'               )
      NAIF_BODY_CODE += ( -173                           )

      NAIF_BODY_NAME += ( 'EXOMARS SURFACE PLATFORM'     )
      NAIF_BODY_CODE += ( -173                           )

      NAIF_BODY_NAME += ( 'EXOMARS LARA'                 )
      NAIF_BODY_CODE += ( -197                           )

      NAIF_BODY_NAME += ( 'EXOMARS RSP LARA'             )
      NAIF_BODY_CODE += ( -197                           )

      NAIF_BODY_NAME += ( 'LARA'                         )
      NAIF_BODY_CODE += ( -197                           )

      NAIF_BODY_NAME += ( 'LARA_ANT_TX1'                 )
      NAIF_BODY_CODE += ( -197001                        )

      NAIF_BODY_NAME += ( 'LARA_ANT_TX2'                 )
      NAIF_BODY_CODE += ( -197002                        )

      NAIF_BODY_NAME += ( 'LARA_ANT_RX'                  )
      NAIF_BODY_CODE += ( -197003                        )

   \begintext


End of FK file.