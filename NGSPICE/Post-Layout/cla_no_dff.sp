.include TSMC_180nm.txt   
.include cla_subckt.sub  
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

Vdd vdd gnd 'SUPPLY'

va0 a0 gnd pulse(0 1.8 5n 0 0 5n 10n)
va1 a1 gnd pulse(0 1.8 5n 0 0 5n 10n)
va2 a2 gnd pulse(0 1.8 5n 0 0 5n 10n)
va3 a3 gnd pulse(0 1.8 5n 0 0 5n 20n)

vb0 b0 gnd pulse(0 1.8 5n 0 0 5n 10n)
vb1 b1 gnd pulse(0 1.8 5n 0 0 5n 10n)
vb2 b2 gnd pulse(0 1.8 5n 0 0 5n 10n)
vb3 b3 gnd pulse(0 1.8 5n 0 0 5n 20n)

VC0 C0 gnd 0

.option scale=0.09u

M1000 12c4 a_n1541_n2508# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=12500 ps=6040
M1001 9c4 a_n2007_n2271# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=5905 ps=3312
M1002 8c4 a_n2142_n2263# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1003 12c4 a_n1541_n2508# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1004 a_n2444_n3019# p1 a_n2432_n3093# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1005 vdd g2 a_n2007_n2271# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1006 g3 a_n3143_n2366# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1007 a_n1375_n2584# g3 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1008 a_n1375_n2584# 12c4 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 vdd b2 a_n3128_n3061# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1010 p0 a_n3081_n4580# vdd vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1011 p0 a_n3081_n4580# gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1012 a_n3081_n4580# a0 b0 Gnd CMOSN w=8 l=2
+  ad=90 pd=56 as=40 ps=26
M1013 a_n3059_n3818# a_n3143_n3795# a_n3128_n3829# Gnd CMOSN w=10 l=2
+  ad=90 pd=56 as=50 ps=30
M1014 a_1849_284# a_1787_392# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1015 p3 a_n3065_n2199# vdd vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1016 a_n2007_n2271# p3 a_n1995_n2345# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1017 9c4 a_n2007_n2271# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1018 a_n1699_n2452# 8c4 a_n1691_n2417# vdd CMOSP w=19 l=2
+  ad=95 pd=48 as=195 ps=98
M1019 2c2 a_n2745_n4003# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1020 p3 a_n3065_n2199# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1021 g0 a_n3153_n4753# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1022 a_n2599_n4116# 2c2 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1023 2c2 a_n2745_n4003# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1024 vdd a_1797_286# a_1787_392# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1025 vdd a_2117_268# a_2158_263# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1026 1c3 a_n2748_n3019# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1027 a_n1367_n2549# 12c4 vdd vdd CMOSP w=20 l=2
+  ad=195 pd=98 as=0 ps=0
M1028 s1 c1 a_bar Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=500 ps=300
M1029 a_n2591_n4081# 2c2 vdd vdd CMOSP w=20 l=2
+  ad=195 pd=98 as=0 ps=0
M1030 vdd a1 a_n3143_n3795# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1031 a_2402_162# a_2395_186# gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1032 a_n2913_n2279# 1c3 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1033 a_n2895_n3998# p1 vdd vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1034 a_n1861_n2396# 6c4 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1035 3c3 a_n2444_n3019# gnd Gnd CMOSN w=11 l=2
+  ad=110 pd=64 as=0 ps=0
M1036 a_n1541_n2508# 11c4 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1037 a_n2884_n3867# a_n2922_n4681# gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1038 vdd 2c4 a_n2780_n2243# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1039 p1 a_n3059_n3818# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1040 a_n1533_n2473# 11c4 vdd vdd CMOSP w=20 l=2
+  ad=195 pd=98 as=0 ps=0
M1041 5c3 a_n2130_n3236# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1042 a_n2851_n4846# g0 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1043 0c2 a_n2896_n3793# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1044 vdd 1c3 a_n2925_n2205# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1045 vdd 1c3 a_n2584_n3017# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1046 a_2410_197# a_2410_236# vdd vdd CMOSP w=20 l=2
+  ad=195 pd=98 as=0 ps=0
M1047 3c3 a_n2780_n2243# vdd vdd CMOSP w=40 l=2
+  ad=400 pd=180 as=0 ps=0
M1048 a_n2768_n2317# 2c4 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1049 11c4 a_n1699_n2452# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1050 c3 a_bar s3 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1051 11c4 a_n1699_n2452# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1052 a_n3081_n4580# a_n3165_n4557# a_n3150_n4591# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1053 a_n3144_n4204# b1 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1054 a_n2737_n3968# 0c2 vdd vdd CMOSP w=20 l=2
+  ad=195 pd=98 as=0 ps=0
M1055 a_n2572_n3091# 1c3 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1056 a_n2905_n3094# p0 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1057 2c4 a_n2925_n2205# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1058 a_n1861_n2396# 6c4 a_n1853_n2361# vdd CMOSP w=19 l=2
+  ad=95 pd=48 as=195 ps=98
M1059 vdd 0c3 a_n2748_n3019# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1060 2c3 a_n2584_n3017# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1061 a_n2441_n2257# p3 vdd vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1062 a_n2584_n3017# p2 a_n2572_n3091# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1063 0c3 a_n2917_n3020# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1064 a_n2851_n4846# g0 a_n2843_n4811# vdd CMOSP w=19 l=2
+  ad=95 pd=48 as=195 ps=98
M1065 a_n2917_n3020# c0 a_n2905_n3094# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1066 a_n3153_n4753# a0 a_n3141_n4827# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1067 a_bar p1 a_n2609_n4779# w_n2615_n4785# CMOSP w=20 l=2
+  ad=500 pd=250 as=100 ps=50
M1068 6c4 a_n2441_n2257# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1069 a_n1717_n3513# g2 a_n1709_n3478# vdd CMOSP w=19 l=2
+  ad=95 pd=48 as=195 ps=98
M1070 vdd a_2117_319# a_2143_297# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1071 a_n2736_n3093# 0c3 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1072 a_n3156_n4130# a1 a_n3144_n4204# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1073 a_2263_282# a_2227_274# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1074 vdd 3c3 a_n2293_n3032# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1075 vdd 2c3 a_n2130_n3236# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1076 vdd a0 a_n3165_n4557# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1077 vdd b1 a_n3128_n3829# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1078 c3 p3 s3 w_n1505_n3505# CMOSP w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1079 vdd b2 a_n3150_n3281# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1080 a_n2599_n4116# g1 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1081 a_n2883_n4072# g0 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1082 vdd a3 a_n3149_n2176# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1083 a_n2748_n3019# p1 a_n2736_n3093# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1084 1c2 a_n2895_n3998# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1085 gnd a2 a_n3166_n3010# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1086 1c3 a_n2748_n3019# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1087 a_n2895_n3998# p1 a_n2883_n4072# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1088 a_n3153_n4753# a0 vdd vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1089 g1 a_n3156_n4130# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1090 gnd a_2117_268# a_2120_263# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1091 a_n2748_n3019# p1 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1092 a_n2118_n3310# 2c3 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1093 a_n2281_n3106# 3c3 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1094 vdd a_n2922_n4681# a_n2896_n3793# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1095 a_n2925_n2205# p2 a_n2913_n2279# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1096 3c3 a_n2444_n3019# vdd vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1097 a_n1699_n2452# 10c4 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1098 g0 a_n3153_n4753# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1099 a_2466_172# a_2402_162# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1100 a_n2575_n2333# 3c3 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1101 a_n2444_n3019# p1 vdd vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1102 g2 a_n3150_n3281# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1103 0c2 a_n2896_n3793# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1104 a_n2896_n3793# p1 a_n2884_n3867# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1105 5c4 a_n2587_n2259# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1106 a_n1864_n3353# 5c3 a_n1856_n3318# vdd CMOSP w=19 l=2
+  ad=95 pd=48 as=195 ps=98
M1107 a_2402_162# a_2410_236# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1108 c2 a_bar s2 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1109 5c3 a_n2130_n3236# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1110 vdd b0 a_n3150_n4591# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1111 vdd c0 a_n2984_n4573# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1112 a_bar a gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1113 g2 a_n3150_n3281# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1114 a_bar p3 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1115 a_1787_392# a_1780_370# vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1116 a_n2587_n2259# p2 a_n2575_n2333# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1117 a_n2007_n2271# p3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1118 a_n1541_n2508# 9c4 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1119 a_n2599_n4116# g1 a_n2591_n4081# vdd CMOSP w=19 l=2
+  ad=95 pd=48 as=0 ps=0
M1120 a_n2896_n3793# p1 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1121 2c4 a_n2925_n2205# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1122 gnd b2 a_n3166_n3061# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1123 2c3 a_n2584_n3017# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1124 out b a_bar Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1125 vdd b1 a_n3156_n4130# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1126 a_n2925_n2205# p2 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1127 0c3 a_n2917_n3020# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1128 s3 c3 a_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1129 vdd p0 a_n2917_n3020# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1130 p0 a_bar s0 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1131 a_n2780_n2243# p3 a_n2768_n2317# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1132 a_n2917_n3020# c0 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1133 vdd b3 a_n3134_n2210# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1134 a_n1541_n2508# 9c4 a_n1533_n2473# vdd CMOSP w=19 l=2
+  ad=95 pd=48 as=0 ps=0
M1135 c3 a_n1717_n3513# vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1136 a_n2922_n4681# a_n2984_n4573# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1137 vdd 7c4 a_n2142_n2263# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1138 a_n1998_n3143# 2c3 a_n1990_n3108# vdd CMOSP w=19 l=2
+  ad=95 pd=48 as=195 ps=98
M1139 vdd b3 a_n3143_n2366# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1140 gnd a1 a_n3166_n3778# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1141 7c3 a_n1864_n3353# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1142 gnd a_2117_319# a_2120_314# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1143 a_n2972_n4647# c0 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1144 7c3 a_n1864_n3353# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1145 1c2 a_n2895_n3998# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1146 c2 p2 s2 w_n2423_n4116# CMOSP w=20 l=2
+  ad=200 pd=100 as=200 ps=100
M1147 a_bar p2 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1148 c3 a_n1717_n3513# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1149 a_n2780_n2243# p3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1150 a_n2130_n2337# 7c4 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1151 g1 a_n3156_n4130# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1152 a_n3131_n2440# b3 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1153 s3 c3 p3 w_n1505_n3505# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1154 a_n1699_n2452# 8c4 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1155 4c3 a_n2293_n3032# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1156 a_n3156_n4130# a1 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1157 a_n2584_n3017# p2 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1158 s2 c2 a_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1159 a_n1691_n2417# 10c4 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1160 p2 a_n3059_n3050# vdd vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1161 out b a w_702_n4216# CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1162 a_n1717_n3513# g2 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1163 a_n3059_n3050# a2 b2 Gnd CMOSN w=8 l=2
+  ad=90 pd=56 as=40 ps=26
M1164 p2 a_n3059_n3050# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1165 a_n3138_n3355# b2 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1166 p0 c0 s0 w_n2943_n4956# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1167 6c3 a_n1998_n3143# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1168 a_n1709_n3478# 7c3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1169 vdd g0 a_n2895_n3998# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1170 vdd 3c3 a_n2587_n2259# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1171 a_n2293_n3032# p2 a_n2281_n3106# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1172 4c3 a_n2293_n3032# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1173 6c3 a_n1998_n3143# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1174 a_n2130_n3236# 4c3 a_n2118_n3310# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1175 a_bar a vdd w_702_n4161# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1176 a_bar p3 vdd w_n1505_n3450# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1177 a_n3150_n3281# a2 a_n3138_n3355# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1178 5c4 a_n2587_n2259# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1179 a_n1375_n2584# g3 a_n1367_n2549# vdd CMOSP w=19 l=2
+  ad=95 pd=48 as=0 ps=0
M1180 10c4 a_n1861_n2396# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1181 8c4 a_n2142_n2263# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1182 10c4 a_n1861_n2396# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1183 g3 a_n3143_n2366# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1184 a_n2745_n4003# 0c2 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1185 a_n2745_n4003# 1c2 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1186 a_n1864_n3353# 5c3 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1187 a_n1864_n3353# 6c3 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1188 c1 a_n2851_n4846# vdd vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1189 gnd b1 a_n3166_n3829# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1190 a_2402_162# a_2395_186# a_2410_197# vdd CMOSP w=19 l=2
+  ad=95 pd=48 as=0 ps=0
M1191 a_n3065_n2199# a3 b3 Gnd CMOSN w=8 l=2
+  ad=90 pd=56 as=40 ps=26
M1192 c1 a_n2851_n4846# gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1193 gnd a0 a_n3188_n4540# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1194 a_2227_274# a_2143_297# a_2158_263# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1195 a_n2293_n3032# p2 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1196 a_n2130_n3236# 4c3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1197 a_n1856_n3318# 6c3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1198 a_n2285_n2335# p2 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1199 a_n1717_n3513# 7c3 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1200 gnd a3 a_n3172_n2159# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1201 a_n3150_n3281# a2 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1202 7c4 a_n2297_n2261# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1203 s2 c2 p2 w_n2423_n4116# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1204 a_n2587_n2259# p2 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1205 vdd 5c4 a_n2441_n2257# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1206 a_n1861_n2396# 3c3 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1207 vdd p2 a_n2297_n2261# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1208 b a_bar out Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1209 a_n3059_n3050# a_n3143_n3027# a_n3128_n3061# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1210 a_n2851_n4846# a_n2922_n4681# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1211 a_bar p2 vdd w_n2423_n4061# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1212 s0 p0 a_bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1213 c1 p1 s1 w_n2615_n4840# CMOSP w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1214 a_bar c0 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1215 a_n2843_n4811# a_n2922_n4681# vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1216 a_n2922_n4681# a_n2984_n4573# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1217 a_n2984_n4573# p0 a_n2972_n4647# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1218 a_1787_392# a_1780_370# a_1799_318# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1219 a_n2745_n4003# 1c2 a_n2737_n3968# vdd CMOSP w=19 l=2
+  ad=95 pd=48 as=0 ps=0
M1220 a_n2297_n2261# g1 a_n2285_n2335# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1221 7c4 a_n2297_n2261# vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1222 c4 a_n1375_n2584# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1223 a_n1998_n3143# 2c3 gnd Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1224 a_n1998_n3143# 4c3 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1225 c2 a_n2599_n4116# vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1226 p1 a_n3059_n3818# vdd vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1227 a_1799_318# a_1797_286# gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1228 a_n2429_n2331# 5c4 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1229 c4 a_n1375_n2584# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1230 a_n3059_n3818# a1 b1 Gnd CMOSN w=8 l=2
+  ad=0 pd=0 as=40 ps=26
M1231 a_n1853_n2361# 3c3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1232 a_n1990_n3108# 4c3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1233 a_bar p1 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1234 3c3 a_n2780_n2243# gnd Gnd CMOSN w=11 l=2
+  ad=0 pd=0 as=0 ps=0
M1235 a_2263_282# a_2227_274# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1236 a_n3065_n2199# a_n3149_n2176# a_n3134_n2210# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1237 vdd a2 a_n3143_n3027# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1238 vdd b0 a_n3153_n4753# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1239 gnd b0 a_n3188_n4591# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1240 c1 a_bar s1 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1241 a_n2984_n4573# p0 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1242 c2 a_n2599_n4116# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1243 a_n2297_n2261# g1 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1244 a_n2142_n2263# p3 a_n2130_n2337# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1245 a_n3143_n2366# a3 a_n3131_n2440# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1246 a_n2441_n2257# p3 a_n2429_n2331# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1247 vdd g0 a_n2444_n3019# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1248 b a out w_702_n4216# CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1249 a_2227_274# a_2117_319# a_2117_268# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1250 a_n3141_n4827# b0 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1251 a_1849_284# a_1787_392# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1252 gnd b3 a_n3172_n2210# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1253 s0 p0 c0 w_n2943_n4956# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1254 a_2466_172# a_2402_162# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1255 6c4 a_n2441_n2257# gnd Gnd CMOSN w=11 l=2
+  ad=55 pd=32 as=0 ps=0
M1256 a_n2142_n2263# p3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1257 a_n3143_n2366# a3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1258 a_n2432_n3093# g0 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1259 a_bar c0 vdd w_n2943_n4901# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1260 a_n1995_n2345# g2 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1261 s1 c1 p1 w_n2615_n4840# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
C0 a_n2293_n3032# vdd 0.59fF
C1 a_2143_297# a_2117_268# 0.13fF
C2 a_n2575_n2333# gnd 0.23fF
C3 a_n3143_n3027# b2 0.13fF
C4 g0 2c3 0.12fF
C5 a2 vdd 0.17fF
C6 a_2410_197# a_2402_162# 0.20fF
C7 p2 gnd 0.32fF
C8 5c4 a_n2441_n2257# 0.24fF
C9 g1 6c4 0.16fF
C10 a_n2142_n2263# vdd 0.59fF
C11 2c2 gnd 0.10fF
C12 w_n2423_n4116# p2 0.09fF
C13 6c4 8c4 0.11fF
C14 a_n1856_n3318# vdd 0.36fF
C15 a_n2913_n2279# gnd 0.23fF
C16 a_n3143_n3795# b1 0.13fF
C17 a_n2429_n2331# gnd 0.23fF
C18 a_n2297_n2261# a_n2285_n2335# 0.23fF
C19 a_n3081_n4580# b0 0.15fF
C20 w_n2943_n4956# s0 0.05fF
C21 a_n1699_n2452# gnd 0.34fF
C22 a_n2972_n4647# gnd 0.23fF
C23 p2 6c4 0.11fF
C24 a_n2780_n2243# vdd 0.59fF
C25 p0 a_n2922_n4681# 0.27fF
C26 a_n3128_n3829# vdd 0.35fF
C27 p2 c2 0.01fF
C28 10c4 a_n1691_n2417# 0.20fF
C29 g2 p1 0.11fF
C30 a_n2748_n3019# vdd 0.59fF
C31 6c4 vdd 0.67fF
C32 a1 gnd 0.08fF
C33 c2 vdd 0.26fF
C34 a_1797_286# vdd 0.08fF
C35 a_n1367_n2549# a_n1375_n2584# 0.20fF
C36 11c4 vdd 0.58fF
C37 a0 vdd 0.17fF
C38 a_n2843_n4811# a_n2851_n4846# 0.20fF
C39 w_n2615_n4785# a_bar 0.02fF
C40 a_2227_274# vdd 0.09fF
C41 a_2120_314# gnd 0.13fF
C42 p0 p1 0.55fF
C43 a_2395_186# vdd 0.16fF
C44 w_n2943_n4956# c0 0.09fF
C45 a_n1990_n3108# vdd 0.36fF
C46 a_n3144_n4204# gnd 0.23fF
C47 w_n2615_n4840# s1 0.08fF
C48 a_n1709_n3478# vdd 0.36fF
C49 w_n1505_n3450# p3 0.07fF
C50 3c3 a_n1853_n2361# 0.20fF
C51 a_n2130_n2337# gnd 0.23fF
C52 a_n2142_n2263# a_n2130_n2337# 0.23fF
C53 p2 g1 0.22fF
C54 p3 3c3 0.46fF
C55 12c4 gnd 0.10fF
C56 g1 vdd 0.75fF
C57 g1 2c2 0.11fF
C58 a_n2737_n3968# vdd 0.36fF
C59 a_n2444_n3019# vdd 0.59fF
C60 1c2 a_n2895_n3998# 0.07fF
C61 a_n1699_n2452# 11c4 0.07fF
C62 8c4 vdd 0.67fF
C63 c0 g0 0.11fF
C64 a_n3081_n4580# a_n3150_n4591# 0.10fF
C65 a_n2584_n3017# 2c3 0.07fF
C66 a_n2130_n3236# vdd 0.59fF
C67 5c4 a_n2587_n2259# 0.07fF
C68 2c4 a_n2768_n2317# 0.19fF
C69 b2 a_n3150_n3281# 0.24fF
C70 a_n2441_n2257# 6c4 0.07fF
C71 w_702_n4216# out 0.05fF
C72 w_n2423_n4061# p2 0.07fF
C73 p2 vdd 1.04fF
C74 w_n2423_n4061# vdd 0.02fF
C75 p3 g3 0.11fF
C76 s1 a_bar 0.02fF
C77 c1 gnd 0.10fF
C78 2c2 vdd 0.58fF
C79 w_n2615_n4785# a_n2609_n4779# 0.02fF
C80 a_n2922_n4681# gnd 0.20fF
C81 a_n3165_n4557# b0 0.13fF
C82 a_n3188_n4591# gnd 0.13fF
C83 p3 a_n2007_n2271# 0.36fF
C84 a_n2896_n3793# vdd 0.59fF
C85 p0 s0 0.26fF
C86 p1 gnd 0.27fF
C87 a_n2917_n3020# vdd 0.59fF
C88 b2 a_n3138_n3355# 0.19fF
C89 a_n2599_n4116# gnd 0.34fF
C90 w_n2943_n4956# a_bar 0.35fF
C91 p0 a_n2984_n4573# 0.36fF
C92 a_n1699_n2452# vdd 0.15fF
C93 w_702_n4216# a_bar 0.35fF
C94 g2 c0 0.12fF
C95 w_n2943_n4901# c0 0.07fF
C96 a1 vdd 0.17fF
C97 0c3 a_n2736_n3093# 0.19fF
C98 3c3 a_n2281_n3106# 0.19fF
C99 2c3 gnd 0.20fF
C100 a_1849_284# gnd 0.14fF
C101 c0 p0 0.39fF
C102 a_2410_236# vdd 0.32fF
C103 a_n2285_n2335# gnd 0.23fF
C104 g2 a_n2007_n2271# 0.24fF
C105 a3 gnd 0.08fF
C106 a a_bar 0.06fF
C107 a_n1541_n2508# gnd 0.34fF
C108 a_n2441_n2257# vdd 0.59fF
C109 p1 a_n2748_n3019# 0.36fF
C110 a_n3065_n2199# p3 0.07fF
C111 w_n2423_n4116# s2 0.05fF
C112 3c3 a_n2293_n3032# 0.24fF
C113 a_n3128_n3061# vdd 0.35fF
C114 g0 a_n2883_n4072# 0.19fF
C115 a_n2599_n4116# c2 0.07fF
C116 12c4 vdd 0.58fF
C117 a_n2584_n3017# a_n2572_n3091# 0.23fF
C118 g1 a_n2922_n4681# 0.12fF
C119 c3 a_bar 0.66fF
C120 a_1787_392# a_1799_318# 0.23fF
C121 3c3 gnd 0.39fF
C122 a_n2441_n2257# a_n2429_n2331# 0.23fF
C123 a_n2745_n4003# gnd 0.34fF
C124 p3 1c3 0.10fF
C125 a_2117_319# a_2143_297# 0.08fF
C126 g2 a_n1995_n2345# 0.19fF
C127 9c4 gnd 0.14fF
C128 b0 a_n3153_n4753# 0.24fF
C129 a_n3134_n2210# vdd 0.35fF
C130 b3 gnd 0.09fF
C131 p3 a_bar 0.06fF
C132 c2 s2 0.26fF
C133 a_2227_274# a_2158_263# 0.10fF
C134 g1 p1 0.11fF
C135 c4 gnd 0.10fF
C136 a_n2851_n4846# gnd 0.34fF
C137 p1 a_n2444_n3019# 0.36fF
C138 a_n2895_n3998# vdd 0.59fF
C139 11c4 a_n1541_n2508# 0.17fF
C140 a_n1864_n3353# 7c3 0.07fF
C141 b2 gnd 0.09fF
C142 a_2402_162# a_2466_172# 0.07fF
C143 c1 vdd 0.26fF
C144 a_n3059_n3818# gnd 0.05fF
C145 g1 2c3 0.11fF
C146 1c3 a_n2925_n2205# 0.24fF
C147 a_n2780_n2243# 3c3 0.07fF
C148 a_n2922_n4681# vdd 0.92fF
C149 a_n3143_n2366# vdd 0.59fF
C150 w_n2943_n4901# a_bar 0.02fF
C151 6c4 9c4 0.11fF
C152 p2 p1 0.32fF
C153 g3 gnd 0.14fF
C154 a_n1691_n2417# vdd 0.36fF
C155 4c3 a_n1998_n3143# 0.17fF
C156 2c3 a_n2130_n3236# 0.24fF
C157 a_n3153_n4753# a_n3141_n4827# 0.23fF
C158 w_702_n4161# a_bar 0.02fF
C159 9c4 11c4 0.11fF
C160 p0 a_bar 0.66fF
C161 p1 vdd 0.59fF
C162 c0 gnd 0.35fF
C163 6c3 a_n1864_n3353# 0.17fF
C164 g0 0c2 0.12fF
C165 a_n2599_n4116# vdd 0.15fF
C166 2c2 a_n2599_n4116# 0.17fF
C167 a_n2572_n3091# gnd 0.23fF
C168 a_n2922_n4681# a_n2896_n3793# 0.24fF
C169 a_n3059_n3818# a_n3128_n3829# 0.10fF
C170 a_n2587_n2259# a_n2575_n2333# 0.23fF
C171 2c3 vdd 0.75fF
C172 a_1849_284# vdd 0.52fF
C173 p2 a_n2587_n2259# 0.36fF
C174 1c3 a_n2584_n3017# 0.24fF
C175 b0 gnd 0.09fF
C176 p2 a_n2285_n2335# 0.19fF
C177 a_n2587_n2259# vdd 0.59fF
C178 p1 a_n2896_n3793# 0.36fF
C179 a_2158_263# vdd 0.35fF
C180 a_2117_268# gnd 0.01fF
C181 a_n2737_n3968# a_n2745_n4003# 0.20fF
C182 a_n1691_n2417# a_n1699_n2452# 0.20fF
C183 3c3 a_n2444_n3019# 0.07fF
C184 a3 vdd 0.17fF
C185 a_2402_162# gnd 0.34fF
C186 a_n1541_n2508# vdd 0.15fF
C187 a_n1998_n3143# 6c3 0.07fF
C188 w_n1505_n3505# s3 0.05fF
C189 g2 7c3 1.33fF
C190 a_n2768_n2317# gnd 0.23fF
C191 3c3 a_n2575_n2333# 0.19fF
C192 a_n2297_n2261# 7c4 0.07fF
C193 a_n1995_n2345# gnd 0.23fF
C194 w_n1505_n3450# vdd 0.02fF
C195 a_n3065_n2199# gnd 0.05fF
C196 p2 3c3 0.53fF
C197 a_n1853_n2361# a_n1861_n2396# 0.20fF
C198 a_1797_286# a_1787_392# 0.24fF
C199 a_n1375_n2584# gnd 0.34fF
C200 a_n3141_n4827# gnd 0.23fF
C201 3c3 vdd 1.52fF
C202 a_n2745_n4003# vdd 0.15fF
C203 w_702_n4216# a 0.09fF
C204 a_n2745_n4003# 2c2 0.07fF
C205 11c4 a_n1533_n2473# 0.20fF
C206 9c4 vdd 0.67fF
C207 b3 vdd 0.29fF
C208 a_2227_274# a_2117_268# 0.18fF
C209 c4 vdd 0.26fF
C210 g1 c0 0.12fF
C211 a_n2851_n4846# vdd 0.15fF
C212 g0 a_n2432_n3093# 0.19fF
C213 b2 vdd 0.29fF
C214 1c3 gnd 0.25fF
C215 a_n2780_n2243# a_n2768_n2317# 0.23fF
C216 a_n3059_n3818# vdd 0.09fF
C217 a_n2883_n4072# gnd 0.23fF
C218 g1 a_n3156_n4130# 0.07fF
C219 a_n3131_n2440# gnd 0.23fF
C220 p0 a_n3081_n4580# 0.07fF
C221 a_n2984_n4573# vdd 0.59fF
C222 w_n2423_n4116# a_bar 0.35fF
C223 a_n1861_n2396# 10c4 0.07fF
C224 a_n3059_n3050# gnd 0.05fF
C225 p1 a_n2895_n3998# 0.36fF
C226 p2 g3 0.22fF
C227 a_n2591_n4081# vdd 0.36fF
C228 a_n1541_n2508# 12c4 0.07fF
C229 2c2 a_n2591_n4081# 0.20fF
C230 a_n2736_n3093# gnd 0.23fF
C231 g3 vdd 0.67fF
C232 p2 c0 0.12fF
C233 7c3 a_n1717_n3513# 0.17fF
C234 5c3 gnd 0.14fF
C235 p1 c1 0.01fF
C236 c0 vdd 0.58fF
C237 p0 a_n2905_n3094# 0.19fF
C238 b out 0.26fF
C239 a_n2293_n3032# 4c3 0.07fF
C240 a_n2925_n2205# 2c4 0.07fF
C241 1c3 a_n2748_n3019# 0.07fF
C242 p1 a_n2922_n4681# 0.26fF
C243 a_n2007_n2271# vdd 0.59fF
C244 a_n3156_n4130# vdd 0.59fF
C245 c2 a_bar 0.66fF
C246 a_n2984_n4573# a_n2972_n4647# 0.23fF
C247 b1 gnd 0.09fF
C248 a_1787_392# vdd 0.59fF
C249 a_n1533_n2473# vdd 0.36fF
C250 b0 vdd 0.29fF
C251 a_2117_268# vdd 0.21fF
C252 c0 a_n2917_n3020# 0.36fF
C253 w_n2943_n4956# p0 0.09fF
C254 a_2402_162# vdd 0.15fF
C255 a_n2748_n3019# a_n2736_n3093# 0.23fF
C256 4c3 gnd 0.14fF
C257 c0 a_n2972_n4647# 0.19fF
C258 a_n3128_n3061# b2 0.07fF
C259 7c3 gnd 0.10fF
C260 p3 c3 0.01fF
C261 b a_bar 0.66fF
C262 a3 a_n3143_n2366# 0.36fF
C263 0c2 gnd 0.14fF
C264 b3 a_n3134_n2210# 0.07fF
C265 w_702_n4161# a 0.07fF
C266 a_n3128_n3829# b1 0.07fF
C267 g2 g0 0.12fF
C268 a_n3065_n2199# vdd 0.09fF
C269 a1 a_n3156_n4130# 0.36fF
C270 a_n1375_n2584# vdd 0.15fF
C271 a_n3166_n3778# gnd 0.13fF
C272 p0 g0 0.11fF
C273 g3 12c4 0.11fF
C274 6c3 gnd 0.14fF
C275 a_n2851_n4846# c1 0.07fF
C276 a_n3081_n4580# gnd 0.05fF
C277 a_n3143_n3795# vdd 0.26fF
C278 a_n3156_n4130# a_n3144_n4204# 0.23fF
C279 7c4 gnd 0.20fF
C280 7c4 a_n2142_n2263# 0.24fF
C281 a_n3143_n3027# a2 0.08fF
C282 p2 1c3 0.18fF
C283 a_2410_236# a_2402_162# 0.17fF
C284 a_n1861_n2396# gnd 0.34fF
C285 a_n3150_n4591# vdd 0.35fF
C286 p2 a_bar 0.06fF
C287 p3 g2 0.13fF
C288 b3 a_n3143_n2366# 0.24fF
C289 1c3 vdd 0.68fF
C290 4c3 a_n1990_n3108# 0.20fF
C291 a_n2922_n4681# a_n2851_n4846# 0.17fF
C292 w_n2423_n4061# a_bar 0.02fF
C293 g0 a_n3153_n4753# 0.07fF
C294 a_n2130_n3236# 5c3 0.07fF
C295 6c3 a_n1856_n3318# 0.20fF
C296 a_n2905_n3094# gnd 0.23fF
C297 7c3 a_n1709_n3478# 0.20fF
C298 p2 a_n3059_n3050# 0.07fF
C299 a_n2118_n3310# gnd 0.23fF
C300 g2 a_n3150_n3281# 0.07fF
C301 a_n3059_n3050# vdd 0.09fF
C302 g1 4c3 0.11fF
C303 1c3 a_n2913_n2279# 0.19fF
C304 5c3 vdd 0.67fF
C305 a_n2922_n4681# a_n2984_n4573# 0.07fF
C306 p1 a_n3059_n3818# 0.07fF
C307 2c4 gnd 0.20fF
C308 a_n2587_n2259# 3c3 0.24fF
C309 a_n3143_n3795# a1 0.08fF
C310 0c3 gnd 0.20fF
C311 a_n3150_n3281# a_n3138_n3355# 0.23fF
C312 a_n3143_n2366# g3 0.07fF
C313 4c3 a_n2130_n3236# 0.36fF
C314 c0 a_n2922_n4681# 1.32fF
C315 a3 b3 0.12fF
C316 0c2 a_n2737_n3968# 0.20fF
C317 g2 p0 0.10fF
C318 g0 1c2 0.12fF
C319 b1 vdd 0.29fF
C320 a_1780_370# vdd 0.08fF
C321 a_n2432_n3093# gnd 0.23fF
C322 a_n2591_n4081# a_n2599_n4116# 0.20fF
C323 12c4 a_n1375_n2584# 0.17fF
C324 a_n1717_n3513# c3 0.07fF
C325 a_2143_297# vdd 0.26fF
C326 c0 p1 0.59fF
C327 a_n1864_n3353# gnd 0.34fF
C328 a_2120_263# gnd 0.13fF
C329 a_2410_197# vdd 0.36fF
C330 4c3 vdd 0.92fF
C331 a_n3172_n2159# gnd 0.13fF
C332 a gnd 0.17fF
C333 w_n2615_n4840# c1 0.09fF
C334 2c4 a_n2780_n2243# 0.24fF
C335 7c3 vdd 0.58fF
C336 a_n2884_n3867# gnd 0.23fF
C337 a_n3065_n2199# a_n3134_n2210# 0.10fF
C338 0c3 a_n2748_n3019# 0.24fF
C339 g0 gnd 0.31fF
C340 a_n1856_n3318# a_n1864_n3353# 0.20fF
C341 3c3 9c4 0.11fF
C342 a_n3149_n2176# vdd 0.26fF
C343 a_n1367_n2549# vdd 0.36fF
C344 0c2 vdd 0.84fF
C345 a_n3059_n3050# a_n3128_n3061# 0.10fF
C346 a_n1998_n3143# gnd 0.34fF
C347 w_n2615_n4840# p1 0.09fF
C348 s3 a_bar 0.02fF
C349 c3 gnd 0.10fF
C350 a_1787_392# a_1849_284# 0.07fF
C351 6c3 vdd 0.58fF
C352 a_n3081_n4580# vdd 0.09fF
C353 p3 a_n2142_n2263# 0.36fF
C354 w_n1505_n3505# a_bar 0.35fF
C355 p3 gnd 0.27fF
C356 b1 a_n3144_n4204# 0.19fF
C357 a_2117_268# a_2158_263# 0.07fF
C358 a_n2896_n3793# 0c2 0.07fF
C359 a_n3166_n3010# gnd 0.13fF
C360 a_n2130_n3236# a_n2118_n3310# 0.23fF
C361 a2 a_n3150_n3281# 0.36fF
C362 7c4 vdd 0.60fF
C363 a_2410_236# a_2410_197# 0.20fF
C364 w_702_n4216# b 0.09fF
C365 a_n1533_n2473# a_n1541_n2508# 0.20fF
C366 a_n3166_n3061# gnd 0.13fF
C367 a_n2895_n3998# a_n2883_n4072# 0.23fF
C368 a_n1861_n2396# vdd 0.15fF
C369 a_n3143_n3027# vdd 0.26fF
C370 c1 a_bar 0.66fF
C371 a_n2444_n3019# a_n2432_n3093# 0.23fF
C372 a b 0.01fF
C373 g2 gnd 0.20fF
C374 a_n3165_n4557# a0 0.08fF
C375 p3 a_n2780_n2243# 0.36fF
C376 1c3 p1 0.12fF
C377 a_n3143_n2366# a_n3131_n2440# 0.23fF
C378 10c4 gnd 0.10fF
C379 a_n2007_n2271# 9c4 0.07fF
C380 2c4 vdd 0.60fF
C381 p3 6c4 0.11fF
C382 a_n1990_n3108# a_n1998_n3143# 0.20fF
C383 p0 gnd 0.24fF
C384 p1 a_bar 0.06fF
C385 g1 g0 0.12fF
C386 0c3 vdd 0.60fF
C387 g0 a_n2444_n3019# 0.24fF
C388 a_n2917_n3020# a_n2905_n3094# 0.23fF
C389 12c4 a_n1367_n2549# 0.20fF
C390 c0 a_n2984_n4573# 0.24fF
C391 a_n3138_n3355# gnd 0.23fF
C392 a_n2293_n3032# a_n2281_n3106# 0.23fF
C393 a_1799_318# gnd 0.23fF
C394 a_2117_319# vdd 0.09fF
C395 a_n1864_n3353# vdd 0.15fF
C396 5c4 gnd 0.20fF
C397 g1 a_n2297_n2261# 0.36fF
C398 a_n3166_n3829# gnd 0.13fF
C399 a_2263_282# gnd 0.10fF
C400 0c3 a_n2917_n3020# 0.07fF
C401 7c4 a_n2130_n2337# 0.19fF
C402 s2 a_bar 0.02fF
C403 p3 g1 0.11fF
C404 a_2466_172# gnd 0.10fF
C405 p2 g0 0.12fF
C406 a_n2843_n4811# vdd 0.36fF
C407 a_n3065_n2199# b3 0.15fF
C408 g0 vdd 1.20fF
C409 a_n2281_n3106# gnd 0.23fF
C410 a_n1375_n2584# c4 0.07fF
C411 w_n2615_n4785# p1 0.07fF
C412 a_n3188_n4540# gnd 0.13fF
C413 a_n1717_n3513# gnd 0.34fF
C414 a_n1998_n3143# vdd 0.15fF
C415 a_n3165_n4557# vdd 0.26fF
C416 p2 a_n2297_n2261# 0.24fF
C417 w_n1505_n3450# a_bar 0.02fF
C418 c3 vdd 0.26fF
C419 a_n2896_n3793# a_n2884_n3867# 0.23fF
C420 a_1797_286# a_1799_318# 0.19fF
C421 g1 g2 0.11fF
C422 a_n2297_n2261# vdd 0.59fF
C423 1c2 gnd 0.14fF
C424 p3 p2 0.22fF
C425 a_n1853_n2361# vdd 0.36fF
C426 g2 8c4 0.13fF
C427 2c3 4c3 0.11fF
C428 a0 a_n3153_n4753# 0.36fF
C429 p3 vdd 0.59fF
C430 a_2227_274# a_2263_282# 0.07fF
C431 g1 p0 0.10fF
C432 b3 a_n3131_n2440# 0.19fF
C433 a2 gnd 0.08fF
C434 a_n3150_n3281# vdd 0.59fF
C435 c1 s1 0.63fF
C436 a_n3172_n2210# gnd 0.13fF
C437 a_bar s0 0.02fF
C438 a_n3059_n3050# b2 0.15fF
C439 p2 a_n2925_n2205# 0.36fF
C440 a_n2007_n2271# a_n1995_n2345# 0.23fF
C441 p2 g2 0.11fF
C442 a_n2925_n2205# vdd 0.59fF
C443 a3 a_n3149_n2176# 0.08fF
C444 g2 vdd 0.75fF
C445 w_n2943_n4901# vdd 0.02fF
C446 p2 p0 0.10fF
C447 10c4 vdd 0.58fF
C448 a_n1709_n3478# a_n1717_n3513# 0.20fF
C449 b0 a_n3141_n4827# 0.19fF
C450 w_702_n4161# vdd 0.02fF
C451 p0 vdd 0.42fF
C452 c0 a_bar 0.06fF
C453 1c3 a_n2572_n3091# 0.19fF
C454 a_n2925_n2205# a_n2913_n2279# 0.23fF
C455 a_n3059_n3818# b1 0.15fF
C456 6c4 gnd 0.14fF
C457 c2 gnd 0.10fF
C458 a_n3150_n4591# b0 0.07fF
C459 p3 a_n2441_n2257# 0.36fF
C460 a_1797_286# gnd 0.05fF
C461 p2 a_n2584_n3017# 0.36fF
C462 11c4 gnd 0.10fF
C463 a0 gnd 0.08fF
C464 2c3 a_n2118_n3310# 0.19fF
C465 5c4 vdd 0.60fF
C466 a_n3153_n4753# vdd 0.59fF
C467 a_2227_274# gnd 0.05fF
C468 a_2263_282# vdd 0.26fF
C469 p1 0c3 0.31fF
C470 p0 a_n2917_n3020# 0.24fF
C471 a_n3149_n2176# b3 0.13fF
C472 w_n2423_n4116# c2 0.09fF
C473 0c2 a_n2745_n4003# 0.17fF
C474 a_n2584_n3017# vdd 0.59fF
C475 10c4 a_n1699_n2452# 0.17fF
C476 g0 a_n2895_n3998# 0.24fF
C477 a_2466_172# vdd 0.26fF
C478 c3 s3 0.26fF
C479 w_n2615_n4840# a_bar 0.35fF
C480 w_n1505_n3505# c3 0.09fF
C481 out a_bar 0.02fF
C482 a_n2922_n4681# a_n2843_n4811# 0.20fF
C483 a_n1717_n3513# vdd 0.15fF
C484 a_n2922_n4681# a_n2884_n3867# 0.19fF
C485 g1 gnd 0.14fF
C486 g0 a_n2922_n4681# 0.26fF
C487 5c4 a_n2429_n2331# 0.19fF
C488 w_n1505_n3505# p3 0.09fF
C489 8c4 gnd 0.14fF
C490 a_n2142_n2263# 8c4 0.07fF
C491 3c3 a_n1861_n2396# 0.17fF
C492 b1 a_n3156_n4130# 0.24fF
C493 p2 a_n2293_n3032# 0.36fF
C494 a_1780_370# a_1787_392# 0.36fF
C495 p1 g0 0.92fF
C496 1c2 vdd 0.67fF
C497 s0 Gnd 0.06fF
C498 gnd Gnd 12.12fF
C499 a_bar Gnd 5.62fF
C500 vdd Gnd 172.19fF
C501 s1 Gnd 0.11fF
C502 c1 Gnd 0.06fF
C503 a_n2851_n4846# Gnd 0.44fF
C504 a_n3141_n4827# Gnd 0.19fF
C505 a_n2609_n4779# Gnd 0.01fF
C506 a_n2843_n4811# Gnd 0.00fF
C507 a_n3153_n4753# Gnd 0.13fF
C508 b0 Gnd 2.39fF
C509 a0 Gnd 1.76fF
C510 a_n2972_n4647# Gnd 0.19fF
C511 a_n3188_n4591# Gnd 0.02fF
C512 a_n2984_n4573# Gnd 0.71fF
C513 a_n3150_n4591# Gnd 0.38fF
C514 a_n3081_n4580# Gnd 0.45fF
C515 a_n3165_n4557# Gnd 0.71fF
C516 a_n3188_n4540# Gnd 0.02fF
C517 out Gnd 0.06fF
C518 b Gnd 0.45fF
C519 a_n3144_n4204# Gnd 0.19fF
C520 a Gnd 0.52fF
C521 s2 Gnd 0.06fF
C522 a_n3156_n4130# Gnd 0.71fF
C523 c2 Gnd 0.06fF
C524 b1 Gnd 2.39fF
C525 a1 Gnd 1.76fF
C526 a_n2599_n4116# Gnd 0.48fF
C527 a_n2591_n4081# Gnd 0.00fF
C528 a_n2883_n4072# Gnd 0.19fF
C529 2c2 Gnd 0.98fF
C530 a_n2895_n3998# Gnd 0.71fF
C531 a_n2745_n4003# Gnd 0.48fF
C532 1c2 Gnd 0.96fF
C533 a_n2737_n3968# Gnd 0.00fF
C534 0c2 Gnd 1.00fF
C535 a_n2884_n3867# Gnd 0.19fF
C536 a_n3166_n3829# Gnd 0.02fF
C537 a_n3128_n3829# Gnd 0.38fF
C538 a_n2896_n3793# Gnd 0.71fF
C539 a_n2922_n4681# Gnd 14.77fF
C540 a_n3059_n3818# Gnd 0.45fF
C541 a_n3143_n3795# Gnd 0.71fF
C542 a_n3166_n3778# Gnd 0.02fF
C543 s3 Gnd 0.06fF
C544 c3 Gnd 0.06fF
C545 a_n1717_n3513# Gnd 0.48fF
C546 a_n1709_n3478# Gnd 0.00fF
C547 7c3 Gnd 0.06fF
C548 a_n1864_n3353# Gnd 0.48fF
C549 a_n3138_n3355# Gnd 0.10fF
C550 a_n1856_n3318# Gnd 0.00fF
C551 5c3 Gnd 1.02fF
C552 a_n2118_n3310# Gnd 0.19fF
C553 a_n3150_n3281# Gnd 0.71fF
C554 b2 Gnd 2.39fF
C555 a2 Gnd 1.17fF
C556 a_n2130_n3236# Gnd 0.13fF
C557 6c3 Gnd 0.05fF
C558 a_n1998_n3143# Gnd 0.48fF
C559 a_n2281_n3106# Gnd 0.19fF
C560 a_n1990_n3108# Gnd 0.00fF
C561 4c3 Gnd 0.08fF
C562 a_n2432_n3093# Gnd 0.19fF
C563 2c3 Gnd 0.09fF
C564 a_n2572_n3091# Gnd 0.19fF
C565 a_n2736_n3093# Gnd 0.19fF
C566 a_n2905_n3094# Gnd 0.19fF
C567 a_n3166_n3061# Gnd 0.02fF
C568 a_n2293_n3032# Gnd 0.71fF
C569 a_n2444_n3019# Gnd 0.71fF
C570 a_n3128_n3061# Gnd 0.38fF
C571 g0 Gnd 0.08fF
C572 a_n2584_n3017# Gnd 0.71fF
C573 a_n2748_n3019# Gnd 0.71fF
C574 a_n2917_n3020# Gnd 0.71fF
C575 0c3 Gnd 0.14fF
C576 p1 Gnd 27.76fF
C577 p0 Gnd 23.44fF
C578 c0 Gnd 24.52fF
C579 a_n3059_n3050# Gnd 0.45fF
C580 a_n3143_n3027# Gnd 0.71fF
C581 a_n3166_n3010# Gnd 0.02fF
C582 c4 Gnd 0.08fF
C583 a_n1375_n2584# Gnd 0.48fF
C584 a_n1367_n2549# Gnd 0.00fF
C585 12c4 Gnd 0.92fF
C586 a_n1541_n2508# Gnd 0.48fF
C587 a_n1533_n2473# Gnd 0.00fF
C588 11c4 Gnd 0.06fF
C589 a_n1699_n2452# Gnd 0.48fF
C590 a_n1691_n2417# Gnd 0.00fF
C591 10c4 Gnd 0.84fF
C592 g3 Gnd 0.17fF
C593 a_n3131_n2440# Gnd 0.19fF
C594 a_n1861_n2396# Gnd 0.48fF
C595 a_n1853_n2361# Gnd 0.00fF
C596 9c4 Gnd 3.61fF
C597 a_n1995_n2345# Gnd 0.19fF
C598 8c4 Gnd 0.10fF
C599 a_n2130_n2337# Gnd 0.19fF
C600 a_n2285_n2335# Gnd 0.19fF
C601 a_n2007_n2271# Gnd 0.71fF
C602 6c4 Gnd 0.09fF
C603 a_n2429_n2331# Gnd 0.19fF
C604 a_n3143_n2366# Gnd 0.71fF
C605 g2 Gnd 22.73fF
C606 a_n2142_n2263# Gnd 0.13fF
C607 a_n2575_n2333# Gnd 0.19fF
C608 7c4 Gnd 0.09fF
C609 a_n2297_n2261# Gnd 0.71fF
C610 3c3 Gnd 16.24fF
C611 a_n2768_n2317# Gnd 0.06fF
C612 g1 Gnd 0.08fF
C613 a_n2441_n2257# Gnd 0.13fF
C614 a_n2587_n2259# Gnd 0.71fF
C615 5c4 Gnd 0.09fF
C616 a_n2780_n2243# Gnd 0.71fF
C617 a_n2913_n2279# Gnd 0.19fF
C618 2c4 Gnd 2.18fF
C619 a_n2925_n2205# Gnd 0.71fF
C620 a_n3172_n2210# Gnd 0.02fF
C621 1c3 Gnd 7.69fF
C622 p2 Gnd 0.05fF
C623 a_n3134_n2210# Gnd 0.38fF
C624 p3 Gnd 30.22fF
C625 b3 Gnd 6.13fF
C626 a_n3065_n2199# Gnd 0.45fF
C627 a_n3149_n2176# Gnd 0.71fF
C628 a_n3172_n2159# Gnd 0.02fF
C629 a3 Gnd 3.34fF
C630 a_2466_172# Gnd 0.08fF
C631 a_2402_162# Gnd 0.48fF
C632 a_2395_186# Gnd 0.27fF
C633 a_2410_197# Gnd 0.00fF
C634 a_2410_236# Gnd 0.48fF
C635 a_2120_263# Gnd 0.02fF
C636 a_2158_263# Gnd 0.38fF
C637 a_2263_282# Gnd 0.07fF
C638 a_2117_268# Gnd 0.68fF
C639 a_2227_274# Gnd 0.45fF
C640 a_2143_297# Gnd 0.71fF
C641 a_2120_314# Gnd 0.02fF
C642 a_2117_319# Gnd 1.05fF
C643 a_1849_284# Gnd 0.11fF
C644 a_1799_318# Gnd 0.19fF
C645 a_1787_392# Gnd 0.71fF
C646 a_1797_286# Gnd 1.63fF
C647 a_1780_370# Gnd 0.67fF
C648 w_n2943_n4956# Gnd 1.35fF
C649 w_n2943_n4901# Gnd 0.77fF
C650 w_n2615_n4840# Gnd 1.35fF
C651 w_n2615_n4785# Gnd 0.77fF
C652 w_702_n4216# Gnd 1.35fF
C653 w_702_n4161# Gnd 0.77fF
C654 w_n2423_n4116# Gnd 1.35fF
C655 w_n2423_n4061# Gnd 0.77fF
C656 w_n1505_n3505# Gnd 1.35fF
C657 w_n1505_n3450# Gnd 0.77fF

.tran 0.01n 100n
.control
run
plot v(s0) v(s1)+2 v(s2)+4 v(s3)+6 v(c4)+8 
.endc
