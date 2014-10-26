<Qucs Schematic 0.0.18>
<Properties>
  <View=0,-60,945,781,0.826446,0,0>
  <Grid=10,10,1>
  <DataSet=Diplexer_HPF.dat>
  <DataDisplay=Diplexer_HPF.dpl>
  <OpenDisplay=1>
  <Script=Diplexer_HPF.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Pac P1 1 50 230 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 50 260 0 0 0 0>
  <GND * 1 160 260 0 0 0 0>
  <GND * 1 300 260 0 0 0 0>
  <GND * 1 440 260 0 0 0 0>
  <GND * 1 580 260 0 0 0 0>
  <GND * 1 720 260 0 0 0 0>
  <Pac P2 1 830 230 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 830 260 0 0 0 0>
  <Eqn Eqn1 1 250 340 -28 15 0 0 "dBS21=dB(S[2,1])" 1 "dBS11=dB(S[1,1])" 1 "yes" 0>
  <C C1 1 230 150 -27 10 0 0 "9.4pF" 1 "" 0 "neutral" 0>
  <C C2 1 370 150 -27 10 0 0 "9.4pF" 1 "" 0 "neutral" 0>
  <C C3 1 510 150 -27 10 0 0 "9.4pF" 1 "" 0 "neutral" 0>
  <C C4 1 650 150 -27 10 0 0 "9.4pF" 1 "" 0 "neutral" 0>
  <L L1 1 160 230 17 -26 0 1 "15.16nH" 1 "" 0>
  <L L5 1 720 230 17 -26 0 1 "15.16nH" 1 "" 0>
  <L L2 1 300 230 17 -26 0 1 "8.63nH" 1 "" 0>
  <L L3 1 440 230 17 -26 0 1 "8.63nH" 1 "" 0>
  <L L4 1 580 230 17 -26 0 1 "8.63nH" 1 "" 0>
  <.SP SP1 1 60 330 0 71 0 0 "log" 1 "28MHz" 1 "2.88GHz" 1 "2013" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <50 150 50 200 "" 0 0 0 "">
  <50 150 160 150 "" 0 0 0 "">
  <160 150 160 200 "" 0 0 0 "">
  <300 150 300 200 "" 0 0 0 "">
  <440 150 440 200 "" 0 0 0 "">
  <580 150 580 200 "" 0 0 0 "">
  <720 150 720 200 "" 0 0 0 "">
  <160 150 200 150 "" 0 0 0 "">
  <260 150 300 150 "" 0 0 0 "">
  <300 150 340 150 "" 0 0 0 "">
  <400 150 440 150 "" 0 0 0 "">
  <440 150 480 150 "" 0 0 0 "">
  <540 150 580 150 "" 0 0 0 "">
  <580 150 620 150 "" 0 0 0 "">
  <680 150 720 150 "" 0 0 0 "">
  <830 150 830 200 "" 0 0 0 "">
  <720 150 830 150 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 390 340 12 #000000 0 "Chebyshev high-pass filter\n288MHz cutoff, PI-type,\nimpedance matching 50 Ohm">
</Paintings>
