<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.3.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="quad">
<packages>
<package name="LQFP-100">
<smd name="1" x="-7.7216" y="6" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="2" x="-7.7216" y="5.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="3" x="-7.7216" y="5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="4" x="-7.7216" y="4.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="5" x="-7.7216" y="4" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="6" x="-7.7216" y="3.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="7" x="-7.7216" y="3" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="8" x="-7.7216" y="2.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="9" x="-7.7216" y="2" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="10" x="-7.7216" y="1.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="11" x="-7.7216" y="1" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="12" x="-7.7216" y="0.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="13" x="-7.7216" y="0" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="14" x="-7.7216" y="-0.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="15" x="-7.7216" y="-1" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="16" x="-7.7216" y="-1.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="17" x="-7.7216" y="-2" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="18" x="-7.7216" y="-2.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="19" x="-7.7216" y="-3" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="20" x="-7.7216" y="-3.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="21" x="-7.7216" y="-4" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="22" x="-7.7216" y="-4.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="23" x="-7.7216" y="-5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="24" x="-7.7216" y="-5.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="25" x="-7.7216" y="-6" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="26" x="-6" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="27" x="-5.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="28" x="-5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="29" x="-4.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="30" x="-4" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="31" x="-3.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="32" x="-3" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="33" x="-2.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="34" x="-2" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="35" x="-1.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="36" x="-1" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="37" x="-0.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="38" x="0" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="39" x="0.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="40" x="1" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="41" x="1.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="42" x="2" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="43" x="2.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="44" x="3" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="45" x="3.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="46" x="4" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="47" x="4.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="48" x="5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="49" x="5.5" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="50" x="6" y="-7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="51" x="7.7216" y="-6" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="52" x="7.7216" y="-5.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="53" x="7.7216" y="-5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="54" x="7.7216" y="-4.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="55" x="7.7216" y="-4" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="56" x="7.7216" y="-3.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="57" x="7.7216" y="-3" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="58" x="7.7216" y="-2.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="59" x="7.7216" y="-2" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="60" x="7.7216" y="-1.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="61" x="7.7216" y="-1" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="62" x="7.7216" y="-0.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="63" x="7.7216" y="0" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="64" x="7.7216" y="0.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="65" x="7.7216" y="1" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="66" x="7.7216" y="1.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="67" x="7.7216" y="2" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="68" x="7.7216" y="2.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="69" x="7.7216" y="3" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="70" x="7.7216" y="3.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="71" x="7.7216" y="4" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="72" x="7.7216" y="4.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="73" x="7.7216" y="5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="74" x="7.7216" y="5.5" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="75" x="7.7216" y="6" dx="0.2794" dy="1.4732" layer="1" rot="R270"/>
<smd name="76" x="6" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="77" x="5.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="78" x="5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="79" x="4.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="80" x="4" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="81" x="3.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="82" x="3" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="83" x="2.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="84" x="2" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="85" x="1.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="86" x="1" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="87" x="0.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="88" x="0" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="89" x="-0.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="90" x="-1" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="91" x="-1.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="92" x="-2" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="93" x="-2.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="94" x="-3" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="95" x="-3.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="96" x="-4" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="97" x="-4.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="98" x="-5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="99" x="-5.5" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<smd name="100" x="-6" y="7.7216" dx="0.2794" dy="1.4732" layer="1" rot="R180"/>
<wire x1="-7.2136" y1="-7.2136" x2="-6.477" y2="-7.2136" width="0.1524" layer="21"/>
<wire x1="7.2136" y1="-7.2136" x2="7.2136" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="7.2136" y1="7.2136" x2="6.477" y2="7.2136" width="0.1524" layer="21"/>
<wire x1="-7.2136" y1="7.2136" x2="-7.2136" y2="6.477" width="0.1524" layer="21"/>
<wire x1="-7.2136" y1="-6.477" x2="-7.2136" y2="-7.2136" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-7.2136" x2="7.2136" y2="-7.2136" width="0.1524" layer="21"/>
<wire x1="7.2136" y1="6.477" x2="7.2136" y2="7.2136" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="7.2136" x2="-7.2136" y2="7.2136" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-8.9662" y="1.6905"/>
<vertex x="-8.9662" y="1.3095"/>
<vertex x="-8.7122" y="1.3095"/>
<vertex x="-8.7122" y="1.6905"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-8.9662" y="-3.3095"/>
<vertex x="-8.9662" y="-3.6905"/>
<vertex x="-8.7122" y="-3.6905"/>
<vertex x="-8.7122" y="-3.3095"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-4.1905" y="-8.7122"/>
<vertex x="-4.1905" y="-8.9662"/>
<vertex x="-3.8095" y="-8.9662"/>
<vertex x="-3.8095" y="-8.7122"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="0.8095" y="-8.7122"/>
<vertex x="0.8095" y="-8.9662"/>
<vertex x="1.1905" y="-8.9662"/>
<vertex x="1.1905" y="-8.7122"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="5.8095" y="-8.7122"/>
<vertex x="5.8095" y="-8.9662"/>
<vertex x="6.1905" y="-8.9662"/>
<vertex x="6.1905" y="-8.7122"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="8.9662" y="-1.3095"/>
<vertex x="8.9662" y="-1.6905"/>
<vertex x="8.7122" y="-1.6905"/>
<vertex x="8.7122" y="-1.3095"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="8.9662" y="3.6905"/>
<vertex x="8.9662" y="3.3095"/>
<vertex x="8.7122" y="3.3095"/>
<vertex x="8.7122" y="3.6905"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.8095" y="8.7122"/>
<vertex x="3.8095" y="8.9662"/>
<vertex x="4.1905" y="8.9662"/>
<vertex x="4.1905" y="8.7122"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.1905" y="8.7122"/>
<vertex x="-1.1905" y="8.9662"/>
<vertex x="-0.8095" y="8.9662"/>
<vertex x="-0.8095" y="8.7122"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-6.1905" y="8.7122"/>
<vertex x="-6.1905" y="8.9662"/>
<vertex x="-5.8095" y="8.9662"/>
<vertex x="-5.8095" y="8.7122"/>
</polygon>
<text x="-9.6774" y="5.9944" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="5.8674" y1="7.112" x2="6.1468" y2="7.112" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="7.112" x2="6.1468" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="8.1026" x2="5.8674" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="8.1026" x2="5.8674" y2="7.112" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="7.112" x2="5.6388" y2="7.112" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="7.112" x2="5.6388" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="8.1026" x2="5.3594" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="8.1026" x2="5.3594" y2="7.112" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="7.0866" x2="5.1308" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="7.0866" x2="5.1308" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="8.1026" x2="4.8514" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="8.1026" x2="4.8514" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="7.0866" x2="4.6482" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="7.0866" x2="4.6482" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="8.1026" x2="4.3688" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="8.1026" x2="4.3688" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="7.0866" x2="4.1402" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="7.0866" x2="4.1402" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="8.1026" x2="3.8608" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="8.1026" x2="3.8608" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="7.0866" x2="3.6322" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="7.0866" x2="3.6322" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="8.1026" x2="3.3528" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="8.1026" x2="3.3528" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="7.0866" x2="3.1496" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="7.0866" x2="3.1496" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="8.1026" x2="2.8702" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="8.1026" x2="2.8702" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="7.0866" x2="2.6416" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="7.0866" x2="2.6416" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="8.1026" x2="2.3622" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="8.1026" x2="2.3622" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="7.0866" x2="2.1336" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="7.0866" x2="2.1336" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="8.1026" x2="1.8542" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="8.1026" x2="1.8542" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="7.0866" x2="1.651" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="1.651" y1="7.0866" x2="1.651" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="1.651" y1="8.1026" x2="1.3716" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="8.1026" x2="1.3716" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="7.0866" x2="1.143" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="1.143" y1="7.0866" x2="1.143" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="1.143" y1="8.1026" x2="0.8636" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="8.1026" x2="0.8636" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="7.0866" x2="0.635" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="0.635" y1="7.0866" x2="0.635" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="0.635" y1="8.1026" x2="0.3556" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="8.1026" x2="0.3556" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="7.0866" x2="0.1524" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="7.0866" x2="0.127" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="0.127" y1="8.1026" x2="-0.1524" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="8.1026" x2="-0.1524" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="7.0866" x2="-0.3556" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="7.0866" x2="-0.3556" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="8.1026" x2="-0.635" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="8.1026" x2="-0.635" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="7.0866" x2="-0.8636" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="7.0866" x2="-0.8636" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="8.1026" x2="-1.143" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="8.1026" x2="-1.143" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="7.0866" x2="-1.3716" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="7.0866" x2="-1.3716" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="8.1026" x2="-1.651" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="8.1026" x2="-1.651" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="7.0866" x2="-1.8542" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="7.0866" x2="-1.8542" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="8.1026" x2="-2.1336" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="8.1026" x2="-2.1336" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="7.0866" x2="-2.3622" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="7.0866" x2="-2.3622" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="8.1026" x2="-2.6416" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="8.1026" x2="-2.6416" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="7.0866" x2="-2.8702" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="7.0866" x2="-2.8702" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="8.1026" x2="-3.1496" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="8.1026" x2="-3.1496" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="7.0866" x2="-3.3528" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="7.0866" x2="-3.3528" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="8.1026" x2="-3.6322" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="8.1026" x2="-3.6322" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="7.0866" x2="-3.8608" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="7.0866" x2="-3.8608" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="8.1026" x2="-4.1402" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="8.1026" x2="-4.1402" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="7.0866" x2="-4.3688" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="7.0866" x2="-4.3688" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="8.1026" x2="-4.6482" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="8.1026" x2="-4.6482" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="7.0866" x2="-4.8514" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="7.0866" x2="-4.8514" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="8.1026" x2="-5.1308" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="8.1026" x2="-5.1308" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="7.0866" x2="-5.3594" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="7.0866" x2="-5.3594" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="8.1026" x2="-5.6388" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="8.1026" x2="-5.6388" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="7.0866" x2="-5.8674" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="7.0866" x2="-5.8674" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="8.1026" x2="-6.1468" y2="8.1026" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="8.1026" x2="-6.1468" y2="7.0866" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="5.8674" x2="-7.112" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="6.1468" x2="-8.1026" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="6.1468" x2="-8.1026" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="5.8674" x2="-7.112" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="5.3594" x2="-7.112" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="5.6388" x2="-8.1026" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="5.6388" x2="-8.1026" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="5.3594" x2="-7.112" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="4.8514" x2="-7.112" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="5.1308" x2="-8.1026" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="5.1308" x2="-8.1026" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="4.8514" x2="-7.112" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="4.3688" x2="-7.0866" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="4.6482" x2="-8.1026" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="4.6482" x2="-8.1026" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="4.3688" x2="-7.0866" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="3.8608" x2="-7.0866" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="4.1402" x2="-8.1026" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="4.1402" x2="-8.1026" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="3.8608" x2="-7.0866" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="3.3528" x2="-7.0866" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="3.6322" x2="-8.1026" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="3.6322" x2="-8.1026" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="3.3528" x2="-7.0866" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="2.8702" x2="-7.0866" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="3.1496" x2="-8.1026" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="3.1496" x2="-8.1026" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="2.8702" x2="-7.0866" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="2.3622" x2="-7.0866" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="2.6416" x2="-8.1026" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="2.6416" x2="-8.1026" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="2.3622" x2="-7.0866" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="1.8542" x2="-7.0866" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="2.1336" x2="-8.1026" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="2.1336" x2="-8.1026" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="1.8542" x2="-7.0866" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="1.3716" x2="-7.0866" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="1.651" x2="-8.1026" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="1.651" x2="-8.1026" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="1.3716" x2="-7.0866" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="0.8636" x2="-7.0866" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="1.143" x2="-8.1026" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="1.143" x2="-8.1026" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="0.8636" x2="-7.0866" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="0.3556" x2="-7.0866" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="0.635" x2="-8.1026" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="0.635" x2="-8.1026" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="0.3556" x2="-7.0866" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-0.1524" x2="-7.0866" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="0.1524" x2="-8.1026" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="0.127" x2="-8.1026" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-0.1524" x2="-7.0866" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-0.635" x2="-7.0866" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-0.3556" x2="-8.1026" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-0.3556" x2="-8.1026" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-0.635" x2="-7.0866" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-1.143" x2="-7.0866" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-0.8636" x2="-8.1026" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-0.8636" x2="-8.1026" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-1.143" x2="-7.0866" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-1.651" x2="-7.0866" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-1.3716" x2="-8.1026" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-1.3716" x2="-8.1026" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-1.651" x2="-7.0866" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-2.1336" x2="-7.0866" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-1.8542" x2="-8.1026" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-1.8542" x2="-8.1026" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-2.1336" x2="-7.0866" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-2.6416" x2="-7.0866" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-2.3622" x2="-8.1026" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-2.3622" x2="-8.1026" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-2.6416" x2="-7.0866" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-3.1496" x2="-7.0866" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-2.8702" x2="-8.1026" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-2.8702" x2="-8.1026" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-3.1496" x2="-7.0866" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-3.6322" x2="-7.0866" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-3.3528" x2="-8.1026" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-3.3528" x2="-8.1026" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-3.6322" x2="-7.0866" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-4.1402" x2="-7.0866" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-3.8608" x2="-8.1026" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-3.8608" x2="-8.1026" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-4.1402" x2="-7.0866" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-4.6482" x2="-7.0866" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-4.3688" x2="-8.1026" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-4.3688" x2="-8.1026" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-4.6482" x2="-7.0866" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-5.1308" x2="-7.0866" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-4.8514" x2="-8.1026" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-4.8514" x2="-8.1026" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-5.1308" x2="-7.0866" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-5.6388" x2="-7.0866" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-5.3594" x2="-8.1026" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-5.3594" x2="-8.1026" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-5.6388" x2="-7.0866" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-6.1468" x2="-7.0866" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="-7.0866" y1="-5.8674" x2="-8.1026" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-5.8674" x2="-8.1026" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="-8.1026" y1="-6.1468" x2="-7.0866" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="-7.112" x2="-6.1468" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="-7.112" x2="-6.1468" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="-8.1026" x2="-5.8674" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="-8.1026" x2="-5.8674" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="-7.112" x2="-5.6388" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="-7.112" x2="-5.6388" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="-8.1026" x2="-5.3594" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="-8.1026" x2="-5.3594" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="-7.112" x2="-5.1308" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="-7.112" x2="-5.1308" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="-8.1026" x2="-4.8514" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="-8.1026" x2="-4.8514" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="-7.112" x2="-4.6482" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="-7.112" x2="-4.6482" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="-8.1026" x2="-4.3688" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="-8.1026" x2="-4.3688" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="-7.112" x2="-4.1402" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-7.112" x2="-4.1402" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-8.1026" x2="-3.8608" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="-8.1026" x2="-3.8608" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-7.112" x2="-3.6322" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="-7.112" x2="-3.6322" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="-8.1026" x2="-3.3528" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-8.1026" x2="-3.3528" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="-7.112" x2="-3.1496" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="-7.112" x2="-3.1496" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="-8.1026" x2="-2.8702" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="-8.1026" x2="-2.8702" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="-7.112" x2="-2.6416" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="-7.112" x2="-2.6416" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="-8.1026" x2="-2.3622" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="-8.1026" x2="-2.3622" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-7.112" x2="-2.1336" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-7.112" x2="-2.1336" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-8.1026" x2="-1.8542" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-8.1026" x2="-1.8542" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-7.112" x2="-1.651" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-7.112" x2="-1.651" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-8.1026" x2="-1.3716" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-8.1026" x2="-1.3716" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-7.112" x2="-1.143" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-7.112" x2="-1.143" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-8.1026" x2="-0.8636" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-8.1026" x2="-0.8636" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="-7.112" x2="-0.635" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-7.112" x2="-0.635" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-8.1026" x2="-0.3556" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="-8.1026" x2="-0.3556" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-7.112" x2="-0.1524" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="-7.112" x2="-0.127" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="-8.1026" x2="0.1524" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-8.1026" x2="0.1524" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-7.112" x2="0.3556" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="-7.112" x2="0.3556" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="-8.1026" x2="0.635" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-8.1026" x2="0.635" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-7.112" x2="0.8636" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-7.112" x2="0.8636" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-8.1026" x2="1.143" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-8.1026" x2="1.143" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-7.112" x2="1.3716" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-7.112" x2="1.3716" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-8.1026" x2="1.651" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-8.1026" x2="1.651" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-7.112" x2="1.8542" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-7.112" x2="1.8542" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-8.1026" x2="2.1336" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-8.1026" x2="2.1336" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="-7.112" x2="2.3622" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="-7.112" x2="2.3622" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="-8.1026" x2="2.6416" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="-8.1026" x2="2.6416" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="-7.112" x2="2.8702" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="-7.112" x2="2.8702" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="-8.1026" x2="3.1496" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="-8.1026" x2="3.1496" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="-7.112" x2="3.3528" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-7.112" x2="3.3528" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-8.1026" x2="3.6322" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="-8.1026" x2="3.6322" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-7.112" x2="3.8608" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="-7.112" x2="3.8608" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="-8.1026" x2="4.1402" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-8.1026" x2="4.1402" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="-7.112" x2="4.3688" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="-7.112" x2="4.3688" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="-8.1026" x2="4.6482" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="-8.1026" x2="4.6482" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="-7.112" x2="4.8514" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="-7.112" x2="4.8514" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="-8.1026" x2="5.1308" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="-8.1026" x2="5.1308" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="-7.112" x2="5.3594" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="-7.112" x2="5.3594" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="-8.1026" x2="5.6388" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="-8.1026" x2="5.6388" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="-7.112" x2="5.8674" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="-7.112" x2="5.8674" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="-8.1026" x2="6.1468" y2="-8.1026" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="-8.1026" x2="6.1468" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-5.8674" x2="7.112" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-6.1468" x2="8.1026" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-6.1468" x2="8.1026" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-5.8674" x2="7.112" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-5.3594" x2="7.112" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-5.6388" x2="8.1026" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-5.6388" x2="8.1026" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-5.3594" x2="7.112" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-4.8514" x2="7.112" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-5.1308" x2="8.1026" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-5.1308" x2="8.1026" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-4.8514" x2="7.112" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-4.3688" x2="7.112" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-4.6482" x2="8.1026" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-4.6482" x2="8.1026" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-4.3688" x2="7.112" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-3.8608" x2="7.0866" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-4.1402" x2="8.1026" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-4.1402" x2="8.1026" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-3.8608" x2="7.0866" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-3.3528" x2="7.0866" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-3.6322" x2="8.1026" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-3.6322" x2="8.1026" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-3.3528" x2="7.0866" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-2.8702" x2="7.0866" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-3.1496" x2="8.1026" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-3.1496" x2="8.1026" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-2.8702" x2="7.0866" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-2.3622" x2="7.0866" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-2.6416" x2="8.1026" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-2.6416" x2="8.1026" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-2.3622" x2="7.0866" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-1.8542" x2="7.0866" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-2.1336" x2="8.1026" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-2.1336" x2="8.1026" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-1.8542" x2="7.0866" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-1.3716" x2="7.0866" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-1.651" x2="8.1026" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-1.651" x2="8.1026" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-1.3716" x2="7.0866" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-0.8636" x2="7.0866" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-1.143" x2="8.1026" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-1.143" x2="8.1026" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-0.8636" x2="7.0866" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-0.3556" x2="7.0866" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-0.635" x2="8.1026" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-0.635" x2="8.1026" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-0.3556" x2="7.0866" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="0.1524" x2="7.0866" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="-0.1524" x2="8.1026" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="-0.127" x2="8.1026" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="0.1524" x2="7.0866" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="0.635" x2="7.0866" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="0.3556" x2="8.1026" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="0.3556" x2="8.1026" y2="0.635" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="0.635" x2="7.0866" y2="0.635" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="1.143" x2="7.0866" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="0.8636" x2="8.1026" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="0.8636" x2="8.1026" y2="1.143" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="1.143" x2="7.0866" y2="1.143" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="1.651" x2="7.0866" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="1.3716" x2="8.1026" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="1.3716" x2="8.1026" y2="1.651" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="1.651" x2="7.0866" y2="1.651" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="2.1336" x2="7.0866" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="1.8542" x2="8.1026" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="1.8542" x2="8.1026" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="2.1336" x2="7.0866" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="2.6416" x2="7.0866" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="2.3622" x2="8.1026" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="2.3622" x2="8.1026" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="2.6416" x2="7.0866" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="3.1496" x2="7.0866" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="2.8702" x2="8.1026" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="2.8702" x2="8.1026" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="3.1496" x2="7.0866" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="3.6322" x2="7.0866" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="3.3528" x2="8.1026" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="3.3528" x2="8.1026" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="3.6322" x2="7.0866" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="4.1402" x2="7.0866" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="3.8608" x2="8.1026" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="3.8608" x2="8.1026" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="4.1402" x2="7.0866" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="4.6482" x2="7.0866" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="4.3688" x2="8.1026" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="4.3688" x2="8.1026" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="4.6482" x2="7.0866" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="5.1308" x2="7.0866" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="4.8514" x2="8.1026" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="4.8514" x2="8.1026" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="5.1308" x2="7.0866" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="5.6388" x2="7.0866" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="5.3594" x2="8.1026" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="5.3594" x2="8.1026" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="5.6388" x2="7.0866" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="6.1468" x2="7.0866" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="7.0866" y1="5.8674" x2="8.1026" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="5.8674" x2="8.1026" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="8.1026" y1="6.1468" x2="7.0866" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="5.842" x2="-5.842" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-7.112" x2="7.112" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-7.112" x2="7.112" y2="7.112" width="0.1524" layer="51"/>
<wire x1="7.112" y1="7.112" x2="-7.112" y2="7.112" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="7.112" x2="-7.112" y2="-7.112" width="0.1524" layer="51"/>
<text x="-7.2898" y="5.6134" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="FRAME">
<wire x1="0" y1="177.8" x2="228.6" y2="177.8" width="0.254" layer="94"/>
<wire x1="228.6" y1="177.8" x2="228.6" y2="15.24" width="0.254" layer="94"/>
<wire x1="228.6" y1="15.24" x2="228.6" y2="7.62" width="0.254" layer="94"/>
<wire x1="228.6" y1="7.62" x2="228.6" y2="0" width="0.254" layer="94"/>
<wire x1="228.6" y1="0" x2="185.42" y2="0" width="0.254" layer="94"/>
<wire x1="185.42" y1="0" x2="152.4" y2="0" width="0.254" layer="94"/>
<wire x1="152.4" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="177.8" width="0.254" layer="94"/>
<wire x1="228.6" y1="15.24" x2="185.42" y2="15.24" width="0.254" layer="94"/>
<wire x1="185.42" y1="15.24" x2="185.42" y2="7.62" width="0.254" layer="94"/>
<text x="200.66" y="2.54" size="2.54" layer="94" ratio="6">&gt;SHEET</text>
<text x="187.96" y="10.16" size="2.54" layer="94" ratio="6">&gt;DRAWING_NAME</text>
<wire x1="185.42" y1="7.62" x2="185.42" y2="0" width="0.254" layer="94"/>
<wire x1="185.42" y1="7.62" x2="228.6" y2="7.62" width="0.254" layer="94"/>
<wire x1="185.42" y1="15.24" x2="152.4" y2="15.24" width="0.254" layer="94"/>
<wire x1="152.4" y1="15.24" x2="152.4" y2="0" width="0.254" layer="94"/>
<text x="187.96" y="2.54" size="2.54" layer="94" ratio="6">Sheet:</text>
</symbol>
<symbol name="STM32F427_PORTA_H">
<pin name="PA11" x="10.16" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="PA12" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PA13" x="10.16" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PA14" x="10.16" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PA15" x="10.16" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="PA10" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PA9" x="10.16" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PA8" x="10.16" y="7.62" length="middle" direction="pwr" rot="R180"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-10.16" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_PORTA_L">
<wire x1="-7.62" y1="10.16" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<pin name="PA7" x="10.16" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="PA6" x="10.16" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PA5" x="10.16" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PA4" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PA3" x="10.16" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="PA2" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PA1" x="10.16" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PA0" x="10.16" y="7.62" length="middle" direction="pwr" rot="R180"/>
<text x="-10.16" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_PORTB_L">
<pin name="PB3" x="10.16" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="PB1" x="10.16" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PB2" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PB0" x="10.16" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PB4" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PB5" x="10.16" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PB6" x="10.16" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PB7" x="10.16" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-10.16" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_PORTB_H">
<pin name="PB11" x="10.16" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="PB9" x="10.16" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PB10" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PB8" x="10.16" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PB12" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PB13" x="10.16" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PB14" x="10.16" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PB15" x="10.16" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-10.16" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_PORTC_L">
<pin name="PC3" x="10.16" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="PC1" x="10.16" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PC2" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PC0" x="10.16" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PC4" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PC5" x="10.16" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PC6" x="10.16" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PC7" x="10.16" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-10.16" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_PORTC_H">
<pin name="PC11" x="10.16" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="PC9" x="10.16" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PC10" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PC8" x="10.16" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PC12" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PC13" x="10.16" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PC14" x="10.16" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PC15" x="10.16" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-10.16" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_PORTD_L">
<pin name="PD3" x="10.16" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="PD1" x="10.16" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PD2" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PD0" x="10.16" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PD4" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PD5" x="10.16" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PD6" x="10.16" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PD7" x="10.16" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-10.16" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_PORTD_H">
<pin name="PD11" x="10.16" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="PD9" x="10.16" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PD10" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PD8" x="10.16" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PD12" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PD13" x="10.16" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PD14" x="10.16" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PD15" x="10.16" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-10.16" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_PORTE_L">
<pin name="PE3" x="10.16" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="PE1" x="10.16" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PE2" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PE0" x="10.16" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PE4" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PE5" x="10.16" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PE6" x="10.16" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PE7" x="10.16" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-10.16" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_PORTE_H">
<pin name="PE11" x="10.16" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="PE9" x="10.16" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PE10" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PE8" x="10.16" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PE12" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PE13" x="10.16" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="PE14" x="10.16" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="PE15" x="10.16" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-10.16" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_OSC">
<pin name="OSC_IN" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="OSC_OUT" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="-5.08" y="5.08" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_RESET">
<pin name="NRST" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="BOOT0" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<wire x1="-2.54" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<text x="-5.08" y="5.08" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_CAPS">
<pin name="VCAP_1" x="7.62" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="VCAP2" x="7.62" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="VSS" x="7.62" y="-15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD" x="7.62" y="7.62" length="middle" direction="pwr" rot="R180"/>
<wire x1="-7.62" y1="10.16" x2="2.54" y2="10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="10.16" x2="2.54" y2="-17.78" width="0.254" layer="94"/>
<wire x1="2.54" y1="-17.78" x2="-7.62" y2="-17.78" width="0.254" layer="94"/>
<text x="-10.16" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
<symbol name="STM32F427_BATT">
<pin name="VDDA" x="10.16" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="VREF+" x="10.16" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="VSSA" x="10.16" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="VBAT" x="10.16" y="7.62" length="middle" direction="pwr" rot="R180"/>
<wire x1="-7.62" y1="10.16" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<text x="-7.62" y="10.16" size="2.0828" layer="94" ratio="6">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRAME">
<gates>
<gate name="A" symbol="FRAME" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="STM32F427VGT6">
<gates>
<gate name="PORTA_H" symbol="STM32F427_PORTA_H" x="-43.18" y="30.48"/>
<gate name="PORTA_L" symbol="STM32F427_PORTA_L" x="-43.18" y="60.96"/>
<gate name="PORTB_L" symbol="STM32F427_PORTB_L" x="-40.64" y="-2.54"/>
<gate name="PORTB_H" symbol="STM32F427_PORTB_H" x="-40.64" y="-38.1"/>
<gate name="PORTC_L" symbol="STM32F427_PORTC_L" x="20.32" y="63.5"/>
<gate name="PORTC_H" symbol="STM32F427_PORTC_H" x="20.32" y="33.02"/>
<gate name="PORTD_L" symbol="STM32F427_PORTD_L" x="20.32" y="-2.54"/>
<gate name="PORTD_H" symbol="STM32F427_PORTD_H" x="20.32" y="-38.1"/>
<gate name="PORTE_L" symbol="STM32F427_PORTE_L" x="66.04" y="63.5"/>
<gate name="PORTE_H" symbol="STM32F427_PORTE_H" x="66.04" y="33.02"/>
<gate name="OSC" symbol="STM32F427_OSC" x="60.96" y="2.54"/>
<gate name="RST" symbol="STM32F427_RESET" x="60.96" y="-17.78"/>
<gate name="VCAP" symbol="STM32F427_CAPS" x="63.5" y="-40.64"/>
<gate name="BATT" symbol="STM32F427_BATT" x="106.68" y="60.96"/>
</gates>
<devices>
<device name="" package="LQFP-100">
<connects>
<connect gate="BATT" pin="VBAT" pad="6"/>
<connect gate="BATT" pin="VDDA" pad="22"/>
<connect gate="BATT" pin="VREF+" pad="21"/>
<connect gate="BATT" pin="VSSA" pad="20"/>
<connect gate="OSC" pin="OSC_IN" pad="12"/>
<connect gate="OSC" pin="OSC_OUT" pad="13"/>
<connect gate="PORTA_H" pin="PA10" pad="69"/>
<connect gate="PORTA_H" pin="PA11" pad="70"/>
<connect gate="PORTA_H" pin="PA12" pad="71"/>
<connect gate="PORTA_H" pin="PA13" pad="72"/>
<connect gate="PORTA_H" pin="PA14" pad="76"/>
<connect gate="PORTA_H" pin="PA15" pad="77"/>
<connect gate="PORTA_H" pin="PA8" pad="67"/>
<connect gate="PORTA_H" pin="PA9" pad="68"/>
<connect gate="PORTA_L" pin="PA0" pad="23"/>
<connect gate="PORTA_L" pin="PA1" pad="24"/>
<connect gate="PORTA_L" pin="PA2" pad="25"/>
<connect gate="PORTA_L" pin="PA3" pad="26"/>
<connect gate="PORTA_L" pin="PA4" pad="29"/>
<connect gate="PORTA_L" pin="PA5" pad="30"/>
<connect gate="PORTA_L" pin="PA6" pad="31"/>
<connect gate="PORTA_L" pin="PA7" pad="32"/>
<connect gate="PORTB_H" pin="PB10" pad="47"/>
<connect gate="PORTB_H" pin="PB11" pad="48"/>
<connect gate="PORTB_H" pin="PB12" pad="51"/>
<connect gate="PORTB_H" pin="PB13" pad="52"/>
<connect gate="PORTB_H" pin="PB14" pad="53"/>
<connect gate="PORTB_H" pin="PB15" pad="54"/>
<connect gate="PORTB_H" pin="PB8" pad="95"/>
<connect gate="PORTB_H" pin="PB9" pad="96"/>
<connect gate="PORTB_L" pin="PB0" pad="35"/>
<connect gate="PORTB_L" pin="PB1" pad="36"/>
<connect gate="PORTB_L" pin="PB2" pad="37"/>
<connect gate="PORTB_L" pin="PB3" pad="89"/>
<connect gate="PORTB_L" pin="PB4" pad="90"/>
<connect gate="PORTB_L" pin="PB5" pad="91"/>
<connect gate="PORTB_L" pin="PB6" pad="92"/>
<connect gate="PORTB_L" pin="PB7" pad="93"/>
<connect gate="PORTC_H" pin="PC10" pad="78"/>
<connect gate="PORTC_H" pin="PC11" pad="79"/>
<connect gate="PORTC_H" pin="PC12" pad="80"/>
<connect gate="PORTC_H" pin="PC13" pad="7"/>
<connect gate="PORTC_H" pin="PC14" pad="8"/>
<connect gate="PORTC_H" pin="PC15" pad="9"/>
<connect gate="PORTC_H" pin="PC8" pad="65"/>
<connect gate="PORTC_H" pin="PC9" pad="66"/>
<connect gate="PORTC_L" pin="PC0" pad="15"/>
<connect gate="PORTC_L" pin="PC1" pad="16"/>
<connect gate="PORTC_L" pin="PC2" pad="17"/>
<connect gate="PORTC_L" pin="PC3" pad="18"/>
<connect gate="PORTC_L" pin="PC4" pad="33"/>
<connect gate="PORTC_L" pin="PC5" pad="34"/>
<connect gate="PORTC_L" pin="PC6" pad="63"/>
<connect gate="PORTC_L" pin="PC7" pad="64"/>
<connect gate="PORTD_H" pin="PD10" pad="57"/>
<connect gate="PORTD_H" pin="PD11" pad="58"/>
<connect gate="PORTD_H" pin="PD12" pad="59"/>
<connect gate="PORTD_H" pin="PD13" pad="60"/>
<connect gate="PORTD_H" pin="PD14" pad="61"/>
<connect gate="PORTD_H" pin="PD15" pad="62"/>
<connect gate="PORTD_H" pin="PD8" pad="55"/>
<connect gate="PORTD_H" pin="PD9" pad="56"/>
<connect gate="PORTD_L" pin="PD0" pad="81"/>
<connect gate="PORTD_L" pin="PD1" pad="82"/>
<connect gate="PORTD_L" pin="PD2" pad="83"/>
<connect gate="PORTD_L" pin="PD3" pad="84"/>
<connect gate="PORTD_L" pin="PD4" pad="85"/>
<connect gate="PORTD_L" pin="PD5" pad="86"/>
<connect gate="PORTD_L" pin="PD6" pad="87"/>
<connect gate="PORTD_L" pin="PD7" pad="88"/>
<connect gate="PORTE_H" pin="PE10" pad="41"/>
<connect gate="PORTE_H" pin="PE11" pad="42"/>
<connect gate="PORTE_H" pin="PE12" pad="43"/>
<connect gate="PORTE_H" pin="PE13" pad="44"/>
<connect gate="PORTE_H" pin="PE14" pad="45"/>
<connect gate="PORTE_H" pin="PE15" pad="46"/>
<connect gate="PORTE_H" pin="PE8" pad="39"/>
<connect gate="PORTE_H" pin="PE9" pad="40"/>
<connect gate="PORTE_L" pin="PE0" pad="97"/>
<connect gate="PORTE_L" pin="PE1" pad="98"/>
<connect gate="PORTE_L" pin="PE2" pad="1"/>
<connect gate="PORTE_L" pin="PE3" pad="2"/>
<connect gate="PORTE_L" pin="PE4" pad="3"/>
<connect gate="PORTE_L" pin="PE5" pad="4"/>
<connect gate="PORTE_L" pin="PE6" pad="5"/>
<connect gate="PORTE_L" pin="PE7" pad="38"/>
<connect gate="RST" pin="BOOT0" pad="94"/>
<connect gate="RST" pin="NRST" pad="14"/>
<connect gate="VCAP" pin="VCAP2" pad="73"/>
<connect gate="VCAP" pin="VCAP_1" pad="49"/>
<connect gate="VCAP" pin="VDD" pad="11 19 28 50 75 100"/>
<connect gate="VCAP" pin="VSS" pad="10 27 74 99"/>
</connects>
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
<part name="U$1" library="quad" deviceset="FRAME" device=""/>
<part name="U101" library="quad" deviceset="STM32F427VGT6" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="A" x="0" y="0"/>
<instance part="U101" gate="PORTA_H" x="12.7" y="152.4"/>
<instance part="U101" gate="PORTA_L" x="12.7" y="120.65"/>
<instance part="U101" gate="PORTB_H" x="12.7" y="50.8"/>
<instance part="U101" gate="PORTB_L" x="12.7" y="88.9"/>
<instance part="U101" gate="PORTC_H" x="76.2" y="120.65"/>
<instance part="U101" gate="PORTC_L" x="76.2" y="152.4"/>
<instance part="U101" gate="PORTD_H" x="76.2" y="50.8"/>
<instance part="U101" gate="PORTD_L" x="76.2" y="88.9"/>
<instance part="U101" gate="PORTE_H" x="152.4" y="120.65"/>
<instance part="U101" gate="PORTE_L" x="152.4" y="152.4"/>
<instance part="U101" gate="OSC" x="152.4" y="76.2"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
