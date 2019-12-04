KPL/FK

   FILE: kernels/fk/earthstns_ru_20191031.tf

   This file was created by PINPOINT.

   PINPOINT Version 3.2.0 --- September 6, 2016
   PINPOINT RUN DATE/TIME:    2019-11-01T14:57:09
   PINPOINT DEFINITIONS FILE: ground_stations/ground_stations.def
   PINPOINT PCK FILE:         kernels/pck/pck00010.tpc
   PINPOINT SPK FILE:         kernels/spk/ground_stations_bl_klz_20191031.bsp

   The input definitions file is appended to this
   file as a comment block.


   Body-name mapping follows:

\begindata

   NAIF_BODY_NAME                      += 'BEAR_LAKES'
   NAIF_BODY_CODE                      += 399603

   NAIF_BODY_NAME                      += 'KALYAZIN'
   NAIF_BODY_CODE                      += 399604

\begintext


   Reference frame specifications follow:


   Topocentric frame BL_TOPO

      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.

      Topocentric frame BL_TOPO is centered at the
      site BEAR_LAKES, which at the epoch

          2005 JAN 01 00:00:00.000 TDB

      has Cartesian coordinates

         X (km):                  0.2828547498000E+04
         Y (km):                  0.2206064086000E+04
         Z (km):                  0.5256395991000E+04

      and planetodetic coordinates

         Longitude (deg):        37.9516746689565
         Latitude  (deg):        55.8682066148442
         Altitude   (km):         0.2097967323084E+00

      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions

         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03

      All of the above coordinates are relative to the frame ITRF93.


\begindata

   FRAME_BL_TOPO                       =  1399603
   FRAME_1399603_NAME                  =  'BL_TOPO'
   FRAME_1399603_CLASS                 =  4
   FRAME_1399603_CLASS_ID              =  1399603
   FRAME_1399603_CENTER                =  399603

   OBJECT_399603_FRAME                 =  'BL_TOPO'

   TKFRAME_1399603_RELATIVE            =  'ITRF93'
   TKFRAME_1399603_SPEC                =  'ANGLES'
   TKFRAME_1399603_UNITS               =  'DEGREES'
   TKFRAME_1399603_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399603_ANGLES              =  (  -37.9516746689565,
                                             -34.1317933851558,
                                             180.0000000000000 )


\begintext

   Topocentric frame KLZ_TOPO

      The Z axis of this frame points toward the zenith.
      The X axis of this frame points North.

      Topocentric frame KLZ_TOPO is centered at the
      site KALYAZIN, which at the epoch

          2005 JAN 01 00:00:00.000 TDB

      has Cartesian coordinates

         X (km):                  0.2731191749000E+04
         Y (km):                  0.2126199292000E+04
         Z (km):                  0.5339538091000E+04

      and planetodetic coordinates

         Longitude (deg):        37.9003203524384
         Latitude  (deg):        57.2230158501456
         Altitude   (km):         0.1814397680015E+00

      These planetodetic coordinates are expressed relative to
      a reference spheroid having the dimensions

         Equatorial radius (km):  6.3781366000000E+03
         Polar radius      (km):  6.3567519000000E+03

      All of the above coordinates are relative to the frame ITRF93.


\begindata

   FRAME_KLZ_TOPO                      =  1399604
   FRAME_1399604_NAME                  =  'KLZ_TOPO'
   FRAME_1399604_CLASS                 =  4
   FRAME_1399604_CLASS_ID              =  1399604
   FRAME_1399604_CENTER                =  399604

   OBJECT_399604_FRAME                 =  'KLZ_TOPO'

   TKFRAME_1399604_RELATIVE            =  'ITRF93'
   TKFRAME_1399604_SPEC                =  'ANGLES'
   TKFRAME_1399604_UNITS               =  'DEGREES'
   TKFRAME_1399604_AXES                =  ( 3, 2, 3 )
   TKFRAME_1399604_ANGLES              =  (  -37.9003203524384,
                                             -32.7769841498544,
                                             180.0000000000000 )

\begintext


Definitions file ground_stations/ground_stations.def
--------------------------------------------------------------------------------

Antennas definition according to EXOMARS 2016 Navigation ICD ESOC/RKPNI
(EXM-GS-ICD-ESC-50005).

Created by Stanislav Bober, IKI

begindata

SITES = ('BEAR_LAKES', 'KALYAZIN')

BEAR_LAKES_TOPO_FRAME = 'BL_TOPO'

BEAR_LAKES_FRAME      = 'ITRF93'
BEAR_LAKES_IDCODE     = 399603
BEAR_LAKES_XYZ        = ( 2828.547498, 2206.064086, 5256.395991 )
BEAR_LAKES_EPOCH      = @2005-01-01T00:00:00.0
BEAR_LAKES_TOPO_EPOCH = @2005-01-01T00:00:00.0
BEAR_LAKES_DXYZ       = ( -1.4E-2, 1.7E-2, 1.2E-2 )
BEAR_LAKES_CENTER     = 399
BEAR_LAKES_BOUNDS     = ( @2005-01-01T00:00:00.0, @2040-01-01T00:00:00.0 )
BEAR_LAKES_UP         =  'Z'
BEAR_LAKES_NORTH      =  'X'


KALYAZIN_TOPO_FRAME = 'KLZ_TOPO'

KALYAZIN_FRAME      = 'ITRF93'
KALYAZIN_IDCODE     = 399604
KALYAZIN_XYZ        = ( 2731.191749, 2126.199292, 5339.538091 )
KALYAZIN_EPOCH      = @2005-01-01T00:00:00.0
KALYAZIN_TOPO_EPOCH = @2005-01-01T00:00:00.0
KALYAZIN_DXYZ       = ( -1.4E-2, 1.7E-2, 1.2E-2 )
KALYAZIN_CENTER     = 399
KALYAZIN_BOUNDS     = ( @2005-01-01T00:00:00.0, @2040-01-01T00:00:00.0 )
KALYAZIN_UP         =  'Z'
KALYAZIN_NORTH      =  'X'

begintext

[End of definitions file]

