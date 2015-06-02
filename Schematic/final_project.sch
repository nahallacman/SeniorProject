<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.3.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="diode">
<description>&lt;b&gt;Diodes&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Motorola : www.onsemi.com
&lt;li&gt;Fairchild : www.fairchildsemi.com
&lt;li&gt;Philips : www.semiconductors.com
&lt;li&gt;Vishay : www.vishay.de
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DO41-10">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
diameter 2.54 mm, horizontal, grid 10.16 mm</description>
<wire x1="2.032" y1="-1.27" x2="-2.032" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-1.27" x2="2.032" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.27" x2="2.032" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.27" x2="-2.032" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.762" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.762" layer="51"/>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="A" x="5.08" y="0" drill="1.1176"/>
<pad name="C" x="-5.08" y="0" drill="1.1176"/>
<text x="-2.032" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.27" x2="-1.143" y2="1.27" layer="21"/>
<rectangle x1="2.032" y1="-0.381" x2="3.937" y2="0.381" layer="21"/>
<rectangle x1="-3.937" y1="-0.381" x2="-2.032" y2="0.381" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="D">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<text x="2.54" y="0.4826" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.3114" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<text x="2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="1N4004" prefix="D">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
general purpose rectifier, 1 A</description>
<gates>
<gate name="1" symbol="D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DO41-10">
<connects>
<connect gate="1" pin="A" pad="A"/>
<connect gate="1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="resistor">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
Based on the previous libraries:
&lt;ul&gt;
&lt;li&gt;r.lbr
&lt;li&gt;cap.lbr 
&lt;li&gt;cap-fe.lbr
&lt;li&gt;captant.lbr
&lt;li&gt;polcap.lbr
&lt;li&gt;ipc-smd.lbr
&lt;/ul&gt;
All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
&lt;p&gt;
for Electrolyt Capacitors see also :&lt;p&gt;
www.bccomponents.com &lt;p&gt;
www.panasonic.com&lt;p&gt;
www.kemet.com&lt;p&gt;
&lt;p&gt;
for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;

&lt;map name="nav_main"&gt;
&lt;area shape="rect" coords="0,1,140,23" href="../military_specs.asp" title=""&gt;
&lt;area shape="rect" coords="0,24,140,51" href="../about.asp" title=""&gt;
&lt;area shape="rect" coords="1,52,140,77" href="../rfq.asp" title=""&gt;
&lt;area shape="rect" coords="0,78,139,103" href="../products.asp" title=""&gt;
&lt;area shape="rect" coords="1,102,138,128" href="../excess_inventory.asp" title=""&gt;
&lt;area shape="rect" coords="1,129,138,150" href="../edge.asp" title=""&gt;
&lt;area shape="rect" coords="1,151,139,178" href="../industry_links.asp" title=""&gt;
&lt;area shape="rect" coords="0,179,139,201" href="../comments.asp" title=""&gt;
&lt;area shape="rect" coords="1,203,138,231" href="../directory.asp" title=""&gt;
&lt;area shape="default" nohref&gt;
&lt;/map&gt;

&lt;html&gt;

&lt;title&gt;&lt;/title&gt;

 &lt;LINK REL="StyleSheet" TYPE="text/css" HREF="style-sheet.css"&gt;

&lt;body bgcolor="#ffffff" text="#000000" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0"&gt;
&lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0 height="55%"&gt;
&lt;tr valign="top"&gt;

&lt;/td&gt;
&lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
&lt;td width="90%"&gt;

&lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
      3005P&lt;BR&gt;
      3006P&lt;BR&gt;
      3006W&lt;BR&gt;
      3006Y&lt;BR&gt;
      3009P&lt;BR&gt;
      3009W&lt;BR&gt;
      3009Y&lt;BR&gt;
      3057J&lt;BR&gt;
      3057L&lt;BR&gt;
      3057P&lt;BR&gt;
      3057Y&lt;BR&gt;
      3059J&lt;BR&gt;
      3059L&lt;BR&gt;
      3059P&lt;BR&gt;
      3059Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      89P&lt;BR&gt;
      89W&lt;BR&gt;
      89X&lt;BR&gt;
      89PH&lt;BR&gt;
      76P&lt;BR&gt;
      89XH&lt;BR&gt;
      78SLT&lt;BR&gt;
      78L&amp;nbsp;ALT&lt;BR&gt;
      56P&amp;nbsp;ALT&lt;BR&gt;
      78P&amp;nbsp;ALT&lt;BR&gt;
      T8S&lt;BR&gt;
      78L&lt;BR&gt;
      56P&lt;BR&gt;
      78P&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      T18/784&lt;BR&gt;
      783&lt;BR&gt;
      781&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2199&lt;BR&gt;
      1697/1897&lt;BR&gt;
      1680/1880&lt;BR&gt;
      2187&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      8035EKP/CT20/RJ-20P&lt;BR&gt;
      -&lt;BR&gt;
      RJ-20X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      1211L&lt;BR&gt;
      8012EKQ&amp;nbsp;ALT&lt;BR&gt;
      8012EKR&amp;nbsp;ALT&lt;BR&gt;
      1211P&lt;BR&gt;
      8012EKJ&lt;BR&gt;
      8012EKL&lt;BR&gt;
      8012EKQ&lt;BR&gt;
      8012EKR&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      2101P&lt;BR&gt;
      2101W&lt;BR&gt;
      2101Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2102L&lt;BR&gt;
      2102S&lt;BR&gt;
      2102Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVMCOG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      43P&lt;BR&gt;
      43W&lt;BR&gt;
      43Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      40L&lt;BR&gt;
      40P&lt;BR&gt;
      40Y&lt;BR&gt;
      70Y-T602&lt;BR&gt;
      70L&lt;BR&gt;
      70P&lt;BR&gt;
      70Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
   &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3250L&lt;BR&gt;
      3250P&lt;BR&gt;
      3250W&lt;BR&gt;
      3250X&lt;BR&gt;
      3252P&lt;BR&gt;
      3252W&lt;BR&gt;
      3252X&lt;BR&gt;
      3260P&lt;BR&gt;
      3260W&lt;BR&gt;
      3260X&lt;BR&gt;
      3262P&lt;BR&gt;
      3262W&lt;BR&gt;
      3262X&lt;BR&gt;
      3266P&lt;BR&gt;
      3266W&lt;BR&gt;
      3266X&lt;BR&gt;
      3290H&lt;BR&gt;
      3290P&lt;BR&gt;
      3290W&lt;BR&gt;
      3292P&lt;BR&gt;
      3292W&lt;BR&gt;
      3292X&lt;BR&gt;
      3296P&lt;BR&gt;
      3296W&lt;BR&gt;
      3296X&lt;BR&gt;
      3296Y&lt;BR&gt;
      3296Z&lt;BR&gt;
      3299P&lt;BR&gt;
      3299W&lt;BR&gt;
      3299X&lt;BR&gt;
      3299Y&lt;BR&gt;
      3299Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64P&amp;nbsp;ALT&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      64X&amp;nbsp;ALT&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66P&lt;BR&gt;
      66W&lt;BR&gt;
      66X&lt;BR&gt;
      67P&lt;BR&gt;
      67W&lt;BR&gt;
      67X&lt;BR&gt;
      67Y&lt;BR&gt;
      67Z&lt;BR&gt;
      68P&lt;BR&gt;
      68W&lt;BR&gt;
      68X&lt;BR&gt;
      67Y&amp;nbsp;ALT&lt;BR&gt;
      67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      5050&lt;BR&gt;
      5091&lt;BR&gt;
      5080&lt;BR&gt;
      5087&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T63YB&lt;BR&gt;
      T63XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      5887&lt;BR&gt;
      5891&lt;BR&gt;
      5880&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T93Z&lt;BR&gt;
      T93YA&lt;BR&gt;
      T93XA&lt;BR&gt;
      T93YB&lt;BR&gt;
      T93XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKW&lt;BR&gt;
      8026EKM&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKB&lt;BR&gt;
      8026EKM&lt;BR&gt;
      1309X&lt;BR&gt;
      1309P&lt;BR&gt;
      1309W&lt;BR&gt;
      8024EKP&lt;BR&gt;
      8024EKW&lt;BR&gt;
      8024EKN&lt;BR&gt;
      RJ-9P/CT9P&lt;BR&gt;
      RJ-9W&lt;BR&gt;
      RJ-9X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3105P/3106P&lt;BR&gt;
      3105W/3106W&lt;BR&gt;
      3105X/3106X&lt;BR&gt;
      3105Y/3106Y&lt;BR&gt;
      3105Z/3105Z&lt;BR&gt;
      3102P&lt;BR&gt;
      3102W&lt;BR&gt;
      3102X&lt;BR&gt;
      3102Y&lt;BR&gt;
      3102Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMCBG&lt;BR&gt;
      EVMCCG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      55-1-X&lt;BR&gt;
      55-4-X&lt;BR&gt;
      55-3-X&lt;BR&gt;
      55-2-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      50-2-X&lt;BR&gt;
      50-4-X&lt;BR&gt;
      50-3-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      64Y&lt;BR&gt;
      64Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3323P&lt;BR&gt;
      3323S&lt;BR&gt;
      3323W&lt;BR&gt;
      3329H&lt;BR&gt;
      3329P&lt;BR&gt;
      3329W&lt;BR&gt;
      3339H&lt;BR&gt;
      3339P&lt;BR&gt;
      3339W&lt;BR&gt;
      3352E&lt;BR&gt;
      3352H&lt;BR&gt;
      3352K&lt;BR&gt;
      3352P&lt;BR&gt;
      3352T&lt;BR&gt;
      3352V&lt;BR&gt;
      3352W&lt;BR&gt;
      3362H&lt;BR&gt;
      3362M&lt;BR&gt;
      3362P&lt;BR&gt;
      3362R&lt;BR&gt;
      3362S&lt;BR&gt;
      3362U&lt;BR&gt;
      3362W&lt;BR&gt;
      3362X&lt;BR&gt;
      3386B&lt;BR&gt;
      3386C&lt;BR&gt;
      3386F&lt;BR&gt;
      3386H&lt;BR&gt;
      3386K&lt;BR&gt;
      3386M&lt;BR&gt;
      3386P&lt;BR&gt;
      3386S&lt;BR&gt;
      3386W&lt;BR&gt;
      3386X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      25P&lt;BR&gt;
      25S&lt;BR&gt;
      25RX&lt;BR&gt;
      82P&lt;BR&gt;
      82M&lt;BR&gt;
      82PA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      91E&lt;BR&gt;
      91X&lt;BR&gt;
      91T&lt;BR&gt;
      91B&lt;BR&gt;
      91A&lt;BR&gt;
      91V&lt;BR&gt;
      91W&lt;BR&gt;
      25W&lt;BR&gt;
      25V&lt;BR&gt;
      25P&lt;BR&gt;
      -&lt;BR&gt;
      25S&lt;BR&gt;
      25U&lt;BR&gt;
      25RX&lt;BR&gt;
      25X&lt;BR&gt;
      72XW&lt;BR&gt;
      72XL&lt;BR&gt;
      72PM&lt;BR&gt;
      72RX&lt;BR&gt;
      -&lt;BR&gt;
      72PX&lt;BR&gt;
      72P&lt;BR&gt;
      72RXW&lt;BR&gt;
      72RXL&lt;BR&gt;
      72X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T7YB&lt;BR&gt;
      T7YA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      TXD&lt;BR&gt;
      TYA&lt;BR&gt;
      TYP&lt;BR&gt;
      -&lt;BR&gt;
      TYD&lt;BR&gt;
      TX&lt;BR&gt;
      -&lt;BR&gt;
      150SX&lt;BR&gt;
      100SX&lt;BR&gt;
      102T&lt;BR&gt;
      101S&lt;BR&gt;
      190T&lt;BR&gt;
      150TX&lt;BR&gt;
      101&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      101SX&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ET6P&lt;BR&gt;
      ET6S&lt;BR&gt;
      ET6X&lt;BR&gt;
      RJ-6W/8014EMW&lt;BR&gt;
      RJ-6P/8014EMP&lt;BR&gt;
      RJ-6X/8014EMX&lt;BR&gt;
      TM7W&lt;BR&gt;
      TM7P&lt;BR&gt;
      TM7X&lt;BR&gt;
      -&lt;BR&gt;
      8017SMS&lt;BR&gt;
      -&lt;BR&gt;
      8017SMB&lt;BR&gt;
      8017SMA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      CT-6W&lt;BR&gt;
      CT-6H&lt;BR&gt;
      CT-6P&lt;BR&gt;
      CT-6R&lt;BR&gt;
      -&lt;BR&gt;
      CT-6V&lt;BR&gt;
      CT-6X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKV&lt;BR&gt;
      -&lt;BR&gt;
      8038EKX&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKP&lt;BR&gt;
      8038EKZ&lt;BR&gt;
      8038EKW&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3321H&lt;BR&gt;
      3321P&lt;BR&gt;
      3321N&lt;BR&gt;
      1102H&lt;BR&gt;
      1102P&lt;BR&gt;
      1102T&lt;BR&gt;
      RVA0911V304A&lt;BR&gt;
      -&lt;BR&gt;
      RVA0911H413A&lt;BR&gt;
      RVG0707V100A&lt;BR&gt;
      RVA0607V(H)306A&lt;BR&gt;
      RVA1214H213A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3104B&lt;BR&gt;
      3104C&lt;BR&gt;
      3104F&lt;BR&gt;
      3104H&lt;BR&gt;
      -&lt;BR&gt;
      3104M&lt;BR&gt;
      3104P&lt;BR&gt;
      3104S&lt;BR&gt;
      3104W&lt;BR&gt;
      3104X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      EVMQ0G&lt;BR&gt;
      EVMQIG&lt;BR&gt;
      EVMQ3G&lt;BR&gt;
      EVMS0G&lt;BR&gt;
      EVMQ0G&lt;BR&gt;
      EVMG0G&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMK4GA00B&lt;BR&gt;
      EVM30GA00B&lt;BR&gt;
      EVMK0GA00B&lt;BR&gt;
      EVM38GA00B&lt;BR&gt;
      EVMB6&lt;BR&gt;
      EVLQ0&lt;BR&gt;
      -&lt;BR&gt;
      EVMMSG&lt;BR&gt;
      EVMMBG&lt;BR&gt;
      EVMMAG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMMCS&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM0&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM3&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      62-3-1&lt;BR&gt;
      62-1-2&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67R&lt;BR&gt;
      -&lt;BR&gt;
      67P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67X&lt;BR&gt;
      63V&lt;BR&gt;
      63S&lt;BR&gt;
      63M&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63H&lt;BR&gt;
      63P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;&amp;nbsp;&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
      &lt;P&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3224G&lt;BR&gt;
      3224J&lt;BR&gt;
      3224W&lt;BR&gt;
      3269P&lt;BR&gt;
      3269W&lt;BR&gt;
      3269X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      44G&lt;BR&gt;
      44J&lt;BR&gt;
      44W&lt;BR&gt;
      84P&lt;BR&gt;
      84W&lt;BR&gt;
      84X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST63Z&lt;BR&gt;
      ST63Y&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST5P&lt;BR&gt;
      ST5W&lt;BR&gt;
      ST5X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3314G&lt;BR&gt;
      3314J&lt;BR&gt;
      3364A/B&lt;BR&gt;
      3364C/D&lt;BR&gt;
      3364W/X&lt;BR&gt;
      3313G&lt;BR&gt;
      3313J&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      23B&lt;BR&gt;
      23A&lt;BR&gt;
      21X&lt;BR&gt;
      21W&lt;BR&gt;
      -&lt;BR&gt;
      22B&lt;BR&gt;
      22A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST5YL/ST53YL&lt;BR&gt;
      ST5YJ/5T53YJ&lt;BR&gt;
      ST-23A&lt;BR&gt;
      ST-22B&lt;BR&gt;
      ST-22&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST-4B&lt;BR&gt;
      ST-4A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST-3B&lt;BR&gt;
      ST-3A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVM-6YS&lt;BR&gt;
      EVM-1E&lt;BR&gt;
      EVM-1G&lt;BR&gt;
      EVM-1D&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      G4B&lt;BR&gt;
      G4A&lt;BR&gt;
      TR04-3S1&lt;BR&gt;
      TRG04-2S1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      DVR-43A&lt;BR&gt;
      CVR-42C&lt;BR&gt;
      CVR-42A/C&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;
&lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
&lt;P&gt;

&amp;nbsp;
&lt;P&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/BODY&gt;&lt;/HTML&gt;</description>
<packages>
<package name="R0402">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0603">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R0805W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1206W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1210">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
</package>
<package name="R1210W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2010W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2012">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2012W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.94" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="0.94" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2512">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R2512W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.896" y="0" dx="2" dy="2.1" layer="1"/>
<smd name="2" x="2.896" y="0" dx="2" dy="2.1" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R3216">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3216W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3225">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R3225W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R5025">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R5025W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.1" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="2" x="3.1" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<smd name="2" x="3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M1406">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="M2012">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M2309">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M3216">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M3516">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="M5923">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="0204/5">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.778" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="0.635" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
</package>
<package name="0204/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0207/10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="0207/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 12 mm</description>
<wire x1="6.35" y1="0" x2="5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="4.445" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="0207/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 15mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
</package>
<package name="0207/2V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.6096" layer="21"/>
<wire x1="0.381" y1="0" x2="1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/5V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-0.889" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.762" y1="0" x2="0.762" y2="0" width="0.6096" layer="21"/>
<wire x1="0.889" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 7.5 mm</description>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0309/10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 10mm</description>
<wire x1="-4.699" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="5.08" y1="0" x2="4.699" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.6228" y1="-0.3048" x2="-4.318" y2="0.3048" layer="51"/>
<rectangle x1="4.318" y1="-0.3048" x2="4.6228" y2="0.3048" layer="51"/>
</package>
<package name="0309/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.318" y1="-0.3048" x2="5.1816" y2="0.3048" layer="21"/>
<rectangle x1="-5.1816" y1="-0.3048" x2="-4.318" y2="0.3048" layer="21"/>
</package>
<package name="0411/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.762" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.762" layer="51"/>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.3594" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
<rectangle x1="5.08" y1="-0.381" x2="5.3594" y2="0.381" layer="21"/>
</package>
<package name="0411/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 15 mm</description>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0" x2="-6.35" y2="0" width="0.762" layer="51"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.762" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="5.08" y1="-0.381" x2="6.477" y2="0.381" layer="21"/>
<rectangle x1="-6.477" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
</package>
<package name="0411V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 3.81 mm</description>
<wire x1="1.27" y1="0" x2="0.3048" y2="0" width="0.762" layer="51"/>
<wire x1="-1.5748" y1="0" x2="-2.54" y2="0" width="0.762" layer="51"/>
<circle x="-2.54" y="0" radius="2.032" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.9144" shape="octagon"/>
<text x="-0.508" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.5334" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.4732" y1="-0.381" x2="0.2032" y2="0.381" layer="21"/>
</package>
<package name="0414/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="1.905" x2="-5.842" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-5.842" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="-2.159" x2="6.096" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="2.159" x2="6.096" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-6.096" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="2.159" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-2.159" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="-4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.842" y1="2.159" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-2.159" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-1.905" x2="6.096" y2="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.5654" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.4064" x2="6.5024" y2="0.4064" layer="21"/>
<rectangle x1="-6.5024" y1="-0.4064" x2="-6.096" y2="0.4064" layer="21"/>
</package>
<package name="0414V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.159" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.381" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.381" y="-2.3622" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.2954" y2="0.4064" layer="21"/>
</package>
<package name="0617/17">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 17.5 mm</description>
<wire x1="-8.89" y1="0" x2="-8.636" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.636" y1="0" x2="8.89" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.016" shape="octagon"/>
<text x="-8.128" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.096" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.5344" y1="-0.4064" x2="-8.2296" y2="0.4064" layer="51"/>
<rectangle x1="8.2296" y1="-0.4064" x2="8.5344" y2="0.4064" layer="51"/>
</package>
<package name="0617/22">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 22.5 mm</description>
<wire x1="-10.287" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.287" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.255" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.1854" y1="-0.4064" x2="-8.255" y2="0.4064" layer="21"/>
<rectangle x1="8.255" y1="-0.4064" x2="10.1854" y2="0.4064" layer="21"/>
</package>
<package name="0617V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="3.048" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="0.635" y="1.4224" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="-2.6162" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.3208" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="0922/22">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 22.5 mm</description>
<wire x1="11.43" y1="0" x2="10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-11.43" y1="0" x2="-10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-10.16" y1="-4.191" x2="-10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="4.572" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.318" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-4.572" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="-4.318" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="-8.636" y2="4.318" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="-8.636" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="9.779" y1="4.572" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="9.779" y1="-4.572" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.191" x2="-9.779" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-10.16" y1="4.191" x2="-9.779" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.779" y1="-4.572" x2="10.16" y2="-4.191" width="0.1524" layer="21" curve="90"/>
<wire x1="9.779" y1="4.572" x2="10.16" y2="4.191" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-10.16" y="5.1054" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.7188" y1="-0.4064" x2="-10.16" y2="0.4064" layer="51"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-10.16" y2="0.4064" layer="21"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.7188" y2="0.4064" layer="51"/>
</package>
<package name="P0613V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.286" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.254" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.254" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="P0613/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.032" x2="-6.223" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.032" x2="-6.223" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="-2.286" x2="6.477" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="2.286" x2="6.477" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.223" y1="2.286" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.159" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.159" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="-5.207" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="-5.207" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.223" y1="2.286" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-2.286" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="0.635" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.032" x2="6.477" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.032" x2="-6.477" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.477" y="2.6924" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-7.0358" y1="-0.4064" x2="-6.477" y2="0.4064" layer="51"/>
<rectangle x1="6.477" y1="-0.4064" x2="7.0358" y2="0.4064" layer="51"/>
</package>
<package name="P0817/22">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 22.5 mm</description>
<wire x1="-10.414" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="-3.429" x2="-8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="3.81" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="3.556" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="-3.81" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.556" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="-6.985" y2="3.556" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="-6.985" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.128" y1="3.81" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-3.81" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.429" x2="8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.414" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="3.429" x2="-8.128" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.509" y1="-3.429" x2="-8.128" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="8.128" y1="3.81" x2="8.509" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.128" y1="-3.81" x2="8.509" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="4.2164" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="6.604" y="-2.2606" size="1.27" layer="51" ratio="10" rot="R90">0817</text>
<rectangle x1="8.509" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-8.509" y2="0.4064" layer="21"/>
</package>
<package name="P0817V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 6.35 mm</description>
<wire x1="-3.81" y1="0" x2="-5.08" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="3.81" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="octagon"/>
<text x="-1.016" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.016" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.032" size="1.016" layer="21" ratio="12">0817</text>
<rectangle x1="-3.81" y1="-0.4064" x2="0" y2="0.4064" layer="21"/>
</package>
<package name="V234/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V234, grid 12.5 mm</description>
<wire x1="-4.953" y1="1.524" x2="-4.699" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.953" y1="-1.524" x2="-4.699" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="1.524" x2="-4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="-4.699" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.8128" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.016" shape="octagon"/>
<text x="-4.953" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.953" y1="-0.4064" x2="5.4102" y2="0.4064" layer="21"/>
<rectangle x1="-5.4102" y1="-0.4064" x2="-4.953" y2="0.4064" layer="21"/>
</package>
<package name="V235/17">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V235, grid 17.78 mm</description>
<wire x1="-6.731" y1="2.921" x2="6.731" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="2.54" x2="-7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.921" x2="-6.731" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0" x2="7.874" y2="0" width="1.016" layer="51"/>
<wire x1="-7.874" y1="0" x2="-8.89" y2="0" width="1.016" layer="51"/>
<wire x1="-7.112" y1="-2.54" x2="-6.731" y2="-2.921" width="0.1524" layer="21" curve="90"/>
<wire x1="6.731" y1="2.921" x2="7.112" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="-2.921" x2="7.112" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.112" y1="2.54" x2="-6.731" y2="2.921" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-8.89" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.1938" shape="octagon"/>
<text x="-6.858" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.842" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="7.112" y1="-0.508" x2="7.747" y2="0.508" layer="21"/>
<rectangle x1="-7.747" y1="-0.508" x2="-7.112" y2="0.508" layer="21"/>
</package>
<package name="V526-0">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V526-0, grid 2.5 mm</description>
<wire x1="-2.54" y1="1.016" x2="-2.286" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="1.27" x2="2.54" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="-1.27" x2="2.54" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="-1.016" x2="-2.286" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.27" x2="-2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.016" x2="2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.27" x2="2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="-2.54" y2="-1.016" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.413" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102AX">
<description>&lt;b&gt;Mini MELF 0102 Axial&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.6" width="0" layer="51"/>
<circle x="0" y="0" radius="0.6" width="0" layer="52"/>
<smd name="1" x="0" y="0" dx="1.9" dy="1.9" layer="1" roundness="100"/>
<smd name="2" x="0" y="0" dx="1.9" dy="1.9" layer="16" roundness="100"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
<hole x="0" y="0" drill="1.3"/>
</package>
<package name="0922V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 7.5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="4.572" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.508" y="1.6764" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.508" y="-2.9972" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.54" size="1.016" layer="21" ratio="12">0922</text>
<rectangle x1="-3.81" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="MINI_MELF-0102R">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102W">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<smd name="2" x="0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204R">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.938" y1="0.6" x2="-0.938" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.938" y1="-0.6" x2="0.938" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204W">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.684" y1="0.6" x2="-0.684" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.684" y1="-0.6" x2="0.684" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207R">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.2125" y1="1" x2="-1.2125" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.2125" y1="-1" x2="1.2125" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<smd name="2" x="2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<text x="-2.2225" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.2225" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207W">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.149" y1="1" x2="-1.149" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.149" y1="-1" x2="1.149" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<smd name="2" x="2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<text x="-2.54" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RDH/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type RDH, grid 15 mm</description>
<wire x1="-7.62" y1="0" x2="-6.858" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="3.048" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="2.794" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-3.048" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.794" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="-4.953" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="-4.953" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.667" x2="-6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-2.667" x2="6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.858" y1="0" x2="7.62" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.667" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="3.048" x2="6.477" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.667" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="6.096" y1="-3.048" x2="6.477" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.35" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.572" y="-1.7272" size="1.27" layer="51" ratio="10" rot="R90">RDH</text>
<rectangle x1="-6.7564" y1="-0.4064" x2="-6.4516" y2="0.4064" layer="51"/>
<rectangle x1="6.4516" y1="-0.4064" x2="6.7564" y2="0.4064" layer="51"/>
</package>
<package name="0204V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.508" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.127" y2="0" width="0.508" layer="21"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0309V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 2.5 mm</description>
<wire x1="1.27" y1="0" x2="0.635" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.524" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="0.254" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-2.2098" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.254" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.635" y1="-0.3048" x2="-0.3302" y2="0.3048" layer="51"/>
<rectangle x1="-0.3302" y1="-0.3048" x2="0.254" y2="0.3048" layer="21"/>
</package>
<package name="R0201">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; chip&lt;p&gt;
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<smd name="1" x="-0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<smd name="2" x="0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="0.15" layer="21"/>
</package>
<package name="VMTA55">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-5.08" y1="0" x2="-4.26" y2="0" width="0.6096" layer="51"/>
<wire x1="3.3375" y1="-1.45" x2="3.3375" y2="1.45" width="0.1524" layer="21"/>
<wire x1="3.3375" y1="1.45" x2="-3.3625" y2="1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="1.45" x2="-3.3625" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="-1.45" x2="3.3375" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="4.235" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.1" shape="octagon"/>
<text x="-3.175" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.26" y1="-0.3048" x2="-3.3075" y2="0.3048" layer="21"/>
<rectangle x1="3.2825" y1="-0.3048" x2="4.235" y2="0.3048" layer="21"/>
</package>
<package name="VMTB60">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC60&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.585" y2="0" width="0.6096" layer="51"/>
<wire x1="4.6875" y1="-1.95" x2="4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="4.6875" y1="1.95" x2="-4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="1.95" x2="-4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="-1.95" x2="4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="5.585" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-4.445" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.445" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.585" y1="-0.3048" x2="-4.6325" y2="0.3048" layer="21"/>
<rectangle x1="4.6325" y1="-0.3048" x2="5.585" y2="0.3048" layer="21"/>
</package>
<package name="VTA52">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR52&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-15.24" y1="0" x2="-13.97" y2="0" width="0.6096" layer="51"/>
<wire x1="12.6225" y1="0.025" x2="12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="4.725" x2="-12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="4.725" x2="-12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="0.025" x2="-12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="-4.65" x2="12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="-4.65" x2="12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="13.97" y1="0" x2="15.24" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-15.24" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="15.24" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-13.97" y1="-0.3048" x2="-12.5675" y2="0.3048" layer="21"/>
<rectangle x1="12.5675" y1="-0.3048" x2="13.97" y2="0.3048" layer="21"/>
</package>
<package name="VTA53">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR53&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="4.7" x2="-9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="4.7" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-4.675" x2="9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-4.675" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA54">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR54&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="3.3" x2="-9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="3.3" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-3.3" x2="9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-3.3" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA55">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-8.255" y1="0" x2="-6.985" y2="0" width="0.6096" layer="51"/>
<wire x1="6.405" y1="0" x2="6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="3.3" x2="-6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="3.3" x2="-6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="0" x2="-6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="-3.3" x2="6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="-3.3" x2="6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="6.985" y1="0" x2="8.255" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-8.255" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="8.255" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.985" y1="-0.3048" x2="-6.35" y2="0.3048" layer="21"/>
<rectangle x1="6.35" y1="-0.3048" x2="6.985" y2="0.3048" layer="21"/>
</package>
<package name="VTA56">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR56&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="4.5" y1="0" x2="4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="3.3" x2="-4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="3.3" x2="-4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="0" x2="-4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="-3.3" x2="4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="-3.3" x2="4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.08" y2="0.3048" layer="21"/>
</package>
<package name="R4527">
<description>&lt;b&gt;Package 4527&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<wire x1="-5.675" y1="-3.375" x2="5.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-3.375" x2="5.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.375" x2="-5.675" y2="3.375" width="0.2032" layer="21"/>
<wire x1="-5.675" y1="3.375" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<smd name="1" x="-4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.715" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0001">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.075" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="1.606" x2="3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-2.544" y="2.229" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.501" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0002">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.55" y1="3.375" x2="-5.55" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.55" y1="-3.375" x2="5.55" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.55" y1="-3.375" x2="5.55" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.55" y1="3.375" x2="-5.55" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.65" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.65" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC01/2">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="-1.475" width="0.2032" layer="51"/>
<wire x1="-2.45" y1="-1.475" x2="2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="1.475" width="0.2032" layer="51"/>
<wire x1="2.45" y1="1.475" x2="-2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="1.106" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="-1.106" x2="-2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="1.106" x2="2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="-1.106" width="0.2032" layer="21"/>
<smd name="1" x="-2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<smd name="2" x="2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<text x="-2.544" y="1.904" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.176" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC2515">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.05" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.05" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="1.606" x2="3.05" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-3.2" y="2.15" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.2" y="-3.4" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC4527">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.675" y1="3.4" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.675" y1="-3.375" x2="5.675" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.675" y1="-3.375" x2="5.675" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.675" y1="3.4" x2="-5.675" y2="3.4" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.775" y="3.925" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.775" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC6927">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-8.65" y1="3.375" x2="-8.65" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-8.65" y1="-3.375" x2="8.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="8.65" y1="-3.375" x2="8.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="8.65" y1="3.375" x2="-8.65" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-7.95" y="0.025" dx="3.94" dy="5.97" layer="1"/>
<smd name="2" x="7.95" y="0" dx="3.94" dy="5.97" layer="1"/>
<text x="-8.75" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.75" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1218">
<description>&lt;b&gt;CRCW1218 Thick Film, Rectangular Chip Resistors&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com .. dcrcw.pdf</description>
<wire x1="-0.913" y1="-2.219" x2="0.939" y2="-2.219" width="0.1524" layer="51"/>
<wire x1="0.913" y1="2.219" x2="-0.939" y2="2.219" width="0.1524" layer="51"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<smd name="2" x="1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-2.3" x2="-0.9009" y2="2.3" layer="51"/>
<rectangle x1="0.9144" y1="-2.3" x2="1.6645" y2="2.3" layer="51"/>
</package>
<package name="1812X7R">
<description>&lt;b&gt;Chip Monolithic Ceramic Capacitors&lt;/b&gt; Medium Voltage High Capacitance for General Use&lt;p&gt;
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<wire x1="-1.1" y1="1.5" x2="1.1" y2="1.5" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.5" x2="-1.1" y2="-1.5" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="1.5" x2="0.6" y2="1.5" width="0.2032" layer="21"/>
<wire x1="0.6" y1="-1.5" x2="-0.6" y2="-1.5" width="0.2032" layer="21"/>
<smd name="1" x="-1.425" y="0" dx="0.8" dy="3.5" layer="1"/>
<smd name="2" x="1.425" y="0" dx="0.8" dy="3.5" layer="1" rot="R180"/>
<text x="-1.9456" y="1.9958" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.9456" y="-3.7738" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.4" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="1.4" y2="1.6" layer="51" rot="R180"/>
</package>
<package name="R01005">
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="R-US">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R-US_" prefix="R" uservalue="yes">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="R-US" x="0" y="0"/>
</gates>
<devices>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0805W" package="R0805W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206W" package="R1206W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1210W" package="R1210W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2010W" package="R2010W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2012W" package="R2012W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2512W" package="R2512W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3216W" package="R3216W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3225W" package="R3225W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R5025W" package="R5025W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R6332W" package="R6332W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M0805" package="M0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M1206" package="M1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M1406" package="M1406">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M2012" package="M2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M2309" package="M2309">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M3216" package="M3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M3516" package="M3516">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M5923" package="M5923">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/5" package="0204/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/12" package="0207/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/15" package="0207/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/2V" package="0207/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/5V" package="0207/5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/7" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/10" package="0309/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/12" package="0309/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/12" package="0411/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/15" package="0411/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/3V" package="0411V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0414/15" package="0414/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0414/5V" package="0414V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/17" package="0617/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/22" package="0617/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/5V" package="0617V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0922/22" package="0922/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0613/5V" package="P0613V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0613/15" package="P0613/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0817/22" package="P0817/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0817/7V" package="P0817V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V234/12" package="V234/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V235/17" package="V235/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V526-0" package="V526-0">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102AX" package="MINI_MELF-0102AX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0922V" package="0922V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102R" package="MINI_MELF-0102R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102W" package="MINI_MELF-0102W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0204R" package="MINI_MELF-0204R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0204W" package="MINI_MELF-0204W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0207R" package="MINI_MELF-0207R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0207W" package="MINI_MELF-0207W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="RDH/15" package="RDH/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/2V" package="0204V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/V" package="0309V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0201" package="R0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VMTA55" package="VMTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VMTB60" package="VMTB60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA52" package="VTA52">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA53" package="VTA53">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA54" package="VTA54">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA55" package="VTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA56" package="VTA56">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R4527" package="R4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC0001" package="WSC0001">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC0002" package="WSC0002">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC01/2" package="WSC01/2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC2515" package="WSC2515">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC4527" package="WSC4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC6927" package="WSC6927">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1218" package="R1218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1812X7R" package="1812X7R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="01005" package="R01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-subd">
<description>&lt;b&gt;SUB-D Connectors&lt;/b&gt;&lt;p&gt;
Harting&lt;br&gt;
NorComp&lt;br&gt;
&lt;p&gt;
PREFIX :&lt;br&gt;
H = High density&lt;br&gt;
F = Female&lt;br&gt;
M = Male&lt;p&gt;
NUMBER: Number of pins&lt;p&gt;
SUFFIX :&lt;br&gt;
H = Horizontal&lt;br&gt;
V = Vertical &lt;br&gt;
P = Shield pin on housing&lt;br&gt;
B = No mounting holes&lt;br&gt;
S = Pins individually placeable (Single)&lt;br&gt;
D = Direct mounting &lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="HDF15H">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="7.62" y1="-17.607" x2="8.128" y2="-17.099" width="0.1524" layer="21" curve="90"/>
<wire x1="-8.128" y1="-17.099" x2="-7.62" y2="-17.607" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.494" y1="-11.276" x2="-15.494" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="9.614" y1="-10.368" x2="9.614" y2="-11.276" width="0.1524" layer="21"/>
<wire x1="9.614" y1="-10.368" x2="9.487" y2="-10.368" width="0.1524" layer="21"/>
<wire x1="9.487" y1="-10.368" x2="-9.487" y2="-10.368" width="0.1524" layer="21"/>
<wire x1="8.852" y1="-7.62" x2="9.487" y2="-8.255" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.487" y1="-8.255" x2="9.487" y2="-10.368" width="0.1524" layer="21"/>
<wire x1="-9.614" y1="-10.368" x2="-9.614" y2="-11.276" width="0.1524" layer="21"/>
<wire x1="-9.487" y1="-8.255" x2="-9.487" y2="-10.368" width="0.1524" layer="21"/>
<wire x1="-9.487" y1="-10.368" x2="-9.614" y2="-10.368" width="0.1524" layer="21"/>
<wire x1="-9.487" y1="-8.255" x2="-8.852" y2="-7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="14.859" y1="4.445" x2="15.494" y2="3.81" width="0.1524" layer="21"/>
<wire x1="15.494" y1="3.81" x2="15.494" y2="-11.276" width="0.1524" layer="21"/>
<wire x1="10.033" y1="4.445" x2="14.859" y2="4.445" width="0.1524" layer="21"/>
<wire x1="10.033" y1="4.445" x2="9.525" y2="3.937" width="0.1524" layer="21"/>
<wire x1="9.525" y1="3.937" x2="9.525" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="3.937" x2="-9.525" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="3.937" x2="-10.033" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="4.445" x2="-14.986" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-14.986" y1="4.445" x2="-15.494" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="3.937" x2="-15.494" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-11.919" x2="8.128" y2="-17.099" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-11.919" x2="8.763" y2="-11.284" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.128" y1="-11.919" x2="-8.128" y2="-17.099" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-11.284" x2="-8.128" y2="-11.919" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.62" y1="-17.607" x2="-7.62" y2="-17.607" width="0.1524" layer="21"/>
<wire x1="15.476" y1="-11.294" x2="-15.38" y2="-11.294" width="0.1524" layer="21"/>
<wire x1="15.475" y1="-7.62" x2="-15.494" y2="-7.62" width="0.1524" layer="21"/>
<circle x="12.5" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="12.5" y="0" radius="2.667" width="0" layer="42"/>
<circle x="12.5" y="0" radius="2.667" width="0" layer="43"/>
<circle x="-12.5" y="0" radius="2.667" width="0" layer="42"/>
<circle x="-12.5" y="0" radius="2.667" width="0" layer="43"/>
<circle x="-12.5" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="10" x="-3.672" y="0" drill="0.9"/>
<pad name="9" x="-1.386" y="0" drill="0.9"/>
<pad name="8" x="0.9" y="0" drill="0.9"/>
<pad name="7" x="3.186" y="0" drill="0.9"/>
<pad name="6" x="5.472" y="0" drill="0.9"/>
<pad name="5" x="-4.815" y="2.54" drill="0.9"/>
<pad name="4" x="-2.529" y="2.54" drill="0.9"/>
<pad name="3" x="-0.243" y="2.54" drill="0.9"/>
<pad name="2" x="2.043" y="2.54" drill="0.9"/>
<pad name="1" x="4.329" y="2.54" drill="0.9" shape="octagon"/>
<pad name="15" x="-4.815" y="-2.54" drill="0.9"/>
<pad name="14" x="-2.529" y="-2.54" drill="0.9"/>
<pad name="13" x="-0.243" y="-2.54" drill="0.9"/>
<pad name="12" x="2.043" y="-2.54" drill="0.9"/>
<pad name="11" x="4.329" y="-2.54" drill="0.9"/>
<text x="-8.89" y="5.08" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="5.08" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.48" y="2.095" size="1.27" layer="21" ratio="10">1</text>
<text x="-6.915" y="1.995" size="1.27" layer="21" ratio="10">5</text>
<text x="6.58" y="-0.565" size="1.27" layer="21" ratio="10">6</text>
<text x="-7.115" y="-0.665" size="1.27" layer="21" ratio="10">10</text>
<text x="-7.82" y="-3.565" size="1.27" layer="21" ratio="10">15</text>
<text x="5.98" y="-3.265" size="1.27" layer="21" ratio="10">11</text>
<text x="-6.064" y="-14.717" size="1.27" layer="51" ratio="10">HDF15 CONEC</text>
<text x="2.413" y="-9.652" size="1.27" layer="21">Female</text>
<rectangle x1="0.7" y1="-7.6" x2="1.1" y2="-1.5" layer="21"/>
<rectangle x1="-1.586" y1="-7.6" x2="-1.186" y2="-1.5" layer="21"/>
<rectangle x1="-3.872" y1="-7.6" x2="-3.472" y2="-1.5" layer="21"/>
<rectangle x1="2.986" y1="-7.6" x2="3.386" y2="-1.5" layer="21"/>
<rectangle x1="5.272" y1="-7.6" x2="5.672" y2="-1.5" layer="21"/>
<rectangle x1="-0.443" y1="-7.6" x2="-0.043" y2="-4" layer="21"/>
<rectangle x1="-2.729" y1="-7.6" x2="-2.329" y2="-4" layer="21"/>
<rectangle x1="-5.015" y1="-7.6" x2="-4.615" y2="-4" layer="21"/>
<rectangle x1="1.843" y1="-7.6" x2="2.243" y2="-4" layer="21"/>
<rectangle x1="4.129" y1="-7.6" x2="4.529" y2="-4" layer="21"/>
<rectangle x1="-5.015" y1="-1.6" x2="-4.615" y2="1.5" layer="21"/>
<rectangle x1="-2.729" y1="-1.6" x2="-2.329" y2="1.5" layer="21"/>
<rectangle x1="-0.443" y1="-1.6" x2="-0.043" y2="1.5" layer="21"/>
<rectangle x1="1.843" y1="-1.6" x2="2.243" y2="1.5" layer="21"/>
<rectangle x1="4.129" y1="-1.6" x2="4.529" y2="1.5" layer="21"/>
<hole x="-12.5" y="0" drill="3"/>
<hole x="12.5" y="0" drill="3"/>
</package>
<package name="HDF15V">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-7.409" y1="-3.146" x2="-8.197" y2="2.537" width="0.1524" layer="21"/>
<wire x1="6.876" y1="4.137" x2="8.1915" y2="2.5038" width="0.1524" layer="21" curve="-102.298925"/>
<wire x1="8.197" y1="2.511" x2="7.409" y2="-3.121" width="0.1524" layer="21"/>
<wire x1="-6.876" y1="4.137" x2="6.876" y2="4.137" width="0.1524" layer="21"/>
<wire x1="-8.1961" y1="2.5268" x2="-6.876" y2="4.137" width="0.1524" layer="21" curve="-101.30773"/>
<wire x1="-7.4169" y1="-3.1295" x2="-6.114" y2="-4.137" width="0.1524" layer="21" curve="75.428151"/>
<wire x1="-6.114" y1="-4.137" x2="6.114" y2="-4.137" width="0.1524" layer="21"/>
<wire x1="-15.556" y1="-6.288" x2="-14.921" y2="-6.923" width="0.1524" layer="21" curve="90"/>
<wire x1="14.921" y1="-6.923" x2="15.556" y2="-6.288" width="0.1524" layer="21" curve="90"/>
<wire x1="15.556" y1="6.288" x2="15.556" y2="-6.288" width="0.1524" layer="21"/>
<wire x1="14.921" y1="6.923" x2="15.556" y2="6.288" width="0.1524" layer="21" curve="-90"/>
<wire x1="-15.556" y1="6.288" x2="-15.556" y2="-6.288" width="0.1524" layer="21"/>
<wire x1="-15.556" y1="6.288" x2="-14.921" y2="6.923" width="0.1524" layer="21" curve="-90"/>
<wire x1="-14.913" y1="-6.923" x2="14.921" y2="-6.923" width="0.1524" layer="21"/>
<wire x1="14.913" y1="6.923" x2="-14.921" y2="6.923" width="0.1524" layer="21"/>
<wire x1="6.114" y1="-4.137" x2="7.4169" y2="-3.1295" width="0.1524" layer="21" curve="75.428151"/>
<circle x="12.5" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="12.5" y="0" radius="2.667" width="0" layer="42"/>
<circle x="12.5" y="0" radius="2.667" width="0" layer="43"/>
<circle x="-12.5" y="0" radius="2.667" width="0" layer="42"/>
<circle x="-12.5" y="0" radius="2.667" width="0" layer="43"/>
<circle x="-12.5" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="10" x="-3.672" y="0" drill="0.9"/>
<pad name="9" x="-1.386" y="0" drill="0.9"/>
<pad name="8" x="0.9" y="0" drill="0.9"/>
<pad name="7" x="3.186" y="0" drill="0.9"/>
<pad name="6" x="5.472" y="0" drill="0.9"/>
<pad name="5" x="-4.815" y="1.98" drill="0.9"/>
<pad name="4" x="-2.529" y="1.98" drill="0.9"/>
<pad name="3" x="-0.243" y="1.98" drill="0.9"/>
<pad name="2" x="2.043" y="1.98" drill="0.9"/>
<pad name="1" x="4.329" y="1.98" drill="0.9" shape="octagon"/>
<pad name="15" x="-4.815" y="-1.98" drill="0.9"/>
<pad name="14" x="-2.529" y="-1.98" drill="0.9"/>
<pad name="13" x="-0.243" y="-1.98" drill="0.9"/>
<pad name="12" x="2.043" y="-1.98" drill="0.9"/>
<pad name="11" x="4.329" y="-1.98" drill="0.9"/>
<text x="-11.43" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.16" y="-6.35" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.48" y="1.535" size="1.27" layer="21" ratio="10">1</text>
<text x="-6.915" y="1.435" size="1.016" layer="21" ratio="10">5</text>
<text x="6.58" y="-0.565" size="1.016" layer="21" ratio="10">6</text>
<text x="-7.115" y="-0.665" size="1.016" layer="21" ratio="10">10</text>
<text x="-7.22" y="-3.165" size="1.016" layer="21" ratio="10">15</text>
<text x="5.38" y="-2.705" size="1.016" layer="21" ratio="10">11</text>
<text x="-12.033" y="5.349" size="1.27" layer="51" ratio="10">HDF15 CONEC</text>
<text x="2.413" y="4.826" size="1.27" layer="21">Female</text>
<hole x="-12.5" y="0" drill="3"/>
<hole x="12.5" y="0" drill="3"/>
</package>
</packages>
<symbols>
<symbol name="HF15">
<wire x1="-4.064" y1="12.0112" x2="-2.5226" y2="13.252" width="0.4064" layer="94" curve="-102.324066" cap="flat"/>
<wire x1="-2.5226" y1="13.2518" x2="3.0654" y2="12.0294" width="0.4064" layer="94"/>
<wire x1="3.0654" y1="12.0295" x2="4.0642" y2="10.7888" width="0.4064" layer="94" curve="-77.655139" cap="flat"/>
<wire x1="4.064" y1="-13.3288" x2="4.064" y2="10.7888" width="0.4064" layer="94"/>
<wire x1="3.0654" y1="-14.5694" x2="4.064" y2="-13.3288" width="0.4064" layer="94" curve="77.657889"/>
<wire x1="-4.064" y1="-14.5512" x2="-4.064" y2="12.0112" width="0.4064" layer="94"/>
<wire x1="-2.5226" y1="-15.7918" x2="3.0654" y2="-14.5694" width="0.4064" layer="94"/>
<wire x1="-4.064" y1="-14.5512" x2="-2.5226" y2="-15.7919" width="0.4064" layer="94" curve="102.337599" cap="flat"/>
<wire x1="-2.54" y1="7.62" x2="-0.762" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-0.762" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-0.762" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-0.762" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-12.7" x2="-0.762" y2="-12.7" width="0.1524" layer="94"/>
<circle x="0" y="7.62" radius="0.762" width="0.254" layer="94"/>
<circle x="1.778" y="10.16" radius="0.762" width="0.254" layer="94"/>
<circle x="-1.778" y="10.16" radius="0.762" width="0.254" layer="94"/>
<circle x="1.778" y="5.08" radius="0.762" width="0.254" layer="94"/>
<circle x="-1.778" y="5.08" radius="0.762" width="0.254" layer="94"/>
<circle x="1.778" y="0" radius="0.762" width="0.254" layer="94"/>
<circle x="-1.778" y="0" radius="0.762" width="0.254" layer="94"/>
<circle x="1.778" y="-5.08" radius="0.762" width="0.254" layer="94"/>
<circle x="-1.778" y="-5.08" radius="0.762" width="0.254" layer="94"/>
<circle x="1.778" y="-10.16" radius="0.762" width="0.254" layer="94"/>
<circle x="-1.778" y="-10.16" radius="0.762" width="0.254" layer="94"/>
<circle x="0" y="2.54" radius="0.762" width="0.254" layer="94"/>
<circle x="0" y="-2.54" radius="0.762" width="0.254" layer="94"/>
<circle x="0" y="-7.62" radius="0.762" width="0.254" layer="94"/>
<circle x="0" y="-12.7" radius="0.762" width="0.254" layer="94"/>
<text x="-4.445" y="-18.415" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="13.97" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="3" x="-7.62" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="4" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="5" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas"/>
<pin name="6" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas"/>
<pin name="7" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="8" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="9" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="10" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas"/>
<pin name="11" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="12" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="13" x="7.62" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="14" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="15" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HF15" prefix="X" uservalue="yes">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="HF15" x="0" y="0"/>
</gates>
<devices>
<device name="H" package="HDF15H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="V" package="HDF15V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-yamaichi">
<description>&lt;b&gt;Yamaichi Connectors&lt;/b&gt;&lt;p&gt;
Mini-DIN, USB, Fire Wire&lt;br&gt;
DIN female/male, etc.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MDIN06K">
<description>&lt;b&gt;Mini Din&lt;/b&gt; YAMAICHI CONNECTOR</description>
<wire x1="0.84" y1="3.64" x2="0.84" y2="2.52" width="0.2032" layer="21"/>
<wire x1="0.84" y1="2.52" x2="-0.84" y2="2.52" width="0.2032" layer="21"/>
<wire x1="-0.84" y1="2.52" x2="-0.84" y2="3.64" width="0.2032" layer="21"/>
<wire x1="-3.22" y1="-1.96" x2="-2.38" y2="-1.96" width="0.2032" layer="21"/>
<wire x1="-2.38" y1="-1.96" x2="-2.38" y2="-2.94" width="0.2032" layer="21"/>
<wire x1="3.22" y1="-1.96" x2="2.38" y2="-1.96" width="0.2032" layer="21"/>
<wire x1="2.38" y1="-1.96" x2="2.38" y2="-2.94" width="0.2032" layer="21"/>
<wire x1="-3.22" y1="-1.96" x2="-0.84" y2="3.64" width="0.2032" layer="21" curve="-108.115776"/>
<wire x1="0.84" y1="3.64" x2="3.22" y2="-1.96" width="0.2032" layer="21" curve="-108.115776"/>
<wire x1="-2.38" y1="-2.94" x2="2.38" y2="-2.94" width="0.2032" layer="21" curve="77.981988"/>
<wire x1="-1.26" y1="4.34" x2="1.26" y2="4.34" width="0.2032" layer="51" curve="327.621587"/>
<wire x1="-1.12" y1="4.2" x2="1.12" y2="4.2" width="0.2032" layer="51" curve="330.137166"/>
<wire x1="-1.15" y1="4.15" x2="-1.15" y2="4.4" width="0.1016" layer="51"/>
<wire x1="-1.15" y1="4.4" x2="-1.25" y2="4.4" width="0.1016" layer="51"/>
<wire x1="-1.25" y1="4.4" x2="-1.25" y2="4.2" width="0.1016" layer="51"/>
<wire x1="1.15" y1="4.15" x2="1.15" y2="4.4" width="0.1016" layer="51"/>
<wire x1="1.15" y1="4.4" x2="1.25" y2="4.4" width="0.1016" layer="51"/>
<wire x1="1.25" y1="4.4" x2="1.25" y2="4.2" width="0.1016" layer="51"/>
<wire x1="-2.233" y1="0.744" x2="-2.233" y2="1.902" width="0.2032" layer="51"/>
<wire x1="-2.233" y1="1.902" x2="-1.489" y2="1.902" width="0.2032" layer="51"/>
<wire x1="-1.489" y1="1.902" x2="-1.489" y2="0.744" width="0.2032" layer="51"/>
<wire x1="-1.489" y1="0.744" x2="-2.233" y2="0.744" width="0.2032" layer="51"/>
<wire x1="-0.662" y1="0" x2="-0.662" y2="1.902" width="0.2032" layer="21"/>
<wire x1="-0.662" y1="1.902" x2="0.662" y2="1.902" width="0.2032" layer="21"/>
<wire x1="0.662" y1="1.902" x2="0.662" y2="0" width="0.2032" layer="21"/>
<wire x1="0.662" y1="0" x2="-0.662" y2="0" width="0.2032" layer="21"/>
<wire x1="1.489" y1="0.744" x2="1.489" y2="1.902" width="0.2032" layer="51"/>
<wire x1="1.489" y1="1.902" x2="2.233" y2="1.902" width="0.2032" layer="51"/>
<wire x1="2.233" y1="1.902" x2="2.233" y2="0.744" width="0.2032" layer="51"/>
<wire x1="2.233" y1="0.744" x2="1.489" y2="0.744" width="0.2032" layer="51"/>
<wire x1="-1.571" y1="-0.744" x2="-2.729" y2="-0.744" width="0.2032" layer="51"/>
<wire x1="-2.729" y1="-0.744" x2="-2.729" y2="0" width="0.2032" layer="51"/>
<wire x1="-2.729" y1="0" x2="-1.571" y2="0" width="0.2032" layer="51"/>
<wire x1="-1.571" y1="0" x2="-1.571" y2="-0.744" width="0.2032" layer="51"/>
<wire x1="1.571" y1="0" x2="2.729" y2="0" width="0.2032" layer="51"/>
<wire x1="2.729" y1="0" x2="2.729" y2="-0.744" width="0.2032" layer="51"/>
<wire x1="2.729" y1="-0.744" x2="1.571" y2="-0.744" width="0.2032" layer="51"/>
<wire x1="1.571" y1="-0.744" x2="1.571" y2="0" width="0.2032" layer="51"/>
<wire x1="-1.489" y1="-1.902" x2="-0.248" y2="-1.902" width="0.2032" layer="51"/>
<wire x1="-0.248" y1="-1.902" x2="-0.248" y2="-2.646" width="0.2032" layer="51"/>
<wire x1="-0.248" y1="-2.646" x2="-1.489" y2="-2.646" width="0.2032" layer="51"/>
<wire x1="-1.489" y1="-2.646" x2="-1.489" y2="-1.902" width="0.2032" layer="51"/>
<wire x1="0.248" y1="-1.902" x2="1.406" y2="-1.902" width="0.2032" layer="51"/>
<wire x1="1.406" y1="-1.902" x2="1.406" y2="-2.646" width="0.2032" layer="51"/>
<wire x1="1.406" y1="-2.646" x2="0.248" y2="-2.646" width="0.2032" layer="51"/>
<wire x1="0.248" y1="-2.646" x2="0.248" y2="-1.902" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="6.5" width="1.016" layer="21"/>
<circle x="0" y="0" radius="5.32" width="0.2032" layer="21"/>
<pad name="3" x="2.8" y="-0.4" drill="0.9"/>
<pad name="4" x="-2.8" y="-0.4" drill="0.9"/>
<pad name="2" x="-1.3" y="-2.4" drill="0.9"/>
<pad name="1" x="1" y="-2.7" drill="0.9"/>
<pad name="5" x="2.3" y="1.6" drill="0.9"/>
<pad name="6" x="-2.3" y="1.6" drill="0.9"/>
<pad name="M1" x="-4.7" y="0" drill="0.9" shape="long" rot="R90"/>
<pad name="M2" x="4.7" y="0" drill="0.9" shape="long" rot="R90"/>
<text x="-2.54" y="7.62" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-8.89" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MDIN06K">
<wire x1="2.116" y1="0.43" x2="0.996" y2="0.43" width="0.2" layer="94"/>
<wire x1="0.996" y1="0.43" x2="0.996" y2="2.11" width="0.2" layer="94"/>
<wire x1="0.996" y1="2.11" x2="2.116" y2="2.11" width="0.2" layer="94"/>
<wire x1="-3.484" y1="4.49" x2="-3.484" y2="3.65" width="0.2" layer="94"/>
<wire x1="-3.484" y1="3.65" x2="-4.464" y2="3.65" width="0.2" layer="94"/>
<wire x1="-3.484" y1="-1.95" x2="-3.484" y2="-1.11" width="0.2" layer="94"/>
<wire x1="-3.484" y1="-1.11" x2="-4.464" y2="-1.11" width="0.2" layer="94"/>
<wire x1="-3.484" y1="4.49" x2="2.1161" y2="2.11" width="0.2" layer="94" curve="-108.116749" cap="flat"/>
<wire x1="-3.484" y1="-1.9499" x2="2.116" y2="0.43" width="0.2" layer="94" curve="108.117118"/>
<wire x1="-4.464" y1="3.65" x2="-4.464" y2="-1.11" width="0.2" layer="94" curve="77.981988"/>
<wire x1="-0.7797" y1="3.5029" x2="0.3781" y2="3.5029" width="0.2" layer="94"/>
<wire x1="0.3781" y1="3.5029" x2="0.3781" y2="2.7586" width="0.2" layer="94"/>
<wire x1="0.3781" y1="2.7586" x2="-0.7797" y2="2.7586" width="0.2" layer="94"/>
<wire x1="-0.7797" y1="2.7586" x2="-0.7797" y2="3.5029" width="0.2" layer="94"/>
<wire x1="-1.524" y1="1.9316" x2="0.3781" y2="1.9316" width="0.2" layer="94"/>
<wire x1="0.3781" y1="1.9316" x2="0.3781" y2="0.6084" width="0.2" layer="94"/>
<wire x1="0.3781" y1="0.6084" x2="-1.524" y2="0.6084" width="0.2" layer="94"/>
<wire x1="-1.524" y1="0.6084" x2="-1.524" y2="1.9316" width="0.2" layer="94"/>
<wire x1="-0.7797" y1="-0.2186" x2="0.3781" y2="-0.2186" width="0.2" layer="94"/>
<wire x1="0.3781" y1="-0.2186" x2="0.3781" y2="-0.9629" width="0.2" layer="94"/>
<wire x1="0.3781" y1="-0.9629" x2="-0.7797" y2="-0.9629" width="0.2" layer="94"/>
<wire x1="-0.7797" y1="-0.9629" x2="-0.7797" y2="-0.2186" width="0.2" layer="94"/>
<wire x1="-2.2683" y1="2.8413" x2="-2.2683" y2="3.9991" width="0.2" layer="94"/>
<wire x1="-2.2683" y1="3.9991" x2="-1.524" y2="3.9991" width="0.2" layer="94"/>
<wire x1="-1.524" y1="3.9991" x2="-1.524" y2="2.8413" width="0.2" layer="94"/>
<wire x1="-1.524" y1="2.8413" x2="-2.2683" y2="2.8413" width="0.2" layer="94"/>
<wire x1="-1.524" y1="-0.3013" x2="-1.524" y2="-1.4591" width="0.2" layer="94"/>
<wire x1="-1.524" y1="-1.4591" x2="-2.2683" y2="-1.4591" width="0.2" layer="94"/>
<wire x1="-2.2683" y1="-1.4591" x2="-2.2683" y2="-0.3013" width="0.2" layer="94"/>
<wire x1="-2.2683" y1="-0.3013" x2="-1.524" y2="-0.3013" width="0.2" layer="94"/>
<wire x1="-3.4261" y1="2.7586" x2="-3.4261" y2="1.5181" width="0.2" layer="94"/>
<wire x1="-3.4261" y1="1.5181" x2="-4.1704" y2="1.5181" width="0.2" layer="94"/>
<wire x1="-4.1704" y1="1.5181" x2="-4.1704" y2="2.7586" width="0.2" layer="94"/>
<wire x1="-4.1704" y1="2.7586" x2="-3.4261" y2="2.7586" width="0.2" layer="94"/>
<wire x1="-3.4261" y1="1.0219" x2="-3.4261" y2="-0.1359" width="0.2" layer="94"/>
<wire x1="-3.4261" y1="-0.1359" x2="-4.1704" y2="-0.1359" width="0.2" layer="94"/>
<wire x1="-4.1704" y1="-0.1359" x2="-4.1704" y2="1.0219" width="0.2" layer="94"/>
<wire x1="-4.1704" y1="1.0219" x2="-3.4261" y2="1.0219" width="0.2" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-3.302" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-3.302" y1="5.08" x2="-3.048" y2="4.826" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-3.302" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-3.302" y1="-2.54" x2="-3.048" y2="-2.286" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-3.556" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-3.556" y1="-5.08" x2="-1.016" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-3.556" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-3.556" y1="7.62" x2="-1.016" y2="5.08" width="0.1524" layer="94"/>
<text x="-2.794" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-4.826" y="-7.366" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-7.62" y="7.62" visible="pad" length="short" direction="pas"/>
<pin name="2" x="-7.62" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="3" x="-7.62" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="4" x="-7.62" y="0" visible="pad" length="short" direction="pas"/>
<pin name="5" x="-7.62" y="-2.54" visible="pad" length="short" direction="pas"/>
<pin name="6" x="-7.62" y="-5.08" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MDIN06K" prefix="X" uservalue="yes">
<description>&lt;b&gt;YAMAICHI CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MDIN06K" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MDIN06K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="PIC32MX795F512L">
<packages>
<package name="TQFP100_14X14MC">
<smd name="1" x="-7.62" y="5.9999875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="2" x="-7.62" y="5.4999875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="3" x="-7.62" y="4.999990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="4" x="-7.62" y="4.499990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="5" x="-7.62" y="3.999990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="6" x="-7.62" y="3.49999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="7" x="-7.62" y="2.99999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="8" x="-7.62" y="2.49999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="9" x="-7.62" y="1.999996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="10" x="-7.62" y="1.499996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="11" x="-7.62" y="0.999996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="12" x="-7.62" y="0.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="13" x="-7.62" y="0" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="14" x="-7.62" y="-0.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="15" x="-7.62" y="-0.999996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="16" x="-7.62" y="-1.499996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="17" x="-7.62" y="-1.999996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="18" x="-7.62" y="-2.49999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="19" x="-7.62" y="-2.99999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="20" x="-7.62" y="-3.49999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="21" x="-7.62" y="-3.999990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="22" x="-7.62" y="-4.499990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="23" x="-7.62" y="-4.999990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="24" x="-7.62" y="-5.4999875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="25" x="-7.62" y="-5.9999875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="26" x="-5.9999875" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="27" x="-5.4999875" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="28" x="-4.999990625" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="29" x="-4.499990625" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="30" x="-3.999990625" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="31" x="-3.49999375" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="32" x="-2.99999375" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="33" x="-2.49999375" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="34" x="-1.999996875" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="35" x="-1.499996875" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="36" x="-0.999996875" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="37" x="-0.5" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="38" x="0" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="39" x="0.5" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="40" x="0.999996875" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="41" x="1.499996875" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="42" x="1.999996875" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="43" x="2.49999375" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="44" x="2.99999375" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="45" x="3.49999375" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="46" x="3.999990625" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="47" x="4.499990625" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="48" x="4.999990625" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="49" x="5.4999875" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="50" x="5.9999875" y="-7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="51" x="7.62" y="-5.9999875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="52" x="7.62" y="-5.4999875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="53" x="7.62" y="-4.999990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="54" x="7.62" y="-4.499990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="55" x="7.62" y="-3.999990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="56" x="7.62" y="-3.49999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="57" x="7.62" y="-2.99999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="58" x="7.62" y="-2.49999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="59" x="7.62" y="-1.999996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="60" x="7.62" y="-1.499996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="61" x="7.62" y="-0.999996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="62" x="7.62" y="-0.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="63" x="7.62" y="0" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="64" x="7.62" y="0.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="65" x="7.62" y="0.999996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="66" x="7.62" y="1.499996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="67" x="7.62" y="1.999996875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="68" x="7.62" y="2.49999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="69" x="7.62" y="2.99999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="70" x="7.62" y="3.49999375" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="71" x="7.62" y="3.999990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="72" x="7.62" y="4.499990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="73" x="7.62" y="4.999990625" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="74" x="7.62" y="5.4999875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="75" x="7.62" y="5.9999875" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="76" x="5.9999875" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="77" x="5.4999875" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="78" x="4.999990625" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="79" x="4.499990625" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="80" x="3.999990625" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="81" x="3.49999375" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="82" x="2.99999375" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="83" x="2.49999375" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="84" x="1.999996875" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="85" x="1.499996875" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="86" x="0.999996875" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="87" x="0.5" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="88" x="0" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="89" x="-0.5" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="90" x="-0.999996875" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="91" x="-1.499996875" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="92" x="-1.999996875" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="93" x="-2.49999375" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="94" x="-2.99999375" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="95" x="-3.49999375" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="96" x="-3.999990625" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="97" x="-4.499990625" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="98" x="-4.999990625" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="99" x="-5.4999875" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="100" x="-5.9999875" y="7.62" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<wire x1="-6.477" y1="7.0104" x2="-7.0104" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="6.477" x2="7.0104" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="6.477" y1="-7.0104" x2="7.0104" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-6.477" x2="-7.0104" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-6.5532" y1="6.1722" x2="-6.1722" y2="6.5532" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-7.0104" x2="-6.477" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-7.0104" x2="7.0104" y2="-6.477" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="7.0104" x2="6.477" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="7.0104" x2="-7.0104" y2="6.477" width="0.1524" layer="51"/>
<wire x1="-8.8646" y1="1.7018" x2="-8.8646" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="-8.8646" y1="1.3208" x2="-8.6106" y2="1.3208" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="1.3208" x2="-8.6106" y2="1.7018" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="1.7018" x2="-8.8646" y2="1.7018" width="0.1524" layer="51"/>
<wire x1="-8.8646" y1="-3.302" x2="-8.8646" y2="-3.683" width="0.1524" layer="51"/>
<wire x1="-8.8646" y1="-3.683" x2="-8.6106" y2="-3.683" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="-3.683" x2="-8.6106" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="-8.6106" y1="-3.302" x2="-8.8646" y2="-3.302" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-8.6106" x2="-4.191" y2="-8.8646" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-8.8646" x2="-3.81" y2="-8.8646" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-8.8646" x2="-3.81" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-8.6106" x2="-4.191" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="-8.6106" x2="0.8128" y2="-8.8646" width="0.1524" layer="51"/>
<wire x1="0.8128" y1="-8.8646" x2="1.1938" y2="-8.8646" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-8.8646" x2="1.1938" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-8.6106" x2="0.8128" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="5.8166" y1="-8.6106" x2="5.8166" y2="-8.8646" width="0.1524" layer="51"/>
<wire x1="5.8166" y1="-8.8646" x2="6.1976" y2="-8.8646" width="0.1524" layer="51"/>
<wire x1="6.1976" y1="-8.8646" x2="6.1976" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="6.1976" y1="-8.6106" x2="5.8166" y2="-8.6106" width="0.1524" layer="51"/>
<wire x1="8.8646" y1="-1.3208" x2="8.8646" y2="-1.7018" width="0.1524" layer="51"/>
<wire x1="8.8646" y1="-1.7018" x2="8.6106" y2="-1.7018" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="-1.7018" x2="8.6106" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="-1.3208" x2="8.8646" y2="-1.3208" width="0.1524" layer="51"/>
<wire x1="8.8646" y1="3.683" x2="8.8646" y2="3.302" width="0.1524" layer="51"/>
<wire x1="8.8646" y1="3.302" x2="8.6106" y2="3.302" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="3.302" x2="8.6106" y2="3.683" width="0.1524" layer="51"/>
<wire x1="8.6106" y1="3.683" x2="8.8646" y2="3.683" width="0.1524" layer="51"/>
<wire x1="3.81" y1="8.6106" x2="3.81" y2="8.8646" width="0.1524" layer="51"/>
<wire x1="3.81" y1="8.8646" x2="4.191" y2="8.8646" width="0.1524" layer="51"/>
<wire x1="4.191" y1="8.8646" x2="4.191" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="4.191" y1="8.6106" x2="3.81" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="8.6106" x2="-1.1938" y2="8.8646" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="8.8646" x2="-0.8128" y2="8.8646" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="8.8646" x2="-0.8128" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="-0.8128" y1="8.6106" x2="-1.1938" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="-6.1976" y1="8.6106" x2="-6.1976" y2="8.8646" width="0.1524" layer="51"/>
<wire x1="-6.1976" y1="8.8646" x2="-5.8166" y2="8.8646" width="0.1524" layer="51"/>
<wire x1="-5.8166" y1="8.8646" x2="-5.8166" y2="8.6106" width="0.1524" layer="51"/>
<wire x1="-5.8166" y1="8.6106" x2="-6.1976" y2="8.6106" width="0.1524" layer="51"/>
<text x="-9.5758" y="5.9944" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="5.8674" y1="7.0104" x2="6.1468" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="6.1468" y1="7.0104" x2="6.1468" y2="8.001" width="0.1524" layer="25"/>
<wire x1="6.1468" y1="8.001" x2="5.8674" y2="8.001" width="0.1524" layer="25"/>
<wire x1="5.8674" y1="8.001" x2="5.8674" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="5.3594" y1="7.0104" x2="5.6388" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="5.6388" y1="7.0104" x2="5.6388" y2="8.001" width="0.1524" layer="25"/>
<wire x1="5.6388" y1="8.001" x2="5.3594" y2="8.001" width="0.1524" layer="25"/>
<wire x1="5.3594" y1="8.001" x2="5.3594" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="4.8514" y1="7.0104" x2="5.1308" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="5.1308" y1="7.0104" x2="5.1308" y2="8.001" width="0.1524" layer="25"/>
<wire x1="5.1308" y1="8.001" x2="4.8514" y2="8.001" width="0.1524" layer="25"/>
<wire x1="4.8514" y1="8.001" x2="4.8514" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="4.3688" y1="7.0104" x2="4.6482" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="4.6482" y1="7.0104" x2="4.6482" y2="8.001" width="0.1524" layer="25"/>
<wire x1="4.6482" y1="8.001" x2="4.3688" y2="8.001" width="0.1524" layer="25"/>
<wire x1="4.3688" y1="8.001" x2="4.3688" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="3.8608" y1="7.0104" x2="4.1402" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="4.1402" y1="7.0104" x2="4.1402" y2="8.001" width="0.1524" layer="25"/>
<wire x1="4.1402" y1="8.001" x2="3.8608" y2="8.001" width="0.1524" layer="25"/>
<wire x1="3.8608" y1="8.001" x2="3.8608" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="3.3528" y1="7.0104" x2="3.6322" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="3.6322" y1="7.0104" x2="3.6322" y2="8.001" width="0.1524" layer="25"/>
<wire x1="3.6322" y1="8.001" x2="3.3528" y2="8.001" width="0.1524" layer="25"/>
<wire x1="3.3528" y1="8.001" x2="3.3528" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="2.8702" y1="7.0104" x2="3.1496" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="3.1496" y1="7.0104" x2="3.1496" y2="8.001" width="0.1524" layer="25"/>
<wire x1="3.1496" y1="8.001" x2="2.8702" y2="8.001" width="0.1524" layer="25"/>
<wire x1="2.8702" y1="8.001" x2="2.8702" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="2.3622" y1="7.0104" x2="2.6416" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="2.6416" y1="7.0104" x2="2.6416" y2="8.001" width="0.1524" layer="25"/>
<wire x1="2.6416" y1="8.001" x2="2.3622" y2="8.001" width="0.1524" layer="25"/>
<wire x1="2.3622" y1="8.001" x2="2.3622" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="1.8542" y1="7.0104" x2="2.1336" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="2.1336" y1="7.0104" x2="2.1336" y2="8.001" width="0.1524" layer="25"/>
<wire x1="2.1336" y1="8.001" x2="1.8542" y2="8.001" width="0.1524" layer="25"/>
<wire x1="1.8542" y1="8.001" x2="1.8542" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="1.3716" y1="7.0104" x2="1.651" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="1.651" y1="7.0104" x2="1.651" y2="8.001" width="0.1524" layer="25"/>
<wire x1="1.651" y1="8.001" x2="1.3716" y2="8.001" width="0.1524" layer="25"/>
<wire x1="1.3716" y1="8.001" x2="1.3716" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="0.8636" y1="7.0104" x2="1.143" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="1.143" y1="7.0104" x2="1.143" y2="8.001" width="0.1524" layer="25"/>
<wire x1="1.143" y1="8.001" x2="0.8636" y2="8.001" width="0.1524" layer="25"/>
<wire x1="0.8636" y1="8.001" x2="0.8636" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="0.3556" y1="7.0104" x2="0.635" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="0.635" y1="7.0104" x2="0.635" y2="8.001" width="0.1524" layer="25"/>
<wire x1="0.635" y1="8.001" x2="0.3556" y2="8.001" width="0.1524" layer="25"/>
<wire x1="0.3556" y1="8.001" x2="0.3556" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-0.1524" y1="7.0104" x2="0.1524" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="0.1524" y1="7.0104" x2="0.127" y2="8.001" width="0.1524" layer="25"/>
<wire x1="0.127" y1="8.001" x2="-0.1524" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-0.1524" y1="8.001" x2="-0.1524" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-0.635" y1="7.0104" x2="-0.3556" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-0.3556" y1="7.0104" x2="-0.3556" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-0.3556" y1="8.001" x2="-0.635" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-0.635" y1="8.001" x2="-0.635" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-1.143" y1="7.0104" x2="-0.8636" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-0.8636" y1="7.0104" x2="-0.8636" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-0.8636" y1="8.001" x2="-1.143" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-1.143" y1="8.001" x2="-1.143" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-1.651" y1="7.0104" x2="-1.3716" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-1.3716" y1="7.0104" x2="-1.3716" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-1.3716" y1="8.001" x2="-1.651" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-1.651" y1="8.001" x2="-1.651" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-2.1336" y1="7.0104" x2="-1.8542" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-1.8542" y1="7.0104" x2="-1.8542" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-1.8542" y1="8.001" x2="-2.1336" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-2.1336" y1="8.001" x2="-2.1336" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-2.6416" y1="7.0104" x2="-2.3622" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-2.3622" y1="7.0104" x2="-2.3622" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-2.3622" y1="8.001" x2="-2.6416" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-2.6416" y1="8.001" x2="-2.6416" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-3.1496" y1="7.0104" x2="-2.8702" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-2.8702" y1="7.0104" x2="-2.8702" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-2.8702" y1="8.001" x2="-3.1496" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-3.1496" y1="8.001" x2="-3.1496" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-3.6322" y1="7.0104" x2="-3.3528" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-3.3528" y1="7.0104" x2="-3.3528" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-3.3528" y1="8.001" x2="-3.6322" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-3.6322" y1="8.001" x2="-3.6322" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-4.1402" y1="7.0104" x2="-3.8608" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-3.8608" y1="7.0104" x2="-3.8608" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-3.8608" y1="8.001" x2="-4.1402" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-4.1402" y1="8.001" x2="-4.1402" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-4.6482" y1="7.0104" x2="-4.3688" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-4.3688" y1="7.0104" x2="-4.3688" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-4.3688" y1="8.001" x2="-4.6482" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-4.6482" y1="8.001" x2="-4.6482" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-5.1308" y1="7.0104" x2="-4.8514" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-4.8514" y1="7.0104" x2="-4.8514" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-4.8514" y1="8.001" x2="-5.1308" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-5.1308" y1="8.001" x2="-5.1308" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-5.6388" y1="7.0104" x2="-5.3594" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-5.3594" y1="7.0104" x2="-5.3594" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-5.3594" y1="8.001" x2="-5.6388" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-5.6388" y1="8.001" x2="-5.6388" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-6.1468" y1="7.0104" x2="-5.8674" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-5.8674" y1="7.0104" x2="-5.8674" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-5.8674" y1="8.001" x2="-6.1468" y2="8.001" width="0.1524" layer="25"/>
<wire x1="-6.1468" y1="8.001" x2="-6.1468" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="5.8674" x2="-7.0104" y2="6.1468" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="6.1468" x2="-8.001" y2="6.1468" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="6.1468" x2="-8.001" y2="5.8674" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="5.8674" x2="-7.0104" y2="5.8674" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="5.3594" x2="-7.0104" y2="5.6388" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="5.6388" x2="-8.001" y2="5.6388" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="5.6388" x2="-8.001" y2="5.3594" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="5.3594" x2="-7.0104" y2="5.3594" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="4.8514" x2="-7.0104" y2="5.1308" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="5.1308" x2="-8.001" y2="5.1308" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="5.1308" x2="-8.001" y2="4.8514" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="4.8514" x2="-7.0104" y2="4.8514" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="4.3688" x2="-7.0104" y2="4.6482" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="4.6482" x2="-8.001" y2="4.6482" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="4.6482" x2="-8.001" y2="4.3688" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="4.3688" x2="-7.0104" y2="4.3688" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="3.8608" x2="-7.0104" y2="4.1402" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="4.1402" x2="-8.001" y2="4.1402" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="4.1402" x2="-8.001" y2="3.8608" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="3.8608" x2="-7.0104" y2="3.8608" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="3.3528" x2="-7.0104" y2="3.6322" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="3.6322" x2="-8.001" y2="3.6322" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="3.6322" x2="-8.001" y2="3.3528" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="3.3528" x2="-7.0104" y2="3.3528" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="2.8702" x2="-7.0104" y2="3.1496" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="3.1496" x2="-8.001" y2="3.1496" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="3.1496" x2="-8.001" y2="2.8702" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="2.8702" x2="-7.0104" y2="2.8702" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="2.3622" x2="-7.0104" y2="2.6416" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="2.6416" x2="-8.001" y2="2.6416" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="2.6416" x2="-8.001" y2="2.3622" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="2.3622" x2="-7.0104" y2="2.3622" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="1.8542" x2="-7.0104" y2="2.1336" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="2.1336" x2="-8.001" y2="2.1336" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="2.1336" x2="-8.001" y2="1.8542" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="1.8542" x2="-7.0104" y2="1.8542" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="1.3716" x2="-7.0104" y2="1.651" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="1.651" x2="-8.001" y2="1.651" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="1.651" x2="-8.001" y2="1.3716" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="1.3716" x2="-7.0104" y2="1.3716" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="0.8636" x2="-7.0104" y2="1.143" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="1.143" x2="-8.001" y2="1.143" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="1.143" x2="-8.001" y2="0.8636" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="0.8636" x2="-7.0104" y2="0.8636" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="0.3556" x2="-7.0104" y2="0.635" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="0.635" x2="-8.001" y2="0.635" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="0.635" x2="-8.001" y2="0.3556" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="0.3556" x2="-7.0104" y2="0.3556" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-0.1524" x2="-7.0104" y2="0.1524" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="0.1524" x2="-8.001" y2="0.127" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="0.127" x2="-8.001" y2="-0.1524" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-0.1524" x2="-7.0104" y2="-0.1524" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-0.635" x2="-7.0104" y2="-0.3556" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-0.3556" x2="-8.001" y2="-0.3556" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-0.3556" x2="-8.001" y2="-0.635" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-0.635" x2="-7.0104" y2="-0.635" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-1.143" x2="-7.0104" y2="-0.8636" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-0.8636" x2="-8.001" y2="-0.8636" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-0.8636" x2="-8.001" y2="-1.143" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-1.143" x2="-7.0104" y2="-1.143" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-1.651" x2="-7.0104" y2="-1.3716" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-1.3716" x2="-8.001" y2="-1.3716" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-1.3716" x2="-8.001" y2="-1.651" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-1.651" x2="-7.0104" y2="-1.651" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-2.1336" x2="-7.0104" y2="-1.8542" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-1.8542" x2="-8.001" y2="-1.8542" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-1.8542" x2="-8.001" y2="-2.1336" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-2.1336" x2="-7.0104" y2="-2.1336" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-2.6416" x2="-7.0104" y2="-2.3622" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-2.3622" x2="-8.001" y2="-2.3622" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-2.3622" x2="-8.001" y2="-2.6416" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-2.6416" x2="-7.0104" y2="-2.6416" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-3.1496" x2="-7.0104" y2="-2.8702" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-2.8702" x2="-8.001" y2="-2.8702" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-2.8702" x2="-8.001" y2="-3.1496" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-3.1496" x2="-7.0104" y2="-3.1496" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-3.6322" x2="-7.0104" y2="-3.3528" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-3.3528" x2="-8.001" y2="-3.3528" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-3.3528" x2="-8.001" y2="-3.6322" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-3.6322" x2="-7.0104" y2="-3.6322" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-4.1402" x2="-7.0104" y2="-3.8608" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-3.8608" x2="-8.001" y2="-3.8608" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-3.8608" x2="-8.001" y2="-4.1402" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-4.1402" x2="-7.0104" y2="-4.1402" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-4.6482" x2="-7.0104" y2="-4.3688" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-4.3688" x2="-8.001" y2="-4.3688" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-4.3688" x2="-8.001" y2="-4.6482" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-4.6482" x2="-7.0104" y2="-4.6482" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-5.1308" x2="-7.0104" y2="-4.8514" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-4.8514" x2="-8.001" y2="-4.8514" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-4.8514" x2="-8.001" y2="-5.1308" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-5.1308" x2="-7.0104" y2="-5.1308" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-5.6388" x2="-7.0104" y2="-5.3594" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-5.3594" x2="-8.001" y2="-5.3594" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-5.3594" x2="-8.001" y2="-5.6388" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-5.6388" x2="-7.0104" y2="-5.6388" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-6.1468" x2="-7.0104" y2="-5.8674" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-5.8674" x2="-8.001" y2="-5.8674" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-5.8674" x2="-8.001" y2="-6.1468" width="0.1524" layer="25"/>
<wire x1="-8.001" y1="-6.1468" x2="-7.0104" y2="-6.1468" width="0.1524" layer="25"/>
<wire x1="-5.8674" y1="-7.0104" x2="-6.1468" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-6.1468" y1="-7.0104" x2="-6.1468" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-6.1468" y1="-8.001" x2="-5.8674" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-5.8674" y1="-8.001" x2="-5.8674" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-5.3594" y1="-7.0104" x2="-5.6388" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-5.6388" y1="-7.0104" x2="-5.6388" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-5.6388" y1="-8.001" x2="-5.3594" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-5.3594" y1="-8.001" x2="-5.3594" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-4.8514" y1="-7.0104" x2="-5.1308" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-5.1308" y1="-7.0104" x2="-5.1308" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-5.1308" y1="-8.001" x2="-4.8514" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-4.8514" y1="-8.001" x2="-4.8514" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-4.3688" y1="-7.0104" x2="-4.6482" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-4.6482" y1="-7.0104" x2="-4.6482" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-4.6482" y1="-8.001" x2="-4.3688" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-4.3688" y1="-8.001" x2="-4.3688" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-3.8608" y1="-7.0104" x2="-4.1402" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-4.1402" y1="-7.0104" x2="-4.1402" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-4.1402" y1="-8.001" x2="-3.8608" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-3.8608" y1="-8.001" x2="-3.8608" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-3.3528" y1="-7.0104" x2="-3.6322" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-3.6322" y1="-7.0104" x2="-3.6322" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-3.6322" y1="-8.001" x2="-3.3528" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-3.3528" y1="-8.001" x2="-3.3528" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-2.8702" y1="-7.0104" x2="-3.1496" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-3.1496" y1="-7.0104" x2="-3.1496" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-3.1496" y1="-8.001" x2="-2.8702" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-2.8702" y1="-8.001" x2="-2.8702" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-2.3622" y1="-7.0104" x2="-2.6416" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-2.6416" y1="-7.0104" x2="-2.6416" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-2.6416" y1="-8.001" x2="-2.3622" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-2.3622" y1="-8.001" x2="-2.3622" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-1.8542" y1="-7.0104" x2="-2.1336" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-2.1336" y1="-7.0104" x2="-2.1336" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-2.1336" y1="-8.001" x2="-1.8542" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-1.8542" y1="-8.001" x2="-1.8542" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-1.3716" y1="-7.0104" x2="-1.651" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-1.651" y1="-7.0104" x2="-1.651" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-1.651" y1="-8.001" x2="-1.3716" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-1.3716" y1="-8.001" x2="-1.3716" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-0.8636" y1="-7.0104" x2="-1.143" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-1.143" y1="-7.0104" x2="-1.143" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-1.143" y1="-8.001" x2="-0.8636" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-0.8636" y1="-8.001" x2="-0.8636" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-0.3556" y1="-7.0104" x2="-0.635" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-0.635" y1="-7.0104" x2="-0.635" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-0.635" y1="-8.001" x2="-0.3556" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-0.3556" y1="-8.001" x2="-0.3556" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="0.1524" y1="-7.0104" x2="-0.1524" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="-0.1524" y1="-7.0104" x2="-0.127" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="-0.127" y1="-8.001" x2="0.1524" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="0.1524" y1="-8.001" x2="0.1524" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="0.635" y1="-7.0104" x2="0.3556" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="0.3556" y1="-7.0104" x2="0.3556" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="0.3556" y1="-8.001" x2="0.635" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="0.635" y1="-8.001" x2="0.635" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="1.143" y1="-7.0104" x2="0.8636" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="0.8636" y1="-7.0104" x2="0.8636" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="0.8636" y1="-8.001" x2="1.143" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="1.143" y1="-8.001" x2="1.143" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="1.651" y1="-7.0104" x2="1.3716" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="1.3716" y1="-7.0104" x2="1.3716" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="1.3716" y1="-8.001" x2="1.651" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="1.651" y1="-8.001" x2="1.651" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="2.1336" y1="-7.0104" x2="1.8542" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="1.8542" y1="-7.0104" x2="1.8542" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="1.8542" y1="-8.001" x2="2.1336" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="2.1336" y1="-8.001" x2="2.1336" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="2.6416" y1="-7.0104" x2="2.3622" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="2.3622" y1="-7.0104" x2="2.3622" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="2.3622" y1="-8.001" x2="2.6416" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="2.6416" y1="-8.001" x2="2.6416" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="3.1496" y1="-7.0104" x2="2.8702" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="2.8702" y1="-7.0104" x2="2.8702" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="2.8702" y1="-8.001" x2="3.1496" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="3.1496" y1="-8.001" x2="3.1496" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="3.6322" y1="-7.0104" x2="3.3528" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="3.3528" y1="-7.0104" x2="3.3528" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="3.3528" y1="-8.001" x2="3.6322" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="3.6322" y1="-8.001" x2="3.6322" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="4.1402" y1="-7.0104" x2="3.8608" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="3.8608" y1="-7.0104" x2="3.8608" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="3.8608" y1="-8.001" x2="4.1402" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="4.1402" y1="-8.001" x2="4.1402" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="4.6482" y1="-7.0104" x2="4.3688" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="4.3688" y1="-7.0104" x2="4.3688" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="4.3688" y1="-8.001" x2="4.6482" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="4.6482" y1="-8.001" x2="4.6482" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="5.1308" y1="-7.0104" x2="4.8514" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="4.8514" y1="-7.0104" x2="4.8514" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="4.8514" y1="-8.001" x2="5.1308" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="5.1308" y1="-8.001" x2="5.1308" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="5.6388" y1="-7.0104" x2="5.3594" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="5.3594" y1="-7.0104" x2="5.3594" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="5.3594" y1="-8.001" x2="5.6388" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="5.6388" y1="-8.001" x2="5.6388" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="6.1468" y1="-7.0104" x2="5.8674" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="5.8674" y1="-7.0104" x2="5.8674" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="5.8674" y1="-8.001" x2="6.1468" y2="-8.001" width="0.1524" layer="25"/>
<wire x1="6.1468" y1="-8.001" x2="6.1468" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-5.8674" x2="7.0104" y2="-6.1468" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-6.1468" x2="8.001" y2="-6.1468" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-6.1468" x2="8.001" y2="-5.8674" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-5.8674" x2="7.0104" y2="-5.8674" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-5.3594" x2="7.0104" y2="-5.6388" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-5.6388" x2="8.001" y2="-5.6388" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-5.6388" x2="8.001" y2="-5.3594" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-5.3594" x2="7.0104" y2="-5.3594" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-4.8514" x2="7.0104" y2="-5.1308" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-5.1308" x2="8.001" y2="-5.1308" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-5.1308" x2="8.001" y2="-4.8514" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-4.8514" x2="7.0104" y2="-4.8514" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-4.3688" x2="7.0104" y2="-4.6482" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-4.6482" x2="8.001" y2="-4.6482" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-4.6482" x2="8.001" y2="-4.3688" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-4.3688" x2="7.0104" y2="-4.3688" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-3.8608" x2="7.0104" y2="-4.1402" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-4.1402" x2="8.001" y2="-4.1402" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-4.1402" x2="8.001" y2="-3.8608" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-3.8608" x2="7.0104" y2="-3.8608" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-3.3528" x2="7.0104" y2="-3.6322" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-3.6322" x2="8.001" y2="-3.6322" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-3.6322" x2="8.001" y2="-3.3528" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-3.3528" x2="7.0104" y2="-3.3528" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-2.8702" x2="7.0104" y2="-3.1496" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-3.1496" x2="8.001" y2="-3.1496" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-3.1496" x2="8.001" y2="-2.8702" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-2.8702" x2="7.0104" y2="-2.8702" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-2.3622" x2="7.0104" y2="-2.6416" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-2.6416" x2="8.001" y2="-2.6416" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-2.6416" x2="8.001" y2="-2.3622" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-2.3622" x2="7.0104" y2="-2.3622" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-1.8542" x2="7.0104" y2="-2.1336" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-2.1336" x2="8.001" y2="-2.1336" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-2.1336" x2="8.001" y2="-1.8542" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-1.8542" x2="7.0104" y2="-1.8542" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-1.3716" x2="7.0104" y2="-1.651" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-1.651" x2="8.001" y2="-1.651" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-1.651" x2="8.001" y2="-1.3716" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-1.3716" x2="7.0104" y2="-1.3716" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-0.8636" x2="7.0104" y2="-1.143" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-1.143" x2="8.001" y2="-1.143" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-1.143" x2="8.001" y2="-0.8636" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-0.8636" x2="7.0104" y2="-0.8636" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-0.3556" x2="7.0104" y2="-0.635" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-0.635" x2="8.001" y2="-0.635" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-0.635" x2="8.001" y2="-0.3556" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-0.3556" x2="7.0104" y2="-0.3556" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="0.1524" x2="7.0104" y2="-0.1524" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-0.1524" x2="8.001" y2="-0.127" width="0.1524" layer="25"/>
<wire x1="8.001" y1="-0.127" x2="8.001" y2="0.1524" width="0.1524" layer="25"/>
<wire x1="8.001" y1="0.1524" x2="7.0104" y2="0.1524" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="0.635" x2="7.0104" y2="0.3556" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="0.3556" x2="8.001" y2="0.3556" width="0.1524" layer="25"/>
<wire x1="8.001" y1="0.3556" x2="8.001" y2="0.635" width="0.1524" layer="25"/>
<wire x1="8.001" y1="0.635" x2="7.0104" y2="0.635" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="1.143" x2="7.0104" y2="0.8636" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="0.8636" x2="8.001" y2="0.8636" width="0.1524" layer="25"/>
<wire x1="8.001" y1="0.8636" x2="8.001" y2="1.143" width="0.1524" layer="25"/>
<wire x1="8.001" y1="1.143" x2="7.0104" y2="1.143" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="1.651" x2="7.0104" y2="1.3716" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="1.3716" x2="8.001" y2="1.3716" width="0.1524" layer="25"/>
<wire x1="8.001" y1="1.3716" x2="8.001" y2="1.651" width="0.1524" layer="25"/>
<wire x1="8.001" y1="1.651" x2="7.0104" y2="1.651" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="2.1336" x2="7.0104" y2="1.8542" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="1.8542" x2="8.001" y2="1.8542" width="0.1524" layer="25"/>
<wire x1="8.001" y1="1.8542" x2="8.001" y2="2.1336" width="0.1524" layer="25"/>
<wire x1="8.001" y1="2.1336" x2="7.0104" y2="2.1336" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="2.6416" x2="7.0104" y2="2.3622" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="2.3622" x2="8.001" y2="2.3622" width="0.1524" layer="25"/>
<wire x1="8.001" y1="2.3622" x2="8.001" y2="2.6416" width="0.1524" layer="25"/>
<wire x1="8.001" y1="2.6416" x2="7.0104" y2="2.6416" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="3.1496" x2="7.0104" y2="2.8702" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="2.8702" x2="8.001" y2="2.8702" width="0.1524" layer="25"/>
<wire x1="8.001" y1="2.8702" x2="8.001" y2="3.1496" width="0.1524" layer="25"/>
<wire x1="8.001" y1="3.1496" x2="7.0104" y2="3.1496" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="3.6322" x2="7.0104" y2="3.3528" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="3.3528" x2="8.001" y2="3.3528" width="0.1524" layer="25"/>
<wire x1="8.001" y1="3.3528" x2="8.001" y2="3.6322" width="0.1524" layer="25"/>
<wire x1="8.001" y1="3.6322" x2="7.0104" y2="3.6322" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="4.1402" x2="7.0104" y2="3.8608" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="3.8608" x2="8.001" y2="3.8608" width="0.1524" layer="25"/>
<wire x1="8.001" y1="3.8608" x2="8.001" y2="4.1402" width="0.1524" layer="25"/>
<wire x1="8.001" y1="4.1402" x2="7.0104" y2="4.1402" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="4.6482" x2="7.0104" y2="4.3688" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="4.3688" x2="8.001" y2="4.3688" width="0.1524" layer="25"/>
<wire x1="8.001" y1="4.3688" x2="8.001" y2="4.6482" width="0.1524" layer="25"/>
<wire x1="8.001" y1="4.6482" x2="7.0104" y2="4.6482" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="5.1308" x2="7.0104" y2="4.8514" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="4.8514" x2="8.001" y2="4.8514" width="0.1524" layer="25"/>
<wire x1="8.001" y1="4.8514" x2="8.001" y2="5.1308" width="0.1524" layer="25"/>
<wire x1="8.001" y1="5.1308" x2="7.0104" y2="5.1308" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="5.6388" x2="7.0104" y2="5.3594" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="5.3594" x2="8.001" y2="5.3594" width="0.1524" layer="25"/>
<wire x1="8.001" y1="5.3594" x2="8.001" y2="5.6388" width="0.1524" layer="25"/>
<wire x1="8.001" y1="5.6388" x2="7.0104" y2="5.6388" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="6.1468" x2="7.0104" y2="5.8674" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="5.8674" x2="8.001" y2="5.8674" width="0.1524" layer="25"/>
<wire x1="8.001" y1="5.8674" x2="8.001" y2="6.1468" width="0.1524" layer="25"/>
<wire x1="8.001" y1="6.1468" x2="7.0104" y2="6.1468" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="5.7404" x2="-5.7404" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="-7.0104" x2="7.0104" y2="-7.0104" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="-7.0104" x2="7.0104" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="7.0104" y1="7.0104" x2="-7.0104" y2="7.0104" width="0.1524" layer="25"/>
<wire x1="-7.0104" y1="7.0104" x2="-7.0104" y2="-7.0104" width="0.1524" layer="25"/>
<text x="-9.5758" y="5.9944" size="1.27" layer="25" ratio="6" rot="SR0">*</text>
<text x="-2.8702" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="PIC32MX795F512L-X_PF">
<pin name="*MCLR" x="0" y="0" direction="in"/>
<pin name="*SS1/IC2/RD9" x="0" y="-2.54"/>
<pin name="AC1RX/*SS3A/U3BRX/*U3ACTS/RF12" x="0" y="-5.08"/>
<pin name="AC1TX/SCK3A/U3BTX/*U3ARTS/RF13" x="0" y="-7.62"/>
<pin name="AERXD0/INT1/RE8" x="0" y="-10.16"/>
<pin name="AERXD1/INT2/RE9" x="0" y="-12.7"/>
<pin name="AERXERR/RG15" x="0" y="-15.24"/>
<pin name="AETXCLK/SCL1/INT3/RA14" x="0" y="-17.78"/>
<pin name="AETXD0/*SS1A/U1BRX/*U1ACTS/CN20/RD14" x="0" y="-20.32"/>
<pin name="AETXD1/SCK1A/U1BTX/*U1ARTS/CN21/RD15" x="0" y="-22.86"/>
<pin name="AETXEN/SDA1/INT4/RA15" x="0" y="-25.4"/>
<pin name="AN10/CVREFOUT/PMA13/RB10" x="0" y="-27.94"/>
<pin name="AN11/ERXERR/AETXERR/PMA12/RB11" x="0" y="-30.48"/>
<pin name="AN12/ERXD0/AECRS/PMA11/RB12" x="0" y="-33.02"/>
<pin name="AN13/ERXD1/AECOL/PMA10/RB13" x="0" y="-35.56"/>
<pin name="AN14/ERXD2/AETXD3/PMALH/PMA1/RB14" x="0" y="-38.1"/>
<pin name="AN15/ERXD3/AETXD2/OCFB/PMALL/PMA0/CN12/RB15" x="0" y="-40.64"/>
<pin name="AN2/C2IN-/CN4/RB2" x="0" y="-43.18"/>
<pin name="AN3/C2IN+/CN5/RB3" x="0" y="-45.72"/>
<pin name="AN4/C1IN-/CN6/RB4" x="0" y="-48.26"/>
<pin name="AN5/C1IN+/VBUSON/CN7/RB5" x="0" y="-50.8"/>
<pin name="AN8/C1OUT/RB8" x="0" y="-53.34"/>
<pin name="AN9/C2OUT/RB9" x="0" y="-55.88"/>
<pin name="SDO1/OC1/INT0/RD0" x="0" y="-58.42"/>
<pin name="SOSCI/CN1/RC13" x="0" y="-60.96"/>
<pin name="SOSCO/T1CK/CN0/RC14" x="0" y="-63.5"/>
<pin name="T2CK/RC1" x="0" y="-66.04"/>
<pin name="T3CK/RC2" x="0" y="-68.58"/>
<pin name="T4CK/RC3" x="0" y="-71.12"/>
<pin name="T5CK/SDI1/RC4" x="0" y="-73.66"/>
<pin name="TCK/RA1" x="0" y="-76.2"/>
<pin name="TDI/RA4" x="0" y="-78.74"/>
<pin name="TDO/RA5" x="0" y="-81.28"/>
<pin name="TMS/RA0" x="0" y="-83.82"/>
<pin name="TRCLK/RA6" x="0" y="-86.36"/>
<pin name="TRD0/RG13" x="0" y="-88.9"/>
<pin name="TRD1/RG12" x="0" y="-91.44"/>
<pin name="TRD2/RG14" x="0" y="-93.98"/>
<pin name="TRD3/RA7" x="0" y="-96.52"/>
<pin name="USBID/RF3" x="0" y="-99.06"/>
<pin name="VBUS" x="0" y="-101.6" direction="in"/>
<pin name="VCAP/VDDCORE" x="0" y="-106.68" direction="pwr"/>
<pin name="AVDD" x="0" y="-109.22" direction="pwr"/>
<pin name="VDD_2" x="0" y="-111.76" direction="pwr"/>
<pin name="VDD_3" x="0" y="-114.3" direction="pwr"/>
<pin name="VDD_4" x="0" y="-116.84" direction="pwr"/>
<pin name="VDD_5" x="0" y="-119.38" direction="pwr"/>
<pin name="VDD_6" x="0" y="-121.92" direction="pwr"/>
<pin name="VDD" x="0" y="-124.46" direction="pwr"/>
<pin name="VUSB" x="0" y="-127" direction="pwr"/>
<pin name="C1RX/ETXD1/PMD11/RF0" x="223.52" y="0" rot="R180"/>
<pin name="C1TX/ETXD0/PMD10/RF1" x="223.52" y="-2.54" rot="R180"/>
<pin name="C2RX/PMD8/RG0" x="223.52" y="-5.08" rot="R180"/>
<pin name="C2TX/ETXERR/PMD9/RG1" x="223.52" y="-7.62" rot="R180"/>
<pin name="D-/RG3" x="223.52" y="-10.16" rot="R180"/>
<pin name="D+/RG2" x="223.52" y="-12.7" rot="R180"/>
<pin name="ECOL/SCK2A/U2BTX/*U2ARTS/PMA5/CN8/RG6" x="223.52" y="-15.24" rot="R180"/>
<pin name="ECRS/SDA2A/SDI2A/U2ARX/PMA4/CN9/RG7" x="223.52" y="-17.78" rot="R180"/>
<pin name="EMDC/IC4/PMCS1/PMA14/RD11" x="223.52" y="-20.32" rot="R180"/>
<pin name="ERXCLK/*SS2A/U2BRX/*U2ACTS/PMA2/CN11/RG9" x="223.52" y="-22.86" rot="R180"/>
<pin name="ERXDV/SCL2A/SDO2A/U2ATX/PMA3/CN10/RG8" x="223.52" y="-25.4" rot="R180"/>
<pin name="ETXCLK/PMD15/CN16/RD7" x="223.52" y="-27.94" rot="R180"/>
<pin name="ETXD2/IC5/PMD12/RD12" x="223.52" y="-30.48" rot="R180"/>
<pin name="ETXD3/PMD13/CN19/RD13" x="223.52" y="-33.02" rot="R180"/>
<pin name="ETXEN/PMD14/CN15/RD6" x="223.52" y="-35.56" rot="R180"/>
<pin name="OC2/RD1" x="223.52" y="-38.1" rot="R180"/>
<pin name="OC3/RD2" x="223.52" y="-40.64" rot="R180"/>
<pin name="OC4/RD3" x="223.52" y="-43.18" rot="R180"/>
<pin name="OC5/PMWR/CN13/RD4" x="223.52" y="-45.72" rot="R180"/>
<pin name="OSC1/CLKI/RC12" x="223.52" y="-48.26" rot="R180"/>
<pin name="OSC2/CLKO/RC15" x="223.52" y="-50.8" rot="R180"/>
<pin name="PGEC1/AN1/CN3/RB1" x="223.52" y="-53.34" rot="R180"/>
<pin name="PGEC2/AN6/OCFA/RB6" x="223.52" y="-55.88" rot="R180"/>
<pin name="PGED1/AN0/CN2/RB0" x="223.52" y="-58.42" rot="R180"/>
<pin name="PGED2/AN7/RB7" x="223.52" y="-60.96" rot="R180"/>
<pin name="PMD0/RE0" x="223.52" y="-63.5" rot="R180"/>
<pin name="PMD1/RE1" x="223.52" y="-66.04" rot="R180"/>
<pin name="PMD2/RE2" x="223.52" y="-68.58" rot="R180"/>
<pin name="PMD3/RE3" x="223.52" y="-71.12" rot="R180"/>
<pin name="PMD4/RE4" x="223.52" y="-73.66" rot="R180"/>
<pin name="PMD5/RE5" x="223.52" y="-76.2" rot="R180"/>
<pin name="PMD6/RE6" x="223.52" y="-78.74" rot="R180"/>
<pin name="PMD7/RE7" x="223.52" y="-81.28" rot="R180"/>
<pin name="PMRD/CN14/RD5" x="223.52" y="-83.82" rot="R180"/>
<pin name="RTCC/EMDIO/IC1/RD8" x="223.52" y="-86.36" rot="R180"/>
<pin name="SCK1/IC3/PMCS2/PMA15/RD10" x="223.52" y="-88.9" rot="R180"/>
<pin name="SCL1A/SDO1A/U1ATX/RF8" x="223.52" y="-91.44" rot="R180"/>
<pin name="SCL2/RA2" x="223.52" y="-93.98" rot="R180"/>
<pin name="SCL3A/SDO3A/U3ATX/PMA8/CN18/RF5" x="223.52" y="-96.52" rot="R180"/>
<pin name="SDA1A/SDI1A/U1ARX/RF2" x="223.52" y="-99.06" rot="R180"/>
<pin name="SDA2/RA3" x="223.52" y="-101.6" rot="R180"/>
<pin name="SDA3A/SDI3A/U3ARX/PMA9/CN17/RF4" x="223.52" y="-104.14" rot="R180"/>
<pin name="VREF-/CVREF-/AERXD2/PMA7/RA9" x="223.52" y="-106.68" rot="R180"/>
<pin name="VREF+/CVREF+/AERXD3/PMA6/RA10" x="223.52" y="-109.22" rot="R180"/>
<pin name="AVSS" x="223.52" y="-114.3" direction="pwr" rot="R180"/>
<pin name="VSS_2" x="223.52" y="-116.84" direction="pwr" rot="R180"/>
<pin name="VSS_3" x="223.52" y="-119.38" direction="pwr" rot="R180"/>
<pin name="VSS_4" x="223.52" y="-121.92" direction="pwr" rot="R180"/>
<pin name="VSS_5" x="223.52" y="-124.46" direction="pwr" rot="R180"/>
<pin name="VSS" x="223.52" y="-127" direction="pwr" rot="R180"/>
<wire x1="7.112" y1="0" x2="6.0452" y2="0.508" width="0.1524" layer="94"/>
<wire x1="7.112" y1="0" x2="6.0452" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-2.54" x2="6.0452" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-2.54" x2="6.0452" y2="-3.048" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-2.032" x2="4.4958" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-3.048" x2="4.4958" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-5.08" x2="6.0452" y2="-4.572" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-5.08" x2="6.0452" y2="-5.588" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-4.572" x2="4.4958" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-5.588" x2="4.4958" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-7.62" x2="6.0452" y2="-7.112" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-7.62" x2="6.0452" y2="-8.128" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-7.112" x2="4.4958" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-8.128" x2="4.4958" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-10.16" x2="6.0452" y2="-9.652" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-10.16" x2="6.0452" y2="-10.668" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-9.652" x2="4.4958" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-10.668" x2="4.4958" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-12.7" x2="6.0452" y2="-12.192" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-12.7" x2="6.0452" y2="-13.208" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-12.192" x2="4.4958" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-13.208" x2="4.4958" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-15.24" x2="6.0452" y2="-14.732" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-15.24" x2="6.0452" y2="-15.748" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-14.732" x2="4.4958" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-15.748" x2="4.4958" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-17.78" x2="6.0452" y2="-17.272" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-17.78" x2="6.0452" y2="-18.288" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-17.272" x2="4.4958" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-18.288" x2="4.4958" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-20.32" x2="6.0452" y2="-19.812" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-20.32" x2="6.0452" y2="-20.828" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-19.812" x2="4.4958" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-20.828" x2="4.4958" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-22.86" x2="6.0452" y2="-22.352" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-22.86" x2="6.0452" y2="-23.368" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-22.352" x2="4.4958" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-23.368" x2="4.4958" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-25.4" x2="6.0452" y2="-24.892" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-25.4" x2="6.0452" y2="-25.908" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-24.892" x2="4.4958" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-25.908" x2="4.4958" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-27.94" x2="6.0452" y2="-27.432" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-27.94" x2="6.0452" y2="-28.448" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-27.432" x2="4.4958" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-28.448" x2="4.4958" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-30.48" x2="6.0452" y2="-29.972" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-30.48" x2="6.0452" y2="-30.988" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-29.972" x2="4.4958" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-30.988" x2="4.4958" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-33.02" x2="6.0452" y2="-32.512" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-33.02" x2="6.0452" y2="-33.528" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-32.512" x2="4.4958" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-33.528" x2="4.4958" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-35.56" x2="6.0452" y2="-35.052" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-35.56" x2="6.0452" y2="-36.068" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-35.052" x2="4.4958" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-36.068" x2="4.4958" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-38.1" x2="6.0452" y2="-37.592" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-38.1" x2="6.0452" y2="-38.608" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-37.592" x2="4.4958" y2="-38.1" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-38.608" x2="4.4958" y2="-38.1" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-40.64" x2="6.0452" y2="-40.132" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-40.64" x2="6.0452" y2="-41.148" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-40.132" x2="4.4958" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-41.148" x2="4.4958" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-43.18" x2="6.0452" y2="-42.672" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-43.18" x2="6.0452" y2="-43.688" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-42.672" x2="4.4958" y2="-43.18" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-43.688" x2="4.4958" y2="-43.18" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-45.72" x2="6.0452" y2="-45.212" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-45.72" x2="6.0452" y2="-46.228" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-45.212" x2="4.4958" y2="-45.72" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-46.228" x2="4.4958" y2="-45.72" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-48.26" x2="6.0452" y2="-47.752" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-48.26" x2="6.0452" y2="-48.768" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-47.752" x2="4.4958" y2="-48.26" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-48.768" x2="4.4958" y2="-48.26" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-50.8" x2="6.0452" y2="-50.292" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-50.8" x2="6.0452" y2="-51.308" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-50.292" x2="4.4958" y2="-50.8" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-51.308" x2="4.4958" y2="-50.8" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-53.34" x2="6.0452" y2="-52.832" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-53.34" x2="6.0452" y2="-53.848" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-52.832" x2="4.4958" y2="-53.34" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-53.848" x2="4.4958" y2="-53.34" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-55.88" x2="6.0452" y2="-55.372" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-55.88" x2="6.0452" y2="-56.388" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-55.372" x2="4.4958" y2="-55.88" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-56.388" x2="4.4958" y2="-55.88" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-58.42" x2="6.0452" y2="-57.912" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-58.42" x2="6.0452" y2="-58.928" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-57.912" x2="4.4958" y2="-58.42" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-58.928" x2="4.4958" y2="-58.42" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-60.96" x2="6.0452" y2="-60.452" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-60.96" x2="6.0452" y2="-61.468" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-60.452" x2="4.4958" y2="-60.96" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-61.468" x2="4.4958" y2="-60.96" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-63.5" x2="6.0452" y2="-62.992" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-63.5" x2="6.0452" y2="-64.008" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-62.992" x2="4.4958" y2="-63.5" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-64.008" x2="4.4958" y2="-63.5" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-66.04" x2="6.0452" y2="-65.532" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-66.04" x2="6.0452" y2="-66.548" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-65.532" x2="4.4958" y2="-66.04" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-66.548" x2="4.4958" y2="-66.04" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-68.58" x2="6.0452" y2="-68.072" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-68.58" x2="6.0452" y2="-69.088" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-68.072" x2="4.4958" y2="-68.58" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-69.088" x2="4.4958" y2="-68.58" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-71.12" x2="6.0452" y2="-70.612" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-71.12" x2="6.0452" y2="-71.628" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-70.612" x2="4.4958" y2="-71.12" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-71.628" x2="4.4958" y2="-71.12" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-73.66" x2="6.0452" y2="-73.152" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-73.66" x2="6.0452" y2="-74.168" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-73.152" x2="4.4958" y2="-73.66" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-74.168" x2="4.4958" y2="-73.66" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-76.2" x2="6.0452" y2="-75.692" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-76.2" x2="6.0452" y2="-76.708" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-75.692" x2="4.4958" y2="-76.2" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-76.708" x2="4.4958" y2="-76.2" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-78.74" x2="6.0452" y2="-78.232" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-78.74" x2="6.0452" y2="-79.248" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-78.232" x2="4.4958" y2="-78.74" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-79.248" x2="4.4958" y2="-78.74" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-81.28" x2="6.0452" y2="-80.772" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-81.28" x2="6.0452" y2="-81.788" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-80.772" x2="4.4958" y2="-81.28" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-81.788" x2="4.4958" y2="-81.28" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-83.82" x2="6.0452" y2="-83.312" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-83.82" x2="6.0452" y2="-84.328" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-83.312" x2="4.4958" y2="-83.82" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-84.328" x2="4.4958" y2="-83.82" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-86.36" x2="6.0452" y2="-85.852" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-86.36" x2="6.0452" y2="-86.868" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-85.852" x2="4.4958" y2="-86.36" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-86.868" x2="4.4958" y2="-86.36" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-88.9" x2="6.0452" y2="-88.392" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-88.9" x2="6.0452" y2="-89.408" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-88.392" x2="4.4958" y2="-88.9" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-89.408" x2="4.4958" y2="-88.9" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-91.44" x2="6.0452" y2="-90.932" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-91.44" x2="6.0452" y2="-91.948" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-90.932" x2="4.4958" y2="-91.44" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-91.948" x2="4.4958" y2="-91.44" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-93.98" x2="6.0452" y2="-93.472" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-93.98" x2="6.0452" y2="-94.488" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-93.472" x2="4.4958" y2="-93.98" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-94.488" x2="4.4958" y2="-93.98" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-96.52" x2="6.0452" y2="-96.012" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-96.52" x2="6.0452" y2="-97.028" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-96.012" x2="4.4958" y2="-96.52" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-97.028" x2="4.4958" y2="-96.52" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-99.06" x2="6.0452" y2="-98.552" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-99.06" x2="6.0452" y2="-99.568" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-98.552" x2="4.4958" y2="-99.06" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-99.568" x2="4.4958" y2="-99.06" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-101.6" x2="6.0452" y2="-101.092" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-101.6" x2="6.0452" y2="-102.108" width="0.1524" layer="94"/>
<wire x1="216.408" y1="0" x2="217.4748" y2="0.508" width="0.1524" layer="94"/>
<wire x1="216.408" y1="0" x2="217.4748" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="0.508" x2="219.0242" y2="0" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-0.508" x2="219.0242" y2="0" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-2.54" x2="217.4748" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-2.54" x2="217.4748" y2="-3.048" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-2.032" x2="219.0242" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-3.048" x2="219.0242" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-5.08" x2="217.4748" y2="-4.572" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-5.08" x2="217.4748" y2="-5.588" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-4.572" x2="219.0242" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-5.588" x2="219.0242" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-7.62" x2="217.4748" y2="-7.112" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-7.62" x2="217.4748" y2="-8.128" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-7.112" x2="219.0242" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-8.128" x2="219.0242" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-10.16" x2="217.4748" y2="-9.652" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-10.16" x2="217.4748" y2="-10.668" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-9.652" x2="219.0242" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-10.668" x2="219.0242" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-12.7" x2="217.4748" y2="-12.192" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-12.7" x2="217.4748" y2="-13.208" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-12.192" x2="219.0242" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-13.208" x2="219.0242" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-15.24" x2="217.4748" y2="-14.732" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-15.24" x2="217.4748" y2="-15.748" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-14.732" x2="219.0242" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-15.748" x2="219.0242" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-17.78" x2="217.4748" y2="-17.272" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-17.78" x2="217.4748" y2="-18.288" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-17.272" x2="219.0242" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-18.288" x2="219.0242" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-20.32" x2="217.4748" y2="-19.812" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-20.32" x2="217.4748" y2="-20.828" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-19.812" x2="219.0242" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-20.828" x2="219.0242" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-22.86" x2="217.4748" y2="-22.352" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-22.86" x2="217.4748" y2="-23.368" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-22.352" x2="219.0242" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-23.368" x2="219.0242" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-25.4" x2="217.4748" y2="-24.892" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-25.4" x2="217.4748" y2="-25.908" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-24.892" x2="219.0242" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-25.908" x2="219.0242" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-27.94" x2="217.4748" y2="-27.432" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-27.94" x2="217.4748" y2="-28.448" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-27.432" x2="219.0242" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-28.448" x2="219.0242" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-30.48" x2="217.4748" y2="-29.972" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-30.48" x2="217.4748" y2="-30.988" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-29.972" x2="219.0242" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-30.988" x2="219.0242" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-33.02" x2="217.4748" y2="-32.512" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-33.02" x2="217.4748" y2="-33.528" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-32.512" x2="219.0242" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-33.528" x2="219.0242" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-35.56" x2="217.4748" y2="-35.052" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-35.56" x2="217.4748" y2="-36.068" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-35.052" x2="219.0242" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-36.068" x2="219.0242" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-38.1" x2="217.4748" y2="-37.592" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-38.1" x2="217.4748" y2="-38.608" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-37.592" x2="219.0242" y2="-38.1" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-38.608" x2="219.0242" y2="-38.1" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-40.64" x2="217.4748" y2="-40.132" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-40.64" x2="217.4748" y2="-41.148" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-40.132" x2="219.0242" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-41.148" x2="219.0242" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-43.18" x2="217.4748" y2="-42.672" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-43.18" x2="217.4748" y2="-43.688" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-42.672" x2="219.0242" y2="-43.18" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-43.688" x2="219.0242" y2="-43.18" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-45.72" x2="217.4748" y2="-45.212" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-45.72" x2="217.4748" y2="-46.228" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-45.212" x2="219.0242" y2="-45.72" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-46.228" x2="219.0242" y2="-45.72" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-48.26" x2="217.4748" y2="-47.752" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-48.26" x2="217.4748" y2="-48.768" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-47.752" x2="219.0242" y2="-48.26" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-48.768" x2="219.0242" y2="-48.26" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-50.8" x2="217.4748" y2="-50.292" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-50.8" x2="217.4748" y2="-51.308" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-50.292" x2="219.0242" y2="-50.8" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-51.308" x2="219.0242" y2="-50.8" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-53.34" x2="217.4748" y2="-52.832" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-53.34" x2="217.4748" y2="-53.848" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-52.832" x2="219.0242" y2="-53.34" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-53.848" x2="219.0242" y2="-53.34" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-55.88" x2="217.4748" y2="-55.372" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-55.88" x2="217.4748" y2="-56.388" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-55.372" x2="219.0242" y2="-55.88" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-56.388" x2="219.0242" y2="-55.88" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-58.42" x2="217.4748" y2="-57.912" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-58.42" x2="217.4748" y2="-58.928" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-57.912" x2="219.0242" y2="-58.42" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-58.928" x2="219.0242" y2="-58.42" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-60.96" x2="217.4748" y2="-60.452" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-60.96" x2="217.4748" y2="-61.468" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-60.452" x2="219.0242" y2="-60.96" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-61.468" x2="219.0242" y2="-60.96" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-63.5" x2="217.4748" y2="-62.992" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-63.5" x2="217.4748" y2="-64.008" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-62.992" x2="219.0242" y2="-63.5" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-64.008" x2="219.0242" y2="-63.5" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-66.04" x2="217.4748" y2="-65.532" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-66.04" x2="217.4748" y2="-66.548" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-65.532" x2="219.0242" y2="-66.04" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-66.548" x2="219.0242" y2="-66.04" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-68.58" x2="217.4748" y2="-68.072" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-68.58" x2="217.4748" y2="-69.088" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-68.072" x2="219.0242" y2="-68.58" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-69.088" x2="219.0242" y2="-68.58" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-71.12" x2="217.4748" y2="-70.612" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-71.12" x2="217.4748" y2="-71.628" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-70.612" x2="219.0242" y2="-71.12" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-71.628" x2="219.0242" y2="-71.12" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-73.66" x2="217.4748" y2="-73.152" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-73.66" x2="217.4748" y2="-74.168" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-73.152" x2="219.0242" y2="-73.66" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-74.168" x2="219.0242" y2="-73.66" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-76.2" x2="217.4748" y2="-75.692" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-76.2" x2="217.4748" y2="-76.708" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-75.692" x2="219.0242" y2="-76.2" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-76.708" x2="219.0242" y2="-76.2" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-78.74" x2="217.4748" y2="-78.232" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-78.74" x2="217.4748" y2="-79.248" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-78.232" x2="219.0242" y2="-78.74" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-79.248" x2="219.0242" y2="-78.74" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-81.28" x2="217.4748" y2="-80.772" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-81.28" x2="217.4748" y2="-81.788" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-80.772" x2="219.0242" y2="-81.28" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-81.788" x2="219.0242" y2="-81.28" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-83.82" x2="217.4748" y2="-83.312" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-83.82" x2="217.4748" y2="-84.328" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-83.312" x2="219.0242" y2="-83.82" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-84.328" x2="219.0242" y2="-83.82" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-86.36" x2="217.4748" y2="-85.852" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-86.36" x2="217.4748" y2="-86.868" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-85.852" x2="219.0242" y2="-86.36" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-86.868" x2="219.0242" y2="-86.36" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-88.9" x2="217.4748" y2="-88.392" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-88.9" x2="217.4748" y2="-89.408" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-88.392" x2="219.0242" y2="-88.9" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-89.408" x2="219.0242" y2="-88.9" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-91.44" x2="217.4748" y2="-90.932" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-91.44" x2="217.4748" y2="-91.948" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-90.932" x2="219.0242" y2="-91.44" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-91.948" x2="219.0242" y2="-91.44" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-93.98" x2="217.4748" y2="-93.472" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-93.98" x2="217.4748" y2="-94.488" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-93.472" x2="219.0242" y2="-93.98" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-94.488" x2="219.0242" y2="-93.98" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-96.52" x2="217.4748" y2="-96.012" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-96.52" x2="217.4748" y2="-97.028" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-96.012" x2="219.0242" y2="-96.52" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-97.028" x2="219.0242" y2="-96.52" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-99.06" x2="217.4748" y2="-98.552" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-99.06" x2="217.4748" y2="-99.568" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-98.552" x2="219.0242" y2="-99.06" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-99.568" x2="219.0242" y2="-99.06" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-101.6" x2="217.4748" y2="-101.092" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-101.6" x2="217.4748" y2="-102.108" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-101.092" x2="219.0242" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-102.108" x2="219.0242" y2="-101.6" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-104.14" x2="217.4748" y2="-103.632" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-104.14" x2="217.4748" y2="-104.648" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-103.632" x2="219.0242" y2="-104.14" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-104.648" x2="219.0242" y2="-104.14" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-106.68" x2="217.4748" y2="-106.172" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-106.68" x2="217.4748" y2="-107.188" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-106.172" x2="219.0242" y2="-106.68" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-107.188" x2="219.0242" y2="-106.68" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-109.22" x2="217.4748" y2="-108.712" width="0.1524" layer="94"/>
<wire x1="216.408" y1="-109.22" x2="217.4748" y2="-109.728" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-108.712" x2="219.0242" y2="-109.22" width="0.1524" layer="94"/>
<wire x1="217.9828" y1="-109.728" x2="219.0242" y2="-109.22" width="0.1524" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-132.08" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-132.08" x2="215.9" y2="-132.08" width="0.1524" layer="94"/>
<wire x1="215.9" y1="-132.08" x2="215.9" y2="5.08" width="0.1524" layer="94"/>
<wire x1="215.9" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="107.0356" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;NAME</text>
<text x="106.0958" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIC32MX795F512L-X_PF">
<gates>
<gate name="A" symbol="PIC32MX795F512L-X_PF" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TQFP100_14X14MC">
<connects>
<connect gate="A" pin="*MCLR" pad="13"/>
<connect gate="A" pin="*SS1/IC2/RD9" pad="69"/>
<connect gate="A" pin="AC1RX/*SS3A/U3BRX/*U3ACTS/RF12" pad="40"/>
<connect gate="A" pin="AC1TX/SCK3A/U3BTX/*U3ARTS/RF13" pad="39"/>
<connect gate="A" pin="AERXD0/INT1/RE8" pad="18"/>
<connect gate="A" pin="AERXD1/INT2/RE9" pad="19"/>
<connect gate="A" pin="AERXERR/RG15" pad="1"/>
<connect gate="A" pin="AETXCLK/SCL1/INT3/RA14" pad="66"/>
<connect gate="A" pin="AETXD0/*SS1A/U1BRX/*U1ACTS/CN20/RD14" pad="47"/>
<connect gate="A" pin="AETXD1/SCK1A/U1BTX/*U1ARTS/CN21/RD15" pad="48"/>
<connect gate="A" pin="AETXEN/SDA1/INT4/RA15" pad="67"/>
<connect gate="A" pin="AN10/CVREFOUT/PMA13/RB10" pad="34"/>
<connect gate="A" pin="AN11/ERXERR/AETXERR/PMA12/RB11" pad="35"/>
<connect gate="A" pin="AN12/ERXD0/AECRS/PMA11/RB12" pad="41"/>
<connect gate="A" pin="AN13/ERXD1/AECOL/PMA10/RB13" pad="42"/>
<connect gate="A" pin="AN14/ERXD2/AETXD3/PMALH/PMA1/RB14" pad="43"/>
<connect gate="A" pin="AN15/ERXD3/AETXD2/OCFB/PMALL/PMA0/CN12/RB15" pad="44"/>
<connect gate="A" pin="AN2/C2IN-/CN4/RB2" pad="23"/>
<connect gate="A" pin="AN3/C2IN+/CN5/RB3" pad="22"/>
<connect gate="A" pin="AN4/C1IN-/CN6/RB4" pad="21"/>
<connect gate="A" pin="AN5/C1IN+/VBUSON/CN7/RB5" pad="20"/>
<connect gate="A" pin="AN8/C1OUT/RB8" pad="32"/>
<connect gate="A" pin="AN9/C2OUT/RB9" pad="33"/>
<connect gate="A" pin="AVDD" pad="30"/>
<connect gate="A" pin="AVSS" pad="31"/>
<connect gate="A" pin="C1RX/ETXD1/PMD11/RF0" pad="87"/>
<connect gate="A" pin="C1TX/ETXD0/PMD10/RF1" pad="88"/>
<connect gate="A" pin="C2RX/PMD8/RG0" pad="90"/>
<connect gate="A" pin="C2TX/ETXERR/PMD9/RG1" pad="89"/>
<connect gate="A" pin="D+/RG2" pad="57"/>
<connect gate="A" pin="D-/RG3" pad="56"/>
<connect gate="A" pin="ECOL/SCK2A/U2BTX/*U2ARTS/PMA5/CN8/RG6" pad="10"/>
<connect gate="A" pin="ECRS/SDA2A/SDI2A/U2ARX/PMA4/CN9/RG7" pad="11"/>
<connect gate="A" pin="EMDC/IC4/PMCS1/PMA14/RD11" pad="71"/>
<connect gate="A" pin="ERXCLK/*SS2A/U2BRX/*U2ACTS/PMA2/CN11/RG9" pad="14"/>
<connect gate="A" pin="ERXDV/SCL2A/SDO2A/U2ATX/PMA3/CN10/RG8" pad="12"/>
<connect gate="A" pin="ETXCLK/PMD15/CN16/RD7" pad="84"/>
<connect gate="A" pin="ETXD2/IC5/PMD12/RD12" pad="79"/>
<connect gate="A" pin="ETXD3/PMD13/CN19/RD13" pad="80"/>
<connect gate="A" pin="ETXEN/PMD14/CN15/RD6" pad="83"/>
<connect gate="A" pin="OC2/RD1" pad="76"/>
<connect gate="A" pin="OC3/RD2" pad="77"/>
<connect gate="A" pin="OC4/RD3" pad="78"/>
<connect gate="A" pin="OC5/PMWR/CN13/RD4" pad="81"/>
<connect gate="A" pin="OSC1/CLKI/RC12" pad="63"/>
<connect gate="A" pin="OSC2/CLKO/RC15" pad="64"/>
<connect gate="A" pin="PGEC1/AN1/CN3/RB1" pad="24"/>
<connect gate="A" pin="PGEC2/AN6/OCFA/RB6" pad="26"/>
<connect gate="A" pin="PGED1/AN0/CN2/RB0" pad="25"/>
<connect gate="A" pin="PGED2/AN7/RB7" pad="27"/>
<connect gate="A" pin="PMD0/RE0" pad="93"/>
<connect gate="A" pin="PMD1/RE1" pad="94"/>
<connect gate="A" pin="PMD2/RE2" pad="98"/>
<connect gate="A" pin="PMD3/RE3" pad="99"/>
<connect gate="A" pin="PMD4/RE4" pad="100"/>
<connect gate="A" pin="PMD5/RE5" pad="3"/>
<connect gate="A" pin="PMD6/RE6" pad="4"/>
<connect gate="A" pin="PMD7/RE7" pad="5"/>
<connect gate="A" pin="PMRD/CN14/RD5" pad="82"/>
<connect gate="A" pin="RTCC/EMDIO/IC1/RD8" pad="68"/>
<connect gate="A" pin="SCK1/IC3/PMCS2/PMA15/RD10" pad="70"/>
<connect gate="A" pin="SCL1A/SDO1A/U1ATX/RF8" pad="53"/>
<connect gate="A" pin="SCL2/RA2" pad="58"/>
<connect gate="A" pin="SCL3A/SDO3A/U3ATX/PMA8/CN18/RF5" pad="50"/>
<connect gate="A" pin="SDA1A/SDI1A/U1ARX/RF2" pad="52"/>
<connect gate="A" pin="SDA2/RA3" pad="59"/>
<connect gate="A" pin="SDA3A/SDI3A/U3ARX/PMA9/CN17/RF4" pad="49"/>
<connect gate="A" pin="SDO1/OC1/INT0/RD0" pad="72"/>
<connect gate="A" pin="SOSCI/CN1/RC13" pad="73"/>
<connect gate="A" pin="SOSCO/T1CK/CN0/RC14" pad="74"/>
<connect gate="A" pin="T2CK/RC1" pad="6"/>
<connect gate="A" pin="T3CK/RC2" pad="7"/>
<connect gate="A" pin="T4CK/RC3" pad="8"/>
<connect gate="A" pin="T5CK/SDI1/RC4" pad="9"/>
<connect gate="A" pin="TCK/RA1" pad="38"/>
<connect gate="A" pin="TDI/RA4" pad="60"/>
<connect gate="A" pin="TDO/RA5" pad="61"/>
<connect gate="A" pin="TMS/RA0" pad="17"/>
<connect gate="A" pin="TRCLK/RA6" pad="91"/>
<connect gate="A" pin="TRD0/RG13" pad="97"/>
<connect gate="A" pin="TRD1/RG12" pad="96"/>
<connect gate="A" pin="TRD2/RG14" pad="95"/>
<connect gate="A" pin="TRD3/RA7" pad="92"/>
<connect gate="A" pin="USBID/RF3" pad="51"/>
<connect gate="A" pin="VBUS" pad="54"/>
<connect gate="A" pin="VCAP/VDDCORE" pad="85"/>
<connect gate="A" pin="VDD" pad="86"/>
<connect gate="A" pin="VDD_2" pad="2"/>
<connect gate="A" pin="VDD_3" pad="16"/>
<connect gate="A" pin="VDD_4" pad="37"/>
<connect gate="A" pin="VDD_5" pad="46"/>
<connect gate="A" pin="VDD_6" pad="62"/>
<connect gate="A" pin="VREF+/CVREF+/AERXD3/PMA6/RA10" pad="29"/>
<connect gate="A" pin="VREF-/CVREF-/AERXD2/PMA7/RA9" pad="28"/>
<connect gate="A" pin="VSS" pad="75"/>
<connect gate="A" pin="VSS_2" pad="15"/>
<connect gate="A" pin="VSS_3" pad="36"/>
<connect gate="A" pin="VSS_4" pad="45"/>
<connect gate="A" pin="VSS_5" pad="65"/>
<connect gate="A" pin="VUSB" pad="55"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="jumper">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="JP3Q">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-3.81" y1="-2.159" x2="-3.81" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="2.54" x2="-1.27" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.159" x2="-0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.54" x2="0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.159" x2="0.889" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.159" x2="1.651" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.651" y1="2.54" x2="3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.159" x2="3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.159" x2="3.81" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-2.54" x2="3.81" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-2.54" x2="1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.159" x2="1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.159" x2="0.889" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-2.54" x2="-0.889" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-0.889" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="-1.651" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="2.159" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="2.54" x2="-1.651" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-2.159" x2="-3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="-1.651" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="2" x="-2.54" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="3" x="0" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="4" x="0" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="5" x="2.54" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="2.54" y="1.27" drill="0.9144" shape="octagon"/>
<text x="-3.048" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-0.508" y="-4.191" size="1.27" layer="21" ratio="10">2</text>
<text x="2.032" y="-4.191" size="1.27" layer="21" ratio="10">3</text>
<text x="-3.429" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-5.842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.8448" y1="0.9652" x2="-2.2352" y2="1.5748" layer="51"/>
<rectangle x1="-0.3048" y1="0.9652" x2="0.3048" y2="1.5748" layer="51"/>
<rectangle x1="2.2352" y1="0.9652" x2="2.8448" y2="1.5748" layer="51"/>
<rectangle x1="-2.8448" y1="-1.5748" x2="-2.2352" y2="-0.9652" layer="51"/>
<rectangle x1="-0.3048" y1="-1.5748" x2="0.3048" y2="-0.9652" layer="51"/>
<rectangle x1="2.2352" y1="-1.5748" x2="2.8448" y2="-0.9652" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="J3">
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="3.81" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="3.81" x2="-2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="3.81" width="0.4064" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="0" y1="-3.81" x2="0" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="3.81" width="0.4064" layer="94"/>
<wire x1="2.54" y1="3.81" x2="2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-3.81" width="0.4064" layer="94"/>
<wire x1="2.54" y1="-3.81" x2="2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="5.08" x2="4.445" y2="5.08" width="0.4064" layer="94"/>
<wire x1="4.445" y1="5.08" x2="4.445" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="4.445" y1="-5.08" x2="-4.445" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-4.445" y1="-5.08" x2="-4.445" y2="5.08" width="0.4064" layer="94"/>
<text x="-5.08" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="6.985" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="3" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="4" x="0" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="5" x="2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="6" x="2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="JP3Q" prefix="JP" uservalue="yes">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="B" symbol="J3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JP3Q">
<connects>
<connect gate="B" pin="1" pad="1"/>
<connect gate="B" pin="2" pad="2"/>
<connect gate="B" pin="3" pad="3"/>
<connect gate="B" pin="4" pad="4"/>
<connect gate="B" pin="5" pad="5"/>
<connect gate="B" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DINA3_L">
<frame x1="0" y1="0" x2="388.62" y2="264.16" columns="4" rows="4" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA3_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A3, landscape with extra doc field</description>
<gates>
<gate name="G$1" symbol="DINA3_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="287.02" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="CLAMPING_DIODE" library="diode" deviceset="1N4004" device="" value="1N4148"/>
<part name="FEEDBACK" library="resistor" deviceset="R-US_" device="0204/2V" value="1K"/>
<part name="VGA_HEADER" library="con-subd" deviceset="HF15" device="H"/>
<part name="PS/2_HEADER" library="con-yamaichi" deviceset="MDIN06K" device=""/>
<part name="U$1" library="PIC32MX795F512L" deviceset="PIC32MX795F512L-X_PF" device=""/>
<part name="COLOR_JUMPERS" library="jumper" deviceset="JP3Q" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="FRAME1" library="frames" deviceset="DINA3_L" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="CLAMPING_DIODE" gate="1" x="330.2" y="-40.64"/>
<instance part="FEEDBACK" gate="G$1" x="45.72" y="2.54"/>
<instance part="VGA_HEADER" gate="G$1" x="373.38" y="-30.48"/>
<instance part="PS/2_HEADER" gate="G$1" x="393.7" y="10.16"/>
<instance part="U$1" gate="A" x="63.5" y="25.4"/>
<instance part="COLOR_JUMPERS" gate="B" x="342.9" y="-25.4" rot="R90"/>
<instance part="GND1" gate="1" x="381" y="0"/>
<instance part="GND2" gate="1" x="350.52" y="-73.66"/>
<instance part="P+2" gate="VCC" x="378.46" y="27.94"/>
<instance part="FRAME1" gate="G$1" x="22.86" y="-190.5"/>
<instance part="FRAME1" gate="G$2" x="309.88" y="-190.5"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<pinref part="COLOR_JUMPERS" gate="B" pin="5"/>
<pinref part="VGA_HEADER" gate="G$1" pin="1"/>
<wire x1="350.52" y1="-22.86" x2="365.76" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="COLOR_JUMPERS" gate="B" pin="3"/>
<pinref part="VGA_HEADER" gate="G$1" pin="2"/>
<wire x1="350.52" y1="-25.4" x2="365.76" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="COLOR_JUMPERS" gate="B" pin="1"/>
<pinref part="VGA_HEADER" gate="G$1" pin="3"/>
<wire x1="350.52" y1="-27.94" x2="365.76" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="COLOR_JUMPERS" gate="B" pin="6"/>
<pinref part="COLOR_JUMPERS" gate="B" pin="4"/>
<wire x1="335.28" y1="-22.86" x2="335.28" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="COLOR_JUMPERS" gate="B" pin="2"/>
<wire x1="335.28" y1="-27.94" x2="335.28" y2="-25.4" width="0.1524" layer="91"/>
<junction x="335.28" y="-25.4"/>
<wire x1="335.28" y1="-25.4" x2="327.66" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="CLAMPING_DIODE" gate="1" pin="A"/>
<wire x1="327.66" y1="-25.4" x2="327.66" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="U$1" gate="A" pin="SCL3A/SDO3A/U3ATX/PMA8/CN18/RF5"/>
<wire x1="287.02" y1="-71.12" x2="327.66" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-71.12" x2="327.66" y2="-40.64" width="0.1524" layer="91"/>
<junction x="327.66" y="-40.64"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="40.64" y1="-33.02" x2="63.5" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="FEEDBACK" gate="G$1" pin="1"/>
<wire x1="40.64" y1="-33.02" x2="40.64" y2="2.54" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-119.38" x2="388.62" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-116.84" x2="388.62" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-30.48" x2="381" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="VGA_HEADER" gate="G$1" pin="13"/>
<wire x1="40.64" y1="-33.02" x2="40.64" y2="-119.38" width="0.1524" layer="91"/>
<junction x="40.64" y="-33.02"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$1" gate="A" pin="AN8/C1OUT/RB8"/>
<wire x1="63.5" y1="-27.94" x2="35.56" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-27.94" x2="35.56" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-132.08" x2="398.78" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-129.54" x2="398.78" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="VGA_HEADER" gate="G$1" pin="14"/>
<wire x1="398.78" y1="-35.56" x2="381" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$1" gate="A" pin="RTCC/EMDIO/IC1/RD8"/>
<wire x1="287.02" y1="-60.96" x2="312.42" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="312.42" y1="-60.96" x2="312.42" y2="17.78" width="0.1524" layer="91"/>
<pinref part="PS/2_HEADER" gate="G$1" pin="1"/>
<wire x1="312.42" y1="17.78" x2="386.08" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$1" gate="A" pin="*SS1/IC2/RD9"/>
<wire x1="63.5" y1="22.86" x2="50.8" y2="22.86" width="0.1524" layer="91"/>
<wire x1="50.8" y1="22.86" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
<wire x1="50.8" y1="40.64" x2="294.64" y2="40.64" width="0.1524" layer="91"/>
<pinref part="PS/2_HEADER" gate="G$1" pin="5"/>
<wire x1="294.64" y1="40.64" x2="294.64" y2="7.62" width="0.1524" layer="91"/>
<wire x1="294.64" y1="7.62" x2="386.08" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$1" gate="A" pin="AC1RX/*SS3A/U3BRX/*U3ACTS/RF12"/>
<wire x1="63.5" y1="20.32" x2="55.88" y2="20.32" width="0.1524" layer="91"/>
<pinref part="FEEDBACK" gate="G$1" pin="2"/>
<wire x1="50.8" y1="2.54" x2="55.88" y2="2.54" width="0.1524" layer="91"/>
<wire x1="55.88" y1="2.54" x2="55.88" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="CLAMPING_DIODE" gate="1" pin="C"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="332.74" y1="-40.64" x2="350.52" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-40.64" x2="350.52" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="VGA_HEADER" gate="G$1" pin="5"/>
<wire x1="365.76" y1="-40.64" x2="363.22" y2="-40.64" width="0.1524" layer="91"/>
<junction x="350.52" y="-40.64"/>
<pinref part="VGA_HEADER" gate="G$1" pin="6"/>
<wire x1="363.22" y1="-40.64" x2="360.68" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="360.68" y1="-40.64" x2="358.14" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-40.64" x2="355.6" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-40.64" x2="350.52" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-22.86" x2="355.6" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-22.86" x2="355.6" y2="-40.64" width="0.1524" layer="91"/>
<junction x="355.6" y="-40.64"/>
<pinref part="VGA_HEADER" gate="G$1" pin="7"/>
<wire x1="365.76" y1="-27.94" x2="358.14" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-27.94" x2="358.14" y2="-40.64" width="0.1524" layer="91"/>
<junction x="358.14" y="-40.64"/>
<pinref part="VGA_HEADER" gate="G$1" pin="8"/>
<wire x1="365.76" y1="-33.02" x2="360.68" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="360.68" y1="-33.02" x2="360.68" y2="-40.64" width="0.1524" layer="91"/>
<junction x="360.68" y="-40.64"/>
<pinref part="VGA_HEADER" gate="G$1" pin="9"/>
<wire x1="365.76" y1="-38.1" x2="363.22" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="363.22" y1="-38.1" x2="363.22" y2="-40.64" width="0.1524" layer="91"/>
<junction x="363.22" y="-40.64"/>
</segment>
<segment>
<pinref part="PS/2_HEADER" gate="G$1" pin="3"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="386.08" y1="12.7" x2="381" y2="12.7" width="0.1524" layer="91"/>
<wire x1="381" y1="12.7" x2="381" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="PS/2_HEADER" gate="G$1" pin="4"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="386.08" y1="10.16" x2="378.46" y2="10.16" width="0.1524" layer="91"/>
<wire x1="378.46" y1="10.16" x2="378.46" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
