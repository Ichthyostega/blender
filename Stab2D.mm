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
<node CREATED="1436641676560" HGAP="60" ID="ID_1218644922" MODIFIED="1458007695992" POSITION="left" TEXT="Build" VSHIFT="-61">
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="prepare"/>
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
<node CREATED="1459011064208" FOLDED="true" HGAP="47" ID="ID_1369372321" MODIFIED="1459228313861" TEXT="CMake" VSHIFT="16">
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
<node CREATED="1436641870656" ID="ID_1917334295" MODIFIED="1459047427774" TEXT="Umgebung">
<icon BUILTIN="button_ok"/>
<node CREATED="1436641905079" ID="ID_32595620" MODIFIED="1458007456349" TEXT="SCons-Build">
<icon BUILTIN="button_cancel"/>
</node>
<node COLOR="#338800" CREATED="1458007463432" FOLDED="true" ID="ID_1630361744" MODIFIED="1459047008206" TEXT="Umstellung auf CMake">
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
<node CREATED="1459043019934" FOLDED="true" ID="ID_483743294" MODIFIED="1459228333870" TEXT="CMake-Build">
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
</html>
</richcontent>
<node CREATED="1459043055561" ID="ID_540304307" MODIFIED="1459043063596" TEXT="Bauen in build"/>
<node CREATED="1459043064280" ID="ID_1894768707" MODIFIED="1459043073907" TEXT="Binaries nach target"/>
</node>
<node CREATED="1459043113658" ID="ID_1447112482" MODIFIED="1459043118821" TEXT="cmake-gui verwenden">
<node CREATED="1459043120057" ID="ID_883907537" MODIFIED="1459043127995" TEXT="aus build aufrufen"/>
<node CREATED="1459043128463" ID="ID_500190073" MODIFIED="1459043132587" TEXT="cmake-gui .."/>
</node>
<node CREATED="1459043138318" FOLDED="true" ID="ID_230063324" MODIFIED="1459228330547" TEXT="Konfiguration">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node CREATED="1459043475458" ID="ID_16374181" MODIFIED="1459043479085" TEXT="IK_SOLVER"/>
<node CREATED="1459043528435" ID="ID_1952938042" MODIFIED="1459043531326" TEXT="IMAGE_CINEON"/>
<node CREATED="1459043531794" ID="ID_1115786097" MODIFIED="1459043534214" TEXT="IMAGE_DDS"/>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node CREATED="1459044065340" ID="ID_1052998402" MODIFIED="1459044067855" TEXT="GLEW"/>
<node CREATED="1459045536209" ID="ID_50688803" MODIFIED="1459045541300" TEXT="CPP11"/>
</node>
<node CREATED="1459044891782" ID="ID_1135795039" MODIFIED="1459045530941" TEXT="my changes...">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      Commandline options:
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      -DWITH_CPP11:BOOL=&quot;1&quot;
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      -DWITH_OPENMP:BOOL=&quot;0&quot; -DWITH_MOD_FLUID:BOOL=&quot;0&quot; -DWITH_IMAGE_DDS:BOOL=&quot;0&quot; -DWITH_OPENAL:BOOL=&quot;0&quot; -DWITH_OPENIMAGEIO:BOOL=&quot;0&quot; -DCMAKE_INSTALL_PREFIX:PATH=&quot;/home/hiv/devel/a/blend/target&quot; -DWITH_FONTCONFIG:BOOL=&quot;1&quot; -DWITH_IMAGE_CINEON:BOOL=&quot;0&quot; -DWITH_FREESTYLE:BOOL=&quot;0&quot; -DWITH_MOD_SMOKE:BOOL=&quot;0&quot; -DCMAKE_BUILD_TYPE:STRING=&quot;Debug&quot; -DWITH_GHOST_XDND:BOOL=&quot;0&quot; -DWITH_IK_SOLVER:BOOL=&quot;0&quot; -DWITH_PYTHON_INSTALL_NUMPY:BOOL=&quot;0&quot; -DWITH_CYCLES:BOOL=&quot;0&quot; -DWITH_MOD_REMESH:BOOL=&quot;0&quot; -DWITH_INTERNATIONAL:BOOL=&quot;0&quot; -DWITH_IMAGE_HDR:BOOL=&quot;0&quot; -DWITH_BULLET:BOOL=&quot;0&quot; -DWITH_IK_ITASC:BOOL=&quot;0&quot; -DWITH_CODEC_FFMPEG:BOOL=&quot;1&quot; -DWITH_GAMEENGINE:BOOL=&quot;0&quot; -DWITH_PYTHON_INSTALL:BOOL=&quot;0&quot; -DWITH_PYTHON_INSTALL_REQUESTS:BOOL=&quot;0&quot;
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
      WITH_CPP11:BOOL=1
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
      CMAKE_INSTALL_PREFIX:PATH=/home/hiv/devel/a/blend/target
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
      WITH_MOD_REMESH:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_INTERNATIONAL:BOOL=0
    </p>
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      WITH_IMAGE_HDR:BOOL=0
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
    <p style="margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; text-indent: 0px">
      <br />
      
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="info"/>
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
</html>
</richcontent>
<node CREATED="1459047390523" ID="ID_622142784" MODIFIED="1459047393487" TEXT="build"/>
<node CREATED="1459047393890" ID="ID_856928945" MODIFIED="1459047395782" TEXT="target"/>
<node CREATED="1459047396282" ID="ID_1984269164" MODIFIED="1459047397062" TEXT="stab"/>
</node>
</node>
<node CREATED="1459045956049" ID="ID_1727293916" MODIFIED="1459046034523" TEXT="build">
<icon BUILTIN="idea"/>
<node CREATED="1459045972567" ID="ID_184267978" MODIFIED="1459045974155" TEXT="cd build"/>
<node CREATED="1459045974742" ID="ID_108952533" MODIFIED="1459045978298" TEXT="make -j12"/>
<node CREATED="1459045980310" ID="ID_1926862727" MODIFIED="1459048049729" TEXT="ggfs: make install">
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
</html>
</richcontent>
<arrowlink COLOR="#a9b4c1" DESTINATION="ID_1299306805" ENDARROW="Default" ENDINCLINATION="144;0;" ID="Arrow_ID_727874697" STARTARROW="None" STARTINCLINATION="188;0;"/>
</node>
</node>
</node>
<node CREATED="1436641912336" ID="ID_1618985498" MODIFIED="1436641915507" TEXT="Eclipse-CDT"/>
<node CREATED="1436641916575" ID="ID_1658953336" MODIFIED="1436641921363" TEXT="Git-Zweig"/>
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
<node CREATED="1436641873568" ID="ID_38644124" MODIFIED="1454072801576" TEXT="Backport">
<icon BUILTIN="pencil"/>
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
<node BACKGROUND_COLOR="#eee5c3" COLOR="#990000" CREATED="1459048492089" ID="ID_758483927" MODIFIED="1459048503153" TEXT="Entwickler-Stand Ostern bauen">
<icon BUILTIN="flag-yellow"/>
</node>
</node>
<node CREATED="1436641933487" FOLDED="true" ID="ID_761151833" MODIFIED="1458007782927" TEXT="Debian/Wheezy">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      obsolet...
    </p>
  </body>
</html></richcontent>
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
<node CREATED="1436714326727" FOLDED="true" ID="ID_636372309" MODIFIED="1436749640163" TEXT="Patch-Update">
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
<node CREATED="1436749658973" ID="ID_1531296958" MODIFIED="1436749664569" TEXT="erneut einreichen"/>
</node>
<node CREATED="1437071968242" ID="ID_1325711910" MODIFIED="1450913562139">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      als <b>PPA</b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="pencil"/>
<node CREATED="1437071977057" ID="ID_436153482" LINK="https://launchpad.net/~ichthyo/+archive/ubuntu/blender" MODIFIED="1438346475708" TEXT="PPA auf Ubuntu/Launchpad">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1437071994026" ID="ID_1343322194" MODIFIED="1437072016822" TEXT="https://launchpad.net/~ichthyo/+archive/ubuntu/blender"/>
<node CREATED="1437076248383" ID="ID_1862473466" MODIFIED="1450913500053" TEXT="f&#xfc;r Ubuntu Trusty (14.04 LTS)">
<icon BUILTIN="flag-yellow"/>
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
<node CREATED="1437076248383" ID="ID_276821151" MODIFIED="1450913265829" TEXT="f&#xfc;r Ubuntu Vivid (15.04)">
<icon BUILTIN="flag-yellow"/>
</node>
<node CREATED="1437076248383" ID="ID_1153874609" MODIFIED="1450913261918" TEXT="f&#xfc;r Ubuntu Wily (15.10)">
<icon BUILTIN="flag-yellow"/>
</node>
<node CREATED="1450913523946" ID="ID_1482647820" MODIFIED="1450913557101" TEXT="f&#xfc;r Ubuntu Xenial (16.04 LTS-dev-preview)">
<icon BUILTIN="flag-yellow"/>
</node>
<node CREATED="1437142730140" ID="ID_1449565273" MODIFIED="1450913571716" TEXT="&#xf6;ffentlich ank&#xfc;ndigen">
<icon BUILTIN="flag-yellow"/>
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
<node CREATED="1436741366548" FOLDED="true" ID="ID_640241160" MODIFIED="1436748600592" TEXT="System">
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
<node CREATED="1436742376976" FOLDED="true" ID="ID_1510557677" MODIFIED="1436748585785" TEXT="Tracking">
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
<node CREATED="1436742568167" ID="ID_1381465869" MODIFIED="1436746132008" TEXT="ruft: tracks_map_merge">
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
<node CREATED="1436745882619" FOLDED="true" ID="ID_1225557596" MODIFIED="1436748518672" TEXT="Initialisierung">
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
<node CREATED="1436712879197" HGAP="113" ID="ID_715016663" MODIFIED="1436747370320" TEXT="QA" VSHIFT="45">
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="go"/>
<node CREATED="1436713462114" FOLDED="true" ID="ID_310396424" MODIFIED="1436748522137" TEXT="double free">
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
<node CREATED="1436746084922" ID="ID_1739650187" MODIFIED="1436746139944" TEXT="tracks_map_merge">
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
<node CREATED="1450569522268" ID="ID_1081477982" MODIFIED="1450744732847" TEXT="2.75a &#x2023; 2.76b">
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
<node CREATED="1459191312000" ID="ID_459273421" MODIFIED="1459191327049" TEXT="2.76b &#x2023; 2.77">
<icon BUILTIN="pencil"/>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
<node CREATED="1459191513486" ID="ID_1806460455" MODIFIED="1459191518369" TEXT="Patch rebasen">
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
</html>
</richcontent>
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
</html>
</richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1459191546442" ID="ID_1241711681" MODIFIED="1459191554284" TEXT="Debug-Build + Arbeitsumgebung"/>
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
