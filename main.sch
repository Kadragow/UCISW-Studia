<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="Reset" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_17" />
        <signal name="SDC_MISO" />
        <signal name="SDC_MOSI" />
        <signal name="SDC_SCK" />
        <signal name="SDC_SS" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23(15:0)" />
        <signal name="XLXN_24(15:0)" />
        <signal name="OUT_1" />
        <signal name="OUT_2" />
        <signal name="OUT_3" />
        <signal name="OUT_4(15:0)" />
        <signal name="OUT_5(2:0)" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31(3:0)" />
        <signal name="XLXN_32(3:0)" />
        <signal name="XLXN_33(11:0)" />
        <signal name="FName(7:0)" />
        <signal name="Start" />
        <signal name="Abort" />
        <signal name="SPI_MISO" />
        <signal name="DAC_CLR" />
        <signal name="DAC_CS" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_SCK" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="FPGA_INIT_B" />
        <signal name="SF_CE0" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="SDC_MISO" />
        <port polarity="Output" name="SDC_MOSI" />
        <port polarity="Output" name="SDC_SCK" />
        <port polarity="Output" name="SDC_SS" />
        <port polarity="Output" name="OUT_1" />
        <port polarity="Output" name="OUT_2" />
        <port polarity="Output" name="OUT_3" />
        <port polarity="Output" name="OUT_4(15:0)" />
        <port polarity="Output" name="OUT_5(2:0)" />
        <port polarity="Input" name="FName(7:0)" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="Abort" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Output" name="SF_CE0" />
        <blockdef name="SendSample">
            <timestamp>2020-5-8T11:42:58</timestamp>
            <rect width="320" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="448" y1="-320" y2="-320" x1="384" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-140" height="24" />
            <line x2="448" y1="-128" y2="-128" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="WAVreader">
            <timestamp>2011-2-18T13:15:10</timestamp>
            <rect width="304" x="64" y="-768" height="888" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="368" y1="-736" y2="-736" x1="432" />
            <line x2="432" y1="-448" y2="-448" x1="368" />
            <rect width="64" x="368" y="-396" height="24" />
            <line x2="432" y1="-384" y2="-384" x1="368" />
            <rect width="64" x="368" y="-332" height="24" />
            <line x2="432" y1="-320" y2="-320" x1="368" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <rect width="64" x="368" y="84" height="24" />
            <line x2="432" y1="96" y2="96" x1="368" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
        </blockdef>
        <blockdef name="DACWrite">
            <timestamp>2009-10-4T15:3:32</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <block symbolname="SendSample" name="XLXI_1">
            <blockpin signalname="XLXN_22" name="SampRdy" />
            <blockpin signalname="XLXN_13" name="SRate_Tick" />
            <blockpin signalname="XLXN_14" name="DWr_Busy" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_23(15:0)" name="SampL(15:0)" />
            <blockpin signalname="XLXN_24(15:0)" name="SampR(15:0)" />
            <blockpin signalname="XLXN_30" name="DWr_Start" />
            <blockpin signalname="XLXN_17" name="Samp_Pop" />
            <blockpin signalname="XLXN_31(3:0)" name="DWr_Cmd(3:0)" />
            <blockpin signalname="XLXN_32(3:0)" name="DWr_Adr(3:0)" />
            <blockpin signalname="XLXN_33(11:0)" name="DWr_Data(11:0)" />
        </block>
        <block symbolname="WAVreader" name="XLXI_2">
            <blockpin signalname="FName(7:0)" name="FName(7:0)" />
            <blockpin signalname="Start" name="Start" />
            <blockpin signalname="Abort" name="Abort" />
            <blockpin signalname="SDC_MOSI" name="SDC_MOSI" />
            <blockpin signalname="SDC_SCK" name="SDC_SCK" />
            <blockpin signalname="SDC_SS" name="SDC_SS" />
            <blockpin signalname="SDC_MISO" name="SDC_MISO" />
            <blockpin signalname="XLXN_22" name="DO_Rdy" />
            <blockpin signalname="XLXN_23(15:0)" name="DO_L(15:0)" />
            <blockpin signalname="XLXN_24(15:0)" name="DO_R(15:0)" />
            <blockpin signalname="XLXN_17" name="DO_Pop" />
            <blockpin signalname="OUT_1" name="Busy" />
            <blockpin signalname="OUT_2" name="FmtMnS" />
            <blockpin signalname="OUT_3" name="Fmt8n16" />
            <blockpin signalname="OUT_4(15:0)" name="FmtSRate(15:0)" />
            <blockpin signalname="XLXN_13" name="SRate_Tick" />
            <blockpin signalname="OUT_5(2:0)" name="Error(2:0)" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="DACWrite" name="XLXI_3">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_30" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_31(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_32(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_33(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin signalname="XLXN_14" name="Busy" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SDC_MISO">
            <wire x2="1760" y1="896" y2="896" x1="1744" />
            <wire x2="3296" y1="896" y2="896" x1="1760" />
        </branch>
        <branch name="SDC_MOSI">
            <wire x2="1760" y1="960" y2="960" x1="1744" />
            <wire x2="3296" y1="960" y2="960" x1="1760" />
        </branch>
        <branch name="XLXN_24(15:0)">
            <wire x2="1856" y1="1312" y2="1312" x1="1744" />
            <wire x2="1856" y1="1312" y2="1552" x1="1856" />
            <wire x2="2032" y1="1552" y2="1552" x1="1856" />
        </branch>
        <branch name="OUT_1">
            <wire x2="2000" y1="1408" y2="1408" x1="1744" />
            <wire x2="2000" y1="1408" y2="1776" x1="2000" />
            <wire x2="2320" y1="1776" y2="1776" x1="2000" />
        </branch>
        <branch name="OUT_2">
            <wire x2="1984" y1="1472" y2="1472" x1="1744" />
            <wire x2="1984" y1="1472" y2="1824" x1="1984" />
            <wire x2="2320" y1="1824" y2="1824" x1="1984" />
        </branch>
        <branch name="OUT_3">
            <wire x2="1952" y1="1536" y2="1536" x1="1744" />
            <wire x2="1952" y1="1536" y2="1888" x1="1952" />
            <wire x2="2320" y1="1888" y2="1888" x1="1952" />
        </branch>
        <branch name="OUT_4(15:0)">
            <wire x2="1936" y1="1600" y2="1600" x1="1744" />
            <wire x2="1936" y1="1600" y2="1952" x1="1936" />
            <wire x2="2320" y1="1952" y2="1952" x1="1936" />
        </branch>
        <branch name="OUT_5(2:0)">
            <wire x2="1920" y1="1728" y2="1728" x1="1744" />
            <wire x2="1920" y1="1728" y2="2016" x1="1920" />
            <wire x2="2320" y1="2016" y2="2016" x1="1920" />
        </branch>
        <branch name="XLXN_31(3:0)">
            <wire x2="2624" y1="1360" y2="1360" x1="2480" />
        </branch>
        <branch name="XLXN_32(3:0)">
            <wire x2="2608" y1="1456" y2="1456" x1="2480" />
            <wire x2="2624" y1="1424" y2="1424" x1="2608" />
            <wire x2="2608" y1="1424" y2="1456" x1="2608" />
        </branch>
        <branch name="XLXN_33(11:0)">
            <wire x2="2608" y1="1552" y2="1552" x1="2480" />
            <wire x2="2624" y1="1488" y2="1488" x1="2608" />
            <wire x2="2608" y1="1488" y2="1552" x1="2608" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="3280" y1="1360" y2="1360" x1="3072" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="3280" y1="1552" y2="1552" x1="3072" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="3280" y1="1488" y2="1488" x1="3072" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="3280" y1="1296" y2="1296" x1="3072" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="3280" y1="1424" y2="1424" x1="3072" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="3280" y1="1616" y2="1616" x1="3072" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="3280" y1="1680" y2="1680" x1="3072" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="3280" y1="1744" y2="1744" x1="3072" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="3280" y1="1872" y2="1872" x1="3072" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="3280" y1="1808" y2="1808" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3280" y="1360" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1552" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1488" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1296" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1424" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1616" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1680" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1744" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1872" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1808" name="SF_CE0" orien="R0" />
        <instance x="2624" y="1840" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_30">
            <wire x2="2608" y1="1168" y2="1168" x1="2480" />
            <wire x2="2608" y1="1168" y2="1296" x1="2608" />
            <wire x2="2624" y1="1296" y2="1296" x1="2608" />
        </branch>
        <instance x="2032" y="1584" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_14">
            <wire x2="1968" y1="1072" y2="1296" x1="1968" />
            <wire x2="2032" y1="1296" y2="1296" x1="1968" />
            <wire x2="3088" y1="1072" y2="1072" x1="1968" />
            <wire x2="3088" y1="1072" y2="1936" x1="3088" />
            <wire x2="3088" y1="1936" y2="1936" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="2320" y="1776" name="OUT_1" orien="R0" />
        <iomarker fontsize="28" x="2320" y="1824" name="OUT_2" orien="R0" />
        <iomarker fontsize="28" x="2320" y="1888" name="OUT_3" orien="R0" />
        <iomarker fontsize="28" x="2320" y="1952" name="OUT_4(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2320" y="2016" name="OUT_5(2:0)" orien="R0" />
        <branch name="XLXN_23(15:0)">
            <wire x2="1872" y1="1248" y2="1248" x1="1744" />
            <wire x2="1872" y1="1248" y2="1488" x1="1872" />
            <wire x2="2032" y1="1488" y2="1488" x1="1872" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2016" y1="1184" y2="1184" x1="1744" />
            <wire x2="2032" y1="1168" y2="1168" x1="2016" />
            <wire x2="2016" y1="1168" y2="1184" x1="2016" />
        </branch>
        <branch name="SDC_SS">
            <wire x2="1760" y1="1088" y2="1088" x1="1744" />
            <wire x2="3312" y1="1088" y2="1088" x1="1760" />
        </branch>
        <branch name="SDC_SCK">
            <wire x2="1760" y1="1024" y2="1024" x1="1744" />
            <wire x2="3296" y1="1024" y2="1024" x1="1760" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="1248" y1="2096" y2="2096" x1="192" />
            <wire x2="1968" y1="2096" y2="2096" x1="1248" />
            <wire x2="2576" y1="2096" y2="2096" x1="1968" />
            <wire x2="1312" y1="1664" y2="1664" x1="1248" />
            <wire x2="1248" y1="1664" y2="1728" x1="1248" />
            <wire x2="1312" y1="1728" y2="1728" x1="1248" />
            <wire x2="1248" y1="1728" y2="2096" x1="1248" />
            <wire x2="2032" y1="1424" y2="1424" x1="1968" />
            <wire x2="1968" y1="1424" y2="2096" x1="1968" />
            <wire x2="2624" y1="1936" y2="1936" x1="2576" />
            <wire x2="2576" y1="1936" y2="2000" x1="2576" />
            <wire x2="2624" y1="2000" y2="2000" x1="2576" />
            <wire x2="2576" y1="2000" y2="2096" x1="2576" />
        </branch>
        <branch name="Reset">
            <wire x2="1312" y1="2160" y2="2160" x1="128" />
            <wire x2="2016" y1="2160" y2="2160" x1="1312" />
            <wire x2="2624" y1="2160" y2="2160" x1="2016" />
            <wire x2="1312" y1="1600" y2="2160" x1="1312" />
            <wire x2="2032" y1="1360" y2="1360" x1="2016" />
            <wire x2="2016" y1="1360" y2="2160" x1="2016" />
            <wire x2="2624" y1="1872" y2="2160" x1="2624" />
        </branch>
        <branch name="Abort">
            <wire x2="1296" y1="1024" y2="1024" x1="176" />
            <wire x2="1312" y1="1024" y2="1024" x1="1296" />
        </branch>
        <branch name="Start">
            <wire x2="1296" y1="960" y2="960" x1="176" />
            <wire x2="1312" y1="960" y2="960" x1="1296" />
        </branch>
        <branch name="FName(7:0)">
            <wire x2="1296" y1="896" y2="896" x1="240" />
            <wire x2="1312" y1="896" y2="896" x1="1296" />
        </branch>
        <instance x="1312" y="1632" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_17">
            <wire x2="1248" y1="784" y2="1184" x1="1248" />
            <wire x2="1312" y1="1184" y2="1184" x1="1248" />
            <wire x2="2496" y1="784" y2="784" x1="1248" />
            <wire x2="2496" y1="784" y2="1264" x1="2496" />
            <wire x2="2496" y1="1264" y2="1264" x1="2480" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1840" y1="1664" y2="1664" x1="1744" />
            <wire x2="1840" y1="1232" y2="1664" x1="1840" />
            <wire x2="2032" y1="1232" y2="1232" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="3312" y="1088" name="SDC_SS" orien="R0" />
        <iomarker fontsize="28" x="240" y="896" name="FName(7:0)" orien="R180" />
        <iomarker fontsize="28" x="176" y="960" name="Start" orien="R180" />
        <iomarker fontsize="28" x="176" y="1024" name="Abort" orien="R180" />
        <iomarker fontsize="28" x="3296" y="896" name="SDC_MISO" orien="R0" />
        <iomarker fontsize="28" x="3296" y="960" name="SDC_MOSI" orien="R0" />
        <iomarker fontsize="28" x="3296" y="1024" name="SDC_SCK" orien="R0" />
        <iomarker fontsize="28" x="128" y="2160" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="192" y="2096" name="Clk_50MHz" orien="R180" />
    </sheet>
</drawing>