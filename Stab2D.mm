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
<node CREATED="1436641676560" HGAP="60" ID="ID_1218644922" MODIFIED="1436714472167" POSITION="left" TEXT="Build" VSHIFT="-61">
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="go"/>
<node CREATED="1436641870656" ID="ID_1917334295" MODIFIED="1450747670433" TEXT="Umgebung">
<icon BUILTIN="pencil"/>
<node CREATED="1436641905079" ID="ID_32595620" MODIFIED="1436641910011" TEXT="SCons-Build"/>
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
<node BACKGROUND_COLOR="#fdfdcf" COLOR="#990000" CREATED="1454072805537" ID="ID_1484231597" MODIFIED="1454072857111" TEXT="brauche Python 3.5">
<arrowlink COLOR="#f73c73" DESTINATION="ID_1595421125" ENDARROW="Default" ENDINCLINATION="108;-30;" ID="Arrow_ID_890750055" STARTARROW="None" STARTINCLINATION="144;-10;"/>
<icon BUILTIN="flag"/>
</node>
</node>
</node>
<node CREATED="1436641873568" ID="ID_38644124" MODIFIED="1454072801576" TEXT="Backport">
<icon BUILTIN="pencil"/>
<node CREATED="1436641925670" ID="ID_1080364414" MODIFIED="1436641933019" TEXT="Debian/unstable"/>
<node CREATED="1450747645311" HGAP="57" ID="ID_319007264" MODIFIED="1450747653404" TEXT="Debian/Jessie" VSHIFT="12">
<node CREATED="1450747598613" ID="ID_1595421125" MODIFIED="1454072857111" TEXT="Problem: brauche Python 3.5">
<linktarget COLOR="#f73c73" DESTINATION="ID_1595421125" ENDARROW="Default" ENDINCLINATION="108;-30;" ID="Arrow_ID_890750055" SOURCE="ID_1484231597" STARTARROW="None" STARTINCLINATION="144;-10;"/>
<icon BUILTIN="flag"/>
<node CREATED="1450747608380" ID="ID_1982672839" MODIFIED="1450747677057" TEXT="Debian/stable hat nur 3.4">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1450747615699" ID="ID_1784694324" MODIFIED="1454072785358" TEXT="Backport von unstable?">
<icon BUILTIN="pencil"/>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node CREATED="1457922573839" ID="ID_1314270854" MODIFIED="1457922590446" TEXT="Paket aus Ubuntu/Wily (3.5.0)">
<icon BUILTIN="pencil"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1436641933487" ID="ID_761151833" MODIFIED="1436641943273" TEXT="Debian/Wheezy">
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
<node CREATED="1450744772181" ID="ID_1261967164" MODIFIED="1450744774928" TEXT="2.76b"/>
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
