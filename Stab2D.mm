<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node BACKGROUND_COLOR="#00ff66" CREATED="1436641527729" ID="ID_715731665" MODIFIED="1436641623494">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <font size="5">Blender </font>
    </p>
    <p style="text-align: center">
      <b><font size="5">Stab-2D</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1436641676560" FOLDED="true" HGAP="60" ID="ID_1218644922" MODIFIED="1470342044421" POSITION="left" TEXT="Build" VSHIFT="-61">
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="go"/>
<node CREATED="1459010961256" ID="ID_1252841914" MODIFIED="1459010969404" TEXT="Infos">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="info"/>
<node CREATED="1459010971348" ID="ID_1296493455" LINK="https://wiki.blender.org/index.php/Dev:Doc/Building_Blender" MODIFIED="1459011046471">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Blender-Entwickler-Sektion
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ...hier auch:
    </p>
    <p>
      eine grundlegende Strukturbeschreibung
    </p>
    <p>
      zum CMake-Buildsystem
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459010971349" ID="ID_852055023" LINK="https://wiki.blender.org/index.php/Dev:Doc/Building_Blender/Linux/Ubuntu/CMake" MODIFIED="1459011014026" TEXT="speziell f&#xfc;r Ubuntu"/>
<node CREATED="1459010971351" ID="ID_1256784536" LINK="https://wiki.blender.org/index.php/Dev:Doc/Building_Blender/Linux/cmake" MODIFIED="1459011211674" TEXT="generische CMake-Seite">
<linktarget COLOR="#9bd3bd" DESTINATION="ID_1256784536" ENDARROW="Default" ENDINCLINATION="-9;17;" ID="Arrow_ID_1440776048" SOURCE="ID_1880592644" STARTARROW="None" STARTINCLINATION="-252;0;"/>
</node>
<node CREATED="1459011064208" HGAP="47" ID="ID_1369372321" MODIFIED="1470234488356" TEXT="CMake" VSHIFT="16">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1459011071334" ID="ID_1445350994" MODIFIED="1459011078425" TEXT="automatisch per Makefile"/>
<node CREATED="1459011079462" ID="ID_508138430" MODIFIED="1459011088088" TEXT="CMake-UI verwenden!">
<node CREATED="1459011612717" ID="ID_498760722" MODIFIED="1459011639740">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>ccmake</b>&#160;== cmake-curses-gui
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459011615094" ID="ID_368320013" MODIFIED="1459011652531">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>cmake-gui</b>&#160;== cmake-qt-gui
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1459011088796" ID="ID_211678043" MODIFIED="1459011103990" TEXT="Build-Verzeichnis festlegen">
<node CREATED="1459011105146" ID="ID_789667069" MODIFIED="1459011110596" TEXT="Empfohlen: build"/>
<node CREATED="1459011110953" ID="ID_1353298435" MODIFIED="1459011117684" TEXT="durch ersten Aufruf von CMake"/>
<node CREATED="1459011118040" ID="ID_1659809313" MODIFIED="1459011123723" TEXT="dabei relativer Pfad zum Source-Root"/>
</node>
<node CREATED="1459011125975" ID="ID_485852950" MODIFIED="1459011136186" TEXT="dort die CMakeCache.txt editieren"/>
</node>
<node CREATED="1459011141805" HGAP="48" ID="ID_888719963" MODIFIED="1459011230185" TEXT="Tips" VSHIFT="8">
<icon BUILTIN="idea"/>
<node CREATED="1459011148100" ID="ID_609900106" MODIFIED="1459011154479" TEXT="alle WITH_XXX deaktivieren"/>
<node CREATED="1459011156987" ID="ID_1100483241" MODIFIED="1459011186401" TEXT="Symlinks auf Installation legen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      damit kann man das Build-Ergebnis sofort ohne Installation starten
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459011186391" ID="ID_1880592644" MODIFIED="1459011223523" TEXT="siehe CMake-Seite">
<arrowlink COLOR="#9bd3bd" DESTINATION="ID_1256784536" ENDARROW="Default" ENDINCLINATION="-9;17;" ID="Arrow_ID_1440776048" STARTARROW="None" STARTINCLINATION="-252;0;"/>
</node>
</node>
</node>
<node CREATED="1436641870656" ID="ID_1917334295" MODIFIED="1461119535663" TEXT="Umgebung">
<icon BUILTIN="button_ok"/>
<node CREATED="1436641905079" ID="ID_32595620" MODIFIED="1458007456349" TEXT="SCons-Build">
<icon BUILTIN="button_cancel"/>
</node>
<node COLOR="#338800" CREATED="1458007463432" FOLDED="true" ID="ID_1630361744" MODIFIED="1459228698122" TEXT="Umstellung auf CMake">
<icon BUILTIN="button_ok"/>
<node CREATED="1458007473095" ID="ID_1821525904" MODIFIED="1458007480160" TEXT="SCons wird aufgegeben">
<icon BUILTIN="smily_bad"/>
</node>
<node CREATED="1459046907611" FOLDED="true" ID="ID_154576468" MODIFIED="1459046926682" TEXT="unter SCons hatte ich...">
<icon BUILTIN="info"/>
<node CREATED="1458007557711" ID="ID_1906314728" MODIFIED="1458007598818" TEXT="WITH_BF_OPENAL = False"/>
<node CREATED="1458007557712" ID="ID_988993064" MODIFIED="1458007557712" TEXT="WITH_BF_GAMEENGINE = False"/>
<node CREATED="1458007557712" ID="ID_1690132206" MODIFIED="1458007557712" TEXT="WITH_BF_BULLET = False"/>
<node CREATED="1458007557713" ID="ID_462724124" MODIFIED="1458007557713" TEXT="WITH_BF_CYCLES = False"/>
<node CREATED="1458007557713" ID="ID_1247593780" MODIFIED="1458007557713" TEXT="WITH_BF_3DMOUSE = False"/>
<node CREATED="1458007557713" ID="ID_1676526264" MODIFIED="1458007557713" TEXT="WITH_BF_INTERNATIONAL = False"/>
<node CREATED="1458007605333" ID="ID_855067123" MODIFIED="1458007611991" TEXT="wie man einen debug-Build bekommt"/>
</node>
<node COLOR="#338800" CREATED="1458007494308" ID="ID_1344172698" MODIFIED="1459046996097" TEXT="Konfiguration: herausfinden">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1459043019934" FOLDED="true" ID="ID_483743294" MODIFIED="1470342040132" TEXT="CMake-Build">
<icon BUILTIN="button_ok"/>
<node CREATED="1459043036468" ID="ID_1115892122" MODIFIED="1459043053798" TEXT="Festlegungen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ...<i>meine</i>&#160;Festlegungen...
    </p>
  </body>
</html></richcontent>
<node CREATED="1459043055561" ID="ID_540304307" MODIFIED="1459043063596" TEXT="Bauen in build"/>
<node CREATED="1459043064280" ID="ID_1894768707" MODIFIED="1459043073907" TEXT="Binaries nach target"/>
</node>
<node CREATED="1459043113658" ID="ID_1447112482" MODIFIED="1459043118821" TEXT="cmake-gui verwenden">
<node CREATED="1459043120057" ID="ID_883907537" MODIFIED="1459043127995" TEXT="aus build aufrufen"/>
<node CREATED="1459043128463" ID="ID_500190073" MODIFIED="1459043132587" TEXT="cmake-gui .."/>
<node CREATED="1461117948829" ID="ID_1025687762" MODIFIED="1461117957743" TEXT="...dann Konfiguration durchpr&#xfc;fen"/>
<node CREATED="1461117958331" ID="ID_370326114" MODIFIED="1461117962815" TEXT="schlie&#xdf;lich generieren"/>
</node>
<node CREATED="1459043138318" FOLDED="true" ID="ID_230063324" MODIFIED="1470234632404" TEXT="Konfiguration">
<icon BUILTIN="button_ok"/>
<node CREATED="1459043158388" ID="ID_269990641" MODIFIED="1459043169878" TEXT="Build-Typ = Debug"/>
<node CREATED="1459043287627" ID="ID_970294739" MODIFIED="1459043292134" TEXT="abgew&#xe4;hlt">
<node CREATED="1459043293338" ID="ID_1483037408" MODIFIED="1459043296605" TEXT="BULLET"/>
<node CREATED="1459043309967" ID="ID_393185468" MODIFIED="1459043314283" TEXT="CYCLES"/>
<node CREATED="1459043351170" ID="ID_1099624633" MODIFIED="1459043356765" TEXT="FREESTYLE"/>
<node CREATED="1459043363752" ID="ID_158045827" MODIFIED="1459043366332" TEXT="GAMEENGINE"/>
<node CREATED="1459043380022" ID="ID_194673353" MODIFIED="1459043392853" TEXT="GHOST-XDND">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      drag-n-drop f&#252;r X
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459043464443" ID="ID_211753040" MODIFIED="1459043490154" TEXT="IK_ITASK">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      IK = inverse kinematics
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459043475458" ID="ID_16374181" MODIFIED="1459043479085" TEXT="IK_SOLVER"/>
<node CREATED="1459043528435" ID="ID_1952938042" MODIFIED="1459043531326" TEXT="IMAGE_CINEON"/>
<node CREATED="1459043531794" ID="ID_1115786097" MODIFIED="1459043534214" TEXT="IMAGE_DDS"/>
<node CREATED="1459229017962" ID="ID_1253289951" MODIFIED="1459229022821" TEXT="IMAGE_FRAMESERVER"/>
<node CREATED="1459043534778" ID="ID_202910389" MODIFIED="1459043538125" TEXT="IMAGE_HDR"/>
<node CREATED="1459043583275" ID="ID_373805308" MODIFIED="1459043594565" TEXT="INTERNATIONAL">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      I18N
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459043639404" ID="ID_339965241" MODIFIED="1459043648966" TEXT="MOD_FLUID">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      fluid-simulation
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459043664137" ID="ID_1569058896" MODIFIED="1459043666724" TEXT="MOD_REMSEH"/>
<node CREATED="1459043667216" ID="ID_1300696542" MODIFIED="1459043670092" TEXT="MOD_SMOKE"/>
<node CREATED="1459043709107" ID="ID_1800510433" MODIFIED="1459043718522" TEXT="OPENAL">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3D-Sound
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459044003620" ID="ID_1994320354" MODIFIED="1459044024003" TEXT="FFTW3">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      f&#252;r Smoke und Sound-Generierung
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459043735807" ID="ID_923749371" MODIFIED="1459043738698" TEXT="OPENIMAGEIO"/>
<node CREATED="1459043740215" ID="ID_161359357" MODIFIED="1459043746729" TEXT="OPENMP"/>
<node CREATED="1459043783857" ID="ID_951334963" MODIFIED="1459043820088" TEXT="PYTHON_INSTAL...">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      hab ich mal deaktiviert
    </p>
    <p>
      ich glaube nicht, da&#223; ich es mag,
    </p>
    <p>
      wenn Blender mein System-Python in den Installationsfolder kopiert
    </p>
  </body>
</html></richcontent>
<node CREATED="1459046819215" ID="ID_1229984910" MODIFIED="1459046863783" TEXT="aber nur wenn man Symlinks legt">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      cd target
    </p>
    <p>
      ln -s ../release release
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459046834429" ID="ID_1602747164" MODIFIED="1459046848530" TEXT="sonst ist das Interface ziemlich &quot;minimalisitisch&quot;">
<icon BUILTIN="ksmiletris"/>
</node>
</node>
</node>
<node CREATED="1459043893218" ID="ID_47298513" MODIFIED="1459043897813" TEXT="zugew&#xe4;hlt">
<node CREATED="1459043898930" ID="ID_1666664013" MODIFIED="1459043910380" TEXT="FONTCONFIG">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      discovering fonts installed on Linux
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459043933685" ID="ID_1815415451" MODIFIED="1459043937688" TEXT="CODEC_FFMPEC"/>
<node CREATED="1459044062188" ID="ID_822628814" MODIFIED="1459044077885" TEXT="GLES">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      OpenGL besser schon verwenden...
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459044065340" ID="ID_1052998402" MODIFIED="1459044067855" TEXT="GLEW"/>
<node CREATED="1459045536209" ID="ID_50688803" MODIFIED="1459229510173" TEXT="C11"/>
<node CREATED="1461117745776" ID="ID_1651163042" MODIFIED="1461117749859" TEXT="Cxx11"/>
</node>
<node CREATED="1459044891782" ID="ID_1135795039" MODIFIED="1461117882688" TEXT="my changes...">
<icon BUILTIN="info"/>
<node CREATED="1461117862232" ID="ID_1250322183" MODIFIED="1461117878378" TEXT="2.77">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      Commandline options:
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      -DWITH_OPENMP:BOOL=&quot;0&quot; -DWITH_MOD_FLUID:BOOL=&quot;0&quot; -DWITH_IMAGE_DDS:BOOL=&quot;0&quot; -DWITH_OPENAL:BOOL=&quot;0&quot; -DWITH_OPENIMAGEIO:BOOL=&quot;0&quot; -DCMAKE_C_STANDARD_LIBRARIES:STRING=&quot;&quot; -DCMAKE_INSTALL_PREFIX:PATH=&quot;/home/hiv/devel/a/blend/target&quot; -DWITH_IMAGE_FRAMESERVER:BOOL=&quot;0&quot; -DWITH_FONTCONFIG:BOOL=&quot;1&quot; -DWITH_IMAGE_CINEON:BOOL=&quot;0&quot; -DWITH_FREESTYLE:BOOL=&quot;0&quot; -DWITH_C11:BOOL=&quot;1&quot; -DWITH_MOD_SMOKE:BOOL=&quot;0&quot; -DCMAKE_BUILD_TYPE:STRING=&quot;Debug&quot; -DWITH_GHOST_XDND:BOOL=&quot;0&quot; -DWITH_IK_SOLVER:BOOL=&quot;0&quot; -DWITH_PYTHON_INSTALL_NUMPY:BOOL=&quot;0&quot; -DWITH_CYCLES:BOOL=&quot;0&quot; -DWITH_INTERNATIONAL:BOOL=&quot;0&quot; -DWITH_IMAGE_HDR:BOOL=&quot;0&quot; -DWITH_MOD_REMESH:BOOL=&quot;0&quot; -DWITH_BULLET:BOOL=&quot;0&quot; -DWITH_IK_ITASC:BOOL=&quot;0&quot; -DWITH_CODEC_FFMPEG:BOOL=&quot;1&quot; -DWITH_GAMEENGINE:BOOL=&quot;0&quot; -DWITH_PYTHON_INSTALL:BOOL=&quot;0&quot; -DWITH_PYTHON_INSTALL_REQUESTS:BOOL=&quot;0&quot;
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      <br />
      
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      <br />
      
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      Cache file:
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_OPENMP:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_MOD_FLUID:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_IMAGE_DDS:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_OPENAL:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_OPENIMAGEIO:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      CMAKE_C_STANDARD_LIBRARIES:STRING=
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      CMAKE_INSTALL_PREFIX:PATH=/home/hiv/devel/a/blend/target
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_IMAGE_FRAMESERVER:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_FONTCONFIG:BOOL=1
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_IMAGE_CINEON:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_FREESTYLE:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_C11:BOOL=1
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_MOD_SMOKE:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      CMAKE_BUILD_TYPE:STRING=Debug
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_GHOST_XDND:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_IK_SOLVER:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_PYTHON_INSTALL_NUMPY:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_CYCLES:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_INTERNATIONAL:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_IMAGE_HDR:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_MOD_REMESH:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_BULLET:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_IK_ITASC:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_CODEC_FFMPEG:BOOL=1
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_GAMEENGINE:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_PYTHON_INSTALL:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_PYTHON_INSTALL_REQUESTS:BOOL=0
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1461117884309" ID="ID_1830163186" MODIFIED="1461117928560" TEXT="2.77a">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      Commandline options:
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      -DWITH_CXX11:BOOL=&quot;1&quot;
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      <br />
      
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      <br />
      
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      Cache file:
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_CXX11:BOOL=1
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      <br />
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1459047361287" HGAP="40" ID="ID_875609941" MODIFIED="1459047416589" TEXT="Einrichtung" VSHIFT="6">
<node CREATED="1459043079702" ID="ID_1299306805" MODIFIED="1459046805437" TEXT="Symlinks legen">
<linktarget COLOR="#a9b4c1" DESTINATION="ID_1299306805" ENDARROW="Default" ENDINCLINATION="144;0;" ID="Arrow_ID_727874697" SOURCE="ID_1926862727" STARTARROW="None" STARTINCLINATION="188;0;"/>
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1459046775453" ID="ID_1416601077" MODIFIED="1459046784175" TEXT="ln -s target/blender blender"/>
<node CREATED="1459046787443" ID="ID_945841013" MODIFIED="1459046798832">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      cd target
    </p>
    <p>
      ln -s ../release release
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1459047369222" FOLDED="true" ID="ID_740678750" MODIFIED="1459047398939" TEXT="Tip: lokale ignores nach .git/info/exclude">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ...damit mu&#223; man sie nicht einchecken!
    </p>
  </body>
</html></richcontent>
<node CREATED="1459047390523" ID="ID_622142784" MODIFIED="1459047393487" TEXT="build"/>
<node CREATED="1459047393890" ID="ID_856928945" MODIFIED="1459047395782" TEXT="target"/>
<node CREATED="1459047396282" ID="ID_1984269164" MODIFIED="1459047397062" TEXT="stab"/>
</node>
</node>
<node CREATED="1459045956049" ID="ID_1727293916" MODIFIED="1459046034523" TEXT="build">
<icon BUILTIN="idea"/>
<node CREATED="1459045972567" ID="ID_184267978" MODIFIED="1459045974155" TEXT="cd build"/>
<node CREATED="1459045974742" ID="ID_108952533" MODIFIED="1459045978298" TEXT="make -j12"/>
<node CREATED="1459045980310" ID="ID_1926862727" MODIFIED="1461119504969" TEXT="(optional / ggfs): make install">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sp&#228;ter nicht mehr notwendig,
    </p>
    <p>
      sofern man Symlinks gelegt hat.
    </p>
    <p>
      
    </p>
    <p>
      --&gt; man kann dann sogar <b>L&#246;schen</b>&#160;target/share
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#a9b4c1" DESTINATION="ID_1299306805" ENDARROW="Default" ENDINCLINATION="144;0;" ID="Arrow_ID_727874697" STARTARROW="None" STARTINCLINATION="188;0;"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1461119461923" ID="ID_169614383" MODIFIED="1461119499087" TEXT="./blender">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      geht selbst nach einem Regenerieren der Build-Umbegung, ohne vorher make install gemacht zu haben.
    </p>
    <p>
      Das ist der Sinn der Symlinks!
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1436641912336" ID="ID_1618985498" MODIFIED="1459233384760" TEXT="Eclipse-CDT">
<icon BUILTIN="button_ok"/>
<node BACKGROUND_COLOR="#eee5c3" COLOR="#990000" CREATED="1459233389143" ID="ID_663645706" MODIFIED="1459233449537" TEXT="Problem mit eGit">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      stackoverflow...
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1459233416651" ID="ID_177098735" MODIFIED="1459233427985" TEXT="disconnect project">
<icon BUILTIN="smily_bad"/>
</node>
<node CREATED="1459233430673" ID="ID_632542780" MODIFIED="1459233436448" TEXT="Bug reporten">
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node CREATED="1436641916575" ID="ID_1658953336" MODIFIED="1459229539123" TEXT="Git-Zweig">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1450744777276" ID="ID_1521884380" MODIFIED="1450744783647" TEXT="Libraries f&#xfc;r debug-Build">
<node CREATED="1450744786299" ID="ID_1516085841" MODIFIED="1450744802324" TEXT="Grundinstallation">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      apt-get install libalut-dev libavcodec-dev libavdevice-dev libavformat-dev libboost-locale1.55-dev libilmbase-dev libjemalloc-dev libjpeg-dev liblzma-dev liblzo2-dev libopenal-dev libopencolorio-dev libopenexr-dev libopenimageio-dev libopenjpeg-dev libspnav-dev libswscale-dev libtiff-dev python3-requests
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="info"/>
</node>
<node CREATED="1450744914930" ID="ID_1895661092" MODIFIED="1450744928303" TEXT="zus&#xe4;tzlich (GL, SDL)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      apt-get install libgettextpo-dev libglew-dev libgsm1-dev libsdl-dev
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#338800" CREATED="1454072805537" ID="ID_1484231597" MODIFIED="1458007349537" TEXT="brauche Python 3.5">
<arrowlink COLOR="#f73c73" DESTINATION="ID_1595421125" ENDARROW="Default" ENDINCLINATION="108;-30;" ID="Arrow_ID_890750055" STARTARROW="None" STARTINCLINATION="144;-10;"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1436641873568" ID="ID_38644124" MODIFIED="1461117078124" TEXT="Backport">
<icon BUILTIN="button_ok"/>
<node CREATED="1436641925670" ID="ID_1080364414" MODIFIED="1436641933019" TEXT="Debian/unstable"/>
<node CREATED="1450747645311" HGAP="57" ID="ID_319007264" MODIFIED="1450747653404" TEXT="Debian/Jessie" VSHIFT="12">
<node CREATED="1450747598613" FOLDED="true" ID="ID_1595421125" MODIFIED="1459047464019" TEXT="Problem: brauche Python 3.5">
<linktarget COLOR="#f73c73" DESTINATION="ID_1595421125" ENDARROW="Default" ENDINCLINATION="108;-30;" ID="Arrow_ID_890750055" SOURCE="ID_1484231597" STARTARROW="None" STARTINCLINATION="144;-10;"/>
<icon BUILTIN="button_ok"/>
<node CREATED="1450747608380" ID="ID_1982672839" MODIFIED="1450747677057" TEXT="Debian/stable hat nur 3.4">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1450747615699" ID="ID_1784694324" MODIFIED="1458007381215" TEXT="Backport von unstable...">
<node CREATED="1454075991040" ID="ID_72477546" LINK="http://flaucher:9023/Dreck/wiki/Debian.Pakete#Schema" MODIFIED="1454076112984">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      siehe dazu <font color="#c60828">Trac:Debian-Paket-Seite</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="info"/>
</node>
<node CREATED="1454075991042" ID="ID_1350471379" MODIFIED="1454076094945">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Kurzfassung: <i>keine Sorge, Debian hat das im Griff</i>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="ksmiletris"/>
</node>
<node CREATED="1454075991043" ID="ID_3201104" MODIFIED="1454076106154" TEXT="...man kann eine neue Python-Version optional dazuinstallieren">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1454076121216" ID="ID_903156921" MODIFIED="1457919267985">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      also python3.5 <b>Backport</b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="yes"/>
<node CREATED="1454079484794" ID="ID_1346892933" MODIFIED="1454079493021" TEXT="Problem hierbei: GCC-5">
<node CREATED="1454079494297" ID="ID_1424053780" MODIFIED="1454079532088" TEXT="das Deb-Paket verlangt den"/>
<node CREATED="1454079504199" ID="ID_1087211205" MODIFIED="1454079511546" TEXT="der &#xdc;bergang ist problematisch"/>
<node CREATED="1454079512182" ID="ID_1465059323" MODIFIED="1454079523273" TEXT="f&#xfc;r Debian-Backports soll man 4.9 verwenden"/>
</node>
<node CREATED="1454079535947" ID="ID_516975752" MODIFIED="1454079551472" TEXT="versuche es mit GCC-4.9">
<icon BUILTIN="yes"/>
<node CREATED="1457922512496" ID="ID_404201657" MODIFIED="1457922570532">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Paket aus Unstable/Testing (3.5.1) <font color="#e92101"><i>scheitert</i>&#160;(SEGFAULT)</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1457922573839" ID="ID_1314270854" MODIFIED="1458007324789" TEXT="Paket aus Ubuntu/Wily (3.5.0)">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1458007662437" ID="ID_487703803" MODIFIED="1458007674233" TEXT="Entwickler-Stand Dezember bauen">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1458007724205" ID="ID_1073626343" MODIFIED="1458007731864" TEXT="incl. meines Patches">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1459048483466" ID="ID_1671492074" MODIFIED="1459225166774" TEXT="neues Release 2.77 bauen">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1459048492089" ID="ID_758483927" MODIFIED="1459230705269" TEXT="Entwickler-Stand Ostern bauen">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1461117094446" ID="ID_344735929" MODIFIED="1461289824665" TEXT="neues Release 2.77a bauen">
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#338800" CREATED="1461117104804" ID="ID_68979036" MODIFIED="1461119564567" TEXT="Entwickler-Stand April bauen">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1436641933487" FOLDED="true" ID="ID_761151833" MODIFIED="1461117137502" TEXT="Debian/Wheezy">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      obsolet...
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_cancel"/>
<node CREATED="1436641944199" ID="ID_1369329699" MODIFIED="1436641947899" TEXT="nur Python 3.2">
<node CREATED="1436642050607" ID="ID_1468804991" MODIFIED="1436642060680" TEXT="Fehler-Diagnostik-Meldungen"/>
<node CREATED="1436642013735" ID="ID_715643907" MODIFIED="1436642029139" TEXT="String compilieren/interpretieren"/>
<node CREATED="1436642029567" ID="ID_1355847098" MODIFIED="1436642034659" TEXT="Unicode f&#xfc;r Code"/>
<node CREATED="1436642037079" ID="ID_108601883" MODIFIED="1436642044682" TEXT="Name der Import-Lib"/>
</node>
<node CREATED="1436641950647" ID="ID_588391845" MODIFIED="1436641995509" TEXT="OpenEXR 2.2.0">
<linktarget COLOR="#a9b4c1" DESTINATION="ID_588391845" ENDARROW="Default" ENDINCLINATION="-48;30;" ID="Arrow_ID_1192109263" SOURCE="ID_1205869713" STARTARROW="None" STARTINCLINATION="86;-8;"/>
</node>
</node>
</node>
<node CREATED="1436641880680" ID="ID_676998091" MODIFIED="1436641882932" TEXT="Upgrade">
<node CREATED="1436641884088" ID="ID_40997503" MODIFIED="1436641897625" TEXT="2.70">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1436641888025" ID="ID_1205869713" MODIFIED="1436641995508" TEXT="2.75a">
<arrowlink DESTINATION="ID_588391845" ENDARROW="Default" ENDINCLINATION="-48;30;" ID="Arrow_ID_1192109263" STARTARROW="None" STARTINCLINATION="86;-8;"/>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1450744772181" ID="ID_1261967164" MODIFIED="1458007714495" TEXT="2.76b">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1459047483327" ID="ID_1564946431" MODIFIED="1459225148528" TEXT="2.77">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1461117071441" ID="ID_1697587802" MODIFIED="1461289836300" TEXT="2.77a">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1436641853957" HGAP="81" ID="ID_576569203" MODIFIED="1436714459865" POSITION="left" TEXT="Review" VSHIFT="9">
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="prepare"/>
<node CREATED="1436642114382" ID="ID_975531283" MODIFIED="1436714422577" TEXT="Entry">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1436642124742" ID="ID_1890100547" MODIFIED="1436714441672" TEXT="erster Anlauf">
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1436642134070" ID="ID_1101247684" MODIFIED="1436642137250" TEXT="zweiter Anlauf">
<node CREATED="1436749670772" ID="ID_787845565" MODIFIED="1436749672856" TEXT="Patch">
<node CREATED="1436714326727" FOLDED="true" ID="ID_636372309" MODIFIED="1461030329017" TEXT="Patch-Update">
<icon BUILTIN="button_ok"/>
<node CREATED="1436714331607" ID="ID_1393441477" MODIFIED="1436716509758" TEXT="versioning_270.c">
<icon BUILTIN="button_ok"/>
<node CREATED="1436714346607" ID="ID_1720871627" MODIFIED="1436714354267" TEXT="vorl&#xe4;ufiger Patch"/>
<node CREATED="1436714355159" ID="ID_128810073" MODIFIED="1436714404934" TEXT="korrekte Versionsnummer">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      nice-to have
    </p>
    <p>
      denn ein nachfolgendes Changeset l&#246;st das anders
    </p>
    <p>
      Aber ich vermeide dadurch dumme Fragen
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436715622090" ID="ID_1481119374" MODIFIED="1436716512126" TEXT="mul_m4_series">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1436749604261" ID="ID_1280054834" MODIFIED="1436749621690" TEXT="double-free">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      untersucht,
    </p>
    <p>
      noch einen gefunden,
    </p>
    <p>
      abgedichtet
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1436749653805" ID="ID_874379201" MODIFIED="1437142722453" TEXT="in mein DEB einbringen">
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#338800" CREATED="1460747895197" ID="ID_1389537258" MODIFIED="1461287296562" TEXT="aktualisieren auf 2.77a">
<icon BUILTIN="button_ok"/>
<node CREATED="1461030350413" ID="ID_1388243559" MODIFIED="1461287286999">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Anker: <b>Ichthyo.Stand.16-4</b>&#160;c42a796e9
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="info"/>
</node>
<node CREATED="1461287271973" ID="ID_1297612818" MODIFIED="1461287283532" TEXT="Patch rebased + Style-clean-up">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node COLOR="#338800" CREATED="1436749658973" ID="ID_1531296958" MODIFIED="1461341121435" TEXT="erneut einreichen">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1437071968242" FOLDED="true" ID="ID_1325711910" MODIFIED="1461342422647">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      als <b>PPA</b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
<node CREATED="1437071977057" ID="ID_436153482" LINK="https://launchpad.net/~ichthyo/+archive/ubuntu/blender" MODIFIED="1438346475708" TEXT="PPA auf Ubuntu/Launchpad">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1437071994026" ID="ID_1343322194" MODIFIED="1460747779213" TEXT="https://launchpad.net/~ichthyo/+archive/ubuntu/blender">
<icon BUILTIN="info"/>
</node>
<node CREATED="1437076248383" FOLDED="true" ID="ID_1862473466" MODIFIED="1459288361847" TEXT="f&#xfc;r Ubuntu Trusty (14.04 LTS)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      aufgegeben, demn&#228;chst obsolet
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_cancel"/>
<node CREATED="1450913302328" ID="ID_631359525" MODIFIED="1450913309346" TEXT="problematisch"/>
<node CREATED="1450913310358" ID="ID_413746290" MODIFIED="1450913377305" TEXT="lockere libAV ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      von 6:10 &#8227; 6:9
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1450913396699" ID="ID_1899001177" MODIFIED="1450913452427" TEXT="maximal Python 3.4 verf&#xfc;gbar">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      das wird bald (nach 2.76b) ein Problem,
    </p>
    <p>
      so da&#223; ich Ubuntu/Trusty-Support aufgeben mu&#223;
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1437076248383" ID="ID_276821151" MODIFIED="1461289844768" TEXT="f&#xfc;r Ubuntu Vivid (15.04)">
<icon BUILTIN="button_ok"/>
<node CREATED="1459290182517" ID="ID_1004440108" MODIFIED="1459309728395" TEXT="braucht auch Python-3.5-backport">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1437076248383" ID="ID_1153874609" MODIFIED="1461289847630" TEXT="f&#xfc;r Ubuntu Wily (15.10)">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1450913523946" ID="ID_1482647820" MODIFIED="1461289850362" TEXT="f&#xfc;r Ubuntu Xenial (16.04 LTS-dev-preview)">
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#338800" CREATED="1437142730140" ID="ID_1449565273" MODIFIED="1461342413904" TEXT="&#xf6;ffentlich ank&#xfc;ndigen">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node COLOR="#338800" CREATED="1461280564949" ID="ID_1965919603" MODIFIED="1468189190898" TEXT="brauche Windows-Build">
<icon BUILTIN="button_ok"/>
<node CREATED="1461280575828" ID="ID_1423456016" MODIFIED="1461280787673" TEXT="Sergey m&#xf6;chte Feedback von Usern/K&#xfc;nstlern">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1461280747741" ID="ID_1268453490" MODIFIED="1461280769918" TEXT="speziell Sean Kennedy w&#xe4;re wichtig"/>
<node CREATED="1461280770482" ID="ID_1283715626" MODIFIED="1461280794156" TEXT="er und viele ander haben nur Windows">
<icon BUILTIN="smily_bad"/>
</node>
<node CREATED="1461280776641" ID="ID_1729296314" MODIFIED="1461280801142" TEXT="ich hab kein Windows">
<icon BUILTIN="smiley-oh"/>
</node>
<node CREATED="1461280842249" ID="ID_614417157" MODIFIED="1461280886018">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Kevin Mossey</b>&#160;hat mich privat angeschrieben
    </p>
  </body>
</html></richcontent>
<node CREATED="1461280849240" ID="ID_984190337" MODIFIED="1461280863481" TEXT="hat Erfolg mit seinen Flug/Drohnen-Bildern"/>
<node CREATED="1461280864374" ID="ID_245691621" MODIFIED="1461280871129" TEXT="bietet an, Windows-Build zu machen"/>
</node>
<node CREATED="1468189234852" ID="ID_1865511838" MODIFIED="1468189262013">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      schlie&#223;lich hat <b>&#1052;&#1091;&#1082;&#1072;&#1077;&#1074; &#1042;&#1080;&#1082;&#1090;&#1086;&#1088;</b>&#160; &lt;vitos1g@gmail.com&gt; den Build gemacht
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1468189276660" ID="ID_210863761" MODIFIED="1468189280358" TEXT="User-Feedback">
<node CREATED="1468189282395" ID="ID_324814762" MODIFIED="1468189286711" TEXT="Sean Kennedy">
<node CREATED="1468189291186" ID="ID_749978544" MODIFIED="1468189297492" TEXT="grunds&#xe4;tzlich positiv"/>
<node CREATED="1468189299026" ID="ID_1652672540" MODIFIED="1468189313674" TEXT="hat aber die Tracks nicht sinnvoll gew&#xe4;hlt"/>
<node CREATED="1468189314399" ID="ID_1868445454" MODIFIED="1468189324849" TEXT="Michael P. hat ihn darauf hingewiesen"/>
<node CREATED="1468189325421" ID="ID_809297377" MODIFIED="1468189356389" TEXT="danach: funktioniert bis auf minimale Ungenauigkeiten"/>
<node CREATED="1468189357849" ID="ID_844453657" MODIFIED="1468189367003" TEXT="diese kann ich erkl&#xe4;ren, das &#xfc;bliche Pivot-Problem"/>
</node>
<node CREATED="1468189372375" ID="ID_872254410" MODIFIED="1468189376833" TEXT="Michael P.">
<node CREATED="1468189377774" ID="ID_887071452" MODIFIED="1468189385072" TEXT="das Problem, die Tracks sinnvoll zu w&#xe4;hlen"/>
</node>
</node>
<node BACKGROUND_COLOR="#eee5c3" COLOR="#990000" CREATED="1470234834382" ID="ID_1659497085" MODIFIED="1470234848644" TEXT="Review Sergej">
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="flag-yellow"/>
<node CREATED="1470234851491" ID="ID_695533582" MODIFIED="1470484723819" TEXT="@deprecated">
<icon BUILTIN="button_ok"/>
<node CREATED="1470234857411" ID="ID_56703129" MODIFIED="1470234860190" TEXT="rot_track">
<node CREATED="1470234871105" ID="ID_637276206" MODIFIED="1470234875020" TEXT="clip-utils.c">
<node CREATED="1470234878472" ID="ID_845345549" MODIFIED="1470332463514" TEXT="clip_delete_track">
<icon BUILTIN="button_ok"/>
<node CREATED="1470234887550" ID="ID_49687534" MODIFIED="1470234896249" TEXT="l&#xf6;scht ggfs. Eintrag f&#xfc;r rot-track"/>
<node BACKGROUND_COLOR="#eee5c3" COLOR="#990000" CREATED="1470234896885" ID="ID_1626766501" MODIFIED="1470332367976">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      TODO: <font color="#010101">umschreiben auf neues System</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1470332394522" ID="ID_1009949337" MODIFIED="1470332454164" TEXT="neues System ist sauberer">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ...denn dort mu&#223; man nicht mehr einen externen Pointer auf NULL setzen.
    </p>
    <p>
      Stattdessen ist die track-&gt;flag entsprechend gesetzt.
    </p>
    <p>
      D.h. es gen&#252;gt, wenn der Track selber aus allen verpointerten Listen entfernt wurde!
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="info"/>
</node>
</node>
</node>
<node CREATED="1470234961020" ID="ID_430653296" MODIFIED="1470234964295" TEXT="tracking-ops.c">
<node CREATED="1470234965361" ID="ID_1253998623" MODIFIED="1470334533633" TEXT="join_tracks_exec">
<icon BUILTIN="button_ok"/>
<node CREATED="1470235021508" ID="ID_894853834" MODIFIED="1470235044072" TEXT="Frage: behandelt BKE_tracking_tracks_join schon das neue setup">
<icon BUILTIN="help"/>
</node>
<node CREATED="1470334573644" ID="ID_415837053" MODIFIED="1470334676764">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Antwort: nein, das war definitiv falsch
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      beim &quot;join&quot; werden bestehende Tracks zusammengef&#252;hrt und dann gel&#246;scht.
    </p>
    <p>
      Wenn einer der derart verarbeiteten Tracks f&#252;r Stab. markiert war, dann mu&#223;
    </p>
    <p>
      der betreffende Marker auf den Ziel-Track gesetzt werden!
    </p>
    <p>
      
    </p>
    <p>
      AUA: bisher &#252;bersehen; dadurch kommt die Maximalzahl der Tracks durcheinander
    </p>
    <p>
      Keine Ahnung, ob das ein Problem darstellt...
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
</node>
<node BACKGROUND_COLOR="#eee5c3" COLOR="#990000" CREATED="1470235033666" ID="ID_1586334417" MODIFIED="1470334561647">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sonst: <font color="#010101">umschreiben auf neus System</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1470235091825" ID="ID_73207132" MODIFIED="1470346638758" TEXT="rna-tracking-gen.c">
<icon BUILTIN="button_ok"/>
<node CREATED="1470235105490" ID="ID_1642720462" MODIFIED="1470235105490" TEXT="MovieTrackingStabilization_rotation_track_get"/>
<node CREATED="1470235113668" ID="ID_1518569217" MODIFIED="1470235113668" TEXT="MovieTrackingStabilization_rotation_track_set"/>
<node COLOR="#338800" CREATED="1470346641925" ID="ID_1387642654" MODIFIED="1470346652092" TEXT="Beide komplett enfernt">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node COLOR="#338800" CREATED="1470346658371" ID="ID_1352593355" MODIFIED="1470346672306" TEXT="jetzt keine deprecation-Warnings mehr">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1470330124084" ID="ID_1337304539" MODIFIED="1470484720852" TEXT="track-weight">
<icon BUILTIN="button_ok"/>
<node CREATED="1470330245291" ID="ID_1628004076" MODIFIED="1470330265572" TEXT="separates Stab-weight einf&#xfc;hren">
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1470330268152" ID="ID_810445048" MODIFIED="1470346699967" TEXT="Feld in DNA">
<icon BUILTIN="button_ok"/>
<node CREATED="1470346683320" ID="ID_1054981589" MODIFIED="1470346687611" TEXT="weight_stab"/>
<node CREATED="1470346705660" ID="ID_690146765" MODIFIED="1470346709239" TEXT="Migration"/>
</node>
<node CREATED="1470330273007" ID="ID_448809218" MODIFIED="1470346696051" TEXT="RNA-binding">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1470330276558" ID="ID_1726061116" MODIFIED="1470346703103" TEXT="UI">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1470330218638" ID="ID_808458925" MODIFIED="1470484690005" TEXT="runtime-data">
<icon BUILTIN="button_ok"/>
<node CREATED="1470330222446" ID="ID_772950835" MODIFIED="1470330226697" TEXT="Sergey: in DNA"/>
<node CREATED="1470330227117" ID="ID_1269944653" MODIFIED="1470330232497" TEXT="ich: nein, nur Zeiger"/>
<node CREATED="1470442756637" ID="ID_349316371" MODIFIED="1470442765287" TEXT="Vorschlag Sergej: GHash verwenden"/>
<node COLOR="#c50945" CREATED="1470442766515" ID="ID_1114699346" LINK="https://wiki.blender.org/index.php/Dev:Source/Data_Structures/GHash_Tutorial" MODIFIED="1470442790616" TEXT="Tutorial"/>
</node>
<node CREATED="1470484698789" HGAP="22" ID="ID_1462131547" MODIFIED="1470484715609" TEXT="Frage: Init des GHash synchronisieren" VSHIFT="19">
<icon BUILTIN="help"/>
</node>
<node CREATED="1470944922721" ID="ID_1000448607" MODIFIED="1470945048957" TEXT="Diskussion: Definition for runtime-data gekl&#xe4;rt">
<icon BUILTIN="idea"/>
<node CREATED="1470945016484" ID="ID_1741729944" MODIFIED="1470945027861" TEXT="entweder: wirklich persistent und immer konsistent -&gt; DNA"/>
<node CREATED="1470945028522" ID="ID_884142249" MODIFIED="1470945036556" TEXT="oder: lokal per Callgraph"/>
<node CREATED="1470945037760" ID="ID_1200038840" MODIFIED="1470945044149" TEXT="und nix dazwischen">
<icon BUILTIN="yes"/>
</node>
</node>
<node CREATED="1470944952276" ID="ID_736890491" MODIFIED="1471260132962" TEXT="Beschlu&#xdf;">
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1470944958459" ID="ID_1724650102" MODIFIED="1470945058079" TEXT="kein Caching von Werten mehr">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1470944967457" ID="ID_460969564" MODIFIED="1470945060856" TEXT="Init-Pass f&#xfc;r jeden Frame">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1470944974193" ID="ID_332007735" MODIFIED="1470945063275" TEXT="lokaler StabCtx per Call-Graph">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1470944986248" ID="ID_755692977" MODIFIED="1470945066339" TEXT="vereinfacht Memory-Management drastisch">
<icon BUILTIN="ksmiletris"/>
</node>
<node CREATED="1470944995725" ID="ID_276574663" MODIFIED="1470945069161" TEXT="stab-&gt;ok wird @depreciated">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1471259772960" ID="ID_775129741" MODIFIED="1471259821926" TEXT="&#xc4;rger beim Dev-Meeting 14.8.">
<icon BUILTIN="smily_bad"/>
<node CREATED="1471259793173" ID="ID_1024623231" MODIFIED="1471260142823" TEXT="Sergej hat den Update nicht angeschaut">
<icon BUILTIN="info"/>
</node>
<node CREATED="1471259803762" ID="ID_995747974" MODIFIED="1471259810120" TEXT="Ton: &quot;zu sp&#xe4;t&quot;"/>
<node BACKGROUND_COLOR="#eee5c3" COLOR="#990000" CREATED="1471259811043" ID="ID_1333201584" MODIFIED="1471259836282" TEXT="Nachtermin bis n&#xe4;chsten Dienstag">
<icon BUILTIN="flag-yellow"/>
</node>
</node>
<node CREATED="1471259838454" ID="ID_306570822" MODIFIED="1471259845632" TEXT="letzte Punkte">
<node CREATED="1471259846840" ID="ID_1341257935" MODIFIED="1471259849472" TEXT="Migration">
<node CREATED="1471259877592" ID="ID_656382109" MODIFIED="1471260194674" TEXT="sollte nicht nach untern absichern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ich hatte einen zus&#228;tzlichen Check eingebaut,
    </p>
    <p>
      falls man von einer zu alten Blender-Version migriert, die noch keinen
    </p>
    <p>
      Tracking-Support hat
    </p>
    <p>
      
    </p>
    <p>
      Habe jetzt den (vereinfachenden) Patch von Sergej mal angewendet
    </p>
    <p>
      vlt. ist sp&#228;ter noch die M&#246;glichkeit, das zu diskutieren.
    </p>
    <p>
      Schlie&#223;lich ist der Tracking-Support nun inzwischen auch schon lang in Blender
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node BACKGROUND_COLOR="#eee5c3" COLOR="#990000" CREATED="1471259890078" ID="ID_1435634092" MODIFIED="1471259986493" TEXT="noch zu diskutieren">
<icon BUILTIN="flag-yellow"/>
</node>
<node CREATED="1471259895671" ID="ID_407961591" MODIFIED="1471260203484" TEXT="Init f&#xfc;r stabilization.scale sicherstellen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      das habe ich bisher in readfile.c gemacht
    </p>
    <p>
      Ist aber eine Migrations-Angelegenheit:
    </p>
    <p>
      fr&#252;her war stabilization.scale nur ein Wert-Cache f&#252;r die &quot;Autoscale&quot;-Funktion
    </p>
    <p>
      nun ist es immer ein g&#252;ltiger Wert
    </p>
    <p>
      
    </p>
    <p>
      Inzwischen habe ich &#252;berall guards f&#252;r scale==0 eingebaut, so da&#223; es nur noch einmal
    </p>
    <p>
      bei der Migration passieren m&#252;&#223;te
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1471259852692" ID="ID_626586485" MODIFIED="1471260205614" TEXT="unn&#xf6;tiger NULL-Check">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Sergey: wenn ein Track keine Marker hat, dann ist das ein Fehler und crasht &#252;berall
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1471793578214" HGAP="23" ID="ID_1900329216" MODIFIED="1471793588341" TEXT="UI-Anpassungen" VSHIFT="19">
<icon BUILTIN="pencil"/>
<node CREATED="1471793590725" ID="ID_139068983" MODIFIED="1471793607973" TEXT="Sergej hat das &quot;collapse tracks&quot; entfernt">
<icon BUILTIN="smiley-angry"/>
</node>
<node CREATED="1471793609651" ID="ID_73978739" MODIFIED="1471793620790" TEXT="daraufhin war ich sehr b&#xf6;hse"/>
<node CREATED="1471793621280" ID="ID_404827959" MODIFIED="1471793655118" TEXT="sehr guter neuer Vorschlag von Sergej ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ... Radiobuttons verwenden!
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1471793658363" ID="ID_1754145043" MODIFIED="1471793669347" TEXT="Feinanpassungen am Enable/Disable">
<icon BUILTIN="button_ok"/>
</node>
<node BACKGROUND_COLOR="#fdfdcf" COLOR="#ff0000" CREATED="1471793670379" ID="ID_692647915" MODIFIED="1471793681491" TEXT="Orientierung des Expected-Zoom">
<icon BUILTIN="flag-pink"/>
<node CREATED="1471793684168" ID="ID_55679672" MODIFIED="1471793704377" TEXT="ich: warum verh&#xe4;lt sich das so unintuitiv">
<icon BUILTIN="help"/>
</node>
<node CREATED="1471793705581" ID="ID_1099901639" MODIFIED="1471793717430" TEXT="ich: warum arbeitet das anders herum">
<icon BUILTIN="help"/>
</node>
<node CREATED="1471793737377" ID="ID_87674632" MODIFIED="1471793748605" TEXT="Vorschlag: in RNA fixen: 1/scale">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1471793785163" ID="ID_1030308694" MODIFIED="1471793815525" TEXT="nebenbei bemerkt: Fehler in scale_influence">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sollte nicht auf den &quot;expected&quot;-Parameter wirken
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1471793749608" ID="ID_637273414" MODIFIED="1471793782656" TEXT="AUA: da ist ja tats&#xe4;chlich ein Fehler im Code">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ich multipliziere durch die Baseline, anstatt durch sie zu dividieren
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node BACKGROUND_COLOR="#eee5c3" COLOR="#990000" CREATED="1471793822502" ID="ID_1308709955" MODIFIED="1471793827670" TEXT="noch zu committen">
<icon BUILTIN="flag-yellow"/>
</node>
</node>
</node>
<node COLOR="#338800" CREATED="1471793554782" HGAP="52" ID="ID_87320557" MODIFIED="1471927891583" TEXT="Einwand Sean Kennedy" VSHIFT="16">
<icon BUILTIN="button_ok"/>
<node CREATED="1471793832101" ID="ID_1065214031" MODIFIED="1471793845101" TEXT="&quot;warum wurde das committed&quot;???">
<icon BUILTIN="smiley-angry"/>
</node>
<node CREATED="1471793846219" ID="ID_1388185696" MODIFIED="1471793858429" TEXT="&quot;ich hab doch gesagt, das funktioniert nicht&quot;!!!!"/>
<node CREATED="1471793859225" ID="ID_1554342439" MODIFIED="1471793867028" TEXT="naja, so hat ers nicht gesagt!"/>
<node CREATED="1471793867879" ID="ID_607535122" MODIFIED="1471793881758" TEXT="aber: Sergej sagt: Test-Szene ist Regression">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1471793887845" ID="ID_780088858" MODIFIED="1471927801585" TEXT="Untersuchung">
<node CREATED="1471793893676" ID="ID_1299832627" MODIFIED="1471793900407" TEXT="alte L&#xf6;sung verwendet Trick"/>
<node CREATED="1471793900787" ID="ID_1807053105" MODIFIED="1471842179138" TEXT="extrem schwer in Neuer nachzubauen"/>
<node CREATED="1471793907347" ID="ID_1318745022" MODIFIED="1471842195353" TEXT="sollte aber grunds&#xe4;tzlich gehen">
<icon BUILTIN="button_ok"/>
<node CREATED="1471842180222" ID="ID_1402694142" MODIFIED="1471842184921" TEXT="ja, war extrem ekelig"/>
<node CREATED="1471842185645" ID="ID_1058920010" MODIFIED="1471842191856" TEXT="aber Systematik wirkt!"/>
</node>
<node CREATED="1471793912890" ID="ID_1130090789" MODIFIED="1471793920501" TEXT="Alternative: doch den Pivot durchreichen"/>
</node>
<node COLOR="#338800" CREATED="1471927814923" ID="ID_906535068" MODIFIED="1471927853735" TEXT="Umbau: translation weight centre als Pivot">
<icon BUILTIN="button_ok"/>
</node>
<node BACKGROUND_COLOR="#eee5c3" COLOR="#990000" CREATED="1471927766378" ID="ID_1352082951" MODIFIED="1471927786999" TEXT="dabei bemerkt: Autoscale kaputt">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node BACKGROUND_COLOR="#eee5c3" COLOR="#990000" CREATED="1471927876147" HGAP="25" ID="ID_846947601" MODIFIED="1471927894206" TEXT="Autoscale-Problem" VSHIFT="33">
<icon BUILTIN="flag-yellow"/>
<node CREATED="1471927901400" ID="ID_721885726" MODIFIED="1471927906619" TEXT="berechnet falschen Scale-Faktor"/>
<node CREATED="1471927907447" ID="ID_756053696" MODIFIED="1471927927148" TEXT="Regression durch Pivot-&#xc4;nderung">
<icon BUILTIN="help"/>
</node>
<node CREATED="1471927928036" ID="ID_943007210" MODIFIED="1471927932024" TEXT="NEIN">
<icon BUILTIN="idea"/>
<node CREATED="1471927934379" ID="ID_420664632" MODIFIED="1471927943342" TEXT="per Bisect untersucht"/>
<node CREATED="1471927943810" ID="ID_1573014863" MODIFIED="1471928048876" TEXT="Ist kaputt seit Anbeginn meines Patches">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      das hei&#223;t:
    </p>
    <p>
      Ich habe eine sehr fr&#252;he Version rekonstruiert, jedoch on Top of aktuellem Master.
    </p>
    <p>
      Dabei zeigt sich: Bereits die aller erste rudiment&#228;r funktionierend Version hat Autoscale gebrochen!!
    </p>
    <p>
      Es hat im Besonderen NICHTS zu tun mit dem Aspect-Ratio-Problem
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1471928059267" ID="ID_452528711" MODIFIED="1471928070245" TEXT="Vergleich Original vs. meine Version">
<node CREATED="1471928074032" ID="ID_374096815" MODIFIED="1471928080948" TEXT="mit Printf beobachten"/>
<node CREATED="1471928081376" ID="ID_39358657" MODIFIED="1471928093842" TEXT="offizielle Stabilizer-Testszene"/>
<node CREATED="1471928095022" ID="ID_871587255" MODIFIED="1471928119174" TEXT="Ursache: translation-Feld verh&#xe4;lt sich unterschiedlich">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1471928128498" ID="ID_952738463" MODIFIED="1471928132149" TEXT="Ursache">
<node CREATED="1471928134017" ID="ID_1155910097" MODIFIED="1471928137557" TEXT="zwei Probleme"/>
<node CREATED="1471928180267" ID="ID_1499689130" MODIFIED="1471928187199" TEXT="Problem-1">
<icon BUILTIN="full-1"/>
<node CREATED="1471928138096" ID="ID_789188396" MODIFIED="1471928157737" TEXT="translation enh&#xe4;lt den Workaround f&#xfc;r das Pivot-Problem"/>
<node CREATED="1471928159750" ID="ID_1515994569" MODIFIED="1471928171888" TEXT="...und die Original-Version setzt das so vorraus"/>
<node CREATED="1471928195265" ID="ID_1120919573" MODIFIED="1471928221665" TEXT="Bisher hatte mein Patch diesen Murks nicht ==&gt; Autoscale kaputt"/>
<node CREATED="1471928222797" ID="ID_889811978" MODIFIED="1471928247230" TEXT="Jetzt rechnet mein Patch etwas anders ==&gt; Autoscale kaputt"/>
<node CREATED="1471928248034" ID="ID_942478687" MODIFIED="1471928266779" TEXT="L&#xf6;sung: wie Original machen: Rotiere um Mitte des Frames"/>
</node>
<node CREATED="1471928275110" ID="ID_1426855139" MODIFIED="1471928281571" TEXT="Problem-2">
<icon BUILTIN="full-2"/>
<node CREATED="1471928283309" ID="ID_1006774506" MODIFIED="1471928298759" TEXT="Autoscale erwartet, da&#xdf; zentrisch skaliert wird"/>
<node CREATED="1471928299211" ID="ID_502197769" MODIFIED="1471928306438" TEXT="mein Patch skaliert aber um den Pivot"/>
<node BACKGROUND_COLOR="#eee5c3" COLOR="#990000" CREATED="1471928310489" ID="ID_1870004942" MODIFIED="1471928324769" TEXT="nicht ohne Weiteres l&#xf6;sbar">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1471928325767" ID="ID_114956309" MODIFIED="1471928339372" TEXT="f&#xe4;llt auf bei asymetrischem Pivot">
<icon BUILTIN="idea"/>
</node>
</node>
<node COLOR="#ae1010" CREATED="1471928345125" HGAP="24" ID="ID_536506441" MODIFIED="1471928438758" TEXT="eigentliche Ursache" VSHIFT="3">
<icon BUILTIN="idea"/>
<node CREATED="1471928369882" ID="ID_14378667" MODIFIED="1471928380836" TEXT="Qualit&#xe4;t der Autoscale-Funktion"/>
<node CREATED="1471928382680" ID="ID_431852744" MODIFIED="1471928393579" TEXT="ist nicht verst&#xe4;ndlich geschrieben"/>
<node CREATED="1471928394263" ID="ID_1252512367" MODIFIED="1471928421093" TEXT="verwendet translate und angle">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1471928400878" ID="ID_1154153499" MODIFIED="1471928431967" TEXT="anstatt sich nur auf die effektive Matrix zu st&#xfc;tzen">
<icon BUILTIN="yes"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1436642086687" HGAP="-16" ID="ID_667891095" MODIFIED="1436642092300" POSITION="left" TEXT="Doku" VSHIFT="95">
<node CREATED="1436642093110" ID="ID_1489772734" MODIFIED="1436642098202" TEXT="Github-Wiki"/>
<node CREATED="1436642098798" ID="ID_1828646356" MODIFIED="1436642101282" TEXT="Video"/>
</node>
<node CREATED="1436741267836" HGAP="-65" ID="ID_706085896" MODIFIED="1436741555493" POSITION="left" VSHIFT="249">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Blender
    </p>
    <p>
      <font size="5">Interna</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
<node CREATED="1436741297860" ID="ID_164730890" MODIFIED="1436741313808" TEXT="Memory Management">
<node CREATED="1436741366548" FOLDED="true" ID="ID_640241160" MODIFIED="1470342077327" TEXT="System">
<node CREATED="1436741373676" ID="ID_1221253732" MODIFIED="1436741383280" TEXT="eigner Allokator">
<node CREATED="1436741403724" ID="ID_1848419789" MODIFIED="1436741407400" TEXT="mallocn.c"/>
<node CREATED="1436741407939" ID="ID_29563260" MODIFIED="1436741419744" TEXT="&#xfc;ber f-ptr virtualisiert"/>
<node CREATED="1436741420428" ID="ID_1263235326" MODIFIED="1436741424456" TEXT="Makro-Frontend"/>
<node CREATED="1436741511787" ID="ID_943143594" MODIFIED="1436741519798" TEXT="Standard-Implementierung">
<node CREATED="1436741526691" ID="ID_64399575" MODIFIED="1436741528951" TEXT="lockfree"/>
<node CREATED="1436741539131" ID="ID_1891390460" MODIFIED="1436741549799" TEXT="mallocn_lockfree_impl.c"/>
</node>
</node>
<node CREATED="1436741432916" ID="ID_1236682910" MODIFIED="1436741440544" TEXT="Memheads">
<node CREATED="1436741441564" ID="ID_897486830" MODIFIED="1436741454712" TEXT="jeder Memhead kennt seine Gr&#xf6;&#xdf;e"/>
<node CREATED="1436741455235" ID="ID_1025111757" MODIFIED="1436741463903" TEXT="liegt unmittelbar davor im Speicher"/>
</node>
</node>
<node CREATED="1436741315340" ID="ID_564268435" MODIFIED="1436741320040" TEXT="MEM_dupallocN">
<node CREATED="1436741589411" ID="ID_1505595236" MODIFIED="1436741596640" TEXT="MEM_lockfree_dupallocN">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1436741321244" ID="ID_1757084630" MODIFIED="1436741345200" TEXT="dupliziert eine Struct auf dem Heap"/>
<node CREATED="1436741346028" ID="ID_313839037" MODIFIED="1436741355696" TEXT="alloziert neu mit vorgegebener Gr&#xf6;&#xdf;e"/>
<node CREATED="1436741356500" ID="ID_711307974" MODIFIED="1436741359392" TEXT="memcopy"/>
<node CREATED="1436741601923" ID="ID_453831390" MODIFIED="1436743318389" TEXT="NOP wenn Arg=NULL">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ....und gibt dann auch NULL zur&#252;ck
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
</node>
<node CREATED="1470346568951" ID="ID_1898078474" MODIFIED="1470346573002" TEXT="Speichern/Laden">
<node CREATED="1470346576366" ID="ID_1128909248" MODIFIED="1470346585465" TEXT="DNA-Struct-Definition notwendig"/>
<node CREATED="1470346585917" ID="ID_1651902381" MODIFIED="1470346591656" TEXT="der Rest passiert automatisch"/>
<node CREATED="1470346592124" ID="ID_1564282766" MODIFIED="1470346602479" TEXT="man mu&#xdf; nur beim Laden Sub-Structs richtig linken"/>
</node>
<node CREATED="1436742376976" FOLDED="true" ID="ID_1510557677" MODIFIED="1470346564858" TEXT="Tracking">
<node CREATED="1436742392144" ID="ID_222217427" MODIFIED="1436742397308" TEXT="tracking_reconstruction">
<node CREATED="1436742412760" ID="ID_1334916516" MODIFIED="1436742420244" TEXT="findet Trajektorie als L&#xf6;sung"/>
<node CREATED="1436744482528" ID="ID_1337998690" MODIFIED="1436744506187" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      verwendet die <b>libmv</b>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436742421504" ID="ID_611423963" MODIFIED="1436742510140" TEXT="SolveCameraJob"/>
<node CREATED="1436742510824" ID="ID_1934601769" MODIFIED="1436742551723" TEXT="danach: fertigstellen">
<node CREATED="1436742553048" ID="ID_535884950" MODIFIED="1436742567243" TEXT="BKE_tracking_reconstruction_finish"/>
<node CREATED="1436742568167" ID="ID_1381465869" MODIFIED="1470342133979" TEXT="ruft: tracks_map_merge">
<linktarget COLOR="#99ffff" DESTINATION="ID_1381465869" ENDARROW="Default" ENDINCLINATION="-260;-167;" ID="Arrow_ID_555610345" SOURCE="ID_1739650187" STARTARROW="None" STARTINCLINATION="-10;97;"/>
<node CREATED="1436742659007" ID="ID_67946877" MODIFIED="1436742675411" TEXT="TracksMap">
<node CREATED="1436742675903" ID="ID_1352457271" MODIFIED="1436742684315" TEXT="ist eine hashmap von Tracks"/>
<node CREATED="1436742715263" ID="ID_287648938" MODIFIED="1436742724763" TEXT="h&#xe4;llt auch eine Liste"/>
<node CREATED="1436742755039" ID="ID_1857886048" MODIFIED="1436742787915">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: right">
      vermutlich:
    </p>
    <p style="text-align: right">
      <i>alle Tracks, die zur L&#246;sung verwendet wurden</i>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436744783383" ID="ID_1784038555" MODIFIED="1436744877988">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Zweck:
    </p>
  </body>
</html></richcontent>
<node CREATED="1436744852167" ID="ID_831457150" MODIFIED="1436744889220">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Aktualisieren der Ursprungs-Tracks
    </p>
    <p>
      anhand der Ergebnisse der L&#246;sungssuche
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1436744930670" ID="ID_611428953" MODIFIED="1436744936195" TEXT="Ursprungs-Tracks">
<node CREATED="1436744937023" ID="ID_1136089691" MODIFIED="1436744943042" TEXT="entweder f&#xfc;r die Kamera"/>
<node CREATED="1436744943631" ID="ID_1154375496" MODIFIED="1436744964381" TEXT="oder f&#xfc;r ein Objekt">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ...ein Objekt, dessen Bewegung getrackt wird
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1436744904015" ID="ID_1275518745" MODIFIED="1436744914634" TEXT="ggfs Einf&#xfc;gen neu erzeugter Tracks"/>
<node CREATED="1436744916575" ID="ID_1476806782" MODIFIED="1436744923402" TEXT="Sicherstellen eindeutiger Track-IDs"/>
</node>
<node CREATED="1436744990662" ID="ID_423169408" MODIFIED="1436744994410" TEXT="POST">
<node CREATED="1436744995358" ID="ID_1668336356" MODIFIED="1436745021460">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      alle relevanten Infos
    </p>
    <p>
      wurden aus den Tracks
    </p>
    <p>
      aus der Track-Map herauskopiert
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436745028150" ID="ID_118255154" MODIFIED="1436745038178" TEXT="Alle aktiven Tracks haben eindeutige ID"/>
</node>
<node CREATED="1436745058341" ID="ID_713897662" MODIFIED="1436745072888" TEXT="danach: Tracks-Map irrelevant">
<arrowlink DESTINATION="ID_442743824" ENDARROW="Default" ENDINCLINATION="242;0;" ID="Arrow_ID_80646076" STARTARROW="None" STARTINCLINATION="242;0;"/>
</node>
</node>
</node>
<node CREATED="1436744663560" ID="ID_1339137521" MODIFIED="1436744679107" TEXT="Ende: freigeben">
<node CREATED="1436744679928" ID="ID_168090906" MODIFIED="1436744683844" TEXT="BKE_tracking_reconstruction_context_free"/>
<node CREATED="1436744703103" ID="ID_363541346" MODIFIED="1436744723459" TEXT="gibt frei">
<node CREATED="1436744724263" ID="ID_1532098647" MODIFIED="1436744727019" TEXT="den Kontext"/>
<node CREATED="1436744727367" ID="ID_789567659" MODIFIED="1436744730427" TEXT="die libmv-Daten"/>
<node CREATED="1436744730871" ID="ID_442743824" MODIFIED="1436745072887" TEXT="die Tracks-Map">
<linktarget COLOR="#a9b4c1" DESTINATION="ID_442743824" ENDARROW="Default" ENDINCLINATION="242;0;" ID="Arrow_ID_80646076" SOURCE="ID_713897662" STARTARROW="None" STARTINCLINATION="242;0;"/>
<node CREATED="1436744772599" ID="ID_1584559788" MODIFIED="1436744774147" TEXT="BKE_tracking_track_free"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1436642157958" HGAP="29" ID="ID_1521617149" MODIFIED="1436643152320" POSITION="right" TEXT="Konzept" VSHIFT="-31">
<node CREATED="1436643123858" ID="ID_1293962496" MODIFIED="1436643178230">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Werkzeug</b>&#160;statt Magie
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436643133194" ID="ID_1822818488" MODIFIED="1436643167139" TEXT="Der Kameramann wei&#xdf; was er tut">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="yes"/>
</node>
<node CREATED="1436643199249" ID="ID_1161855894" MODIFIED="1436643201598" TEXT="Workflow"/>
</node>
<node CREATED="1436642151630" ID="ID_552228576" MODIFIED="1436642168950" POSITION="right" TEXT="Entwicklung">
<font NAME="SansSerif" SIZE="16"/>
<node CREATED="1436642678428" ID="ID_1447543726" MODIFIED="1436642781150" TEXT="Grundkonzept umgesetzt">
<icon BUILTIN="button_ok"/>
<node CREATED="1436642688428" ID="ID_466533085" MODIFIED="1436642701588">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Trennung von Me&#223;wert
    </p>
    <p>
      und Manipulation
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436642787204" ID="ID_1096643282" MODIFIED="1436642794408" TEXT="Koordinaten">
<node CREATED="1436642795331" ID="ID_1403585828" MODIFIED="1436642800167" TEXT="logisch definieren"/>
<node CREATED="1436642800523" ID="ID_281646314" MODIFIED="1436642807799" TEXT="zwischen Canvas und Frame unterscheiden"/>
</node>
</node>
<node CREATED="1436642712356" ID="ID_214702345" MODIFIED="1436642774582" TEXT="Code &#xfc;berarbeitet">
<icon BUILTIN="button_ok"/>
<node CREATED="1436642717260" ID="ID_1771565832" MODIFIED="1436642723896" TEXT="symmetrisch machen"/>
<node CREATED="1436642724796" ID="ID_547887915" MODIFIED="1436642728968" TEXT="lesbarer machen"/>
</node>
<node CREATED="1436642732140" HGAP="39" ID="ID_1640021324" MODIFIED="1436642858625" TEXT="Automation" VSHIFT="1">
<icon BUILTIN="prepare"/>
<node CREATED="1436642739276" ID="ID_1785940699" MODIFIED="1436642825970" TEXT="Teil I : automatisierbar machen">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1436642749748" ID="ID_762314661" MODIFIED="1436642766450" TEXT="Teil II: Automation editierbar machen">
<icon BUILTIN="bell"/>
</node>
</node>
<node CREATED="1436642834707" HGAP="74" ID="ID_1765241815" MODIFIED="1436712877257" VSHIFT="27">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Erweiterte
    </p>
    <p>
      <font size="4">Funktionen</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="hourglass"/>
<node CREATED="1436642890723" ID="ID_1737347479" MODIFIED="1436716612894" TEXT="auto-Zoom">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1436642904227" ID="ID_673570813" MODIFIED="1436642913113" TEXT="Rahmen f&#xfc;llen">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1436642962795" ID="ID_1765712063" MODIFIED="1436716602846" TEXT="Automations-L&#xfc;cken">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1436642920834" ID="ID_76129276" MODIFIED="1436716608936" TEXT="Pivot steuerbar machen">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1436642978642" ID="ID_1118009424" MODIFIED="1436716618230" TEXT="Scherung / Parallelogramm">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1436642933843" ID="ID_1292059741" MODIFIED="1436716622584" TEXT="D&#xe4;mpfungs-Filter">
<icon BUILTIN="full-3"/>
</node>
</node>
<node CREATED="1436745870315" HGAP="225" ID="ID_744407749" MODIFIED="1436745881353" TEXT="Interna" VSHIFT="26">
<node CREATED="1436745882619" FOLDED="true" ID="ID_1225557596" MODIFIED="1470342189535" TEXT="Initialisierung">
<linktarget COLOR="#99ffff" DESTINATION="ID_1225557596" ENDARROW="Default" ENDINCLINATION="-73;187;" ID="Arrow_ID_445220708" SOURCE="ID_1274016984" STARTARROW="None" STARTINCLINATION="586;-144;"/>
<icon BUILTIN="button_ok"/>
<node CREATED="1436745891907" ID="ID_1179549760" MODIFIED="1436745899895" TEXT="globale Flag (stab-&gt;ok)"/>
<node CREATED="1436745900955" ID="ID_615132699" MODIFIED="1436745931551" TEXT="wird explizit zur&#xfc;ckgesetzt">
<node CREATED="1436745932587" ID="ID_1459135370" MODIFIED="1436745934775" TEXT="rna_tracking_flushUpdate">
<node CREATED="1436745954435" ID="ID_1358053192" MODIFIED="1436745961119" TEXT="wird von allen GUI-Updates gerufen"/>
<node CREATED="1436745961571" ID="ID_1317573038" MODIFIED="1436745970319" TEXT="d.h. erzwingt jeweils re-Initialisierung"/>
</node>
<node CREATED="1436745935315" ID="ID_1054774814" MODIFIED="1436745951711" TEXT="Add/Remove-Track Operatoren"/>
</node>
<node CREATED="1436746010995" ID="ID_1552016561" MODIFIED="1436746015806" TEXT="wird zentral getriggert">
<node CREATED="1436746035186" ID="ID_1741295884" MODIFIED="1436746036894" TEXT="BKE_tracking_stabilization_data_get"/>
<node CREATED="1436746037626" ID="ID_1910514621" MODIFIED="1436746054240">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      d.h. der <b>eine und einzige</b>&#160;Zugangsweg
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1436745972875" ID="ID_38554048" MODIFIED="1436745976214" TEXT="einzelne Tracks">
<node CREATED="1436745977018" ID="ID_1385608866" MODIFIED="1436745983895" TEXT="haben lokale Arbeitsdaten"/>
<node CREATED="1436745984291" ID="ID_358383713" MODIFIED="1436745999910" TEXT="Berechnungen sind pro Track per Guard gesch&#xfc;tzt"/>
</node>
</node>
</node>
<node CREATED="1436712879197" FOLDED="true" HGAP="113" ID="ID_715016663" MODIFIED="1470346618368" TEXT="QA" VSHIFT="45">
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="go"/>
<node CREATED="1436713462114" ID="ID_310396424" MODIFIED="1470342139801" TEXT="double free">
<icon BUILTIN="button_ok"/>
<node CREATED="1436713491938" ID="ID_41806219" MODIFIED="1436713495638" TEXT="tracking_util.c"/>
<node CREATED="1436713496298" ID="ID_1219431946" MODIFIED="1436713521047">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* discard stabilization working data; needs to be recalculated anyway */
    </p>
    <p>
      if (old_track-&gt;stabilizationBase)
    </p>
    <p>
      MEM_freeN(old_track-&gt;stabilizationBase);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436713525394" ID="ID_1709258110" MODIFIED="1436713536726" TEXT="Reentrance?"/>
<node CREATED="1436713537290" ID="ID_583801813" MODIFIED="1436713545230" TEXT="MEM_freeN setzt nicht auf NULL"/>
<node CREATED="1436713553162" ID="ID_1010119941" MODIFIED="1436746673352" TEXT="aufzukl&#xe4;ren">
<icon BUILTIN="button_ok"/>
<node CREATED="1436746071938" ID="ID_561487150" MODIFIED="1436746078294" TEXT="schwer zu verstehen">
<node CREATED="1436746079594" ID="ID_1606005684" MODIFIED="1436746084430" TEXT="verteiltes Mem-management"/>
<node CREATED="1436746084922" ID="ID_1739650187" MODIFIED="1470342133979" TEXT="tracks_map_merge">
<arrowlink COLOR="#99ffff" DESTINATION="ID_1381465869" ENDARROW="Default" ENDINCLINATION="-260;-167;" ID="Arrow_ID_555610345" STARTARROW="None" STARTINCLINATION="-10;97;"/>
</node>
</node>
<node CREATED="1436746167410" ID="ID_1726276915" MODIFIED="1436746171891" TEXT="Ergebnis">
<icon BUILTIN="idea"/>
<node CREATED="1436746173050" ID="ID_447101326" MODIFIED="1436746475972" TEXT="die auff&#xe4;llige Stelle war harmlos">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ...vermutlich habe ich mir das damals genau so klargemacht
    </p>
    <ul>
      <li>
        an der Stelle werden die Daten eines old_track umkopiert
      </li>
      <li>
        dieser old_track stammt aus den Tracks zur Kamera bzw. zu einem zu trackenden Objekt
      </li>
      <li>
        Zweck ist, diese Daten auf eine neue, frische Kopie umzusetzen
      </li>
      <li>
        der old_track wurde bereits vorher aus der &#220;bergeordneten Struktur (Kamera / Objekt) herausgenommen
      </li>
      <li>
        Spinlock
      </li>
      <li>
        kurz darauf wird old_track mit den Inhalten aus dem Track aus der trackMap &#252;berschrieben
      </li>
      <li>
        d.h. die bisherigen Inhalte sind weg.
      </li>
      <li>
        daher spielt es keine Rolle mehr, man mu&#223; den Zeiger nicht NULLen
      </li>
      <li>
        die trackMap wird &#252;brigens anschlie&#223;end ganz ordnungsgem&#228;&#223; freigegeben
      </li>
      <li>
        <font color="#ff0000"><b>BOOOM&#160;</b></font>und da steckt die Falle...
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1436746182266" ID="ID_628620151" MODIFIED="1436746669512" TEXT="aber direkt daneben schlummerte ein double-free-Fehler">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ....denn die Inhalte werden hierbei einfach Roh r&#252;berkopiert
    </p>
    <ul>
      <li>
        der bestehende Code biegt das gleich danach grade, indem...<br />&#160;&#160;*old_track = *track; old_track-&gt;markers = MEM_dupallocN(old_track-&gt;markers);
      </li>
      <li>
        denn das Problem ist: das Original wird nachher ordnungsgem&#228;&#223; freigegeben<br />und mit der Kopie wird weitergearbeitet, und sie wird sp&#228;ter freigegeben<br />
      </li>
      <li>
        d.h. wir haben das typische shallow copy - Problem<br />
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1436746837007" ID="ID_1274016984" MODIFIED="1436746934547" TEXT="Initialisierung gepr&#xfc;ft und OK">
<arrowlink COLOR="#99ffff" DESTINATION="ID_1225557596" ENDARROW="Default" ENDINCLINATION="-73;187;" ID="Arrow_ID_445220708" STARTARROW="None" STARTINCLINATION="586;-144;"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1436746684200" HGAP="43" ID="ID_1766091774" MODIFIED="1436747354156" TEXT="L&#xf6;sung" VSHIFT="-2">
<icon BUILTIN="button_ok"/>
<node CREATED="1436746690480" ID="ID_1817396651" MODIFIED="1436746697380" TEXT="bestehender Code OK"/>
<node CREATED="1436746698016" ID="ID_1484775451" MODIFIED="1436746715884" TEXT="mu&#xdf; dicht daneben an zwei weiteren Stellen explizit freigeben"/>
<node CREATED="1436746716280" ID="ID_1995217976" MODIFIED="1436746731412">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      und <i>bei diesen</i>&#160;auch auf NULL setzen
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436746741000" ID="ID_1149113879" MODIFIED="1436747351344" TEXT="In das Changeset einarbeiten!">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node COLOR="#338800" CREATED="1459233524077" ID="ID_346547773" MODIFIED="1461280117091" TEXT="Doxygen format">
<icon BUILTIN="button_ok"/>
<node CREATED="1461280096980" ID="ID_174791296" LINK="https://wiki.blender.org/index.php/Dev:Doc/Code_Style" MODIFIED="1461280106696" TEXT="Blender Styleguide"/>
<node CREATED="1459233539003" ID="ID_1691501696" MODIFIED="1461280111435" TEXT="policy lesen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ...dankenswerterweise gibt es jetzt eine
    </p>
    <p>
      im Gegensatz zu damals
    </p>
    <p>
      
    </p>
    <p>
      ...also empfiehlt es sich auch, sich daran zu halten
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1461280120528" ID="ID_309936636" MODIFIED="1461280159437" TEXT="au&#xdf;erdem: &#xf6;ffnende Klammer f&#xfc;r Funktionen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ...kommt stets an den Anfang einer neuen Zeile!
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="info"/>
</node>
</node>
<node CREATED="1468189533593" ID="ID_542931550" MODIFIED="1468189650140" TEXT="UI-Parameter">
<icon BUILTIN="button_ok"/>
<node CREATED="1468189542192" ID="ID_564266092" MODIFIED="1468189653219" TEXT="expected zoom: 0 ausschlie&#xdf;en">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ein zoom == 0 bedeutet, da&#223; das Bild komplett weg ist.
    </p>
    <p>
      Das f&#252;hrt bisweilen zu Artefakten
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1468189585482" ID="ID_1615408028" MODIFIED="1468189655424" TEXT="expected rotation: stepping">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      da hat sich wohl zwischenzeitlich das Verhalten des UI-Bindings ge&#228;ndert.
    </p>
    <p>
      Habe daraufhin das Stepping um den Faktor 100 vergr&#246;&#223;ert,
    </p>
    <p>
      so da&#223; ein einfacher Schritt sich im Bereich von 1&#176; bewegt
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
</node>
<node CREATED="1436642178566" HGAP="81" ID="ID_1345154609" MODIFIED="1436642184732" POSITION="right" TEXT="Integration" VSHIFT="96">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1436642185702" ID="ID_1881635323" MODIFIED="1436749574835" TEXT="lfd. Upstream">
<icon BUILTIN="go"/>
<node CREATED="1436642198422" FOLDED="true" ID="ID_63230369" MODIFIED="1450740356167" TEXT="2.70 &#x2023; 2.75a">
<icon BUILTIN="button_ok"/>
<node CREATED="1436642231118" FOLDED="true" ID="ID_1478045690" MODIFIED="1436749563252" TEXT="BKE_tracking_marker_get_exact">
<icon BUILTIN="button_ok"/>
<node CREATED="1436642264148" HGAP="25" ID="ID_507794779" MODIFIED="1436642284571" VSHIFT="-16">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      weitgehend ersetzt
    </p>
    <p>
      durch BKE_tracking_marker_get
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436642286181" ID="ID_365288615" MODIFIED="1436642460161" TEXT="Deutung: Versuch einer Interpolation">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Ich erinnere mich, da&#223; das irgendwo in der Diskussion schon mal vorkam.
    </p>
    <p>
      
    </p>
    <p>
      Wenn es eine L&#252;cke in den Tracking-Daten gibt, f&#228;llt der Stabiliser einfach aus.
    </p>
    <p>
      Durch diese &#196;nderung f&#228;llt er stattdessen auf den n&#228;chsten Wert zur Linken (?) zur&#252;ck.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436642298454" ID="ID_925480568" MODIFIED="1436749542446" TEXT="wer war das?">
<icon BUILTIN="button_ok"/>
<node CREATED="1436642597252" ID="ID_329769462" MODIFIED="1436749312457" TEXT="Vorischt Politik">
<font NAME="SansSerif" SIZE="9"/>
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1436642303742" ID="ID_768326846" MODIFIED="1436642337697" TEXT="das zeigt Interesse am Thema"/>
<node CREATED="1436749316198" ID="ID_1030497381" MODIFIED="1436749328050" TEXT="Sergej">
<node CREATED="1436749329038" ID="ID_700248974" MODIFIED="1436749456444">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Fix <font color="#ff0033"><b>T40382</b></font>: 2D stabilization uses disabled markers
    </p>
    <p>
      This lead to unpredictable results in some cases.&#160;&#160;&#160;&#160;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436749333350" ID="ID_956278016" MODIFIED="1436749402596">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#990033">543ce859&#160; </font>vom 5.06.14
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436749469173" ID="ID_514811460" MODIFIED="1436749528581" TEXT="Entwarnung!">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      das war definitiv noch vor dem Review-Proze&#223;
    </p>
    <p>
      
    </p>
    <p>
      Seitdem ist praktisch nichts mehr in dem Bereich passiert
    </p>
    <p>
      (nur etwas Code-clean-up durch Campbell Barton)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
</node>
<node CREATED="1436642341461" ID="ID_1451582484" MODIFIED="1436642511553" TEXT="Bewertung: halbgar">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Das sind mir die typischen Schlaumeier-L&#246;sungen.
    </p>
    <p>
      Wir basteln uns das hin!
    </p>
    <p>
      Aber blo&#223; nicht ein Problem bei der Wurzel packen, das w&#228;re uncool.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1436642517285" ID="ID_412832600" MODIFIED="1436642578965" TEXT="Urteil: durch meine L&#xf6;sung ersetzen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ich habe eine lineare Interpolation implementiert, die sich wirklich symmetrisch verh&#228;lt
    </p>
    <p>
      und auch all die komplexen Randf&#228;lle korrekt handhabt.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1436643251354" FOLDED="true" ID="ID_1278770990" MODIFIED="1436716714533" TEXT="calculate_autoscale_factor">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        nur ein Seiteneffekt der Umstellung auf BKE_tracking_marker_get_exact
      </li>
      <li>
        nicht relevant, da mein Patch ohnehin hier andere Wege geht
      </li>
      <li>
        und wird von meinem Patch beiseite geschoben
      </li>
    </ul>
  </body>
</html></richcontent>
<node CREATED="1436643258978" HGAP="24" ID="ID_1534897468" MODIFIED="1436643369246" VSHIFT="13">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      if (!stabilization_median_point_get(tracking, cfra, median)) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;continue;
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<node CREATED="1436643306177" ID="ID_1635942159" MODIFIED="1436643325528">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      nun bedingungslos
    </p>
    <p>
      und ohne Guard
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1436643327049" ID="ID_177311182" MODIFIED="1436643336197" TEXT="Grund: vermutlich marker_get_exact"/>
</node>
<node CREATED="1436643347425" ID="ID_1070614877" MODIFIED="1436643357954" TEXT="Vorsicht: setzt die alte Logik voraus">
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1436712931668" ID="ID_111914994" MODIFIED="1436712945183" TEXT="erledigt: mein Patch ersetzt die alte Logik">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1436712958844" FOLDED="true" ID="ID_44109468" MODIFIED="1436716650732" TEXT="mul_m4_series">
<icon BUILTIN="button_ok"/>
<node CREATED="1436712994716" ID="ID_966132964" MODIFIED="1436712996872" TEXT="Umbenennung"/>
<node CREATED="1436712999667" ID="ID_1656750440" MODIFIED="1436713048307" TEXT="die zugeh&#xf6;rige mul_m3_series wurde angepa&#xdf;t">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        irgendwas mit Anpassung der Argument-Reihenfolge
      </li>
      <li>
        betrifft mich nicht, da ich nur _m4_verwende
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node COLOR="#990033" CREATED="1436713240259" ID="ID_787560384" MODIFIED="1436713309513" TEXT="8489b94e07"/>
<node CREATED="1436713330147" ID="ID_1027241853" MODIFIED="1436713335550" TEXT="Campbell Barton&lt;ideasman42@gmail.com&gt; 21.07.14 10:55 "/>
<node CREATED="1436713050420" ID="ID_397248731" MODIFIED="1436713191181" TEXT="benachbart und relevant">
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1436713192595" ID="ID_416553782" MODIFIED="1436713201455" TEXT="Umstellung auf Var-Args"/>
<node COLOR="#990033" CREATED="1436713201859" ID="ID_875916190" MODIFIED="1436713231930" TEXT="5415ee41250"/>
<node CREATED="1436713347803" FOLDED="true" ID="ID_155544961" MODIFIED="1436716645436" TEXT="TODO: mein NULL-Arg beseitigen">
<icon BUILTIN="button_ok"/>
<node CREATED="1436714063416" ID="ID_298235149" MODIFIED="1436714068324" TEXT="Build Compensation"/>
<node CREATED="1436714088128" ID="ID_602034551" MODIFIED="1436714095380" TEXT="Consistent handling of Pixel Aspect"/>
</node>
</node>
</node>
<node CREATED="1436715548194" FOLDED="true" ID="ID_807995611" MODIFIED="1436716653163" TEXT="math_matrix unit_m2">
<icon BUILTIN="button_ok"/>
<node CREATED="1436715561554" ID="ID_492799754" MODIFIED="1436715583470" TEXT="hat Upstream inzwischen auch nachgetragen"/>
<node CREATED="1436715583922" ID="ID_1403764095" MODIFIED="1436715592046" TEXT="meine Definition ist &#xfc;berfl&#xfc;ssig"/>
<node CREATED="1436715592690" ID="ID_1139940521" MODIFIED="1436715597004" TEXT="aus Patch entfernt">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1450569522268" FOLDED="true" ID="ID_1081477982" MODIFIED="1459295992223" TEXT="2.75a &#x2023; 2.76b">
<icon BUILTIN="button_ok"/>
<node CREATED="1450571427991" ID="ID_959805861" MODIFIED="1450571478605" TEXT="Debian/experimental hat daf&#xfc;r schon ein Paket">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1450571440317" ID="ID_1416713451" MODIFIED="1450575112282">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mein 2.75a-backport-Paket
    </p>
    <p>
      mit offiziellem Debian/experimental
    </p>
    <p>
      zusammenf&#252;hren
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
<node CREATED="1450571535425" ID="ID_1747962691" MODIFIED="1450571550526">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Vorgabe: so viel wie m&#246;glich
    </p>
    <p>
      von den Debian-Leuten nehmen
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1450571914686" ID="ID_832182740" MODIFIED="1450571920945" TEXT="neu von Debian: -DWITH_INPUT_NDOF=ON"/>
<node CREATED="1450575008379" ID="ID_1826230736" MODIFIED="1450575025421">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sie verwenden <b>Python 3.3</b>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1450575119572" ID="ID_1008983154" MODIFIED="1450575127039" TEXT="ich behalte meine Boost-Versionen"/>
</node>
<node CREATED="1450575054700" ID="ID_731153880" MODIFIED="1450740270084" TEXT="Patch rebasen">
<icon BUILTIN="button_ok"/>
<node CREATED="1450740216281" ID="ID_709735981" MODIFIED="1450740263223" TEXT="auf release 2.76b">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1450740223768" ID="ID_1405887448" MODIFIED="1450740265978" TEXT="auf aktuellen master">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Ichthyo.Stand.15-12 = 6f224941
    </p>
    <p>
      Author: Bastien Montagne &lt;montagne29@wanadoo.fr&gt;
    </p>
    <p>
      Date:&#160;&#160;&#160;Sun Dec 20 23:06:18 2015 +0100
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;NewDepsgraph: Fix typo tagging wrong flag.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1450740315652" ID="ID_434422417" MODIFIED="1450740329218" TEXT="Debug-Build + Arbeitsumgebung wiederherstellen">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1450740286671" ID="ID_262230426" MODIFIED="1450740312120">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      erfolgreich gebaut,
    </p>
    <p>
      Paket l&#228;&#223;t sich installieren,
    </p>
    <p>
      startet
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1459191312000" FOLDED="true" ID="ID_459273421" MODIFIED="1461341168774" TEXT="2.76b &#x2023; 2.77">
<icon BUILTIN="button_ok"/>
<node CREATED="1459191339509" ID="ID_414527174" MODIFIED="1459191417009" TEXT="Debian">
<icon BUILTIN="info"/>
<node CREATED="1459191372081" ID="ID_421373659" MODIFIED="1459191413781" TEXT="noch nicht in Debian/unstable">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1459191374121" ID="ID_1073293730" MODIFIED="1459191420757" TEXT="selber n&#xe4;chstes Paket machen">
<icon BUILTIN="yes"/>
</node>
</node>
<node CREATED="1459191447807" ID="ID_1453510687" MODIFIED="1459225125378" TEXT="2.77-backport Paket">
<icon BUILTIN="button_ok"/>
<node CREATED="1459191464893" ID="ID_1300066567" MODIFIED="1459191471031" TEXT="Standard-Release-Zyklus"/>
<node CREATED="1459191471500" ID="ID_1228226182" MODIFIED="1459203483993" TEXT="bei n&#xe4;chster Gelegenheit wieder mit Debian zusammenf&#xfc;hren">
<icon BUILTIN="yes"/>
</node>
<node CREATED="1459191484794" ID="ID_128573482" MODIFIED="1459191498967">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      brauche nun verbindlich <b>Python 3.5</b>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1459213157734" ID="ID_443217135" MODIFIED="1459213315819" TEXT="mu&#xdf; diese Version fest per debian/rules vorgeben">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Erl&#228;uterung
    </p>
    <ul>
      <li>
        Blender funktioniert jeweils nur mit <b>einer einzigen</b>&#160;Python-Version
      </li>
      <li>
        im CMakeList.txt wird PYTHON_VERSION fest so gesetzt
      </li>
      <li>
        allerdings hat man dabei die Plattform &quot;Unix&quot; &#252;bersehen
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1459191513486" ID="ID_1806460455" MODIFIED="1459295973320" TEXT="Patch rebasen">
<icon BUILTIN="button_ok"/>
<node CREATED="1459191531300" ID="ID_1102801700" MODIFIED="1459196536864" TEXT="auf release 2.77">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tag v2.77
    </p>
    <p>
      Tagger: Sergey Sharybin &lt;sergey.vfx@gmail.com&gt;
    </p>
    <p>
      Date:&#160;&#160;&#160;Fri Mar 25 09:08:50 2016 +0100
    </p>
    <p>
      
    </p>
    <p>
      Tagging blender release 2.77
    </p>
    <p>
      
    </p>
    <p>
      commit 22a2853b5d5636d5b47407f1e854d47f9b57c295
    </p>
    <p>
      Author: Sergey Sharybin &lt;sergey.vfx@gmail.com&gt;
    </p>
    <p>
      Date:&#160;&#160;&#160;Fri Mar 18 17:34:06 2016 +0500
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Blender 2.77: Point submodules to an updated hashes
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1459191539995" ID="ID_1314434020" MODIFIED="1459202715172" TEXT="auf aktuellen master">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Tag Ichthyo.Stand.16-4 == b1f918bcc
    </p>
    <p>
      commit b1f918bcc53d552dec2a5327b15f77751dca0712
    </p>
    <p>
      Author: Bastien Montagne &lt;montagne29@wanadoo.fr&gt;
    </p>
    <p>
      Date:&#160;&#160;&#160;Mon Mar 28 18:17:45 2016 +0200
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Fix T47958: Crash in Walk or Fly Navigation in Camera mode when invoking from non-3DView region
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1459191546442" ID="ID_1241711681" MODIFIED="1459230676728" TEXT="Debug-Build + Arbeitsumgebung">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1460747812770" FOLDED="true" ID="ID_377701135" MODIFIED="1461341916930" TEXT="2.77b &#x2023; 2.77a">
<icon BUILTIN="button_ok"/>
<node COLOR="#338800" CREATED="1460747848923" ID="ID_536750763" MODIFIED="1461287225843" TEXT="mein Debian-Paket aktualisieren">
<icon BUILTIN="button_ok"/>
<node CREATED="1461028647110" ID="ID_1402281702" MODIFIED="1461028675980" TEXT="Debian ist noch auf 2.76b">
<icon BUILTIN="smily_bad"/>
</node>
<node CREATED="1461287202413" ID="ID_531340265" MODIFIED="1461287229102" TEXT="Paket neu gebaut, incl Patch">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1461287211412" ID="ID_1141120874" MODIFIED="1461287231492" TEXT="ver&#xf6;ffentlicht auf Lumiera">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1461287235105" ID="ID_436084396" MODIFIED="1461287241379" TEXT="ver&#xf6;ffentlicht im PPA">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1461298015374" ID="ID_872492051" MODIFIED="1461341159702">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#e9263b">FEHLER</font></b>: Versionsnummer falsch vergeben
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ich h&#228;tte das 'a' mit Punkt getrennt anh&#228;ngen m&#252;ssen
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1461298028812" ID="ID_1429422306" MODIFIED="1461298097833" TEXT="&#x27f9; Verionsreihenfolge durcheinander">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ... f&#252;r Debian erscheint das <b>neuere</b>&#160;2.77a <b>kleiner als</b>&#160; das vorhergehende 2.77
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1461341142928" ID="ID_1183045548" MODIFIED="1461341154897" TEXT="nochmal gebaut mit korrekter Version 2.77.a">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node COLOR="#338800" CREATED="1460747857002" ID="ID_409766696" MODIFIED="1461287254679" TEXT="Patch rebasen">
<icon BUILTIN="button_ok"/>
<node CREATED="1460747862498" ID="ID_1210202471" MODIFIED="1461281021035" TEXT="auf release 2.77a">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tag v2.77a
    </p>
    <p>
      Tagger: Sergey Sharybin &lt;sergey.vfx@gmail.com&gt;
    </p>
    <p>
      Date:&#160;&#160;&#160;Thu Apr 7 15:42:26 2016 +0200
    </p>
    <p>
      
    </p>
    <p>
      Tagging blender release 2.77a
    </p>
    <p>
      
    </p>
    <p>
      commit abf6f081c4cd5248e174caa8c1c765aa69b8cd96
    </p>
    <p>
      Author: Sergey Sharybin &lt;sergey.vfx@gmail.com&gt;
    </p>
    <p>
      Date:&#160;&#160;&#160;Tue Apr 5 20:12:32 2016 +0200
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Blender 2.77a: Use proper char for the release
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1460747867809" ID="ID_1157148556" MODIFIED="1461117007833" TEXT="auf aktuellen master">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Tag <b>Ichthyo.Stand.16-4</b>&#160;== c42a796e9
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      Joshua Leung&lt;aligorith@gmail.com&gt;
    </p>
    <p>
      date: 18.04.16 14:42
    </p>
    <p>
      Fix: Make it easier to tell if Color Swatches are greyed out or not
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1460747873448" ID="ID_618426756" MODIFIED="1461117016154" TEXT="Arbeitsumgebung portieren">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1460747878654" ID="ID_1244095914" MODIFIED="1461119582749" TEXT="Debug-Build ausf&#xfc;hren">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
</node>
<node CREATED="1436642648667" ID="ID_1919094305" MODIFIED="1436713399028" TEXT="Problem: Format f&#xfc;r Daten-Feed">
<icon BUILTIN="stop"/>
</node>
<node CREATED="1436642631660" ID="ID_923860681" MODIFIED="1436713395834" TEXT="Problem: Compositor-Nodes">
<icon BUILTIN="stop"/>
</node>
</node>
</node>
</map>
