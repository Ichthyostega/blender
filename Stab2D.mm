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
<node CREATED="1436641870656" FOLDED="true" ID="ID_1917334295" MODIFIED="1436716727131" TEXT="Umgebung">
<icon BUILTIN="button_ok"/>
<node CREATED="1436641905079" ID="ID_32595620" MODIFIED="1436641910011" TEXT="SCons-Build"/>
<node CREATED="1436641912336" ID="ID_1618985498" MODIFIED="1436641915507" TEXT="Eclipse-CDT"/>
<node CREATED="1436641916575" ID="ID_1658953336" MODIFIED="1436641921363" TEXT="Git-Zweig"/>
</node>
<node CREATED="1436641873568" FOLDED="true" ID="ID_38644124" MODIFIED="1436716730252" TEXT="Backport">
<node CREATED="1436641925670" ID="ID_1080364414" MODIFIED="1436641933019" TEXT="Debian/unstable"/>
<node CREATED="1436641933487" ID="ID_761151833" MODIFIED="1436641943273" TEXT="Debian/Wheezy">
<node CREATED="1436641944199" ID="ID_1369329699" MODIFIED="1436641947899" TEXT="nur Python 3.2">
<node CREATED="1436642050607" ID="ID_1468804991" MODIFIED="1436642060680" TEXT="Fehler-Diagnostik-Meldungen"/>
<node CREATED="1436642013735" ID="ID_715643907" MODIFIED="1436642029139" TEXT="String compilieren/interpretieren"/>
<node CREATED="1436642029567" ID="ID_1355847098" MODIFIED="1436642034659" TEXT="Unicode f&#xfc;r Code"/>
<node CREATED="1436642037079" ID="ID_108601883" MODIFIED="1436642044682" TEXT="Name der Import-Lib"/>
</node>
<node CREATED="1436641950647" ID="ID_588391845" MODIFIED="1436641995509" TEXT="OpenEXR 2.2.0">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_588391845" ENDARROW="Default" ENDINCLINATION="-48;30;" ID="Arrow_ID_1192109263" SOURCE="ID_1205869713" STARTARROW="None" STARTINCLINATION="86;-8;"/>
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
<node CREATED="1436714326727" ID="ID_636372309" MODIFIED="1436716527128" TEXT="Patch-Update">
<icon BUILTIN="pencil"/>
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
</html>
</richcontent>
</node>
</node>
<node CREATED="1436715622090" ID="ID_1481119374" MODIFIED="1436716512126" TEXT="mul_m4_series">
<icon BUILTIN="button_ok"/>
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
</html>
</richcontent>
<icon BUILTIN="idea"/>
<node CREATED="1436741297860" ID="ID_164730890" MODIFIED="1436741313808" TEXT="Memory Management">
<node CREATED="1436741366548" ID="ID_640241160" MODIFIED="1436741371976" TEXT="System">
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
</html>
</richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
</node>
<node CREATED="1436742376976" ID="ID_1510557677" MODIFIED="1436742379116" TEXT="Tracking">
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
</html>
</richcontent>
</node>
<node CREATED="1436742421504" ID="ID_611423963" MODIFIED="1436742510140" TEXT="SolveCameraJob"/>
<node CREATED="1436742510824" ID="ID_1934601769" MODIFIED="1436742551723" TEXT="danach: fertigstellen">
<node CREATED="1436742553048" ID="ID_535884950" MODIFIED="1436742567243" TEXT="BKE_tracking_reconstruction_finish"/>
<node CREATED="1436742568167" ID="ID_1381465869" MODIFIED="1436742582907" TEXT="ruft: tracks_map_merge">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<linktarget COLOR="#b0b0b0" DESTINATION="ID_442743824" ENDARROW="Default" ENDINCLINATION="242;0;" ID="Arrow_ID_80646076" SOURCE="ID_713897662" STARTARROW="None" STARTINCLINATION="242;0;"/>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node CREATED="1436712879197" HGAP="113" ID="ID_715016663" MODIFIED="1436713633915" TEXT="QA" VSHIFT="45">
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="stop"/>
<node CREATED="1436713462114" ID="ID_310396424" MODIFIED="1436713484622" TEXT="double free">
<icon BUILTIN="messagebox_warning"/>
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
</html>
</richcontent>
</node>
<node CREATED="1436713525394" ID="ID_1709258110" MODIFIED="1436713536726" TEXT="Reentrance?"/>
<node CREATED="1436713537290" ID="ID_583801813" MODIFIED="1436713545230" TEXT="MEM_freeN setzt nicht auf NULL"/>
<node CREATED="1436713553162" ID="ID_1010119941" MODIFIED="1436713566180" TEXT="aufzukl&#xe4;ren">
<icon BUILTIN="flag-yellow"/>
</node>
</node>
</node>
</node>
<node CREATED="1436642178566" HGAP="81" ID="ID_1345154609" MODIFIED="1436642184732" POSITION="right" TEXT="Integration" VSHIFT="96">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1436642185702" ID="ID_1881635323" MODIFIED="1436713387684" TEXT="lfd. Upstream">
<icon BUILTIN="prepare"/>
<node CREATED="1436642198422" ID="ID_63230369" MODIFIED="1436642220650" TEXT="2.70 &#x2023; 2.75a">
<node CREATED="1436642231118" ID="ID_1478045690" MODIFIED="1436712917536" TEXT="BKE_tracking_marker_get_exact">
<icon BUILTIN="pencil"/>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node CREATED="1436642298454" ID="ID_925480568" MODIFIED="1436642583543" TEXT="wer war das?">
<icon BUILTIN="help"/>
<node CREATED="1436642303742" ID="ID_768326846" MODIFIED="1436642337697" TEXT="das zeigt Interesse am Thema"/>
<node CREATED="1436642597252" ID="ID_329769462" MODIFIED="1436642606358" TEXT="Vorischt Politik">
<font NAME="SansSerif" SIZE="9"/>
<icon BUILTIN="messagebox_warning"/>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
