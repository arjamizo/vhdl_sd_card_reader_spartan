<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="MISO" />
        <signal name="btn_west" />
        <signal name="MOSI" />
        <signal name="led(7:0)" />
        <signal name="ledki(2:0)" />
        <signal name="ss" />
        <signal name="XLXN_55" />
        <signal name="sck" />
        <signal name="clczek" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_88" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="Clk_50Mhz" />
        <signal name="XLXN_177" />
        <signal name="btn_east" />
        <signal name="XLXN_179" />
        <signal name="btn_south" />
        <signal name="XLXN_180" />
        <signal name="XLXN_181" />
        <signal name="XLXN_183" />
        <signal name="XLXN_184" />
        <signal name="XLXN_187" />
        <signal name="XLXN_189" />
        <signal name="XLXN_191" />
        <signal name="XLXN_192" />
        <signal name="XLXN_193" />
        <signal name="XLXN_194" />
        <port polarity="Input" name="MISO" />
        <port polarity="Input" name="btn_west" />
        <port polarity="Output" name="MOSI" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Output" name="ledki(2:0)" />
        <port polarity="Output" name="ss" />
        <port polarity="Output" name="sck" />
        <port polarity="Output" name="clczek" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Input" name="Clk_50Mhz" />
        <port polarity="Input" name="btn_east" />
        <port polarity="Input" name="btn_south" />
        <blockdef name="sd_controller">
            <timestamp>2013-5-23T12:40:10</timestamp>
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-448" height="640" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2013-5-23T12:36:24</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="cb16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="cc8re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
        </blockdef>
        <block symbolname="sd_controller" name="XLXI_4">
            <blockpin signalname="MISO" name="miso" />
            <blockpin signalname="btn_west" name="rd" />
            <blockpin name="wr" />
            <blockpin name="dm_in" />
            <blockpin signalname="btn_south" name="reset" />
            <blockpin signalname="XLXN_189" name="clk" />
            <blockpin name="din(7:0)" />
            <blockpin signalname="ss" name="cs" />
            <blockpin signalname="MOSI" name="mosi" />
            <blockpin signalname="XLXN_55" name="sclk" />
            <blockpin signalname="ledki(2:0)" name="led(2:0)" />
            <blockpin signalname="led(7:0)" name="dout(7:0)" />
            <blockpin signalname="XLXN_179" name="dout_changed" />
        </block>
        <block symbolname="buf" name="XLXI_21">
            <blockpin signalname="XLXN_55" name="I" />
            <blockpin signalname="sck" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_22">
            <blockpin signalname="XLXN_55" name="I" />
            <blockpin signalname="clczek" name="O" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_23">
            <blockpin signalname="led(7:0)" name="Char_DI(7:0)" />
            <blockpin name="Home" />
            <blockpin name="NewLine" />
            <blockpin name="Goto00" />
            <blockpin signalname="Clk_50Mhz" name="Clk_Sys" />
            <blockpin signalname="Clk_50Mhz" name="Clk_50MHz" />
            <blockpin name="CursorOn" />
            <blockpin name="ScrollEn" />
            <blockpin name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_88" name="VGA_RGB" />
            <blockpin signalname="XLXN_179" name="Char_WE" />
        </block>
        <block symbolname="buf" name="XLXI_24">
            <blockpin signalname="XLXN_88" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_25">
            <blockpin signalname="XLXN_88" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_26">
            <blockpin signalname="XLXN_88" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_40">
            <blockpin signalname="XLXN_177" name="P" />
        </block>
        <block symbolname="cb16ce" name="XLXI_41">
            <blockpin signalname="Clk_50Mhz" name="C" />
            <blockpin signalname="XLXN_177" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin signalname="XLXN_181" name="TC" />
        </block>
        <block symbolname="m2_1" name="XLXI_68">
            <blockpin signalname="XLXN_181" name="D0" />
            <blockpin signalname="XLXN_194" name="D1" />
            <blockpin signalname="btn_east" name="S0" />
            <blockpin signalname="XLXN_189" name="O" />
        </block>
        <block symbolname="cc8re" name="XLXI_69">
            <blockpin signalname="XLXN_181" name="C" />
            <blockpin signalname="XLXN_177" name="CE" />
            <blockpin name="R" />
            <blockpin name="CEO" />
            <blockpin name="Q(7:0)" />
            <blockpin signalname="XLXN_194" name="TC" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1520" y="1216" name="XLXI_4" orien="R0">
        </instance>
        <branch name="MISO">
            <wire x2="1520" y1="800" y2="800" x1="1440" />
        </branch>
        <branch name="btn_west">
            <wire x2="1520" y1="864" y2="864" x1="1472" />
        </branch>
        <branch name="MOSI">
            <wire x2="1936" y1="928" y2="928" x1="1904" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="1920" y1="1184" y2="1184" x1="1904" />
            <wire x2="1920" y1="1168" y2="1184" x1="1920" />
            <wire x2="2128" y1="1168" y2="1168" x1="1920" />
            <wire x2="2160" y1="1168" y2="1168" x1="2128" />
            <wire x2="2160" y1="1168" y2="1232" x1="2160" />
            <wire x2="2208" y1="1232" y2="1232" x1="2160" />
            <wire x2="2128" y1="1168" y2="1456" x1="2128" />
            <wire x2="2208" y1="1456" y2="1456" x1="2128" />
        </branch>
        <branch name="ledki(2:0)">
            <wire x2="1936" y1="1312" y2="1312" x1="1904" />
        </branch>
        <branch name="ss">
            <wire x2="1936" y1="800" y2="800" x1="1904" />
        </branch>
        <instance x="2144" y="1056" name="XLXI_21" orien="R0" />
        <instance x="2144" y="1136" name="XLXI_22" orien="R0" />
        <branch name="XLXN_55">
            <wire x2="2080" y1="1056" y2="1056" x1="1904" />
            <wire x2="2080" y1="1056" y2="1104" x1="2080" />
            <wire x2="2144" y1="1104" y2="1104" x1="2080" />
            <wire x2="2144" y1="1024" y2="1024" x1="2080" />
            <wire x2="2080" y1="1024" y2="1056" x1="2080" />
        </branch>
        <branch name="sck">
            <wire x2="2400" y1="1024" y2="1024" x1="2368" />
        </branch>
        <branch name="clczek">
            <wire x2="2400" y1="1104" y2="1104" x1="2368" />
        </branch>
        <instance x="2208" y="2064" name="XLXI_23" orien="R0">
        </instance>
        <branch name="VGA_HS">
            <wire x2="2672" y1="1456" y2="1456" x1="2640" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2672" y1="1520" y2="1520" x1="2640" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="2736" y1="1584" y2="1584" x1="2640" />
            <wire x2="2736" y1="1584" y2="1600" x1="2736" />
            <wire x2="2736" y1="1600" y2="1664" x1="2736" />
            <wire x2="2736" y1="1664" y2="1728" x1="2736" />
        </branch>
        <instance x="2736" y="1632" name="XLXI_24" orien="R0" />
        <instance x="2736" y="1696" name="XLXI_25" orien="R0" />
        <instance x="2736" y="1760" name="XLXI_26" orien="R0" />
        <branch name="VGA_R">
            <wire x2="2992" y1="1600" y2="1600" x1="2960" />
        </branch>
        <branch name="VGA_G">
            <wire x2="2992" y1="1664" y2="1664" x1="2960" />
        </branch>
        <branch name="VGA_B">
            <wire x2="2992" y1="1728" y2="1728" x1="2960" />
        </branch>
        <branch name="Clk_50Mhz">
            <wire x2="528" y1="1568" y2="1568" x1="192" />
            <wire x2="528" y1="1568" y2="1600" x1="528" />
            <wire x2="560" y1="1600" y2="1600" x1="528" />
            <wire x2="528" y1="1600" y2="2064" x1="528" />
            <wire x2="2192" y1="2064" y2="2064" x1="528" />
            <wire x2="2208" y1="2064" y2="2064" x1="2192" />
            <wire x2="2192" y1="2064" y2="2128" x1="2192" />
            <wire x2="2208" y1="2128" y2="2128" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="1936" y="928" name="MOSI" orien="R0" />
        <iomarker fontsize="28" x="1440" y="800" name="MISO" orien="R180" />
        <iomarker fontsize="28" x="1936" y="1312" name="ledki(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1936" y="800" name="ss" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1024" name="sck" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1104" name="clczek" orien="R0" />
        <iomarker fontsize="28" x="2208" y="1232" name="led(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2672" y="1456" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2672" y="1520" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1600" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1664" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1728" name="VGA_B" orien="R0" />
        <instance x="384" y="1488" name="XLXI_40" orien="R0" />
        <instance x="560" y="1728" name="XLXI_41" orien="R0" />
        <iomarker fontsize="28" x="192" y="1568" name="Clk_50Mhz" orien="R180" />
        <branch name="btn_east">
            <wire x2="1040" y1="1216" y2="1216" x1="960" />
        </branch>
        <branch name="XLXN_179">
            <wire x2="2048" y1="1376" y2="1376" x1="1904" />
            <wire x2="2048" y1="1376" y2="1520" x1="2048" />
            <wire x2="2208" y1="1520" y2="1520" x1="2048" />
        </branch>
        <branch name="btn_south">
            <wire x2="1520" y1="1056" y2="1056" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1472" y="864" name="btn_west" orien="R180" />
        <iomarker fontsize="28" x="1488" y="1056" name="btn_south" orien="R180" />
        <instance x="1040" y="1248" name="XLXI_68" orien="R0" />
        <iomarker fontsize="28" x="960" y="1216" name="btn_east" orien="R180" />
        <instance x="1056" y="1696" name="XLXI_69" orien="R0" />
        <branch name="XLXN_189">
            <wire x2="1520" y1="1120" y2="1120" x1="1360" />
        </branch>
        <branch name="XLXN_177">
            <wire x2="448" y1="1488" y2="1536" x1="448" />
            <wire x2="528" y1="1536" y2="1536" x1="448" />
            <wire x2="560" y1="1536" y2="1536" x1="528" />
            <wire x2="528" y1="1312" y2="1536" x1="528" />
            <wire x2="1056" y1="1312" y2="1312" x1="528" />
            <wire x2="1056" y1="1312" y2="1328" x1="1056" />
            <wire x2="1056" y1="1328" y2="1328" x1="1040" />
            <wire x2="1040" y1="1328" y2="1504" x1="1040" />
            <wire x2="1056" y1="1504" y2="1504" x1="1040" />
        </branch>
        <branch name="XLXN_181">
            <wire x2="992" y1="1600" y2="1600" x1="944" />
            <wire x2="1024" y1="1600" y2="1600" x1="992" />
            <wire x2="992" y1="1088" y2="1600" x1="992" />
            <wire x2="1040" y1="1088" y2="1088" x1="992" />
            <wire x2="1056" y1="1568" y2="1568" x1="1024" />
            <wire x2="1024" y1="1568" y2="1600" x1="1024" />
        </branch>
        <branch name="XLXN_194">
            <wire x2="1040" y1="1152" y2="1152" x1="1024" />
            <wire x2="1024" y1="1152" y2="1280" x1="1024" />
            <wire x2="1504" y1="1280" y2="1280" x1="1024" />
            <wire x2="1504" y1="1280" y2="1568" x1="1504" />
            <wire x2="1504" y1="1568" y2="1568" x1="1440" />
        </branch>
    </sheet>
</drawing>