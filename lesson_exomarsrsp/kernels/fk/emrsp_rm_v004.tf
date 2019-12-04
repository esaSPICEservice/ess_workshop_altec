KPL/FK

ExoMarsRSP Rosalind Franklin Rover Module (RM) Frames Kernel
===============================================================================

   This frame kernel contains a complete set of frame definitions for the
   ExoMars RSP Rosalind Franklin Rover Module (RM) including definitions for
   the RM structures and RM science instrument frames. This kernel also
   contains NAIF ID/name mapping for the RM instruments.


Version and Date
------------------------------------------------------------------------

   Version 0.0.4 -- November 29, 2019 -- Marc Costa Sitja, ESAC/ESA

      Added reference frames, references, diagrams and IDs for ALD
      components, updated diagrams and done some minor edits.

   Version 0.0.3 -- February 28, 2019 -- Marc Costa Sitja, ESAC/ESA

      Added reference frames, references, diagrams and IDs for ALD
      components, updated diagrams and done some minor edits.

   Version 0.0.2 -- February 14, 2019 -- Marc Costa Sitja, ESAC/ESA

      Added reference frames, references, diagrams and IDs for the drill,
      MaMiss, WISDOM and CLUPI.

   Version 0.0.1 -- February 8, 2019 -- Marc Costa Sitja, ESAC/ESA

      Updated ID from -999 to -174 and done several edits including
      updated updated diagrams and frame trees.

      Added reference frames and IDs for LOCCAM, ISEM and ADRON-RM.

   Version 0.0.0 -- June 8, 2018 -- Marc Costa Sitja, ESAC/ESA

      Preliminary version.


References
------------------------------------------------------------------------

    1. ``Frames Required Reading'', NAIF

    2. ``Kernel Pool Required Reading'', NAIF

    3. ``C-Kernel Required Reading'', NAIF

    4. ``ExoMars Rover and Surface Platform Mission Implementation Plan'',
       EXM-G2-PLN-ESC-00004, ExoMars Ground Segment Team, Issue 1, Revision 2,
       ESOC, August 8, 2017

    5. ``EXOMARS 2018 ROVER MODULE Coordinate Systems & Conventions for RM
       control'', EXM-RM-TNO-AI-0448, A. Merlo, Thales Alenia Space,
       Issue 1, November 2015

    6. ExoMars RSP Mars Local Geodetic Frames (emrsp_mlg_vVVV.tf),
       latest version

    7. ``ExoMars Rover Vehicle Coordinate Systems and Conventions
       Specifications'', EXM-RM-SYS-ASU-00101, Airbus Defense and Space,
       Issue 2, April 2016

    8. ``Description of Frames and Conventions Related to Localisation
       Camera Data Sets'', EXM-RM-TNO-AS U-00209, K. MacManamon,
       Airbus Defense and Space,  Issue 2, Revision 0, July 2014

    9. ``ExoMars/CLUPI Science Requirements Specification Document'',
       EXM.CL.RSD.SPX.1501, Space Exploration Institute,
       Issue 1, Rev. 0, July 2015

    10. ``Water Ice and Subsurface Deposit Observations on Mars WISDOM
        instrument'', MICD, EXM-WI-DRW-LAT-0152, Issue 02, Rev. 01,
        A. Galic, March 2018

    11. ``ExoMars ICD ALD Structure - ALD Structure Interface Control
        Document'', EXM-RM-ICD-KT-0002, Q. Muhlbauer, OHB System AG,
        Issue 4, May 2016

    12. ``Rover Module Outline Drawing'', EXM-D2-ICD-AI-0078,
        Thales Alenia Space, Revision A, 4th September 2017


Contact Information
------------------------------------------------------------------------

   If you have any questions regarding this file contact the
   ESA SPICE Service at ESAC:

           Marc Costa Sitja
           (+34) 91-8131-457
           marc.costa@esa.int, esa_spice@sciops.esa.int

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


RM NAIF ID Codes -- Summary Section
------------------------------------------------------------------------

   The following names and NAIF ID codes are assigned to the ExoMars RSP
   rover, its structures and science instruments (the keywords implementing
   these definitions are located in the section "RM NAIF ID Codes --
   Definition Section" at the end of this file):

   RM and RM Structures names/IDs:

            RM                       -174   (synonyms: EXOMARS RSP RM,
                                                       EXOMARS RSP ROVER,
                                                       EXOMARS RSP ROVER MODULE
                                                  and  EXOMARS ROVER)

            RM_ROVER                 -174000
            RM_MAST                  -174010
            RM_PTR                   -174012
            RM_PB                    -174013
            RM_NAVCAM_L              -174021
            RM_NAVCAM_R              -174022
            RM_LOCCAM_L              -174031
            RM_LOCCAM_R              -174031
            RM_DRILL_POS_FIX         -174040
            RM_DRILL_POS_MOV         -174041
            RM_DRILL_TIP_FIX         -174042
            RM_DRILL_TIP_MOV         -174043
            RM_ALD                   -174050
            RM_ALD_CSTM              -174051
            RM_ALD_PSDDS             -174053
            RM_ALD_PSHS              -174055
            RM_SA+Y_PRI              -174061
            RM_SA+Y_SEC              -174062
            RM_SA-Y_PRI              -174064
            RM_SA-Y_SEC              -174065

   PanCam names/IDs:

            RM_PANCAM                -174100
            RM_PANCAM_WAC_L          -174110
            RM_PANCAM_WAC_R          -174120
            RM_PANCAM_HRC            -174130

   ISEM names/IDs:

            RM_ISEM                  -174200

   ADRON name/IDs:

            RM_ADRON-RM              -174300

   WISDOM name/IDs:

            RM_WISDOM                -174400
            RM_WISDOM_ANT1           -174410
            RM_WISDOM_ANT2           -174420

   MaMiss name/IDs:

            RM_MAMISS                -174500

   CLUPI name/IDs:

            RM_CLUPI                 -174600
            RM_CLUPI_FOV1            -174601
            RM_CLUPI_FOV2            -174602
            RM_CLUPI_FOV3            -174603

   Sites name/IDs:

            RM_SITE_000              -174700 (synonym: RM_LANDING_SITE)
            RM_SITE_NNN*             -174XXX**

      (*) NNN corresponds to the travel sequence number and it has a range
          from 000 (refers to the position of the Rover at landing site)
          to 299.

      (**) XXX ranges from 701 up to 899.


RM Frames
------------------------------------------------------------------------

   The following RM frames are defined in this kernel file:

           Name                    Relative to           Type        NAIF ID
      ======================    ===================  ============    =======

   RM Rover and Rover Structures frames:
   ------------------------------------------------
      RM_ROVER                    RM_MLG,                CK          -174000
                                  RM_ROVER_CRUISE
      RM_ROVER_CRUISE             CM_SPACECRAFT          FIXED       -174001
      RM_MAST_ZERO                RM_ROVER               FIXED       -174010
      RM_MAST                     RM_MAST_ZERO           CK          -174011
      RM_PTR_ZERO                 RM_MAST                FIXED       -174012
      RM_PTR                      RM_PTR_ZERO            CK          -174013
      RM_PB                       RM_PTR                 FIXED       -174014
      RM_NAVCAM_BASE              RM_PB                  FIXED       -174020
      RM_NAVCAM_L                 RM_NAVCAM_BASE         FIXED       -174021
      RM_NAVCAM_R                 RM_NAVCAM_BASE         FIXED       -174022
      RM_LOCCAM_BASE              RM_PB                  FIXED       -174030
      RM_LOCCAM_L                 RM_LOCCAM_BASE         FIXED       -174031
      RM_LOCCAM_R                 RM_LOCCAM_BASE         FIXED       -174032
      RM_DRILL_POS_FIX            RM_ROVER               FIXED       -174040
      RM_DRILL_POS_MOV            RM_DRILL_POS_FIX       CK          -174041
      RM_DRILL_TIP_FIX            RM_DRILL_POS_MOV       FIXED       -174042
      RM_DRILL_TIP_MOV            RM_DRILL_TIP_FIX       FIXED(*)    -174043
      RM_ALD_CSTM_FIX             RM_ROVER               FIXED       -174052
      RM_ALD_CSTM_MOV             RM_ALD_CSTM_FIX        FIXED(*)    -174053
      RM_ALD_PSDDS_FIX            RM_ROVER               FIXED       -174052
      RM_ALD_PSDDS_MOV            RM_ALD_PSDDS_FIX       FIXED       -174053
      RM_ALD_PSHS_FIX             RM_ROVER               FIXED       -174054
      RM_ALD_PSHS_MOV             RM_ALD_PSHS_FIX        CK          -174055
      RM_SA+Y_ZERO                RM_ROVER               FIXED       -174001
      RM_SA+Y_PRI                 RM_SA+Y_ZERO           CK          -174002

   PanCam frames:
   ------------------------------------------------
      RM_PANCAM_BASE              RM_PB                  FIXED       -174100
      RM_PANCAM_WAC_L             RM_PANCAM_BASE         FIXED       -174110
      RM_PANCAM_WAC_R             RM_PANCAM_BASE         FIXED       -174120
      RM_PANCAM_HRC               RM_PANCAM_BASE         FIXED       -174130

   ISEM frames:
   ------------------------------------------------
      RM_ISEM                     RM_PB                  FIXED       -174200

   ADRON frames:
   ------------------------------------------------
      RM_ADRON-RM                 RM_ROVER               FIXED       -174300

   WISDOM frames:
   ------------------------------------------------
      RM_WISDOM_BASE              RM_ROVER               FIXED       -174400
      RM_WISDOM_ANT1              RM_WISDOM_BASE         FIXED       -174410
      RM_WISDOM_ANT2              RM_WISDOM_BASE         FIXED       -174420

   MaMiss frames:
   ------------------------------------------------
      RM_MAMISS                   RM_DRILL_TIP_MOV       FIXED       -174500

   CLUPI frames:
   ------------------------------------------------
      RM_CLUPI_BASE               RM_DRILL_POS_MOV       FIXED       -174500
      RM_CLUPI_OPT_AXIS           RM_CLUPI_BASE          FIXED       -174510
      RM_CLUPI_DRILL_TIP          RM_CLUPI_OPT_AXIS      FIXED       -174520
      RM_CLUPI_BRACKET            RM_CLUPI_BRACKET       FIXED       -174530


   In addition, the following frames, in use by the ExoMars RSP mission, are
   defined in another kernel:

           Name                    Relative to           Type        NAIF ID
      ======================    ===================  ============    =======

   ExoMars RSP Local Geodetic Frames (1):
   ---------------------------------------------------
       RM_LANDING_SITE              IAU_MARS            FIXED        -174900
       RM_MLG*                      IAU_MARS            FIXED        -174700

       (*) The frame is implemented with an SPK to account for the
           translation of its origin to the different RM_SITE_NNN objects.


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
   the ExoMars RSP Lander Component (RM).


RM Frames Hierarchy
--------------------------------------------------------------------------

   The diagram below shows the ExoMars RM frames hierarchy (except
   for science operations frames):


                                         "J2000" INERTIAL
                           +----------------------------------------+
                           |                    |                   |
                           |                    |<-pck              |<-pck
                           |                    |                   |
                           |                    v                   v
                           v               "IAU_MARS"          "IAU_EARTH"
                    "CM_SPACECRAFT"   MARS BODY-FIXED (MCMF)  EARTH BODY-FIXED
                    ---------------  ----------------------  ----------------
                            |                    |
                            |<-fixed             |<-fixed
                            |                    |
                            |                    |
                            |                    v
                            v                "RM_MLG" (**)
                    RM_ROVER_CRUISE         MARS TOPOGRAPHIC
                    ---------------        -----------------
                            |                    |
                            |<-ck(*)             |<-ck
                            |                    |
   "RM_SA+Y_SEC"            |                    |            "RM_SA-Y_SEC"
   -------------            |                    |            -------------
         ^                  |                    |                  ^
         |                  |                    |                  |
         |<-ck              |                    |                  |<-ck
         |                  |                    |                  |
   "RM_SA+Y_PRI"            |                    |            "RM_SA-Y_PRI"
   -------------            |                    |            -------------
         ^                  |                    |                  ^
         |                  |                    |                  |
         |<-ck              |                    |                  |<-ck
         |                  |                    |                  |
   "RM_SA+Y_ZERO"           |                    |            "RM_SA-Y_ZERO"
   --------------           |                    |            --------------
         |                  |                    |                  |
         |<-fixed           |                    |                  |<-fixed
         |                  |                    |                  |
         v                  v     "RM_ROVER"     v                  v
   +----------------------------------------------------------------+
   |   |          |          |             |          .             |
   |   |<-fixed   |<-fixed   |<-fixed      |<-fixed   .             |<-fixed
   |   |          |          |             |          .             |
   |   |          |          v             |          .             |
   |   |          |    "RM_MAST_ZERO"      |          .             |
   |   |          |    --------------      |          .             |
   |   |          |          |             |          .             |
   |   |          |          |<-ck         |          .             |
   |   |          |          |             |          .             |
   |   |          |          v             v          .             v
   |   |          |      "RM_MAST"  "RM_LOCCCAM_BASE" . "RM_DRILL_POS_FIX"
   |   |          |      ---------  ----------------- . +----------------+
   |   |          v          |                        . .                |
   |   | "RM_ALD_CSTM_FIX"   |<-fixed                 . .                |<-ck
   |   | -----------------   |                        . .                |
   |   |          |          v                        . .                v
   |   |   fixed->|      "RM_PTR_ZERO"                . . "RM_DRILL_POS_MOV"
   |   |          |      -------------                . . +----------------+
   |   |          v          |                        . . .                |
   |   | "RM_ALD_CSTM_MOV"   |<-ck                    . . .         fixed->|
   |   | -----------------   |                        . . .                |
   |   |                     v                        . . .                v
   |   |                  "RM_PTR"                    . . .  "RM_DRILL_TIP_FIX"
   |   V                  --------                    . . .  ------------------
   |  "RM_ALD_PSHS_FIX"      |                        . . .         |
   |  -----------------      |<-fixed                 . . .         |<-fixed
   |           |             |                        . . .         |
   |       ck->|             v                        . . .         v
   |           |          "RM_PB"                     . . .  "RM_DRILL_TIP_MOV"
   |           v        +--------------+              . . .  ------------------
   |  "RM_ALD_CSTM_MOV" .              |              . . .         .
   |  ----------------- .              |<-fixed       . . .         .
   |                    .              |              . . .         .
   |<-fixed             .              V              . . .         .
   |                    .      "RM_NAVCAM_BASE"       . . .         .
   v                    .     +----------------+      . . .         .
  "RM_ALD_PSDDS_FIX"    .     |                |      . . .         .
  ------------------    .     |<-fixed  fixed->|      . . .         .
           |            .     |                |      . . .         .
       ck->|            .     v                v      . . .         .
           |            . "RM_NAVCAM_L" "RM_NAVCAM_R" . . .         .
           v            . ------------- ------------- . . .         .
  "RM_ALD_PSDDS_MOV"    .                             . . .         .
  ------------------    .                             . . .         .
                        .                             . . .         .
                        V                             V V V         V
                  Individual instrument frame trees are provided in the other
                                    sections of this file


   Please refer to the PanCam, NavCam sections for the frame
   hierarchy of each payload; and to the RM science operations frame
   definitions kernel for further details on these frame definitions.

   (*)      In these cases transformation is fixed but it has to be
            stored in a CK to make SPICE "traverse" appropriate frame
            tree branch based on the time of interest and/or loaded
            kernels.

   (**)     This frame is equivalent to the SP_TOPOT frame defined in the
            ExoMarsRSP Surface Platform Frames Kernel (emrsp_sp_vNNN.tf)


RM Mars Local Geodetic Frames
-------------------------------------------------

   The Rover Module Mars Local Geodetic frame (Topocentric) -- RM_MLG -- is
   defined as follows:

      - +Z axis is in the direction of the vertical (i.e. approximately the
        negative gravity vector; "Zenith", assuming that the small local
        variation can be ignored),

      - +X axis is tangential to the local geodetic horizontal in an eastern
        direction (i.e. parallel to lines of latitude; "East"),

      - +Y axis completes the right hand frame ("North");

      - the origin of the frame is initially defined to be coincident with
        the origin of the Rover Body frame, RM_ROVER, prior to the start of
        travel. During a travel sequence, this frame remains fixed with Mars,
        but becomes reset at the start of a new travel sequence. The rationale
        for this is that a travel sequence requires a stationary reference
        frame in which to measure position and coordinate navigation maps.
        The start of travel when the frame is reset may be at the start of
        each sol, or when new targets are generated.

   If we assume that the total traverse distance during the mission will be
   relatively short (hundreds of meters, not kilometers) and, therefore, the
   local north and nadir directions, defining surface frame orientations, will
   be approximately the same at any point along the traverse path. This
   assumption allows defining a single surface frame as a fixed offset frame
   to Mars body-fixed frame, IAU_MARS. With this assumption we will always
   use the Mars Local Geodetic Landing Site frame that is defined hereafter.
   RM surface fixed frame -- RM_MLG -- is nominally co-aligned in orientation
   with the RM_LANDING_SITE and its origin changes throughout the mission.
   Therefore, this frame is defined as a zero-offset, fixed frame with respect
   to the RM_LANDING_SITE frame.

   \begindata

      FRAME_RM_MLG                        =  -174700
      FRAME_-174700_NAME                  =  'RM_MLG'
      FRAME_-174700_CLASS                 =  4
      FRAME_-174700_CLASS_ID              =  -174700
      FRAME_-174700_CENTER                =  -174700

      OBJECT_-174700_FRAME                =  'RM_MLG'

      TKFRAME_-174700_RELATIVE            =  'IAU_MARS'
      TKFRAME_-174700_SPEC                =  'ANGLES'
      TKFRAME_-174700_UNITS               =  'DEGREES'
      TKFRAME_-174700_AXES                =  ( 3, 2, 3 )
      TKFRAME_-174700_ANGLES              =  ( -335.4500000000000,
                                                -71.8000000000000,
                                                270.0000000000000 )

   \begintext


RM Lander and Lander Structures Frames
------------------------------------------------------------------------

   This section of the file contains the definitions of the rover
   and rover structures frames.

   DISCLAIMER: The origin of the frames specified in the following
   definitions are not implemented. The ``true'' origin of all frames
   is in the center of the RM_ROVER frame, the center of which
   is defined by the position given by the SPK (ephemeris) kernel in
   use.


RM Rover Frames
--------------------------------------

   According to [4] the RM rover reference frame -- RM_ROVER -- is
   defined as follows:

      -  +Z axis, lies vertically upwards, antiparallel to the gravity vector
         when the rover is on flat, horizontal terrain;

      -  +X axis lies towards the front of the Rover in the nominal direction
         of travel;

      -  +Y axis completes the right-handed frame;

      -  the origin of this frame at the intersection of the following planes:

            - A plane 252.5 mm aft (i.e. negative offset in +X axis) and
              parallel to Plane 1 (the plane formed by the nominal bolt axes
              of the front body HDRMs);

            - Plane 2, the plane of symmetry between the front body HDRM
              nominal bolt axes - equivalent to the rover body mid-plane;

            - A plane 30 mm below and parallel to Plane 3 (the plane of the
              rover body base).


   These diagrams illustrate the RM_ROVER frame:

   -Y Rover side view:
   -------------------

                .-.
                | |
                | |
                |_|
                |_|
                 |
                 |
                 |
                 |
                 |
                 |
                 |
                 |
                 |        +Zrm
                _|_         ^
               |   |        |
         -------------------|-------------------------------------
               ,------------|------------.
               |            |             |
            ___|            |             |
           /   | +Xrm       |             |
           \___|__<---------o ____________.         +Yrm is out the page
                | |        +Yrm          | |
        __------/ \-----__               / \.__
       |  |-----\_/----|  |              \__.  |
      .|  |.          .|  |.               .|  |.
     / |__| \        / |__| \             / |__| \
     \      /        \      /             \      /
      `-..-'          `-..-'               `-..-'


   +Z Rover side view:
   -------------------

          .-------------------------..-------------------------.
    .-----|                         ||                         |
    | .--.|                         ||                         |
    | |  ||                         ||                         |
    `-|  |'-------------------------''-------------------------'
     .------------------.
     |                  '----------.
     '----.                         |
       |  |                         |
       |  |    .-.                 .'
       |  |    | +Xrm      +Zrm    |
       |  |    | |<---------o      |
       |  |    | |          |      |
       |  |    '-'          |       '.
       '--|                 |        |            +Zrm is out of the page
          '-----.         .-|--------'
                '---------' v
          .--------------- +Yrm ----..-------------------------.
          |                         ||                         |
          |                         ||                         |
          |                         ||                         |
          '-------------------------''-------------------------'

   +X Rover side view (drill in stowed position):
   ----------------------------------------------


                    o-o-=O===O--o
                       |o|___|
                          _\/
                         |_|_
                           |_|
                            |
                            |
                            |
                            |
                            |
                            |
                            |
                            |
                            |
                           _|_ +Zrm
                          |   | ^
      --------------------------|--------------------------
             |   |          |   |  |   |      |  |
             '---|          |   |  | 0 |   .--'--'
                 '--.-----------|----------|
                 .--|           |          |---.
            .-.  |============= o--------> ====|  .-.
           |___|=|            +Xrm |   |+Yrm   |=|___|
           |.-.                                   .-.|
           || |                                   | ||    +Xrm is out of the
           `| |                                   | |'    page
            '_'                                   '_'
          ~~~~~~~~                             ~~~~~~~~


   Since the RM bus attitude with respect to an inertial frame is provided
   by a C-kernel (see [3] for more information), this frame is defined as
   a CK-based frame.

   These sets of keywords define the RM_ROVER frame:

   \begindata

      FRAME_RM_ROVER                   = -174000
      FRAME_-174000_NAME               = 'RM_ROVER'
      FRAME_-174000_CLASS              =  3
      FRAME_-174000_CLASS_ID           = -174000
      FRAME_-174000_CENTER             = -174
      CK_-174000_SCLK                  = -174
      CK_-174000_SPK                   = -174
      OBJECT_-174_FRAME                = 'RM_ROVER'

   \begintext


RM Rover Cruise Frame
----------------------------------------------------------------------------

    The RM Rover Cruise frame -- RM_LANDER_CRUISE -- is a special
    frame used in cruise in order to "attach" the RM rover to CM
    during the cruise phase, it is defined as follows (from [4]):

      - +Z axis is parallel to CM's +Z axis;

      - +X axis is parallel to CM's +X axis;

      - +Y axis completes the right-handed frame;

      - the origin of this frame is the RM/SP interface
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

       FRAME_RM_ROVER_CRUISE            = -174001
       FRAME_-174001_NAME               = 'RM_ROVER_CRUISE'
       FRAME_-174001_CLASS              =  4
       FRAME_-174001_CLASS_ID           = -174001
       FRAME_-174001_CENTER             = -174
       TKFRAME_-174001_RELATIVE         = 'CM_SPACECRAFT'
       TKFRAME_-174001_SPEC             = 'ANGLES'
       TKFRAME_-174001_UNITS            = 'DEGREES'
       TKFRAME_-174001_AXES             = (    1,     3,       1  )
       TKFRAME_-174001_ANGLES           = (  0.0,   0.0,     0.0  )

    \begintext


RM Deployable Mast, Pan & Tilt Mechanism and Payload Bracket Frames
----------------------------------------------------------------------------

   The RM Deployable Mast Assembly (RM_MAST) accommodates the Pan & Tilt
   Mechanism and the PanCam, NavCam and ISEM instruments, The DMA frame is
   positioned at the base of the mast. The frame RM_MAST_ZERO has its origin at
   the base of the mast and its axes are nominally co-aligned to the RM_ROVER
   frame axes (within knowledge alignment errors), since the mast needs to be
   deployed and can be rotated, this rotation is incorporated by the
   RM_MAST frame [12]. When the mast is folded it is 'resting' on the
   rover body.

   The Mast Pan & Tilt Rotation Mechanism (PTR) is the structure on top of the
   Rover Module mast that accommodates the Stereo Bench where PanCam and the
   NAVCAMs re placed. A series of reference frames are defined in order to
   capture the Pan and Tilt rotations of the structure.

   The Pan & Tilt Zero Rotation frame -- RM_PTR_ZERO -- has the origin at the
   top of the mast, just below the actual pan & tilt mechanism. The axes are
   nominally aligned to the RM_LANDER frame with null pan & tilt; however the
   RM_PTR_ZERO frame can take into account possible deformations of the mast
   and knowledge alignment errors. The frame is defined as follows:

      -  +Y axis is parallel to tilt axis of rotation, and nominally lies
         horizontally sideways

      -  +Z axis, is parallel to the pan axis of rotation, and nominally
         lies vertically upwards;

      -  +X axis completes the right-handed frame;

      -  the origin of this frame is defined as the intersection of the tilt
         axis of rotation and a line intersecting the axis which lies normal
         to both the tilt axis and pan axis. This intersection is assumed
         fixed with respect to the top of the mast. and allows for the
         eventually of the tilt axis and pan axis not intersecting.


   In order to incorporate the pan & tilt rotations, the Pan & Tilt Rotating
   frame is defined -- RM_PTR -- , it is identical to the RM_PTR_ZERO frame
   (i.e. a fixed translation in the Rover Body frame), but rotating with the
   direction of the Pan & Tilt. Pan and Tilt are then defined by the 3-2-1
   Euler rotation, where pan is the first rotation (about the +Z axis), tilt is
   the second rotation (about the +Y axis), and there is no possibility of
   rotation about the +X axis.

   The Payload Bracket frame -- RM_PB -- is fixed relative to the payload
   bracket (which itself is fixed to the tilt actuator rotor). The orientation
   of this frame is not fixed with respect to the RM_LANDER frame, but it
   changes, e.g. when the Deployable Mast Assembly is deployed or when, while
   in deployed configuration, the mast bends or either the pan and tilt angles
   are modified. The frame is defined as follows:

      -  +X axis is perpendicular to the +Y axis and is parallel to the
         interface plane between the payload bracket and the PanCam;

      -  +Y axis is co-aligned with the tilt axis;

      -  +Z axis completes the right-handed frame;

      -  the origin of this frame is the intersection of the pan and tilt axes,
         therefore it is located within the tilt actuator, along the axis of
         the tilt actuator shaft where this intersects with the pan axis.


   This diagram illustrates the RM_MAST_ZERO, RM_MAST, RM_PTR_ZERO, RM_PTR and
   RM_PB frames:

   +X Rover side view (with fully deployed mast):
   ----------------------------------------------

                        +Zptr0
                           ^
                           |
                    o-o-=O=|=O--o
                       |o|_|_|
                          _|/
                         |_|_
                           o------------> +Yptr0
                        +Xptr0
                            |
                            |
                          +Zmast,+Xmast0
                            ^
                            |
                            |
                            |
                            |
                           _|_ +Zrm
                          | o----------> +Ymast,+Ymast0
      ------------------ +Xmast ---------------------------
             |   |          |   ^ +Zrm |      |  |
             '---|          |   |  | 0 |   .--'--'
                 '--.-----------|----------|
                 .--|           |          |---.
            .-.  |============= o--------> ====|  .-.
           |___|=|            +Xrm |   | +Yrm   |=|___|
           |.-.                                   .-.|
           || |                                   | ||    +Xrm, +Xmast and
           `| |                                   | |'    +Zptr0 are out of
            '_'                                   '_'     the page. +Zmast0 is
          ~~~~~~~~                             ~~~~~~~~   into the page.


   -Y Rover side view:
   -------------------

                .-.
                | |
                | |
                |_|
                |_|
                 |
                 |
                 |
                 |
                 |
                 |
                 |
                 |
                 |        +Zrm
                _|_         ^
               |   |        |
         -------------------|-------------------------------------
               ,------------|------------.
               |            |             |
            ___|            |             |
           /   | +Xrm       |             |
           \___|__<---------o ____________.         +Yrm is out of the page
                | |        +Yrm          | |
        __------/ \-----__               / \.__
       |  |-----\_/----|  |              \__.  |
      .|  |.          .|  |.               .|  |.
     / |__| \        / |__| \             / |__| \
     \      /        \      /             \      /
      `-..-'          `-..-'               `-..-'



   These sets of keywords define the Pan & Tilt Mechanism and Rotation and
   Payload Bracket frames:

   \begindata

      FRAME_RM_MAST                   = -174010
      FRAME_-174010_NAME              = 'RM_MAST_ZERO'
      FRAME_-174010_CLASS             =  4
      FRAME_-174010_CLASS_ID          = -174010
      FRAME_-174010_CENTER            = -174
      TKFRAME_-174010_RELATIVE        = 'RM_ROVER'
      TKFRAME_-174010_SPEC            = 'ANGLES'
      TKFRAME_-174010_UNITS           = 'DEGREES'
      TKFRAME_-174010_AXES            = (     3,      1,     2 )
      TKFRAME_-174010_ANGLES          = (   0.0,   90.0,   0.0 )

      FRAME_RM_MAST                   = -174011
      FRAME_-174011_NAME              = 'RM_MAST'
      FRAME_-174011_CLASS             =  3
      FRAME_-174011_CLASS_ID          = -174011
      FRAME_-174011_CENTER            = -174
      CK_-174011_SCLK                 = -174
      CK_-174011_SPK                  = -174

      FRAME_RM_PTR_ZERO               = -174012
      FRAME_-174012_NAME              = 'RM_PTR_ZERO'
      FRAME_-174012_CLASS             =  4
      FRAME_-174012_CLASS_ID          = -174012
      FRAME_-174012_CENTER            = -174
      TKFRAME_-174012_RELATIVE        = 'RM_MAST'
      TKFRAME_-174012_SPEC            = 'ANGLES'
      TKFRAME_-174012_UNITS           = 'DEGREES'
      TKFRAME_-174012_AXES            = (     3,      1,     2 )
      TKFRAME_-174012_ANGLES          = (   0.0,    0.0,   0.0 )


      FRAME_RM_PTR                    = -174013
      FRAME_-174013_NAME              = 'RM_PTR'
      FRAME_-174013_CLASS             =  3
      FRAME_-174013_CLASS_ID          = -174013
      FRAME_-174013_CENTER            = -174
      CK_-174013_SCLK                 = -174
      CK_-174013_SPK                  = -174

      FRAME_RM_PB                     = -174014
      FRAME_-174014_NAME              = 'RM_PB'
      FRAME_-174014_CLASS             =  4
      FRAME_-174014_CLASS_ID          = -174014
      FRAME_-174014_CENTER            = -174
      TKFRAME_-174014_RELATIVE        = 'RM_PTR'
      TKFRAME_-174014_SPEC            = 'ANGLES'
      TKFRAME_-174014_UNITS           = 'DEGREES'
      TKFRAME_-174014_AXES            = (      1,      2,     3 )
      TKFRAME_-174014_ANGLES          = (    0.0,    0.0,   0.0 )

   \begintext


RM NavCam Frames
----------------------------------------------------------------------------

   The Navigation Cameras reference frame -- RM_NAVCAM_BASE --, where the
   terrain stereo reconstruction (for Navigation) occurs, is attached to the
   cameras stereo bench, the axes are aligned to the PTR frame (moving
   according to pan & tilt mechanisms rotations) and is defined as follows:

      -  +X axis is defined as the projection of the cameras optical axis on
         the plane perpendicular to the +Y axis;

      -  +Y axis is in the direction from the right camera optical centre to
         the left camera optical centre;

      -  +Z axis completes the right-handed frame;

      -  The origin is a fixed translation from the PTR frame.


   These sets of keywords define the NavCam frames:

   \begindata

      FRAME_RM_NAVCAM_BASE            = -174020
      FRAME_-174020_NAME              = 'RM_NAVCAM_BASE'
      FRAME_-174020_CLASS             =  4
      FRAME_-174020_CLASS_ID          = -174020
      FRAME_-174020_CENTER            = -174
      TKFRAME_-174020_RELATIVE        = 'RM_PB'
      TKFRAME_-174020_SPEC            = 'ANGLES'
      TKFRAME_-174020_UNITS           = 'DEGREES'
      TKFRAME_-174020_AXES            = (      1,      2,     3 )
      TKFRAME_-174020_ANGLES          = (    0.0,    0.0,   0.0 )

      FRAME_RM_NAVCAM_L               = -174021
      FRAME_-174021_NAME              = 'RM_NAVCAM_L'
      FRAME_-174021_CLASS             =  4
      FRAME_-174021_CLASS_ID          = -174021
      FRAME_-174021_CENTER            = -174
      TKFRAME_-174021_RELATIVE        = 'RM_NAVCAM_BASE'
      TKFRAME_-174021_SPEC            = 'ANGLES'
      TKFRAME_-174021_UNITS           = 'DEGREES'
      TKFRAME_-174021_AXES            = (      1,      2,     3 )
      TKFRAME_-174021_ANGLES          = (    0.0,  -90.0,   0.0 )

      FRAME_RM_NAVCAM_R               = -174022
      FRAME_-174022_NAME              = 'RM_NAVCAM_R'
      FRAME_-174022_CLASS             =  4
      FRAME_-174022_CLASS_ID          = -174022
      FRAME_-174022_CENTER            = -174
      TKFRAME_-174022_RELATIVE        = 'RM_NAVCAM_BASE'
      TKFRAME_-174022_SPEC            = 'ANGLES'
      TKFRAME_-174022_UNITS           = 'DEGREES'
      TKFRAME_-174022_AXES            = (      1,      2,     3 )
      TKFRAME_-174022_ANGLES          = (    0.0,  -90.0,   0.0 )

   \begintext


LocCam Frames
------------------------------------------------------------------------

   This section of the file contains the definitions of the Localisation
   Cameras (LocCam) instrument frames.

   The Localisation Cameras reference frame -- RM_LOCCAM_BASE --, where the
   terrain stereo reconstruction (for Localisation) occurs, is attached to
   the cameras stereo bench and is defined as follows:

      - +X axis is the the projection of the cameras optical axis on the plane
        perpendicular to the +Y axis;

      - +Y axis is in the direction from the right camera optical centre to the
        left camera optical centre;

      - +Z axis completes the right-handed frame;

      - the origin, is located at the middle of the segment linking the optical
      centres of the left and right localisation cameras.


   The following diagram describes the LocCam frames:

   -Y Rover side view:
   -------------------

                          .-.
                          | |
                          | |
                          |_|
                          |_|
                           |
                           |
                           |
                           |
                +Zloc      |
                   ^       |
                    .      |
                     .     |
                      .    |        +Zrm
                       .  _|_         ^
                        .|   |        |
                   ---- .o +Yloc --------|-------------------------------------
                      .' ,------------|------------.
                    .'   |            |             |
                  .'  ___|            |             |
                <'   /   | +Xrm       |             |
             +Xloc   \___|__<---------o ____________.         +Yrm and +Yloc
                          | |        +Yrm          | |         are out of the
                  __------/ \-----__               / \.__      page.
                 |  |-----\_/----|  |              \__.  |
                .|  |.          .|  |.               .|  |.
               / |__| \        / |__| \             / |__| \
               \      /        \      /             \      /
                `-..-'          `-..-'               `-..-'


   The origin is nominally a fixed translation from the Rover Module frame
   -- RM_ROVER --, and the axes are rotated 18 degrees around the +Y axis of
   the RM_ROVER frame [8]. These sets of keywords define the LocCam frames:


   \begindata

      FRAME_RM_LOCCAM_BASE            = -174030
      FRAME_-174030_NAME              = 'RM_LOCCAM_BASE'
      FRAME_-174030_CLASS             =  4
      FRAME_-174030_CLASS_ID          = -174030
      FRAME_-174030_CENTER            = -174
      TKFRAME_-174030_RELATIVE        = 'RM_ROVER'
      TKFRAME_-174030_SPEC            = 'ANGLES'
      TKFRAME_-174030_UNITS           = 'DEGREES'
      TKFRAME_-174030_AXES            = (     3,      1,     2 )
      TKFRAME_-174030_ANGLES          = (   0.0,    0.0, -18.0 )

      FRAME_RM_NAVCAM_L               = -174021
      FRAME_-174021_NAME              = 'RM_NAVCAM_L'
      FRAME_-174021_CLASS             =  4
      FRAME_-174021_CLASS_ID          = -174021
      FRAME_-174021_CENTER            = -174
      TKFRAME_-174021_RELATIVE        = 'RM_NAVCAM_BASE'
      TKFRAME_-174021_SPEC            = 'ANGLES'
      TKFRAME_-174021_UNITS           = 'DEGREES'
      TKFRAME_-174021_AXES            = (      1,      2,     3 )
      TKFRAME_-174021_ANGLES          = (    0.0,  -90.0,   0.0 )

      FRAME_RM_NAVCAM_R               = -174022
      FRAME_-174022_NAME              = 'RM_NAVCAM_R'
      FRAME_-174022_CLASS             =  4
      FRAME_-174022_CLASS_ID          = -174022
      FRAME_-174022_CENTER            = -174
      TKFRAME_-174022_RELATIVE        = 'RM_NAVCAM_BASE'
      TKFRAME_-174022_SPEC            = 'ANGLES'
      TKFRAME_-174022_UNITS           = 'DEGREES'
      TKFRAME_-174022_AXES            = (      1,      2,     3 )
      TKFRAME_-174022_ANGLES          = (    0.0,  -90.0,   0.0 )

   \begintext


RM Drill Frames
----------------------------------------------------------------------------

   The Drill is in charge of extracting the samples from the Mars subsurface
   and delivering them to the Core Sample Transport Mechanism (CSTM), such
   that they are transported inside the Analytical Laboratory Drawer (ALD),
   where they are processed and analysed by the scientific instruments.
   The drill implements a multi-rod concept to allow drilling and sample
   collection down to 2 meter depth.

   The drill string is composed, at its maximum length, of a drill tool
   (with sample collection capability) and three extension rods. Three
   ``main'' active joints are needed to accomplish the Drill operations:

       - Positioner Translation Joint, which allows all the translational
         movements of the Drill box.

       - Positioner Rotational Joint, which allows all the rotational
         movements of the Drill box.

       - Drilling Joint, which groups several mechanisms devoted to the drill
         rod insertion in the terrain (drilling/coring).


RM Drill Positioner frames:
~~~~~~~~~~~~~~~~~~~~~~~~~~~

   The Drill Postioner Fixed frame  -- RM_DRILL_POS_FIX -- is placed on the
   Rover to Drill Positioner interface and is invariant to the Drill
   Positioner Translational and Rotational mechanisms position. It is
   defined as follows:

      - +X axis is nominally co-aligned with the RM_ROVER +X axis frame;

      - +Y axis is nominally co-aligned with the RM_ROVER +Y axis frame;

      - +Z axis completes the right-handed frame;

      - the origin is defined as the intersection of the Drill Positioner
        Rotational Joint axis and the Drill Translational Joint axis,
        assuming the Drill Positioner in stowed configuration, this is
        incorporated by the RM_DRILL_POS_FIX body.


   The Drill Postioner Moving frame -- RM_DRILL_POS_MOV -- is placed on the
   Rover to Drill Positioner interface and moves according to the Drill
   Positioner Translational (TRA) and Rotational (ROT) mechanisms position.
   This frame is coincident with RM_DRILL_POS_FIX frame when the Drill is in
   stowed configuration (TRA=0 mm; ROT=0 deg), and follows the Drill Positioner
   Joints motion rototranslating according to Drill Positioner Translational
   (TRA) and Rotational (ROT) mechanisms positions. The frame can be defined
   as follows:

      - +Y axis is co-aligned with the longitudinal direction of the drill
        and points towards the apperture of the drill;

      - +Z axis is rotated a positive rotational (ROT) angle from the +Z axis
        of the RM_DRILL_POS_FIX frame around the +X axis of the
        RM_DRILL_POS_FIX frame;

      - +X axis completes the right-handed frame;

      - the origin is defined as the intersection of the Drill Positioner
        Rotational Joint axis and the Drill Translational Joint axis,
        with a longitudinal offset w.r.t. the origin of RM_DRILL_POS frame
        along the +Y axis defined by the Transitional position (TRA).


   +X Rover side view (drill in stowed position):
   ----------------------------------------------


                    o-o-=O===O--o
                       |o|___|
                          _\/
                         |_|_
                           |_|
                            |
                            |
                            |
                            |
                            |
                            |
                            |      +Zpdf
                            |        ^
                            |        |
                           _|_ +Zrm  |
                          |   | ^    |
      --------------------------|----|---------------------
             |   |          |   |  | | |        |  |
             '---|          |   |  | o-----------> +Ydpf
                 '--.-----------|----------|
                 .--|#DRILL#BOX#|##########|---.
            .-.  |============= o--------> ====|  .-.
           |___|=|            +Xrm |   |+Yrm   |=|___|
           |.-.                                   .-.|
           || |                                   | ||    +Xrm is out of the
           `| |                                   | |'    page
            '_'                                   '_'
          ~~~~~~~~                             ~~~~~~~~


   The following diagrams describe the different operational positions of the
   drill positioner frames for different Translational (TRA) and Rotational
   (ROT) mechanisms positions (Units in mm and degrees):

      1. STOWED POSITION                2. LIFTING PHASE
         [TRA=0, ROT=0]                    [TRA=130, ROT=0]

                                                       ^ +Zdpm
                   +Zdpf, +Zdpm                        |
                  | ^ |                              | | |
                  | | |                          +Zdpf ^ |     Ydpm
                  | | |                  .-------------o------->
                  | | |  +Ydpf,+Ydpm     |_____________|_____| +Ydpf
      .-------------o------->                        | o------->
      |___________________|                          |   |
                  |   |                              |   |


      3. VERTICAL ALIGNMENT             4. LOWERING PHASE (drilling position)
         [TRA=130, ROT=90]                 [TRA=-240, ROT=90]
               __
              |  |
              |  |
              |  |
              |  |
              |  | +Zdpf   +Zdpm                 __
              |  || o------->                   |  ||  +Zdpf
              |  || ^ |                         |  || ^ |
              |__|| | |                         |  || | |
                  | | | +Ydpf                   |  || | | +Ydpf
                  | o------->                   |  || o------->
                  | | |                         |  ||   |
                  | v |                         |  ||   |
                   +Ydpm                        |  |  o-------> +Zdpm
                                                |__|  |
                                                      |
                                                      v +Ydpm


      3. LIFTING PHASE (after sample)    4. HORIZONTAL ALIGNMENT (before sample
         collection) [TRA=130, ROT=90]      discharge) [TRA=130, ROT=180]
               __
              |  |
              |  |
              |  |
              |  |
              |  | +Zdpf   +Zdpm           .--------------------->
              |  || o------->              |_____________^_____|
              |  || ^ |                          <-------o +Zdpf
              |__|| | |                       +Ydpm    | | |
                  | | | +Ydpf                          | | | +Ydpf
                  | o------->                          | o------->
                  | | |                                | | |
                  | v |                                | v |
                   +Ydpm                              +Zpm


      5. SAMPLE DISCHARGE PHASE (from drill tip to CSTM container)
         [TRA=130, ROT=150]

                       .'\
                     .'  .'
                   .'  .'
                 .'  .'
               .'  .'
             .'  .'o +Zdpf
              \.'.'|\|
               .'| | \ +Ydpf
             .'  | o--\---->
           <'    |   | v
         +Ypdm   |   | +Zpdm


   +X Rover side view (drill in discharge phase):
   ----------------------------------------------


                    o-o-=O===O--o
                       |o|___|
                          _\/
                         |_|_
                           |_|
                            |
                            |
                            |
                            |
                            |
                            |                 .
                            |             . '  \
                            |         . '       \
                           _|_    . ' ^+dZpf. '
                          |   . '     | . '
      --------------------. '       . | |-------------------
             |   |    . '       . ' | | |     |  |
             '---|    \     . ' ^   | o------> +Ydpf
                 '--.  \. '     |+Zrm   | |
                 .--'           |   |   | ''---.
            .-.  |============= o-----> =======|  .-.
           |___|=|            +Xrm  |  +Yrm    |=|___|
           |.-.                                   .-.|
           || |                                   | ||    +Yrm and +Ydpf is
           `| |                                   | |'    out of the page
            '_'                                   '_'
          ~~~~~~~~                             ~~~~~~~~


   These sets of keywords define the Drill Positioner frames:

   \begindata

      FRAME_RM_DRILL_POS_FIX          = -174040
      FRAME_-174040_NAME              = 'RM_DRILL_POS_FIX'
      FRAME_-174040_CLASS             =  4
      FRAME_-174040_CLASS_ID          = -174040
      FRAME_-174040_CENTER            = -174
      TKFRAME_-174040_RELATIVE        = 'RM_ROVER'
      TKFRAME_-174040_SPEC            = 'ANGLES'
      TKFRAME_-174040_UNITS           = 'DEGREES'
      TKFRAME_-174040_AXES            = (      1,      2,     3 )
      TKFRAME_-174040_ANGLES          = (    0.0,    0.0,   0.0 )

      FRAME_RM_DRILL_POS_MOV          = -174041
      FRAME_-174041_NAME              = 'RM_DRILL_POS_MOV'
      FRAME_-174041_CLASS             =  3
      FRAME_-174041_CLASS_ID          = -174041
      FRAME_-174041_CENTER            = -174
      CK_-174041_SCLK                 = -174
      CK_-174041_SPK                  = -174

   \begintext


Drill Tip frames:
~~~~~~~~~~~~~~~~~

   The Drill Tip Fixed frame -- RM_ROVER_DRILL_TIP_FIX -- is placed on the
   Rover Drill Tip (when fully retracted) and is invariant to the Drill Rod
   position. It is defined as follows:

      - +X axis is nominally parallel to the +X axis of the
        RM_DRILL_POS_FIX frame;

      - +Y axis, is nominally parallel to the +Y axis of the
        RM_DRILL_POS_MOV frame;

      - +Z axis completes the right-handed frame;

      - the origin is defined as the tip of the Drill Rod assuming that the
        Drill Rod is fully retracted.


   The following diagrams show the RM_ROVER_DRILL_TIP_FIX in some of the drill
   positions:


           SAMPLE DISCHARGE PHASE              LOWERING PHASE
            [TRA=130, ROT=150]               [TRA=-240, ROT=90]
                                                   __
                               .'\                |  ||  +Zdpf
                             .'  .'               |  || ^ |
                           .'  .'                 |  || | |
                         .'  .'                   |  || | | +Ydpf
                       .'  .'                     |  || o------->
                     .'  .'o +Zdpf                |  ||   |
                      o.'.'|\|                    |  ||   |
                    .' .'. | \ +Ydpf              |  |  o-------> +Zdpm
            +Ydtf <' .'   'o--\---->              |o---------> +Zdtf
                   <'    | '.| v +Zpdm             |    |
                 +Ypdm   |   '> +Zdtf              |    v +Ydpm
                                                   |
                                                   v +Ydtf


   The Drill Tip Moving frame -- RM_ROVER_DRILL_TIP_MOV -- is attached to the
   Rover Drill Tip and moves according to the Drill Translational Joint
   (DRILL). Its orientation is the same as RM_ROVER_DRILL_TIP_FIX frame and
   its origin is coincident with the RM_ROVER_DRILL_TIP_FIX frame when the
   Drill Rod is fully retracted (DRILL = 0mm). When the Drill Translational
   Joint mechanism moves, the RM_ROVER_DRILL_TIP_MOV frame rigidly translates
   with respect to the +X axis of the RM_ROVER_DRILL_TIP_FIX frame a DRILL
   distance in mm. Note that the Drill Translational Joint is composed by a
   group several mechanisms devoted to the drill rod insertion in the terrain
   (drilling/coring). The following diagram describes the Drill tip frames:


   +X Rover side view (drilling position):
   ---------------------------------------

                                     [TRA=-240, ROT=90, DRILL=150]
                    o-o-=O===O--o
                       |o|___|
                          _\/
                         |_|_
                           |_|
                            |
                            |
                            |
                            |
                            |
                            |
                            |
                            |
                           _|_        ^+dZpf
                          |   |       |
      -------------------------.----.-|----------------------
             |   |             |    | | |     |  |
             '---|             |^   | o------> +Ydpf
                 '--.          ||+Zrm   | |
                 .--'          ||   |   | ''---.
            .-.  |============= o-----> =======|  .-.
           |___|=|             |    |  +Yrm    |=|___|
           |.-.                |    |              .-.|
           || |                |    |             | ||    +Yrm, +Ydpf +Ydtm
           `| |                |    |             | |'    are out of the page
            '_'                |    |             '_'
        ~~~~~~~~~~~~~~~~~~~~~~~'----'~~~~~~~~~~~~~~~~~~~~   __
                                 ||                         ^
                                 ||                         |
                                 ..                         | DRILL
                                 ..                         | ~1.5m
                                                            |
                                 ..                         |
                                 ..                         |
                                 ||                         v
                                 \/  Dril                   --
                                  o-------> +Zdtm
                                  |
                                  |
                                  |
                                  v +Ydtm


   These sets of keywords define the Drill tip frames:

   \begindata

      FRAME_RM_DRILL_TIP_FIX          = -174042
      FRAME_-174042_NAME              = 'RM_DRILL_TIP_FIX'
      FRAME_-174042_CLASS             =  4
      FRAME_-174042_CLASS_ID          = -174042
      FRAME_-174042_CENTER            = -174
      TKFRAME_-174042_RELATIVE        = 'RM_DRILL_POS_MOV'
      TKFRAME_-174042_SPEC            = 'ANGLES'
      TKFRAME_-174042_UNITS           = 'DEGREES'
      TKFRAME_-174042_AXES            = (      1,      2,     3 )
      TKFRAME_-174042_ANGLES          = (    0.0,    0.0,   0.0 )

      FRAME_RM_DRILL_TIP_MOV          = -174043
      FRAME_-174043_NAME              = 'RM_DRILL_TIP_MOV'
      FRAME_-174043_CLASS             =  4
      FRAME_-174043_CLASS_ID          = -174043
      FRAME_-174043_CENTER            = -174
      TKFRAME_-174043_RELATIVE        = 'RM_DRILL_TIP_FIX'
      TKFRAME_-174043_SPEC            = 'ANGLES'
      TKFRAME_-174043_UNITS           = 'DEGREES'
      TKFRAME_-174043_AXES            = (      1,      2,     3 )
      TKFRAME_-174043_ANGLES          = (    0.0,    0.0,   0.0 )

   \begintext


ALD Frames
------------------------------------------------------------------------

   The Rover will collect samples with the drill and deliver them to the
   Analytical Laboratory Drawer (ALD) in the body of the rover, via the
   sample delivery window. Within the ALD the samples will be analysed
   with an infrared spectrometer (MicrOmega), a raman spectrometer (RLS),
   and the Mars organics molecule analyser (MOMA) instrument.

   The samples will be collected by a drill and delivered to the Core Sample
   Handling System (CSHS) component of the SPDS, which is made up of the Core
   Sample Transportation Mechanism (CSTM) and the Blank Sample Dispenser (BSD).
   The CSTM will carry the samples into the ALD, where they will be released
   through a trapdoor into the Crushing Station (CS) and be reduced to powder.
   The BSD will deliver 'blank' samples brought from Earth for verification
   purposes. The powdered samples then pass from the CS to

   The Powder Sample Dosing and Distribution System (PSDDS) delivers a measured
   quantity of powder into the Refillable Container (RC) that is mounted on the
   Powdered Sample Handling System (PSHS). The PSHS is a carousel that moves
   the samples to various stations for processing and analysis. One station is
   equipped with a fixed 'scraper', the Powder Sample Flattening Mechanism
   (PSFM), which levels the surface of the powdered sample in the RC. Another
   station houses the Refillable Container Cleaning Mechanism (RCCM), while
   further stations will have instruments to examine the surface of the samples
   and pyrolysis ovens to feed the MOMA GC-MS.


ALD CSTM Frames
~~~~~~~~~~~~~~~

   The CSTM is placed diagonally on top of the upper ALD plate to reach the
   sample handover point of the drill by opening the ALD door. It then retracts
   after having received the sample from the drill in its sample container.

   The ALD Core Sample Transportation Mechanism (CSTM) Fixed frame
   -- RM_ALD_CSTM_FXD -- is attached to the CSTM and invariant to the CSTM
   mechanism position. It is defined as follows:

      - +Z axis is nominally parallel to the +Z axis of the RM_ROVER frame;

      - +X axis is the motion direction of the CSTM mechanism
        (from close to open);

      - +Y axis completes the right-handed frame;

      - the origin is located in the geometrical centre of the CSTM sample
        receptacle, assuming the CSTM mechanism fully retracted. It is a
        fixed translation from the RM_ROVER.

   The ALD CSTM Fixed frame axes are rotated around the +Z axis of the
   ROVER_RM frame a nominal angle of -26.5 degrees [10].

   The ALD CTSM Moving frame -- RM_ALD_CSTM_MOV -- is is attached to the Core
   Sample Transport Mechanism and moves according to CSTM mechanism position.
   Its orientation is the same as ACF frame and its origin is coincident with
   ACF frame when the CSTM mechanism is fully retracted (0mm). When the CSTM
   mechanisms moves (up to 300mm), the ACM frame rigidly translates with
   respect to the RM_ALD_CSTM_FXD frame along the +X axis RM_ALD_CSTM_FXD.

   This diagram illustrate the RM_ALD_CSTM_FXD frame:

   +Z Rover side view:
   -------------------

                       .-------------------------..-------------------------.
                 .-----|                         ||                         |
                 | .--.|                         ||                         |
                 | |  ||                         ||                         |
                 `-|  |'-------------------------''-------------------------'
                  .------------------.
         +Xcstm   |                  '----------.
              <.  '----.                         |
                 ' .|  |+Zcstm                   |
                     ' o    .-.                 .'
                    | .|    | +Xrm      +Zrm    |
                     ' |    | |<---------o      |
                    '  |    | |          |      |
          +Ycstm  <'|  |    '-'          |       '.
                    '--|                 |        |   +Zrm and +Zcstm are
                       '-----.         .-|--------'    out of the page.
                             '---------' v
                       .--------------- +Yrm ----..-------------------------.
                       |                         ||                         |
                       |                         ||                         |
                       |                         ||                         |
                       '-------------------------''-------------------------'


   These sets of keywords define the ALD CSTM frames:

   \begindata

      FRAME_RM_ALD_CSTM_FXD           = -174052
      FRAME_-174052_NAME              = 'RM_ALD_CSTM_FXD'
      FRAME_-174052_CLASS             =  4
      FRAME_-174052_CLASS_ID          = -174052
      FRAME_-174052_CENTER            = -174
      TKFRAME_-174052_RELATIVE        = 'RM_ROVER'
      TKFRAME_-174052_SPEC            = 'ANGLES'
      TKFRAME_-174052_UNITS           = 'DEGREES'
      TKFRAME_-174052_AXES            = (      1,      2,     3 )
      TKFRAME_-174052_ANGLES          = (    0.0,    0.0,  26.5 )

      FRAME_RM_ALD_CSTM_MOV           = -174053
      FRAME_-174053_NAME              = 'RM_ALD_CSTM_MOV'
      FRAME_-174053_CLASS             =  4
      FRAME_-174053_CLASS_ID          = -174053
      FRAME_-174053_CENTER            = -174
      TKFRAME_-174053_RELATIVE        = 'RM_ALD_CSTM_FXD'
      TKFRAME_-174053_SPEC            = 'ANGLES'
      TKFRAME_-174053_UNITS           = 'DEGREES'
      TKFRAME_-174053_AXES            = (      1,      2,     3 )
      TKFRAME_-174053_ANGLES          = (    0.0,    0.0,   0.0 )

   \begintext


ALD PSDDS and PSHS Frames
~~~~~~~~~~~~~~~~~~~~~~~~~

   The PSDDS collects the crushed samples in its sample containers and
   distributes the sample powder to the receptacles placed on the PSHS.

   The PSHS with its carousel transports the powdered sample received by the
   PSDDS by rotation to the ports of the optical instruments of the ALD namely
   MicrOmega, RLS and MOMA LD-MS.

   The Powder Sample Dosing and Distribution System (PSDDS) and the Powdered
   Sample Handling System (PSHS, the carousel) frames are defined solely to
   provide the rotation angle of their mechanisms. For PSDDS the angle ranges
   from 0 to 340.06 degrees and provides the position of the POSITIONER whereas
   for PSHS the angles ranges from 0 to 345 degrees and provides the position
   of the CAROUSEL. For both zero position is equivalent to 0 degrees.
   Because of this for both structures a FIXED and a MOVING frame are defined;
   the MOVING frame incorporates the rotation being defined as a CK-based
   frame.

   The ALD PSDDS Fixed frame -- RM_ALD_PSDDSM_FXD -- is attached to the Powder
   Sample Dosing and Distribution System, is invariant to the PSDDS
   mechanism position and is parallel to the RM_ROVER frame.
   It is defined as follows:

      - +X axis is nominally co-aligned with the RM_ROVER +X axis frame;

      - +Y axis is nominally co-aligned with the RM_ROVER +Y axis frame;

      - +Z axis completes the right-handed frame;

      - The origin is located in the geometrical centre of the PSDDS,
        defined as the intersection of the PSDDS mechanism rotation axis and
        the PSDDS upper panel (perpendicular to the RM_ROVER +Z axis).


   The ALD PSDDS Moving frame -- RM_ALD_PSDDSM_MOV -- is attached to the
   Powder Sample Dosing and Distribution System and moves according to the
   PSDDS mechanism rotation. Its origin is coincident with the
   RM_ALD_PSDDSM_FXD frame, and its orientation is the same when the
   PSDDS mechanism is in zero position (PSDDS = 0deg). When the PSDDS
   mechanisms moves, the frame rotates around the +Z axis of the
   RM_ALD_PSDDSM_MOV fame.

   The ALD PSHS Fixed frame -- RM_ALD_PSHS_FXD -- is attached to the Powder
   Sample Handiling System and is invariant to the PSHS mechanism position.
   It is defined as follows:

      - +X axis is nominally co-aligned with the RM_ROVER +X axis frame;

      - +Y axis is nominally co-aligned with the RM_ROVER +Y axis frame;

      - +Z axis completes the right-handed frame;

      - The origin is located in the geometrical centre of the PSHS, defined
        as the intersection of the PSHS mechanism rotation axis and the PSHS
        upper panel (perpendicular to the RM_ROVER +Z axis).


   The ALD PSHS Moving frame -- RM_ALD_PSHS_MOV -- is attached to the
   Powder Sample Dosing and Distribution System and moves according to the
   PSHS mechanism rotation. Its origin is coincident with the
   RM_ALD_PSHS_FXD frame, and its orientation is the same when the
   PSDDS mechanism is in zero position (PSHS = 0deg). When the PSHS
   mechanisms moves, the frame rotates around the +Z axis of the
   RM_ALD_PSHS_MOV fame.

   These sets of keywords define the ALD PSDDSM and PSHS frames:

   \begindata

      FRAME_RM_ALD_PSDDSM_FXD         = -174055
      FRAME_-174055_NAME              = 'RM_ALD_PSDDSM_FXD'
      FRAME_-174055_CLASS             =  4
      FRAME_-174055_CLASS_ID          = -174055
      FRAME_-174055_CENTER            = -174
      TKFRAME_-174055_RELATIVE        = 'RM_ROVER'
      TKFRAME_-174055_SPEC            = 'ANGLES'
      TKFRAME_-174055_UNITS           = 'DEGREES'
      TKFRAME_-174055_AXES            = (      1,      2,     3 )
      TKFRAME_-174055_ANGLES          = (    0.0,    0.0,   0.0 )

      FRAME_RM_ALD_PSDDSM_MOV         = -174056
      FRAME_-174056_NAME              = 'RM_ALD_PSDDSM_MOV'
      FRAME_-174056_CLASS             =  3
      FRAME_-174056_CLASS_ID          = -174056
      FRAME_-174056_CENTER            = -174
      CK_-174056_SCLK                 = -174
      CK_-174056_SPK                  = -174

      FRAME_RM_ALD_PSHS_FXD           = -174058
      FRAME_-174058_NAME              = 'RM_ALD_PSHS_FXD'
      FRAME_-174058_CLASS             =  4
      FRAME_-174058_CLASS_ID          = -174058
      FRAME_-174058_CENTER            = -174
      TKFRAME_-174058_RELATIVE        = 'RM_ROVER'
      TKFRAME_-174058_SPEC            = 'ANGLES'
      TKFRAME_-174058_UNITS           = 'DEGREES'
      TKFRAME_-174058_AXES            = (      1,      2,     3 )
      TKFRAME_-174058_ANGLES          = (    0.0,    0.0,   0.0 )

      FRAME_RM_ALD_PSHS_MOV           = -174059
      FRAME_-174059_NAME              = 'RM_ALD_PSHS_MOV'
      FRAME_-174059_CLASS             =  3
      FRAME_-174059_CLASS_ID          = -174059
      FRAME_-174059_CENTER            = -174
      CK_-174059_SCLK                 = -174
      CK_-174059_SPK                  = -174

   \begintext


Solar Arrays Frames
----------------------------------------------------------------------------


Zero angle when the primary panels are in the nominal fully deployed position with normal to the PVA face parallel to +ZRB.
Positive rotations deploy the primary panels from their stowed positions: right side hinges rotate clockwise about +XRB and left side hinges rotate anticlockwise about +XRB using right-hand grip rule.
Secondary Hinge deployment axis rotation convention is:
Zero angle when the secondary panels are in the nominal fully-deployed position with normal to the PVA face parallel to +ZRB.
Positive rotations deploy the secondary panels from their stowed positions below the primary panels: when the primary panels are deployed to -90deg the right side secondary hinges rotate anticlockwise about +ZRB and left side secondary hinges rotate clockwise about +ZRB using right-hand grip rule.

   The Drill is in charge of extracting the samples from the Mars subsurface
   and delivering them to the Core Sample Transport Mechanism (CSTM), such
   that they are transported inside the Analytical Laboratory Drawer (ALD),
   where they are processed and analysed by the scientific instruments.
   The drill implements a multi-rod concept to allow drilling and sample
   collection down to 2 meter depth.

   The drill string is composed, at its maximum length, of a drill tool
   (with sample collection capability) and three extension rods. Three
   ``main'' active joints are needed to accomplish the Drill operations:

       - Positioner Translation Joint, which allows all the translational
         movements of the Drill box.

       - Positioner Rotational Joint, which allows all the rotational
         movements of the Drill box.

       - Drilling Joint, which groups several mechanisms devoted to the drill
         rod insertion in the terrain (drilling/coring).


RM Drill Positioner frames:
~~~~~~~~~~~~~~~~~~~~~~~~~~~




PanCam Frames
------------------------------------------------------------------------

   This section of the file contains the definitions of the Panoramic
   Camera (PanCam) instrument frames.


PanCam Frame Tree
~~~~~~~~~~~~~~~~~

   The diagram below shows the PanCam frame hierarchy.

                                   "RM_PB"
                                   -------
                                      |
                                      |<-fixed
                                      |
                                      V
                               "RM_PANCAM_BASE"
                   +----------------------------------------+
                   |                    |                   |
            fixed->|             fixed->|            fixed->|
                   |                    |                   |
                   v                    v                   v
              "RM_PANCAM_HRC"   "RM_PANCAM_WAC_L"   "RM_PANCAM_WAC_R"
              ---------------   -----------------   -----------------


PanCam Frame definitions
~~~~~~~~~~~~~~~~~~~~~~~~

   The Panoramic Cameras reference frame (PANCAM) is attached to the PanCam
   stereo bench that is rigidly mounted on the Payload Bench on top of the
   Rover Mast. Therefore, the base frame associated with it -- the
   RM PANCAM Base rame, RM_PANCAM_BASE --  is specified as a fixed offset frame
   with its orientation given relative to the RM_ROVER frame as follows:

      -  +X axis is defined as the projection of the cameras optical axis on
         the plane perpendicular to the +Y axis;

      -  +Y axis is in the direction from the right WAC camera optical centre
         to the left WAC camera optical centre;

      -  +Z axis completes the right-handed frame;

      -  The origin is located at the middle of the segment linking the optical
         centres of the left and right WAC cameras.


   These diagrams illustrate the nominal RM_PANCAM_BASE, RM_PANCAM_WAC_L,
   RM_PANCAM_WAC_R and RM_PANCAM_HRC frame with respect to the rover frame.


   +X Rover side view:
   -------------------

                       +Zpancam
                         ^
                         |
                         |
                         |
                         |
                   o-o-=Oo--------> +Ypancam
                  +Xpancam _|
                         _\/
                        |_|_
                          |_|
                            |
                            |
                            |
                            |
                            |
                            |
                            |
                            |
                            |
                           _|_ +Zrm
                          |   | ^
      --------------------------|--------------------------
             |   |          |   |   |   |     |  |
             '---|          |   |   | 0 |  .--'--'
                 '--.-----------|----------|
                 .--|           |          |---.
            .-.  |============= o--------> ====|  .-.
           |___|=|            +Xrm  |   +Yrm   |=|___|
           |.-.                                   .-.|
           || |                                   | ||    +Yrm is out of the
           `| |                                   | |'    page
            '_'                                   '_'
          ~~~~~~~~                             ~~~~~~~~


   +X Rover Mast view:
   -------------------

     +Xpwacl       +Xphrc                                        +Xpwacr
        ^             ^                                            ^
        |             |                                            |
        |   PanCamHRC |    ______________________                  |
     .--|-------------|---|                      |-----------------|--.
     | /o------->   / o--------> +Yphrc      /^\ |                /o------->
     | \_/ WAC-L    \__/  | \_/              \_/ |   PanCam WAC-R \_/ | +Ypwacr
     '____________________|    NavCaM            |____________________'
                   .-----.'----------------------'
                   | /^\ |====|----== +Zpancam
                   | \_/ |====|   /    ^ \   |        +Zpwacl, +Zphrc, +Zpwacr
                   '-----'    |  /     |  \  |         and +Xpancam are out of
                ISEM          . .      |   . .         the page.
                              .        |
                                       o--------> +Ypancam
                                      +Xpancam


   Since the SPICE frames subsystem calls for specifying the reverse
   transformation--going from the instrument or structure frame to the
   base frame--as compared to the description given above, the order of
   rotations assigned to the TKFRAME_*_AXES keyword is also reversed
   compared to the above text, and the signs associated with the
   rotation angles assigned to the TKFRAME_*_ANGLES keyword are the
   opposite from what is written in the above text.

   \begindata

      FRAME_RM_PANCAM_BASE             =  -174100
      FRAME_-174100_NAME               = 'RM_PANCAM_BASE'
      FRAME_-174100_CLASS              =   4
      FRAME_-174100_CLASS_ID           =  -174100
      FRAME_-174100_CENTER             =  -174
      TKFRAME_-174100_RELATIVE         = 'RM_PB'
      TKFRAME_-174100_SPEC             = 'ANGLES'
      TKFRAME_-174100_UNITS            = 'DEGREES'
      TKFRAME_-174100_AXES             = ( 3,     2,      1   )
      TKFRAME_-174100_ANGLES           = ( 0.0,   0.0,    0.0 )

      FRAME_RM_PANCAM_WAC_L            =  -174110
      FRAME_-174110_NAME               = 'RM_PANCAM_WAC_L'
      FRAME_-174110_CLASS              =   4
      FRAME_-174110_CLASS_ID           =  -174110
      FRAME_-174110_CENTER             =  -174
      TKFRAME_-174110_RELATIVE         = 'RM_PANCAM_BASE'
      TKFRAME_-174110_SPEC             = 'ANGLES'
      TKFRAME_-174110_UNITS            = 'DEGREES'
      TKFRAME_-174110_AXES             = ( 3,     2,      1   )
      TKFRAME_-174110_ANGLES           = ( 0.0, -90.0,    0.0 )

      FRAME_RM_PANCAM_WAC_R            =  -174120
      FRAME_-174120_NAME               = 'RM_PANCAM_WAC_R'
      FRAME_-174120_CLASS              =   4
      FRAME_-174120_CLASS_ID           =  -174120
      FRAME_-174120_CENTER             =  -174
      TKFRAME_-174120_RELATIVE         = 'RM_PANCAM_BASE'
      TKFRAME_-174120_SPEC             = 'ANGLES'
      TKFRAME_-174120_UNITS            = 'DEGREES'
      TKFRAME_-174120_AXES             = ( 3,     2,      1   )
      TKFRAME_-174120_ANGLES           = ( 0.0, -90.0,    0.0 )

      FRAME_RM_PANCAM_HRC              =  -174130
      FRAME_-174130_NAME               = 'RM_PANCAM_HRC'
      FRAME_-174130_CLASS              =   4
      FRAME_-174130_CLASS_ID           =  -174130
      FRAME_-174130_CENTER             =  -174
      TKFRAME_-174130_RELATIVE         = 'RM_PANCAM_BASE'
      TKFRAME_-174130_SPEC             = 'ANGLES'
      TKFRAME_-174130_UNITS            = 'DEGREES'
      TKFRAME_-174130_AXES             = ( 3,     2,      1   )
      TKFRAME_-174130_ANGLES           = ( 0.0, -90.0,    0.0 )

   \begintext


ISEM Frames
------------------------------------------------------------------------

   This section of the file contains the definitions of the Infrared
   Spectrometer for ExoMars (ISEM).


ISEM Frame Tree
~~~~~~~~~~~~~~~~~

   The diagram below shows the ISEM frame hierarchy.

                                "RM_PB"
                                -------
                                   |
                                   |<-fixed
                                   |
                                   V
                                "RM_ISEM"
                                ---------


ISEM Frame Definition
~~~~~~~~~~~~~~~~~~~~~

   The ISEM reference frame -- RM_ISEM -- is attached to the ISEM instrument
   and is nominally parallel Payload Bench -- RM_PB -- and is defined as
   follows:

      - +X axis is parallel to the +X axis of the RM_PB frame;

      - +Y axis is parallel to the +Y axis of the RM_PB frame;

      - +Z axis completes the right-handed frame;

      - the origin is located on the instrument optical axis, exactly at the
        end of the ISEM Optical Box.


   The following diagram describes the RM_ISEM reference frame:

   +X Rover side view:
   -------------------

                     +Zisem
                        ^
                        |
                        |
                        |
                    o-o-|O===O--o
                       |o---------> +Yisem
                          _\/
                         |_|_
                           |_|
                            |
                            |
                            |
                            |
                            |
                            |
                            |
                            |
                            |
                           _|_ +Zrm
                          |   | ^
      --------------------------|--------------------------
             |   |          |   |   |   |     |  |
             '---|          |   |   | 0 |  .--'--'
                 '--.-----------|----------|
                 .--|           |          |---.
            .-.  |============= o--------> ====|  .-.
           |___|=|            +Xrm  |   +Yrm   |=|___|
           |.-.                                   .-.|
           || |                                   | ||    +Xrm and +Xisem are
           `| |                                   | |'    out of the page.
            '_'                                   '_'
          ~~~~~~~~                             ~~~~~~~~


   +X Rover Mast view:
   -------------------

                    +Zisem   ______________________
       .--------------- ^ --|                      |--------------------.
       | /^\ PanCam    /| \ | /^\              /^\ |                /^\ |
       | \_/ WAC-L     \|_/ | \_/              \_/ |   PanCam WAC-R \_/ |
       '________________|___|    NavCaM            |____________________'
                     .--|--.'----------------------'
                     | /o--------->  == +Zpb
                     | \_/ |== +Yisem    ^ \   |          +Xpb and +Xisem are
                     '-----'    |  /     |  \  |           out of the page.
                  ISEM          . .      |   . .
                                .        |
                                         o--------> +Ypb
                                        +Xpb


   These sets of keywords define the ISEM frame:

   \begindata

      FRAME_RM_ISEM                   = -174200
      FRAME_-174200_NAME              = 'RM_ISEM'
      FRAME_-174200_CLASS             =  4
      FRAME_-174200_CLASS_ID          = -174200
      FRAME_-174200_CENTER            = -174
      TKFRAME_-174200_RELATIVE        = 'RM_PB'
      TKFRAME_-174200_SPEC            = 'ANGLES'
      TKFRAME_-174200_UNITS           = 'DEGREES'
      TKFRAME_-174200_AXES            = (      1,      2,     3 )
      TKFRAME_-174200_ANGLES          = (    0.0,    0.0,   0.0 )

   \begintext


ADRON-RM Frames
------------------------------------------------------------------------

   This section of the file contains the definitions of the Autonomous
   Detector of Radiation of Neutrons Onboard Rover (ADRON-RM) frames.


ADRON-RM Frame Tree
~~~~~~~~~~~~~~~~~~~

   The diagram below shows the ADRON-RM frame hierarchy.

                                "RM_ROVER"
                                ----------
                                    |
                                    |<-fixed
                                    |
                                    V
                               "RM_ADRON-RM"
                               -------------


ADRON Frame Definition
~~~~~~~~~~~~~~~~~~~~~~

   The ISEM reference frame -- RM_ADRON-RM -- is attached to the ADRON-RM
   instrument and is fixed with respect to the rover frame -- RM_ROVER --, and
   defined as follows:

      - +X axis is parallel to the +X axis of the RM_ROVER frame;

      - +Y axis is parallel to the +Y axis of the RM_ROVER frame;

      - +Z axis completes the right-handed frame;

      - the origin is located on the instrument center.


   The following diagram describes the RM_ADRON-RM reference frame:

   -Y Rover side view:
   -------------------

             - · - · -
                 |
                 |        +Zrm         +Zadr
                _|_         ^             ^
               |   |        |             |
         -------------------|-------------|-----------------------
               ,------------|------------.|
               |            |             |
            ___|            |             |
           /   | +Xrm       | +Xadr       |
           \___|__<---------o __<---------o         +Yrm and +Yadr are out
                | |        +Yrm          | |         of the page.
        __------/ \-----__               / \.__
       |  |-----\_/----|  |              \__.  |
      .|  |.          .|  |.               .|  |.
     / |__| \        / |__| \             / |__| \
     \      /        \      /             \      /
      `-..-'          `-..-'               `-..-'


   These sets of keywords define the ADRON-RM frame:

   \begindata

      FRAME_RM_ADRON-RM               = -174300
      FRAME_-174300_NAME              = 'RM_ADRON-RM'
      FRAME_-174300_CLASS             =  4
      FRAME_-174300_CLASS_ID          = -174300
      FRAME_-174300_CENTER            = -174
      TKFRAME_-174300_RELATIVE        = 'RM_ROVER'
      TKFRAME_-174300_SPEC            = 'ANGLES'
      TKFRAME_-174300_UNITS           = 'DEGREES'
      TKFRAME_-174300_AXES            = (      1,      2,     3 )
      TKFRAME_-174300_ANGLES          = (    0.0,    0.0,   0.0 )

   \begintext


WISDOM Frames
------------------------------------------------------------------------

   This section of the file contains the definitions of the Water Ice
   Subsurface Deposit Observation on Mars (WISDOM) ground-penetrating
   radar frames.


WISDOM Frame Tree
~~~~~~~~~~~~~~~~~

   The diagram below shows the WISDOM frame hierarchy.

                               "RM_ROVER"
                               ----------
                                   |
                                   |<-fixed
                                   |
                                   V
                             "RM_WIDSOM_BASE"
                       +-------------------------+
                       |                         |
                       |<-fixed           fixed->|
                       |                         |
                       v                         v
                "RM_WISDOM_ANT1"           "RM_WISDOM_ANT2"
                ---------------            ----------------


WISDOM Frame Definitions:
~~~~~~~~~~~~~~~~~~~~~~~~~

   The WISDOM base reference frame -- RM_WISDOM_BASE --, where the subsurface
   stratigrafy reconstruction occurs, is placed on the WISDOM instrument, is
   fixed with respect to the rover frame -- RM_ROVER --, and defined as follows:

      - +X axis is nominally parallel to the +X axis of the RM_ROVER frame;

      - +Y axis is nominally parallel to the +Y axis of the RM_ROVER frame;

      - +Z axis completes the right-handed frame;

      - The origin is located at the middle of the segment linking the two
        WISDOM hornet mounting positions.


   The WISDOM antennas ANT1 and ANT2 -- RM_WISDOM_ANT1, RM_WISDOM_ANT2 --
   are rotated 8 degrees with respect to the RM_WISDOM_BASE frame around
   the +Y axis and are defined as follows [10]:

      - +Z axis points towards the direction of the antenna boresight;

      - +X is rotated 135 degrees around the WISDOM base frame +Y axis
        towards the WISDOM base frame +Z axis;

      - +Y axis is parallel to the WISDOM base frame +Y axis and completes
        the right-handed frame;

      - The origin is located at focal point of the antennas.


   The following diagram describes the WISDOM reference frames:

   -Y Rover side view:
   -------------------

             - · - · -
                 |
                 |        +Zrm         +Zwis
                _|_         ^             ^
               |   |        |             |        +Xant1, +Xant2
         -------------------|-------------|-------  ^ --------------
               ,------------|------------.|       .'
               |            |             |     .'
            ___|            |             |   .'
           /   | +Xrm       | +Xwis       | .'
           \___|__<---------o __<---------o.         +Yrm, +Ywis, +Yant1 and
                | |        +Yrm          | |'.       +Yant2 are out of the
        __------/ \-----__               / \._'.      page.
       |  |-----\_/----|  |              \__.  |'.
      .|  |.          .|  |.               .|  |. v
     / |__| \        / |__| \             / |__| +Zant1, +Zant2
     \      /        \      /             \      /
      `-..-'          `-..-'               `-..-'


   These sets of keywords define the ADRON-RM frame:

   \begindata

      FRAME_RM_WISDOM_BASE            = -174400
      FRAME_-174400_NAME              = 'RM_WISDOM_BASE'
      FRAME_-174400_CLASS             =  4
      FRAME_-174400_CLASS_ID          = -174400
      FRAME_-174400_CENTER            = -174
      TKFRAME_-174400_RELATIVE        = 'RM_ROVER'
      TKFRAME_-174400_SPEC            = 'ANGLES'
      TKFRAME_-174400_UNITS           = 'DEGREES'
      TKFRAME_-174400_AXES            = (      1,      2,     3 )
      TKFRAME_-174400_ANGLES          = (    0.0,    0.0,   0.0 )

      FRAME_RM_WISDOM_ANT1            = -174410
      FRAME_-174410_NAME              = 'RM_WISDOM_ANT1'
      FRAME_-174410_CLASS             =  4
      FRAME_-174410_CLASS_ID          = -174410
      FRAME_-174410_CENTER            = -174
      TKFRAME_-174410_RELATIVE        = 'RM_WISDOM_BASE'
      TKFRAME_-174410_SPEC            = 'ANGLES'
      TKFRAME_-174410_UNITS           = 'DEGREES'
      TKFRAME_-174410_AXES            = (      1,      2,     3 )
      TKFRAME_-174410_ANGLES          = (    0.0,  172.0,   0.0 )

      FRAME_RM_WISDOM_ANT2            = -174420
      FRAME_-174420_NAME              = 'RM_WISDOM_ANT2'
      FRAME_-174420_CLASS             =  4
      FRAME_-174420_CLASS_ID          = -174420
      FRAME_-174420_CENTER            = -174
      TKFRAME_-174420_RELATIVE        = 'RM_WISDOM_BASE'
      TKFRAME_-174420_SPEC            = 'ANGLES'
      TKFRAME_-174420_UNITS           = 'DEGREES'
      TKFRAME_-174420_AXES            = (      1,      2,     3 )
      TKFRAME_-174420_ANGLES          = (    0.0,  172.0,   0.0 )

   \begintext


MaMiss Frames
------------------------------------------------------------------------

   This section of the file contains the definitions of the Mars
   Multispectral Imager for Subsurface Studies (MaMiss) frames.


MaMiss Frame Tree:
~~~~~~~~~~~~~~~~~~

   The diagram below shows the MaMiss frame hierarchy.

                               RM_ROVER
                               --------
                                   |
                                   |<-fixed
                                   |
                                   v
                          "RM_DRILL_POS_FIX"
                          +----------------+
                          .                |
                          .                |<-ck
                          .                |
                          .                v
                          .  "RM_DRILL_POS_MOV"
                          .  +----------------+
                          .  .                |
                          .  .         fixed->|
                          .  .                |
                          .  .                v
                          .  .  "RM_DRILL_TIP_FIX"
                          .  .  ------------------
                          .  .         |
                          .  .         |<-fixed
                          .  .         |
                          .  .         v
                          .  .  "RM_DRILL_TIP_MOV"
                          .  .  ------------------
                          .  .         |
                          .  .         |<-fixed
                          .  .         |
                          v  v         v
                                  "RM_MAMISS"
                                  -----------

MaMiss Frame Definitions:
~~~~~~~~~~~~~~~~~~~~~~~~~

   The MaMiss frame (MaMiss) is placed on the Rover Drill Rod with origin on
   the MaMiss sapphire window and is parallel to the Drill Tip moving frame.
   It is defined as follows:

      - +X axis is nominally parallel to the +X axis of the RM_DRILL_TIP_MV
        frame;

      - +Y axis is nominally parallel to the +Y axis of the RM_DRILL_TIP_MV
        frame;

      - +Z axis completes the right-handed frame;

      - The origin, is defined as the intersection between the Drill Rod
        extension direction and the MaMiss sapphire window.


   The following diagram describes the MaMiss reference frame:

   +X side of the extended Rod:
   ----------------------------

              ..
              ..
              ||                             +Xdtm and +Xmmis
              \/  Dril                        are out of the page
               o-------> +Zdtm, +Zmmiss
               |
               |
               |
               v +Ydtm, +Ymmiss


   These sets of keywords define the MaMiss frame:

   \begindata

      FRAME_RM_MAMISS                 = -174500
      FRAME_-174500_NAME              = 'RM_MAMISS'
      FRAME_-174500_CLASS             =  4
      FRAME_-174500_CLASS_ID          = -174500
      FRAME_-174500_CENTER            = -174
      TKFRAME_-174500_RELATIVE        = 'RM_DRILL_TIP_MV'
      TKFRAME_-174500_SPEC            = 'ANGLES'
      TKFRAME_-174500_UNITS           = 'DEGREES'
      TKFRAME_-174500_AXES            = (      1,      2,     3 )
      TKFRAME_-174500_ANGLES          = (    0.0,    0.0,   0.0 )

    \begintext


CLUPI Frames
------------------------------------------------------------------------

   This section of the file contains the definitions of the Close-Up Imager
   (CLUPI) frames.

   CLUPI will be accommodated on the drill box of the rover. By using the
   degrees of freedom provided by both the rover and the drill box, CLUPI
   will be angled and raised so that it can observe in a variety of viewing
   modes. The use of two fixed mirrors—one flat and one concave will provide
   three FOVs.


CLUPI Frame Tree:
~~~~~~~~~~~~~~~~~

   The diagram below shows the CLUPI frame hierarchy.

                                     RM_ROVER
                                     --------
                                         |
                                         |<-fixed
                                         |
                                         v
                                "RM_DRILL_POS_FIX"
               +---------------------------------+
               |                                 |
               |<-fixed                          |<-ck
               |                                 |
               V                                 v
        "RM_CLUPI_BRACKET"               "RM_DRILL_POS_MOV"
        ------------------         +--------------------------+
                                   |                          |
                            fixed->|                   fixed->|
                                   |                          |
                                   v                          v
                           "RM_CLUPI_BASE"            "RM_DRILL_TIP_FIX"
                           ---------------            ------------------
                                   |                          |
                                   |<-fixed                   |<-fixed
                                   |                          |
                                   v                          v
                          "RM_CLUPI_OPT_AXIS"          "RM_DRILL_TIP_MOV"
                          -------------------          ------------------
                                   |                          .
                                   |<-fixed                   .
                                   |                          .
                                   v                          v
                          "RM_CLUPI_DRILL_TIP"
                          --------------------


CLUPI Frame Definitions:
~~~~~~~~~~~~~~~~~~~~~~~~

   The CLUPI Base frame -- RM_CLUPI_BASE -- is placed on the CLUPI image
   sensor, which is fixed to the Drill Positioner. Hence its frame is
   rigidly following the RM_DRILL_POS_MOV frame and is defined as follows
   It is defined as follows:

      - +X axis is nominally parallel to the +X axis of the RM_DRILL_TIP_MOV
        frame;

      - +Y axis is nominally parallel to the +X axis of the RM_DRILL_POS_MOV
        frame;

      - +Z axis completes the right-handed frame;

      - the origin is located in the CLUPI image sensor optical centre.


   The CLUPI Optical Axis frame -- RM_CLUPI_OPT_AXIS -- is nominally
   parallel to the RM_CLUPI_BASE with a rotation such that the CLUPI boresight
   is along the +Z axis instead of the +Y axis. This frame is implemented to
   incorporate possible missalignments of the optical axis.
   The frame RM_CLUPI_OPT_AXIS is defined as follows:

      - +Z axis is the optical axis of CLUPI;

      - +X axis is nominally parallel to the +X axis of the RM_DRILL_TIP_MOV
        frame;

      - +Y axis completes the right-handed frame;

      - the origin is located in the CLUPI image sensor optical centre.


   The CLUPI Drill Tip mirror reference frame -- RM_CLUPI_DRILL_TIP --,
   provides the reflection direction of CLUPI's 2nd mirror. CLUPI's 2nd mirror
   (or drill mirror) is fixed on the drill box near the front end of the box
   and splits the FOV into two parts: (i) the main part, RM_CLUPI_FOV2, 2 is
   not deflected and looks in the direction of the optical axis of CLUPI and
   (ii) the smaller part of the sensor RM_CLUPI_FOV3, looks toward the drill
   tip. The RM_CLUPI_DRILL_TIP is defined as a fixed rotation of 54 degrees
   around the RM_CLUPI_OPT_AXIS frame.

      - +Y axis is nominally rotated a fixed angle of 54 degrees around the
        +X axis of the RM_CLUPI_OPT_AXIS frame;

      - +Z axis is the boresight of the mirrored portion of CLUPI's FOV
        (FOV3);

      - +X axis completes the right-handed frame;

      - the origin is located in the tip mirror reflecting point of CLUPI's
        FOV3 boresight.


   When the drill is in stowed position, the CLUPI FOV 1 is looking at the
   surface in front of the rover due to the first mirror (or bracket mirror),
   fixed on the rover bracket that holds the drill when in stowed position.
   The fixed orientation of CLUPI’s axis is toward the surface with an angle
   of 20 degrees with respect to the horizontal of the rover [].
   To implement FOV1 we define the Rover Bracket Mirror frame as follows:

      - +Z axis is the boresight of CLUPI's mirrored FOV (FOV1);

      - +Y axis is parallel to the sensor pixel samples;

      - +X axis completes the right-handed frame;

      - the origin is located in the bracket mirror reflecting point of
        CLUPI's FOV1 boresight.


   The following diagrams illustrate the CLUPI frames:

   +X Rover side view (drill in discharge phase):
   ----------------------------------------------

                    o-o-=O===O--o
                       |o|___|
                          _\/
                         |_|_
                           |_|
                            |
                            |
                            |
                            |
                            |
                            |                 .
                            |             . '  \
                            |         . '       \
                           _|_    . ' ^+dZpf. '
                          |   . '     | . '
      -----------------.o-. '       . | |-------------------
             |     . '. '\      . ' | | |     |  |
       +Zopt,  . '    \   \ . ' ^   | o------> +Ydpf
       +Ybas <   '--.  o. '\    |+Zrm   | |
                 .--. ' \   \    |   |   | ''--.
            .-  . '===== \== v = o-----> ======|  .-.
       +Ydtf <' =|        \  +Zbas,     +Yrm   |=|___|
           |.-.            v   +Yopt              .-.|
           || |         +Zdtf                     | ||    +Xrm, +Xdtf, +Xopt
           `| |                                   | |'     and +Xbas are out
            '_'                                   '_'       of the page
          ~~~~~~~~                             ~~~~~~~~


   +X Rover side view (drill in hor. align. before discharge):
   -----------------------------------------------------------

                        - · - · -
                            |
                           _|_ +Zrm
                         |   | ^
      - +Zopt <-------o--------|--------------------------
             |   |  .'|'. -----|---------.   |  |
             '--- .'| |  '.    |         |.--'--'
                .'--'-|----'.--|-------- '|
         +Zcdt V .--' v      '> +Ycdt |   '---.
            .-.  |== +Yopt === o--------> ====|  .-.
           |___|=|            +Xrm |   |+Yrm  |=|___|
           |.-.                                  .-.|
           || |                                  | ||    +Xrm, +Xopt, +Zcdt
           `| |                                  | |'     are out of the
            '_'                                  '_'      page
          ~~~~~~~~                            ~~~~~~~~


   -Y Rover side view:
   -------------------

                 - · - · -
                     |
                     |        +Zrm
                    _|_         ^
                   |   |        |
             -------------------|-------------------------------------
                   ,------------|------------.
                   |            |             |
                o__|            |             |
               /   | +Xrm       |             |
              /\___|__<---------o ____________.         +Yrm is out
             /      | |        +Yrm          | |         of the page.
            /_------/ \-----__               / \.__
           v  |-----\_/----|  |              \__.  |
       +Zbrk  |.          .|  |.               .|  |.
         / |__| \        / |__| \             / |__| \
         \      /        \      /             \      /
          `-..-'          `-..-'               `-..-'


   Relevant frames (for all diagrams):
      rm:  RM_ROVER
      dtf: RM_DRILL_TIP_FIX
      opt: RM_CLUPI_OPT_AXIS
      bas: RM_CLUPI_BASE
      cdt: RM_CLUPI_DRILL_TIP
      brk: RM_CLUPI_BRACKET


   These sets of keywords define the CLUPI frames:

   \begindata

      FRAME_RM_CLUPI_BASE             = -174600
      FRAME_-174600_NAME              = 'RM_CLUPI_BASE'
      FRAME_-174600_CLASS             =  4
      FRAME_-174600_CLASS_ID          = -174600
      FRAME_-174600_CENTER            = -174
      TKFRAME_-174600_RELATIVE        = 'RM_DRILL_POS_MOV'
      TKFRAME_-174600_SPEC            = 'ANGLES'
      TKFRAME_-174600_UNITS           = 'DEGREES'
      TKFRAME_-174600_AXES            = (      1,      2,     3 )
      TKFRAME_-174600_ANGLES          = (    0.0,    0.0,   0.0 )

      FRAME_RM_CLUPI_OPT_AXIS         = -174610
      FRAME_-174610_NAME              = 'RM_CLUPI_OPT_AXIS'
      FRAME_-174610_CLASS             =  4
      FRAME_-174610_CLASS_ID          = -174610
      FRAME_-174610_CENTER            = -174
      TKFRAME_-174610_RELATIVE        = 'RM_CLUPI_BASE'
      TKFRAME_-174610_SPEC            = 'ANGLES'
      TKFRAME_-174610_UNITS           = 'DEGREES'
      TKFRAME_-174610_AXES            = (      3,      2,      1 )
      TKFRAME_-174610_ANGLES          = (    0.0,    0.0,  -90.0 )

      FRAME_RM_CLUPI_DRILL_TIP        = -174620
      FRAME_-174620_NAME              = 'RM_CLUPI_DRILL_TIP'
      FRAME_-174620_CLASS             =  4
      FRAME_-174620_CLASS_ID          = -174620
      FRAME_-174620_CENTER            = -174
      TKFRAME_-174620_RELATIVE        = 'RM_CLUPI_OPT_AXIS'
      TKFRAME_-174620_SPEC            = 'ANGLES'
      TKFRAME_-174620_UNITS           = 'DEGREES'
      TKFRAME_-174620_AXES            = (      3,      2,      1 )
      TKFRAME_-174620_ANGLES          = (    0.0,    0.0,  -54.0 )

      FRAME_RM_CLUPI_BRACKET          = -174630
      FRAME_-174630_NAME              = 'RM_CLUPI_BRACKET'
      FRAME_-174630_CLASS             =  4
      FRAME_-174630_CLASS_ID          = -174630
      FRAME_-174630_CENTER            = -174
      TKFRAME_-174630_RELATIVE        = 'RM_DRILL_TIP_FIX'
      TKFRAME_-174630_SPEC            = 'ANGLES'
      TKFRAME_-174630_UNITS           = 'DEGREES'
      TKFRAME_-174630_AXES            = (      3,       2,     1 )
      TKFRAME_-174630_ANGLES          = (    0.0,  -160.0,   0.0 )

    \begintext



RM NAIF ID Codes -- Definitions
===============================================================================

   This section contains name to NAIF ID mappings for the ExoMarsRSP RM
   mission. Once the contents of this file is loaded into the KERNEL POOL,
   these mappings become available within SPICE, making it possible to use
   names instead of ID code in the high level SPICE routine calls.

      Name                   ID       Synonyms
      ---------------------  -------  -----------------------

   Rover:
   -----------
      RM                     -174     EXOMARS RSP ROVER MODULE
                                      EXOMARS RSP RM
                                      EXOMARS RSP ROVER
                                      EXOMARS ROVER
      RM_ROVER               -174000
      RM_MAST                -174011
      RM_PTR                 -174013
      RM_PB                  -174014
      RM_NAVCAM_L            -174021
      RM_NAVCAM_R            -174022
      RM_LOCCAM_L            -174031
      RM_LOCCAM_R            -174031
      RM_DRILL_POS_FIX       -174040
      RM_DRILL_POS_MOV       -174041
      RM_DRILL_TIP_FIX       -174042
      RM_DRILL_TIP_MOV       -174043
      RM_ALD                 -174050
      RM_ALD_CSTM            -174051
      RM_ALD_CSTM_FIX        -174052
      RM_ALD_CSTM_MOV        -174053
      RM_ALD_PSDDS           -174054
      RM_ALD_PSHS            -174055

      The mappings summarized in this table are implemented by the keywords
      below.

      \begindata

          NAIF_BODY_NAME += ( 'RM'                          )
          NAIF_BODY_CODE += ( -174                          )

          NAIF_BODY_NAME += ( 'EXOMARS RSP ROVER MODULE'    )
          NAIF_BODY_CODE += ( -174                          )

          NAIF_BODY_NAME += ( 'EXOMARS RSP RM'              )
          NAIF_BODY_CODE += ( -174                          )

          NAIF_BODY_NAME += ( 'EXOMARS RSP ROVER'           )
          NAIF_BODY_CODE += ( -174                          )

          NAIF_BODY_NAME += ( 'EXOMARS ROVER'               )
          NAIF_BODY_CODE += ( -174                          )

          NAIF_BODY_NAME += ( 'RM_ROVER'                    )
          NAIF_BODY_CODE += ( -174000                       )

          NAIF_BODY_NAME += ( 'RM_SITE_DISPOSAL'            )
          NAIF_BODY_CODE += ( -174900                       )

          NAIF_BODY_NAME += ( 'RM_MAST_ZERO'                )
          NAIF_BODY_CODE += ( -174010                       )

          NAIF_BODY_NAME += ( 'RM_MAST'                     )
          NAIF_BODY_CODE += ( -174011                       )

          NAIF_BODY_NAME += ( 'RM_PTR_ZERO'                 )
          NAIF_BODY_CODE += ( -174012                       )

          NAIF_BODY_NAME += ( 'RM_PTR'                      )
          NAIF_BODY_CODE += ( -174013                       )

          NAIF_BODY_NAME += ( 'RM_NAVCAM_L'                 )
          NAIF_BODY_CODE += ( -174021                       )

          NAIF_BODY_NAME += ( 'RM_NAVCAM_R'                 )
          NAIF_BODY_CODE += ( -174022                       )

          NAIF_BODY_NAME += ( 'RM_LOCCAM_L'                 )
          NAIF_BODY_CODE += ( -174031                       )

          NAIF_BODY_NAME += ( 'RM_LOCCAM_R'                 )
          NAIF_BODY_CODE += ( -174032                       )

          NAIF_BODY_NAME += ( 'RM_DRILL_POS_FIX'            )
          NAIF_BODY_CODE += ( -174040                       )

          NAIF_BODY_NAME += ( 'RM_DRILL_POS_MOV'            )
          NAIF_BODY_CODE += ( -174041                       )

          NAIF_BODY_NAME += ( 'RM_DRILL_TIP_FIX'            )
          NAIF_BODY_CODE += ( -174042                       )

          NAIF_BODY_NAME += ( 'RM_DRILL_TIP_MOV'            )
          NAIF_BODY_CODE += ( -174043                       )

          NAIF_BODY_NAME += ( 'RM_SA+Y_PRI'                 )
          NAIF_BODY_CODE += ( -174061                       )

          NAIF_BODY_NAME += ( 'RM_SA+Y_SEC'                 )
          NAIF_BODY_CODE += ( -174062                       )

          NAIF_BODY_NAME += ( 'RM_SA-Y_PRI'                 )
          NAIF_BODY_CODE += ( -174064                       )

          NAIF_BODY_NAME += ( 'RM_SA-Y_SEC'                 )
          NAIF_BODY_CODE += ( -174065                       )

          NAIF_BODY_NAME += ( 'RM_ALD'                      )
          NAIF_BODY_CODE += ( -174050                       )

          NAIF_BODY_NAME += ( 'RM_ALD_CSTM'                 )
          NAIF_BODY_CODE += ( -174051                       )

          NAIF_BODY_NAME += ( 'RM_ALD_CSTM_FIX'             )
          NAIF_BODY_CODE += ( -174052                       )

          NAIF_BODY_NAME += ( 'RM_ALD_CSTM_MOV'             )
          NAIF_BODY_CODE += ( -174053                       )

          NAIF_BODY_NAME += ( 'RM_ALD_PSDDS'                )
          NAIF_BODY_CODE += ( -174054                       )

          NAIF_BODY_NAME += ( 'RM_ALD_PSHS'                 )
          NAIF_BODY_CODE += ( -174057                       )

      \begintext


   PanCam:
   -----------
      RM_PANCAM              -174100
      RM_PANCAM_WAC_L        -174110
      RM_PANCAM_WAC_R        -174120
      RM_PANCAM_HRC          -174130

      The mappings summarised in this table are implemented by the keywords
      below.

      \begindata

         NAIF_BODY_NAME += ( 'RM_PANCAM'                   )
         NAIF_BODY_CODE += ( -174100                       )

         NAIF_BODY_NAME += ( 'RM_PANCAM_WAC_L'             )
         NAIF_BODY_CODE += ( -174110                       )

         NAIF_BODY_NAME += ( 'RM_PANCAM_WAC_R'             )
         NAIF_BODY_CODE += ( -174120                       )

         NAIF_BODY_NAME += ( 'RM_PANCAM_HRC'               )
         NAIF_BODY_CODE += ( -174130                       )

      \begintext


   ISEM:
   -----------
      RM_ISEM                -174200

      The mappings summarised in this table are implemented by the keywords
      below.

         \begindata

            NAIF_BODY_NAME += ( 'RM_ISEM'                     )
            NAIF_BODY_CODE += ( -174200                       )

         \begintext

   ADRON:
   -----------
      RM_ADRON-RM            -174300

      The mappings summarised in this table are implemented by the keywords
      below.

      \begindata

         NAIF_BODY_NAME += ( 'RM_ADRON-RM'                 )
         NAIF_BODY_CODE += ( -174300                       )

      \begintext


   WISDOM:
   -----------
      RM_WISDOM              -174400
      RM_WISDOM_ANT1         -174410
      RM_WISDOM_ANT1         -174410

      The mappings summarised in this table are implemented by the keywords
      below.

      \begindata

         NAIF_BODY_NAME += ( 'RM_WISDOM'                   )
         NAIF_BODY_CODE += ( -174400                       )

         NAIF_BODY_NAME += ( 'RM_WISDOM_ANT1'              )
         NAIF_BODY_CODE += ( -174410                       )

         NAIF_BODY_NAME += ( 'RM_WISDOM_ANT2'              )
         NAIF_BODY_CODE += ( -174420                       )

      \begintext


   MaMiss:
   -----------
      RM_MAMISS              -174500

      The mappings summarised in this table are implemented by the keywords
      below.

      \begindata

         NAIF_BODY_NAME += ( 'RM_MAMISS'                   )
         NAIF_BODY_CODE += ( -174500                       )

      \begintext


   CLUPI:
   -----------
      RM_CLUPI               -174600
      RM_CLUPI_FOV1          -174601
      RM_CLUPI_FOV2          -174602
      RM_CLUPI_FOV3          -174603

      The mappings summarised in this table are implemented by the keywords
      below.

      \begindata

         NAIF_BODY_NAME += ( 'RM_CLUPI'                    )
         NAIF_BODY_CODE += ( -174600                       )

         NAIF_BODY_NAME += ( 'RM_CLUPI_FOV1'               )
         NAIF_BODY_CODE += ( -174601                       )

         NAIF_BODY_NAME += ( 'RM_CLUPI_FOV2'               )
         NAIF_BODY_CODE += ( -174602                       )

         NAIF_BODY_NAME += ( 'RM_CLUPI_FOV3'               )
         NAIF_BODY_CODE += ( -174603                       )

      \begintext


   Sites:
   -----------
      RM_SITE_000            -174700 (synonym: RM_LANDING_SITE)
      RM_SITE_NNN            -174XXX

      The mappings summarised in this table are implemented by the keywords
      below.

      \begindata

         NAIF_BODY_NAME += ( 'RM_SITE_000'                )
         NAIF_BODY_CODE += ( -174700                      )

         NAIF_BODY_NAME += ( 'RM_LANDING_SITE'            )
         NAIF_BODY_CODE += ( -174700                      )

         NAIF_BODY_NAME += ( 'RM_SITE_001'                )
         NAIF_BODY_CODE += ( -174701                      )

         NAIF_BODY_NAME += ( 'RM_SITE_002'                )
         NAIF_BODY_CODE += ( -174702                      )

         NAIF_BODY_NAME += ( 'RM_SITE_003'                )
         NAIF_BODY_CODE += ( -174703                      )

         NAIF_BODY_NAME += ( 'RM_SITE_004'                )
         NAIF_BODY_CODE += ( -174704                      )

         NAIF_BODY_NAME += ( 'RM_SITE_005'                )
         NAIF_BODY_CODE += ( -174705                      )

         NAIF_BODY_NAME += ( 'RM_SITE_006'                )
         NAIF_BODY_CODE += ( -174706                      )

         NAIF_BODY_NAME += ( 'RM_SITE_007'                )
         NAIF_BODY_CODE += ( -174707                      )

         NAIF_BODY_NAME += ( 'RM_SITE_008'                )
         NAIF_BODY_CODE += ( -174708                      )

         NAIF_BODY_NAME += ( 'RM_SITE_009'                )
         NAIF_BODY_CODE += ( -174709                      )

         NAIF_BODY_NAME += ( 'RM_SITE_010'                )
         NAIF_BODY_CODE += ( -174710                      )

         NAIF_BODY_NAME += ( 'RM_SITE_011'                )
         NAIF_BODY_CODE += ( -174711                      )

         NAIF_BODY_NAME += ( 'RM_SITE_012'                )
         NAIF_BODY_CODE += ( -174712                      )

         NAIF_BODY_NAME += ( 'RM_SITE_013'                )
         NAIF_BODY_CODE += ( -174713                      )

         NAIF_BODY_NAME += ( 'RM_SITE_014'                )
         NAIF_BODY_CODE += ( -174714                      )

         NAIF_BODY_NAME += ( 'RM_SITE_015'                )
         NAIF_BODY_CODE += ( -174715                      )

         NAIF_BODY_NAME += ( 'RM_SITE_016'                )
         NAIF_BODY_CODE += ( -174716                      )

      \begintext


End of FK file.
