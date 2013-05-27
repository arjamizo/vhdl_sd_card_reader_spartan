<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50Mhz" />
        <signal name="dividedClock" />
        <signal name="reset" />
        <signal name="VGA_VS" />
        <signal name="btn_north" />
        <signal name="led(7:0)" />
        <signal name="XLXN_88" />
        <signal name="VGA_HS" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="SCK" />
        <signal name="MOSI" />
        <signal name="SS" />
        <signal name="chars_strobe" />
        <signal name="XLXN_182" />
        <signal name="XLXN_277" />
        <signal name="btn_south" />
        <signal name="MISO" />
        <signal name="btn_west" />
        <signal name="recv(7:0)" />
        <signal name="address(15:0)" />
        <signal name="XLXN_191" />
        <signal name="XLXN_305" />
        <signal name="btn_east" />
        <signal name="XLXN_248" />
        <signal name="XLXN_518" />
        <signal name="XLXN_519" />
        <signal name="XLXN_526" />
        <signal name="ledka" />
        <signal name="voltage" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="XLXN_862" />
        <signal name="ROT_A" />
        <signal name="ROT_B" />
        <signal name="XLXN_910" />
        <signal name="read" />
        <signal name="address(63:0)" />
        <signal name="address(31:0)">
        </signal>
        <signal name="XLXN_934" />
        <port polarity="Input" name="Clk_50Mhz" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Input" name="btn_north" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="SCK" />
        <port polarity="Output" name="MOSI" />
        <port polarity="Output" name="SS" />
        <port polarity="Input" name="btn_south" />
        <port polarity="Input" name="MISO" />
        <port polarity="Input" name="btn_west" />
        <port polarity="Input" name="btn_east" />
        <port polarity="Output" name="ledka" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="ROT_B" />
        <blockdef name="ifd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="sdcard">
            <timestamp>2013-5-26T22:36:55</timestamp>
            <rect width="64" x="320" y="276" height="24" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-384" height="704" />
        </blockdef>
        <blockdef name="RotaryEnc">
            <timestamp>2008-8-28T17:16:17</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="LCD2x64">
            <timestamp>2008-9-19T11:22:46</timestamp>
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="304" x="64" y="-320" height="384" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
        </blockdef>
        <blockdef name="cb16cled">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <rect width="64" x="0" y="-460" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="320" y="-460" height="24" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
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
        <block symbolname="ifd" name="XLXI_199">
            <blockpin signalname="dividedClock" name="C" />
            <blockpin signalname="MISO" name="D" />
            <blockpin signalname="XLXN_277" name="Q" />
        </block>
        <block symbolname="ifd" name="XLXI_200">
            <blockpin signalname="dividedClock" name="C" />
            <blockpin signalname="btn_west" name="D" />
            <blockpin signalname="read" name="Q" />
        </block>
        <block symbolname="ifd" name="XLXI_198">
            <blockpin signalname="dividedClock" name="C" />
            <blockpin signalname="btn_south" name="D" />
            <blockpin signalname="XLXN_182" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_131">
            <blockpin signalname="voltage" name="P" />
        </block>
        <block symbolname="sdcard" name="XLXI_225">
            <blockpin signalname="XLXN_277" name="miso" />
            <blockpin signalname="read" name="rd" />
            <blockpin signalname="dividedClock" name="clk" />
            <blockpin signalname="XLXN_182" name="reset" />
            <blockpin signalname="address(31:0)" name="address(31:0)" />
            <blockpin signalname="SS" name="cs" />
            <blockpin signalname="MOSI" name="mosi" />
            <blockpin signalname="SCK" name="sclk" />
            <blockpin signalname="chars_strobe" name="output_strobe" />
            <blockpin signalname="led(7:0)" name="ledout(7:0)" />
            <blockpin signalname="recv(7:0)" name="recv(7:0)" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_23">
            <blockpin signalname="recv(7:0)" name="Char_DI(7:0)" />
            <blockpin name="Home" />
            <blockpin name="NewLine" />
            <blockpin signalname="btn_north" name="Goto00" />
            <blockpin signalname="Clk_50Mhz" name="Clk_Sys" />
            <blockpin signalname="Clk_50Mhz" name="Clk_50MHz" />
            <blockpin name="CursorOn" />
            <blockpin name="ScrollEn" />
            <blockpin name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_88" name="VGA_RGB" />
            <blockpin signalname="chars_strobe" name="Char_WE" />
        </block>
        <block symbolname="cc8re" name="XLXI_69">
            <blockpin signalname="Clk_50Mhz" name="C" />
            <blockpin signalname="XLXN_518" name="CE" />
            <blockpin signalname="reset" name="R" />
            <blockpin name="CEO" />
            <blockpin name="Q(7:0)" />
            <blockpin signalname="XLXN_248" name="TC" />
        </block>
        <block symbolname="m2_1" name="XLXI_197">
            <blockpin signalname="XLXN_248" name="D0" />
            <blockpin signalname="XLXN_305" name="D1" />
            <blockpin signalname="btn_east" name="S0" />
            <blockpin signalname="dividedClock" name="O" />
        </block>
        <block symbolname="cc8re" name="XLXI_216">
            <blockpin signalname="XLXN_191" name="C" />
            <blockpin signalname="XLXN_526" name="CE" />
            <blockpin signalname="reset" name="R" />
            <blockpin name="CEO" />
            <blockpin name="Q(7:0)" />
            <blockpin signalname="XLXN_305" name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_218">
            <blockpin signalname="XLXN_518" name="P" />
        </block>
        <block symbolname="cb16ce" name="XLXI_214">
            <blockpin signalname="Clk_50Mhz" name="C" />
            <blockpin signalname="XLXN_519" name="CE" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin signalname="XLXN_191" name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_219">
            <blockpin signalname="XLXN_519" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_224">
            <blockpin signalname="XLXN_526" name="P" />
        </block>
        <block symbolname="fjkc" name="XLXI_116">
            <blockpin signalname="dividedClock" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="voltage" name="J" />
            <blockpin signalname="voltage" name="K" />
            <blockpin signalname="ledka" name="Q" />
        </block>
        <block symbolname="cb16cled" name="XLXI_341">
            <blockpin signalname="XLXN_862" name="C" />
            <blockpin name="CE" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin name="D(15:0)" />
            <blockpin name="L" />
            <blockpin signalname="XLXN_910" name="UP" />
            <blockpin name="CEO" />
            <blockpin signalname="address(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="LCD2x64" name="XLXI_334">
            <blockpin signalname="address(63:0)" name="Line1(63:0)" />
            <blockpin name="Blank1(15:0)" />
            <blockpin name="Line2(63:0)" />
            <blockpin name="Blank2(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
            <blockpin signalname="reset" name="Reset" />
            <blockpin signalname="Clk_50Mhz" name="Clk_50MHz" />
        </block>
        <block symbolname="or2" name="XLXI_352">
            <blockpin signalname="XLXN_910" name="I0" />
            <blockpin signalname="XLXN_934" name="I1" />
            <blockpin signalname="XLXN_862" name="O" />
        </block>
        <block symbolname="RotaryEnc" name="XLXI_228">
            <blockpin signalname="ROT_A" name="ROT_A" />
            <blockpin signalname="ROT_B" name="ROT_B" />
            <blockpin signalname="XLXN_934" name="RotL" />
            <blockpin signalname="XLXN_910" name="RotR" />
            <blockpin signalname="dividedClock" name="Clk" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="VGA_VS">
            <wire x2="2080" y1="288" y2="288" x1="1984" />
        </branch>
        <branch name="btn_north">
            <wire x2="1552" y1="512" y2="512" x1="1408" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="1248" y1="960" y2="960" x1="1216" />
        </branch>
        <branch name="Clk_50Mhz">
            <wire x2="1552" y1="896" y2="896" x1="1536" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="2032" y1="352" y2="352" x1="1984" />
            <wire x2="2048" y1="352" y2="352" x1="2032" />
            <wire x2="2032" y1="352" y2="416" x1="2032" />
            <wire x2="2048" y1="416" y2="416" x1="2032" />
            <wire x2="2032" y1="416" y2="480" x1="2032" />
            <wire x2="2048" y1="480" y2="480" x1="2032" />
        </branch>
        <branch name="Clk_50Mhz">
            <wire x2="1552" y1="832" y2="832" x1="1536" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2080" y1="224" y2="224" x1="1984" />
        </branch>
        <instance x="2048" y="384" name="XLXI_24" orien="R0" />
        <instance x="2048" y="448" name="XLXI_25" orien="R0" />
        <instance x="2048" y="512" name="XLXI_26" orien="R0" />
        <branch name="VGA_R">
            <wire x2="2304" y1="352" y2="352" x1="2272" />
        </branch>
        <branch name="VGA_G">
            <wire x2="2304" y1="416" y2="416" x1="2272" />
        </branch>
        <branch name="VGA_B">
            <wire x2="2304" y1="480" y2="480" x1="2272" />
        </branch>
        <branch name="SCK">
            <wire x2="1248" y1="704" y2="704" x1="1216" />
        </branch>
        <branch name="MOSI">
            <wire x2="1248" y1="640" y2="640" x1="1216" />
        </branch>
        <branch name="SS">
            <wire x2="1248" y1="576" y2="576" x1="1216" />
        </branch>
        <branch name="dividedClock">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="736" type="branch" />
            <wire x2="832" y1="736" y2="736" x1="800" />
        </branch>
        <branch name="dividedClock">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="320" type="branch" />
            <wire x2="288" y1="320" y2="320" x1="240" />
        </branch>
        <branch name="dividedClock">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="592" type="branch" />
            <wire x2="288" y1="592" y2="592" x1="240" />
        </branch>
        <branch name="dividedClock">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="912" type="branch" />
            <wire x2="288" y1="912" y2="912" x1="224" />
        </branch>
        <branch name="XLXN_182">
            <wire x2="816" y1="784" y2="784" x1="672" />
            <wire x2="816" y1="784" y2="896" x1="816" />
            <wire x2="832" y1="896" y2="896" x1="816" />
        </branch>
        <branch name="XLXN_277">
            <wire x2="816" y1="464" y2="464" x1="672" />
            <wire x2="816" y1="464" y2="576" x1="816" />
            <wire x2="832" y1="576" y2="576" x1="816" />
        </branch>
        <branch name="btn_south">
            <wire x2="288" y1="784" y2="784" x1="256" />
        </branch>
        <branch name="MISO">
            <wire x2="288" y1="464" y2="464" x1="240" />
        </branch>
        <branch name="btn_west">
            <wire x2="288" y1="192" y2="192" x1="256" />
        </branch>
        <instance x="288" y="720" name="XLXI_199" orien="R0" />
        <instance x="288" y="1040" name="XLXI_198" orien="R0" />
        <instance x="832" y="928" name="XLXI_225" orien="R0">
        </instance>
        <branch name="chars_strobe">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="288" type="branch" />
            <wire x2="1552" y1="288" y2="288" x1="1520" />
        </branch>
        <instance x="1552" y="832" name="XLXI_23" orien="R0">
        </instance>
        <branch name="chars_strobe">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1024" type="branch" />
            <wire x2="1264" y1="1024" y2="1024" x1="1216" />
        </branch>
        <branch name="recv(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="224" type="branch" />
            <wire x2="1552" y1="224" y2="224" x1="1472" />
        </branch>
        <branch name="recv(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1216" type="branch" />
            <wire x2="1248" y1="1216" y2="1216" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1248" y="960" name="led(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1248" y="576" name="SS" orien="R0" />
        <iomarker fontsize="28" x="1248" y="640" name="MOSI" orien="R0" />
        <iomarker fontsize="28" x="1248" y="704" name="SCK" orien="R0" />
        <iomarker fontsize="28" x="1536" y="832" name="Clk_50Mhz" orien="R180" />
        <iomarker fontsize="28" x="1536" y="896" name="Clk_50Mhz" orien="R180" />
        <iomarker fontsize="28" x="2304" y="352" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="2304" y="416" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2304" y="480" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2080" y="288" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2080" y="224" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="1408" y="512" name="btn_north" orien="R180" />
        <iomarker fontsize="28" x="256" y="784" name="btn_south" orien="R180" />
        <iomarker fontsize="28" x="240" y="464" name="MISO" orien="R180" />
        <iomarker fontsize="28" x="256" y="192" name="btn_west" orien="R180" />
        <branch name="XLXN_191">
            <wire x2="784" y1="1984" y2="1984" x1="624" />
        </branch>
        <branch name="Clk_50Mhz">
            <wire x2="736" y1="1648" y2="1648" x1="720" />
            <wire x2="736" y1="1632" y2="1648" x1="736" />
        </branch>
        <branch name="XLXN_305">
            <wire x2="1200" y1="1984" y2="1984" x1="1168" />
            <wire x2="1200" y1="1696" y2="1984" x1="1200" />
            <wire x2="1408" y1="1696" y2="1696" x1="1200" />
        </branch>
        <instance x="736" y="1760" name="XLXI_69" orien="R0" />
        <branch name="btn_east">
            <wire x2="1408" y1="1760" y2="1760" x1="1360" />
        </branch>
        <branch name="XLXN_248">
            <wire x2="1408" y1="1632" y2="1632" x1="1120" />
        </branch>
        <instance x="1408" y="1792" name="XLXI_197" orien="R0" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="1728" type="branch" />
            <wire x2="736" y1="1728" y2="1728" x1="704" />
        </branch>
        <instance x="784" y="2112" name="XLXI_216" orien="R0" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="2080" type="branch" />
            <wire x2="784" y1="2080" y2="2080" x1="768" />
        </branch>
        <instance x="720" y="1632" name="XLXI_218" orien="R270" />
        <branch name="XLXN_518">
            <wire x2="736" y1="1568" y2="1568" x1="720" />
        </branch>
        <instance x="240" y="2112" name="XLXI_214" orien="R0" />
        <branch name="Clk_50Mhz">
            <wire x2="240" y1="1984" y2="1984" x1="224" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="2080" type="branch" />
            <wire x2="240" y1="2080" y2="2080" x1="208" />
        </branch>
        <instance x="224" y="1984" name="XLXI_219" orien="R270" />
        <branch name="XLXN_519">
            <wire x2="240" y1="1920" y2="1920" x1="224" />
        </branch>
        <instance x="768" y="1984" name="XLXI_224" orien="R270" />
        <branch name="XLXN_526">
            <wire x2="784" y1="1920" y2="1920" x1="768" />
        </branch>
        <branch name="dividedClock">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1664" type="branch" />
            <wire x2="1872" y1="1664" y2="1664" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="720" y="1648" name="Clk_50Mhz" orien="R180" />
        <iomarker fontsize="28" x="224" y="1984" name="Clk_50Mhz" orien="R180" />
        <iomarker fontsize="28" x="1360" y="1760" name="btn_east" orien="R180" />
        <branch name="ledka">
            <wire x2="640" y1="2432" y2="2432" x1="608" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="192" y="2656" type="branch" />
            <wire x2="224" y1="2656" y2="2656" x1="192" />
        </branch>
        <branch name="dividedClock">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="2560" type="branch" />
            <wire x2="224" y1="2560" y2="2560" x1="208" />
        </branch>
        <instance x="224" y="2688" name="XLXI_116" orien="R0" />
        <branch name="voltage">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="192" y="2368" type="branch" />
            <wire x2="224" y1="2368" y2="2368" x1="192" />
        </branch>
        <branch name="voltage">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="192" y="2432" type="branch" />
            <wire x2="224" y1="2432" y2="2432" x1="192" />
        </branch>
        <iomarker fontsize="28" x="640" y="2432" name="ledka" orien="R0" />
        <instance x="2640" y="2384" name="XLXI_334" orien="R0">
        </instance>
        <branch name="Clk_50Mhz">
            <wire x2="2624" y1="2560" y2="2560" x1="2592" />
            <wire x2="2640" y1="2416" y2="2416" x1="2624" />
            <wire x2="2624" y1="2416" y2="2560" x1="2624" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="2352" type="branch" />
            <wire x2="2640" y1="2352" y2="2352" x1="2608" />
        </branch>
        <branch name="LCD_E">
            <wire x2="3104" y1="2096" y2="2096" x1="3072" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="3104" y1="2160" y2="2160" x1="3072" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="3104" y1="2224" y2="2224" x1="3072" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="3104" y1="2288" y2="2288" x1="3072" />
        </branch>
        <branch name="SF_CE">
            <wire x2="3104" y1="2352" y2="2352" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3104" y="2096" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="3104" y="2160" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="3104" y="2224" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="3104" y="2288" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3104" y="2352" name="SF_CE" orien="R0" />
        <branch name="dividedClock">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="2512" type="branch" />
            <wire x2="1408" y1="2512" y2="2512" x1="1376" />
        </branch>
        <branch name="ROT_A">
            <wire x2="1408" y1="2384" y2="2384" x1="1376" />
        </branch>
        <branch name="ROT_B">
            <wire x2="1408" y1="2448" y2="2448" x1="1376" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="2512" type="branch" />
            <wire x2="2112" y1="2512" y2="2512" x1="2096" />
        </branch>
        <branch name="XLXN_862">
            <wire x2="2112" y1="2416" y2="2416" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2592" y="2560" name="Clk_50Mhz" orien="R180" />
        <instance x="1408" y="2608" name="XLXI_228" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1376" y="2448" name="ROT_B" orien="R180" />
        <iomarker fontsize="28" x="1376" y="2384" name="ROT_A" orien="R180" />
        <instance x="944" y="112" name="XLXI_131" orien="R0" />
        <branch name="voltage">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="176" type="branch" />
            <wire x2="1008" y1="112" y2="176" x1="1008" />
        </branch>
        <instance x="288" y="448" name="XLXI_200" orien="R0" />
        <branch name="read">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="192" type="branch" />
            <wire x2="704" y1="192" y2="192" x1="672" />
        </branch>
        <branch name="read">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1152" type="branch" />
            <wire x2="832" y1="1152" y2="1152" x1="800" />
        </branch>
        <instance x="1840" y="2512" name="XLXI_352" orien="R0" />
        <instance x="2112" y="2544" name="XLXI_341" orien="R0" />
        <branch name="XLXN_910">
            <wire x2="1824" y1="2448" y2="2448" x1="1792" />
            <wire x2="1840" y1="2448" y2="2448" x1="1824" />
            <wire x2="2112" y1="2224" y2="2224" x1="1824" />
            <wire x2="1824" y1="2224" y2="2448" x1="1824" />
        </branch>
        <branch name="address(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="1856" type="branch" />
            <wire x2="2512" y1="1856" y2="1856" x1="2496" />
            <wire x2="2544" y1="1856" y2="1856" x1="2512" />
            <wire x2="2496" y1="1856" y2="2000" x1="2496" />
            <wire x2="2496" y1="2000" y2="2096" x1="2496" />
        </branch>
        <branch name="address(63:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1865" type="branch" />
            <wire x2="2640" y1="1856" y2="1872" x1="2640" />
            <wire x2="2640" y1="1872" y2="2096" x1="2640" />
        </branch>
        <bustap x2="2544" y1="1856" y2="1856" x1="2640" />
        <branch name="address(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1024" type="branch" />
            <wire x2="832" y1="1024" y2="1024" x1="768" />
            <wire x2="768" y1="1024" y2="1088" x1="768" />
        </branch>
        <bustap x2="672" y1="1088" y2="1088" x1="768" />
        <branch name="address(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1088" type="branch" />
            <wire x2="672" y1="1088" y2="1088" x1="608" />
        </branch>
        <branch name="XLXN_934">
            <wire x2="1840" y1="2384" y2="2384" x1="1792" />
        </branch>
    </sheet>
</drawing>