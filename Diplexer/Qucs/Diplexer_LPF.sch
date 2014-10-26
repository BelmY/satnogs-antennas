<Qucs Schematic 0.0.18>
<Properties>
  <View=0,0,925,800,0.826446,0,0>
  <Grid=10,10,1>
  <DataSet=Diplexer_LPF.dat>
  <DataDisplay=Diplexer_LPF.dpl>
  <OpenDisplay=1>
  <Script=Diplexer_LPF.m>
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
  <Pac P1 1 30 230 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 30 260 0 0 0 0>
  <GND * 1 140 260 0 0 0 0>
  <GND * 1 280 260 0 0 0 0>
  <GND * 1 420 260 0 0 0 0>
  <GND * 1 560 260 0 0 0 0>
  <GND * 1 700 260 0 0 0 0>
  <Pac P2 1 810 230 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 810 260 0 0 0 0>
  <Eqn Eqn1 1 230 340 -28 15 0 0 "dBS21=dB(S[2,1])" 1 "dBS11=dB(S[1,1])" 1 "yes" 0>
  <C C1 1 140 230 17 -26 0 1 "20pF" 1 "" 0 "neutral" 0>
  <C C2 1 280 230 17 -26 0 1 "30pF" 1 "" 0 "neutral" 0>
  <C C3 1 420 230 17 -26 0 1 "30pF" 1 "" 0 "neutral" 0>
  <C C4 1 560 230 17 -26 0 1 "30pF" 1 "" 0 "neutral" 0>
  <C C5 1 700 230 17 -26 0 1 "20pF" 1 "" 0 "neutral" 0>
  <.SP SP1 1 40 330 0 71 0 0 "log" 1 "28MHz" 1 "2.88GHz" 1 "2013" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <L L1 1 210 150 -26 10 0 0 "36.61nH" 1 "" 0>
  <L L2 1 350 150 -26 10 0 0 "36.61nH" 1 "" 0>
  <L L3 1 490 150 -26 10 0 0 "36.61nH" 1 "" 0>
  <L L4 1 630 150 -26 10 0 0 "36.61nH" 1 "" 0>
</Components>
<Wires>
  <30 150 30 200 "" 0 0 0 "">
  <30 150 140 150 "" 0 0 0 "">
  <140 150 140 200 "" 0 0 0 "">
  <420 150 420 200 "" 0 0 0 "">
  <560 150 560 200 "" 0 0 0 "">
  <700 150 700 200 "" 0 0 0 "">
  <140 150 180 150 "" 0 0 0 "">
  <240 150 280 150 "" 0 0 0 "">
  <280 150 320 150 "" 0 0 0 "">
  <380 150 420 150 "" 0 0 0 "">
  <420 150 460 150 "" 0 0 0 "">
  <520 150 560 150 "" 0 0 0 "">
  <560 150 600 150 "" 0 0 0 "">
  <660 150 700 150 "" 0 0 0 "">
  <810 150 810 200 "" 0 0 0 "">
  <700 150 810 150 "" 0 0 0 "">
  <280 150 280 200 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 370 340 12 #000000 0 "Chebyshev low-pass filter\n288MHz cutoff, PI-type,\nimpedance matching 50 Ohm">
</Paintings>
