function DF = DataFile(TSTART,TSTOP,Ts,INDEX)
% ------------------------------------------------------------------------------------- %
% Copyright (c) 2013 Varnerlab,
% School of Chemical and Biomolecular Engineering,
% Cornell University, Ithaca NY 14853 USA.
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
% The above copyright notice and this permission notice shall be included in
% all copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
% THE SOFTWARE.
%
% DataFile.m 
% DataFile holds the parameters and initial conditions for the cFL model. This struct
% is passed around to the various functions and *can* be modfied in memory.
% ------------------------------------------------------------------------------------- %

% Dimension of the system - 
NUMBER_OF_NODES = 516;
NUMBER_OF_EDGES = 5508;
NUMBER_OF_STATES = 2064;


% Initial condition vector (velocity | node positions)
INITIAL_CONDITION_VECTOR = [
	0.000000	;% 	 1 	 x_value_velocity_node_1
	0.000000	;% 	 2 	 y_value_velocity_node_1
	0.000000	;% 	 3 	 x_value_velocity_node_2
	0.000000	;% 	 4 	 y_value_velocity_node_2
	0.000000	;% 	 5 	 x_value_velocity_node_3
	0.000000	;% 	 6 	 y_value_velocity_node_3
	0.000000	;% 	 7 	 x_value_velocity_node_4
	0.000000	;% 	 8 	 y_value_velocity_node_4
	0.000000	;% 	 9 	 x_value_velocity_node_5
	0.000000	;% 	 10 	 y_value_velocity_node_5
	0.000000	;% 	 11 	 x_value_velocity_node_6
	0.000000	;% 	 12 	 y_value_velocity_node_6
	0.000000	;% 	 13 	 x_value_velocity_node_7
	0.000000	;% 	 14 	 y_value_velocity_node_7
	0.000000	;% 	 15 	 x_value_velocity_node_8
	0.000000	;% 	 16 	 y_value_velocity_node_8
	0.000000	;% 	 17 	 x_value_velocity_node_9
	0.000000	;% 	 18 	 y_value_velocity_node_9
	0.000000	;% 	 19 	 x_value_velocity_node_10
	0.000000	;% 	 20 	 y_value_velocity_node_10
	0.000000	;% 	 21 	 x_value_velocity_node_11
	0.000000	;% 	 22 	 y_value_velocity_node_11
	0.000000	;% 	 23 	 x_value_velocity_node_12
	0.000000	;% 	 24 	 y_value_velocity_node_12
	0.000000	;% 	 25 	 x_value_velocity_node_13
	0.000000	;% 	 26 	 y_value_velocity_node_13
	0.000000	;% 	 27 	 x_value_velocity_node_14
	0.000000	;% 	 28 	 y_value_velocity_node_14
	0.000000	;% 	 29 	 x_value_velocity_node_15
	0.000000	;% 	 30 	 y_value_velocity_node_15
	0.000000	;% 	 31 	 x_value_velocity_node_16
	0.000000	;% 	 32 	 y_value_velocity_node_16
	0.000000	;% 	 33 	 x_value_velocity_node_17
	0.000000	;% 	 34 	 y_value_velocity_node_17
	0.000000	;% 	 35 	 x_value_velocity_node_18
	0.000000	;% 	 36 	 y_value_velocity_node_18
	0.000000	;% 	 37 	 x_value_velocity_node_19
	0.000000	;% 	 38 	 y_value_velocity_node_19
	0.000000	;% 	 39 	 x_value_velocity_node_20
	0.000000	;% 	 40 	 y_value_velocity_node_20
	0.000000	;% 	 41 	 x_value_velocity_node_21
	0.000000	;% 	 42 	 y_value_velocity_node_21
	0.000000	;% 	 43 	 x_value_velocity_node_22
	0.000000	;% 	 44 	 y_value_velocity_node_22
	0.000000	;% 	 45 	 x_value_velocity_node_23
	0.000000	;% 	 46 	 y_value_velocity_node_23
	0.000000	;% 	 47 	 x_value_velocity_node_24
	0.000000	;% 	 48 	 y_value_velocity_node_24
	0.000000	;% 	 49 	 x_value_velocity_node_25
	0.000000	;% 	 50 	 y_value_velocity_node_25
	0.000000	;% 	 51 	 x_value_velocity_node_26
	0.000000	;% 	 52 	 y_value_velocity_node_26
	0.000000	;% 	 53 	 x_value_velocity_node_27
	0.000000	;% 	 54 	 y_value_velocity_node_27
	0.000000	;% 	 55 	 x_value_velocity_node_28
	0.000000	;% 	 56 	 y_value_velocity_node_28
	0.000000	;% 	 57 	 x_value_velocity_node_29
	0.000000	;% 	 58 	 y_value_velocity_node_29
	0.000000	;% 	 59 	 x_value_velocity_node_30
	0.000000	;% 	 60 	 y_value_velocity_node_30
	0.000000	;% 	 61 	 x_value_velocity_node_31
	0.000000	;% 	 62 	 y_value_velocity_node_31
	0.000000	;% 	 63 	 x_value_velocity_node_32
	0.000000	;% 	 64 	 y_value_velocity_node_32
	0.000000	;% 	 65 	 x_value_velocity_node_33
	0.000000	;% 	 66 	 y_value_velocity_node_33
	0.000000	;% 	 67 	 x_value_velocity_node_34
	0.000000	;% 	 68 	 y_value_velocity_node_34
	0.000000	;% 	 69 	 x_value_velocity_node_35
	0.000000	;% 	 70 	 y_value_velocity_node_35
	0.000000	;% 	 71 	 x_value_velocity_node_36
	0.000000	;% 	 72 	 y_value_velocity_node_36
	0.000000	;% 	 73 	 x_value_velocity_node_37
	0.000000	;% 	 74 	 y_value_velocity_node_37
	0.000000	;% 	 75 	 x_value_velocity_node_38
	0.000000	;% 	 76 	 y_value_velocity_node_38
	0.000000	;% 	 77 	 x_value_velocity_node_39
	0.000000	;% 	 78 	 y_value_velocity_node_39
	0.000000	;% 	 79 	 x_value_velocity_node_40
	0.000000	;% 	 80 	 y_value_velocity_node_40
	0.000000	;% 	 81 	 x_value_velocity_node_41
	0.000000	;% 	 82 	 y_value_velocity_node_41
	0.000000	;% 	 83 	 x_value_velocity_node_42
	0.000000	;% 	 84 	 y_value_velocity_node_42
	0.000000	;% 	 85 	 x_value_velocity_node_43
	0.000000	;% 	 86 	 y_value_velocity_node_43
	0.000000	;% 	 87 	 x_value_velocity_node_44
	0.000000	;% 	 88 	 y_value_velocity_node_44
	0.000000	;% 	 89 	 x_value_velocity_node_45
	0.000000	;% 	 90 	 y_value_velocity_node_45
	0.000000	;% 	 91 	 x_value_velocity_node_46
	0.000000	;% 	 92 	 y_value_velocity_node_46
	0.000000	;% 	 93 	 x_value_velocity_node_47
	0.000000	;% 	 94 	 y_value_velocity_node_47
	0.000000	;% 	 95 	 x_value_velocity_node_48
	0.000000	;% 	 96 	 y_value_velocity_node_48
	0.000000	;% 	 97 	 x_value_velocity_node_49
	0.000000	;% 	 98 	 y_value_velocity_node_49
	0.000000	;% 	 99 	 x_value_velocity_node_50
	0.000000	;% 	 100 	 y_value_velocity_node_50
	0.000000	;% 	 101 	 x_value_velocity_node_51
	0.000000	;% 	 102 	 y_value_velocity_node_51
	0.000000	;% 	 103 	 x_value_velocity_node_52
	0.000000	;% 	 104 	 y_value_velocity_node_52
	0.000000	;% 	 105 	 x_value_velocity_node_53
	0.000000	;% 	 106 	 y_value_velocity_node_53
	0.000000	;% 	 107 	 x_value_velocity_node_54
	0.000000	;% 	 108 	 y_value_velocity_node_54
	0.000000	;% 	 109 	 x_value_velocity_node_55
	0.000000	;% 	 110 	 y_value_velocity_node_55
	0.000000	;% 	 111 	 x_value_velocity_node_56
	0.000000	;% 	 112 	 y_value_velocity_node_56
	0.000000	;% 	 113 	 x_value_velocity_node_57
	0.000000	;% 	 114 	 y_value_velocity_node_57
	0.000000	;% 	 115 	 x_value_velocity_node_58
	0.000000	;% 	 116 	 y_value_velocity_node_58
	0.000000	;% 	 117 	 x_value_velocity_node_59
	0.000000	;% 	 118 	 y_value_velocity_node_59
	0.000000	;% 	 119 	 x_value_velocity_node_60
	0.000000	;% 	 120 	 y_value_velocity_node_60
	0.000000	;% 	 121 	 x_value_velocity_node_61
	0.000000	;% 	 122 	 y_value_velocity_node_61
	0.000000	;% 	 123 	 x_value_velocity_node_62
	0.000000	;% 	 124 	 y_value_velocity_node_62
	0.000000	;% 	 125 	 x_value_velocity_node_63
	0.000000	;% 	 126 	 y_value_velocity_node_63
	0.000000	;% 	 127 	 x_value_velocity_node_64
	0.000000	;% 	 128 	 y_value_velocity_node_64
	0.000000	;% 	 129 	 x_value_velocity_node_65
	0.000000	;% 	 130 	 y_value_velocity_node_65
	0.000000	;% 	 131 	 x_value_velocity_node_66
	0.000000	;% 	 132 	 y_value_velocity_node_66
	0.000000	;% 	 133 	 x_value_velocity_node_67
	0.000000	;% 	 134 	 y_value_velocity_node_67
	0.000000	;% 	 135 	 x_value_velocity_node_68
	0.000000	;% 	 136 	 y_value_velocity_node_68
	0.000000	;% 	 137 	 x_value_velocity_node_69
	0.000000	;% 	 138 	 y_value_velocity_node_69
	0.000000	;% 	 139 	 x_value_velocity_node_70
	0.000000	;% 	 140 	 y_value_velocity_node_70
	0.000000	;% 	 141 	 x_value_velocity_node_71
	0.000000	;% 	 142 	 y_value_velocity_node_71
	0.000000	;% 	 143 	 x_value_velocity_node_72
	0.000000	;% 	 144 	 y_value_velocity_node_72
	0.000000	;% 	 145 	 x_value_velocity_node_73
	0.000000	;% 	 146 	 y_value_velocity_node_73
	0.000000	;% 	 147 	 x_value_velocity_node_74
	0.000000	;% 	 148 	 y_value_velocity_node_74
	0.000000	;% 	 149 	 x_value_velocity_node_75
	0.000000	;% 	 150 	 y_value_velocity_node_75
	0.000000	;% 	 151 	 x_value_velocity_node_76
	0.000000	;% 	 152 	 y_value_velocity_node_76
	0.000000	;% 	 153 	 x_value_velocity_node_77
	0.000000	;% 	 154 	 y_value_velocity_node_77
	0.000000	;% 	 155 	 x_value_velocity_node_78
	0.000000	;% 	 156 	 y_value_velocity_node_78
	0.000000	;% 	 157 	 x_value_velocity_node_79
	0.000000	;% 	 158 	 y_value_velocity_node_79
	0.000000	;% 	 159 	 x_value_velocity_node_80
	0.000000	;% 	 160 	 y_value_velocity_node_80
	0.000000	;% 	 161 	 x_value_velocity_node_81
	0.000000	;% 	 162 	 y_value_velocity_node_81
	0.000000	;% 	 163 	 x_value_velocity_node_82
	0.000000	;% 	 164 	 y_value_velocity_node_82
	0.000000	;% 	 165 	 x_value_velocity_node_83
	0.000000	;% 	 166 	 y_value_velocity_node_83
	0.000000	;% 	 167 	 x_value_velocity_node_84
	0.000000	;% 	 168 	 y_value_velocity_node_84
	0.000000	;% 	 169 	 x_value_velocity_node_85
	0.000000	;% 	 170 	 y_value_velocity_node_85
	0.000000	;% 	 171 	 x_value_velocity_node_86
	0.000000	;% 	 172 	 y_value_velocity_node_86
	0.000000	;% 	 173 	 x_value_velocity_node_87
	0.000000	;% 	 174 	 y_value_velocity_node_87
	0.000000	;% 	 175 	 x_value_velocity_node_88
	0.000000	;% 	 176 	 y_value_velocity_node_88
	0.000000	;% 	 177 	 x_value_velocity_node_89
	0.000000	;% 	 178 	 y_value_velocity_node_89
	0.000000	;% 	 179 	 x_value_velocity_node_90
	0.000000	;% 	 180 	 y_value_velocity_node_90
	0.000000	;% 	 181 	 x_value_velocity_node_91
	0.000000	;% 	 182 	 y_value_velocity_node_91
	0.000000	;% 	 183 	 x_value_velocity_node_92
	0.000000	;% 	 184 	 y_value_velocity_node_92
	0.000000	;% 	 185 	 x_value_velocity_node_93
	0.000000	;% 	 186 	 y_value_velocity_node_93
	0.000000	;% 	 187 	 x_value_velocity_node_94
	0.000000	;% 	 188 	 y_value_velocity_node_94
	0.000000	;% 	 189 	 x_value_velocity_node_95
	0.000000	;% 	 190 	 y_value_velocity_node_95
	0.000000	;% 	 191 	 x_value_velocity_node_96
	0.000000	;% 	 192 	 y_value_velocity_node_96
	0.000000	;% 	 193 	 x_value_velocity_node_97
	0.000000	;% 	 194 	 y_value_velocity_node_97
	0.000000	;% 	 195 	 x_value_velocity_node_98
	0.000000	;% 	 196 	 y_value_velocity_node_98
	0.000000	;% 	 197 	 x_value_velocity_node_99
	0.000000	;% 	 198 	 y_value_velocity_node_99
	0.000000	;% 	 199 	 x_value_velocity_node_100
	0.000000	;% 	 200 	 y_value_velocity_node_100
	0.000000	;% 	 201 	 x_value_velocity_node_101
	0.000000	;% 	 202 	 y_value_velocity_node_101
	0.000000	;% 	 203 	 x_value_velocity_node_102
	0.000000	;% 	 204 	 y_value_velocity_node_102
	0.000000	;% 	 205 	 x_value_velocity_node_103
	0.000000	;% 	 206 	 y_value_velocity_node_103
	0.000000	;% 	 207 	 x_value_velocity_node_104
	0.000000	;% 	 208 	 y_value_velocity_node_104
	0.000000	;% 	 209 	 x_value_velocity_node_105
	0.000000	;% 	 210 	 y_value_velocity_node_105
	0.000000	;% 	 211 	 x_value_velocity_node_106
	0.000000	;% 	 212 	 y_value_velocity_node_106
	0.000000	;% 	 213 	 x_value_velocity_node_107
	0.000000	;% 	 214 	 y_value_velocity_node_107
	0.000000	;% 	 215 	 x_value_velocity_node_108
	0.000000	;% 	 216 	 y_value_velocity_node_108
	0.000000	;% 	 217 	 x_value_velocity_node_109
	0.000000	;% 	 218 	 y_value_velocity_node_109
	0.000000	;% 	 219 	 x_value_velocity_node_110
	0.000000	;% 	 220 	 y_value_velocity_node_110
	0.000000	;% 	 221 	 x_value_velocity_node_111
	0.000000	;% 	 222 	 y_value_velocity_node_111
	0.000000	;% 	 223 	 x_value_velocity_node_112
	0.000000	;% 	 224 	 y_value_velocity_node_112
	0.000000	;% 	 225 	 x_value_velocity_node_113
	0.000000	;% 	 226 	 y_value_velocity_node_113
	0.000000	;% 	 227 	 x_value_velocity_node_114
	0.000000	;% 	 228 	 y_value_velocity_node_114
	0.000000	;% 	 229 	 x_value_velocity_node_115
	0.000000	;% 	 230 	 y_value_velocity_node_115
	0.000000	;% 	 231 	 x_value_velocity_node_116
	0.000000	;% 	 232 	 y_value_velocity_node_116
	0.000000	;% 	 233 	 x_value_velocity_node_117
	0.000000	;% 	 234 	 y_value_velocity_node_117
	0.000000	;% 	 235 	 x_value_velocity_node_118
	0.000000	;% 	 236 	 y_value_velocity_node_118
	0.000000	;% 	 237 	 x_value_velocity_node_119
	0.000000	;% 	 238 	 y_value_velocity_node_119
	0.000000	;% 	 239 	 x_value_velocity_node_120
	0.000000	;% 	 240 	 y_value_velocity_node_120
	0.000000	;% 	 241 	 x_value_velocity_node_121
	0.000000	;% 	 242 	 y_value_velocity_node_121
	0.000000	;% 	 243 	 x_value_velocity_node_122
	0.000000	;% 	 244 	 y_value_velocity_node_122
	0.000000	;% 	 245 	 x_value_velocity_node_123
	0.000000	;% 	 246 	 y_value_velocity_node_123
	0.000000	;% 	 247 	 x_value_velocity_node_124
	0.000000	;% 	 248 	 y_value_velocity_node_124
	0.000000	;% 	 249 	 x_value_velocity_node_125
	0.000000	;% 	 250 	 y_value_velocity_node_125
	0.000000	;% 	 251 	 x_value_velocity_node_126
	0.000000	;% 	 252 	 y_value_velocity_node_126
	0.000000	;% 	 253 	 x_value_velocity_node_127
	0.000000	;% 	 254 	 y_value_velocity_node_127
	0.000000	;% 	 255 	 x_value_velocity_node_128
	0.000000	;% 	 256 	 y_value_velocity_node_128
	0.000000	;% 	 257 	 x_value_velocity_node_129
	0.000000	;% 	 258 	 y_value_velocity_node_129
	0.000000	;% 	 259 	 x_value_velocity_node_130
	0.000000	;% 	 260 	 y_value_velocity_node_130
	0.000000	;% 	 261 	 x_value_velocity_node_131
	0.000000	;% 	 262 	 y_value_velocity_node_131
	0.000000	;% 	 263 	 x_value_velocity_node_132
	0.000000	;% 	 264 	 y_value_velocity_node_132
	0.000000	;% 	 265 	 x_value_velocity_node_133
	0.000000	;% 	 266 	 y_value_velocity_node_133
	0.000000	;% 	 267 	 x_value_velocity_node_134
	0.000000	;% 	 268 	 y_value_velocity_node_134
	0.000000	;% 	 269 	 x_value_velocity_node_135
	0.000000	;% 	 270 	 y_value_velocity_node_135
	0.000000	;% 	 271 	 x_value_velocity_node_136
	0.000000	;% 	 272 	 y_value_velocity_node_136
	0.000000	;% 	 273 	 x_value_velocity_node_137
	0.000000	;% 	 274 	 y_value_velocity_node_137
	0.000000	;% 	 275 	 x_value_velocity_node_138
	0.000000	;% 	 276 	 y_value_velocity_node_138
	0.000000	;% 	 277 	 x_value_velocity_node_139
	0.000000	;% 	 278 	 y_value_velocity_node_139
	0.000000	;% 	 279 	 x_value_velocity_node_140
	0.000000	;% 	 280 	 y_value_velocity_node_140
	0.000000	;% 	 281 	 x_value_velocity_node_141
	0.000000	;% 	 282 	 y_value_velocity_node_141
	0.000000	;% 	 283 	 x_value_velocity_node_142
	0.000000	;% 	 284 	 y_value_velocity_node_142
	0.000000	;% 	 285 	 x_value_velocity_node_143
	0.000000	;% 	 286 	 y_value_velocity_node_143
	0.000000	;% 	 287 	 x_value_velocity_node_144
	0.000000	;% 	 288 	 y_value_velocity_node_144
	0.000000	;% 	 289 	 x_value_velocity_node_145
	0.000000	;% 	 290 	 y_value_velocity_node_145
	0.000000	;% 	 291 	 x_value_velocity_node_146
	0.000000	;% 	 292 	 y_value_velocity_node_146
	0.000000	;% 	 293 	 x_value_velocity_node_147
	0.000000	;% 	 294 	 y_value_velocity_node_147
	0.000000	;% 	 295 	 x_value_velocity_node_148
	0.000000	;% 	 296 	 y_value_velocity_node_148
	0.000000	;% 	 297 	 x_value_velocity_node_149
	0.000000	;% 	 298 	 y_value_velocity_node_149
	0.000000	;% 	 299 	 x_value_velocity_node_150
	0.000000	;% 	 300 	 y_value_velocity_node_150
	0.000000	;% 	 301 	 x_value_velocity_node_151
	0.000000	;% 	 302 	 y_value_velocity_node_151
	0.000000	;% 	 303 	 x_value_velocity_node_152
	0.000000	;% 	 304 	 y_value_velocity_node_152
	0.000000	;% 	 305 	 x_value_velocity_node_153
	0.000000	;% 	 306 	 y_value_velocity_node_153
	0.000000	;% 	 307 	 x_value_velocity_node_154
	0.000000	;% 	 308 	 y_value_velocity_node_154
	0.000000	;% 	 309 	 x_value_velocity_node_155
	0.000000	;% 	 310 	 y_value_velocity_node_155
	0.000000	;% 	 311 	 x_value_velocity_node_156
	0.000000	;% 	 312 	 y_value_velocity_node_156
	0.000000	;% 	 313 	 x_value_velocity_node_157
	0.000000	;% 	 314 	 y_value_velocity_node_157
	0.000000	;% 	 315 	 x_value_velocity_node_158
	0.000000	;% 	 316 	 y_value_velocity_node_158
	0.000000	;% 	 317 	 x_value_velocity_node_159
	0.000000	;% 	 318 	 y_value_velocity_node_159
	0.000000	;% 	 319 	 x_value_velocity_node_160
	0.000000	;% 	 320 	 y_value_velocity_node_160
	0.000000	;% 	 321 	 x_value_velocity_node_161
	0.000000	;% 	 322 	 y_value_velocity_node_161
	0.000000	;% 	 323 	 x_value_velocity_node_162
	0.000000	;% 	 324 	 y_value_velocity_node_162
	0.000000	;% 	 325 	 x_value_velocity_node_163
	0.000000	;% 	 326 	 y_value_velocity_node_163
	0.000000	;% 	 327 	 x_value_velocity_node_164
	0.000000	;% 	 328 	 y_value_velocity_node_164
	0.000000	;% 	 329 	 x_value_velocity_node_165
	0.000000	;% 	 330 	 y_value_velocity_node_165
	0.000000	;% 	 331 	 x_value_velocity_node_166
	0.000000	;% 	 332 	 y_value_velocity_node_166
	0.000000	;% 	 333 	 x_value_velocity_node_167
	0.000000	;% 	 334 	 y_value_velocity_node_167
	0.000000	;% 	 335 	 x_value_velocity_node_168
	0.000000	;% 	 336 	 y_value_velocity_node_168
	0.000000	;% 	 337 	 x_value_velocity_node_169
	0.000000	;% 	 338 	 y_value_velocity_node_169
	0.000000	;% 	 339 	 x_value_velocity_node_170
	0.000000	;% 	 340 	 y_value_velocity_node_170
	0.000000	;% 	 341 	 x_value_velocity_node_171
	0.000000	;% 	 342 	 y_value_velocity_node_171
	0.000000	;% 	 343 	 x_value_velocity_node_172
	0.000000	;% 	 344 	 y_value_velocity_node_172
	0.000000	;% 	 345 	 x_value_velocity_node_173
	0.000000	;% 	 346 	 y_value_velocity_node_173
	0.000000	;% 	 347 	 x_value_velocity_node_174
	0.000000	;% 	 348 	 y_value_velocity_node_174
	0.000000	;% 	 349 	 x_value_velocity_node_175
	0.000000	;% 	 350 	 y_value_velocity_node_175
	0.000000	;% 	 351 	 x_value_velocity_node_176
	0.000000	;% 	 352 	 y_value_velocity_node_176
	0.000000	;% 	 353 	 x_value_velocity_node_177
	0.000000	;% 	 354 	 y_value_velocity_node_177
	0.000000	;% 	 355 	 x_value_velocity_node_178
	0.000000	;% 	 356 	 y_value_velocity_node_178
	0.000000	;% 	 357 	 x_value_velocity_node_179
	0.000000	;% 	 358 	 y_value_velocity_node_179
	0.000000	;% 	 359 	 x_value_velocity_node_180
	0.000000	;% 	 360 	 y_value_velocity_node_180
	0.000000	;% 	 361 	 x_value_velocity_node_181
	0.000000	;% 	 362 	 y_value_velocity_node_181
	0.000000	;% 	 363 	 x_value_velocity_node_182
	0.000000	;% 	 364 	 y_value_velocity_node_182
	0.000000	;% 	 365 	 x_value_velocity_node_183
	0.000000	;% 	 366 	 y_value_velocity_node_183
	0.000000	;% 	 367 	 x_value_velocity_node_184
	0.000000	;% 	 368 	 y_value_velocity_node_184
	0.000000	;% 	 369 	 x_value_velocity_node_185
	0.000000	;% 	 370 	 y_value_velocity_node_185
	0.000000	;% 	 371 	 x_value_velocity_node_186
	0.000000	;% 	 372 	 y_value_velocity_node_186
	0.000000	;% 	 373 	 x_value_velocity_node_187
	0.000000	;% 	 374 	 y_value_velocity_node_187
	0.000000	;% 	 375 	 x_value_velocity_node_188
	0.000000	;% 	 376 	 y_value_velocity_node_188
	0.000000	;% 	 377 	 x_value_velocity_node_189
	0.000000	;% 	 378 	 y_value_velocity_node_189
	0.000000	;% 	 379 	 x_value_velocity_node_190
	0.000000	;% 	 380 	 y_value_velocity_node_190
	0.000000	;% 	 381 	 x_value_velocity_node_191
	0.000000	;% 	 382 	 y_value_velocity_node_191
	0.000000	;% 	 383 	 x_value_velocity_node_192
	0.000000	;% 	 384 	 y_value_velocity_node_192
	0.000000	;% 	 385 	 x_value_velocity_node_193
	0.000000	;% 	 386 	 y_value_velocity_node_193
	0.000000	;% 	 387 	 x_value_velocity_node_194
	0.000000	;% 	 388 	 y_value_velocity_node_194
	0.000000	;% 	 389 	 x_value_velocity_node_195
	0.000000	;% 	 390 	 y_value_velocity_node_195
	0.000000	;% 	 391 	 x_value_velocity_node_196
	0.000000	;% 	 392 	 y_value_velocity_node_196
	0.000000	;% 	 393 	 x_value_velocity_node_197
	0.000000	;% 	 394 	 y_value_velocity_node_197
	0.000000	;% 	 395 	 x_value_velocity_node_198
	0.000000	;% 	 396 	 y_value_velocity_node_198
	0.000000	;% 	 397 	 x_value_velocity_node_199
	0.000000	;% 	 398 	 y_value_velocity_node_199
	0.000000	;% 	 399 	 x_value_velocity_node_200
	0.000000	;% 	 400 	 y_value_velocity_node_200
	0.000000	;% 	 401 	 x_value_velocity_node_201
	0.000000	;% 	 402 	 y_value_velocity_node_201
	0.000000	;% 	 403 	 x_value_velocity_node_202
	0.000000	;% 	 404 	 y_value_velocity_node_202
	0.000000	;% 	 405 	 x_value_velocity_node_203
	0.000000	;% 	 406 	 y_value_velocity_node_203
	0.000000	;% 	 407 	 x_value_velocity_node_204
	0.000000	;% 	 408 	 y_value_velocity_node_204
	0.000000	;% 	 409 	 x_value_velocity_node_205
	0.000000	;% 	 410 	 y_value_velocity_node_205
	0.000000	;% 	 411 	 x_value_velocity_node_206
	0.000000	;% 	 412 	 y_value_velocity_node_206
	0.000000	;% 	 413 	 x_value_velocity_node_207
	0.000000	;% 	 414 	 y_value_velocity_node_207
	0.000000	;% 	 415 	 x_value_velocity_node_208
	0.000000	;% 	 416 	 y_value_velocity_node_208
	0.000000	;% 	 417 	 x_value_velocity_node_209
	0.000000	;% 	 418 	 y_value_velocity_node_209
	0.000000	;% 	 419 	 x_value_velocity_node_210
	0.000000	;% 	 420 	 y_value_velocity_node_210
	0.000000	;% 	 421 	 x_value_velocity_node_211
	0.000000	;% 	 422 	 y_value_velocity_node_211
	0.000000	;% 	 423 	 x_value_velocity_node_212
	0.000000	;% 	 424 	 y_value_velocity_node_212
	0.000000	;% 	 425 	 x_value_velocity_node_213
	0.000000	;% 	 426 	 y_value_velocity_node_213
	0.000000	;% 	 427 	 x_value_velocity_node_214
	0.000000	;% 	 428 	 y_value_velocity_node_214
	0.000000	;% 	 429 	 x_value_velocity_node_215
	0.000000	;% 	 430 	 y_value_velocity_node_215
	0.000000	;% 	 431 	 x_value_velocity_node_216
	0.000000	;% 	 432 	 y_value_velocity_node_216
	0.000000	;% 	 433 	 x_value_velocity_node_217
	0.000000	;% 	 434 	 y_value_velocity_node_217
	0.000000	;% 	 435 	 x_value_velocity_node_218
	0.000000	;% 	 436 	 y_value_velocity_node_218
	0.000000	;% 	 437 	 x_value_velocity_node_219
	0.000000	;% 	 438 	 y_value_velocity_node_219
	0.000000	;% 	 439 	 x_value_velocity_node_220
	0.000000	;% 	 440 	 y_value_velocity_node_220
	0.000000	;% 	 441 	 x_value_velocity_node_221
	0.000000	;% 	 442 	 y_value_velocity_node_221
	0.000000	;% 	 443 	 x_value_velocity_node_222
	0.000000	;% 	 444 	 y_value_velocity_node_222
	0.000000	;% 	 445 	 x_value_velocity_node_223
	0.000000	;% 	 446 	 y_value_velocity_node_223
	0.000000	;% 	 447 	 x_value_velocity_node_224
	0.000000	;% 	 448 	 y_value_velocity_node_224
	0.000000	;% 	 449 	 x_value_velocity_node_225
	0.000000	;% 	 450 	 y_value_velocity_node_225
	0.000000	;% 	 451 	 x_value_velocity_node_226
	0.000000	;% 	 452 	 y_value_velocity_node_226
	0.000000	;% 	 453 	 x_value_velocity_node_227
	0.000000	;% 	 454 	 y_value_velocity_node_227
	0.000000	;% 	 455 	 x_value_velocity_node_228
	0.000000	;% 	 456 	 y_value_velocity_node_228
	0.000000	;% 	 457 	 x_value_velocity_node_229
	0.000000	;% 	 458 	 y_value_velocity_node_229
	0.000000	;% 	 459 	 x_value_velocity_node_230
	0.000000	;% 	 460 	 y_value_velocity_node_230
	0.000000	;% 	 461 	 x_value_velocity_node_231
	0.000000	;% 	 462 	 y_value_velocity_node_231
	0.000000	;% 	 463 	 x_value_velocity_node_232
	0.000000	;% 	 464 	 y_value_velocity_node_232
	0.000000	;% 	 465 	 x_value_velocity_node_233
	0.000000	;% 	 466 	 y_value_velocity_node_233
	0.000000	;% 	 467 	 x_value_velocity_node_234
	0.000000	;% 	 468 	 y_value_velocity_node_234
	0.000000	;% 	 469 	 x_value_velocity_node_235
	0.000000	;% 	 470 	 y_value_velocity_node_235
	0.000000	;% 	 471 	 x_value_velocity_node_236
	0.000000	;% 	 472 	 y_value_velocity_node_236
	0.000000	;% 	 473 	 x_value_velocity_node_237
	0.000000	;% 	 474 	 y_value_velocity_node_237
	0.000000	;% 	 475 	 x_value_velocity_node_238
	0.000000	;% 	 476 	 y_value_velocity_node_238
	0.000000	;% 	 477 	 x_value_velocity_node_239
	0.000000	;% 	 478 	 y_value_velocity_node_239
	0.000000	;% 	 479 	 x_value_velocity_node_240
	0.000000	;% 	 480 	 y_value_velocity_node_240
	0.000000	;% 	 481 	 x_value_velocity_node_241
	0.000000	;% 	 482 	 y_value_velocity_node_241
	0.000000	;% 	 483 	 x_value_velocity_node_242
	0.000000	;% 	 484 	 y_value_velocity_node_242
	0.000000	;% 	 485 	 x_value_velocity_node_243
	0.000000	;% 	 486 	 y_value_velocity_node_243
	0.000000	;% 	 487 	 x_value_velocity_node_244
	0.000000	;% 	 488 	 y_value_velocity_node_244
	0.000000	;% 	 489 	 x_value_velocity_node_245
	0.000000	;% 	 490 	 y_value_velocity_node_245
	0.000000	;% 	 491 	 x_value_velocity_node_246
	0.000000	;% 	 492 	 y_value_velocity_node_246
	0.000000	;% 	 493 	 x_value_velocity_node_247
	0.000000	;% 	 494 	 y_value_velocity_node_247
	0.000000	;% 	 495 	 x_value_velocity_node_248
	0.000000	;% 	 496 	 y_value_velocity_node_248
	0.000000	;% 	 497 	 x_value_velocity_node_249
	0.000000	;% 	 498 	 y_value_velocity_node_249
	0.000000	;% 	 499 	 x_value_velocity_node_250
	0.000000	;% 	 500 	 y_value_velocity_node_250
	0.000000	;% 	 501 	 x_value_velocity_node_251
	0.000000	;% 	 502 	 y_value_velocity_node_251
	0.000000	;% 	 503 	 x_value_velocity_node_252
	0.000000	;% 	 504 	 y_value_velocity_node_252
	0.000000	;% 	 505 	 x_value_velocity_node_253
	0.000000	;% 	 506 	 y_value_velocity_node_253
	0.000000	;% 	 507 	 x_value_velocity_node_254
	0.000000	;% 	 508 	 y_value_velocity_node_254
	0.000000	;% 	 509 	 x_value_velocity_node_255
	0.000000	;% 	 510 	 y_value_velocity_node_255
	0.000000	;% 	 511 	 x_value_velocity_node_256
	0.000000	;% 	 512 	 y_value_velocity_node_256
	0.000000	;% 	 513 	 x_value_velocity_node_257
	0.000000	;% 	 514 	 y_value_velocity_node_257
	0.000000	;% 	 515 	 x_value_velocity_node_258
	0.000000	;% 	 516 	 y_value_velocity_node_258
	0.000000	;% 	 517 	 x_value_velocity_node_259
	0.000000	;% 	 518 	 y_value_velocity_node_259
	0.000000	;% 	 519 	 x_value_velocity_node_260
	0.000000	;% 	 520 	 y_value_velocity_node_260
	0.000000	;% 	 521 	 x_value_velocity_node_261
	0.000000	;% 	 522 	 y_value_velocity_node_261
	0.000000	;% 	 523 	 x_value_velocity_node_262
	0.000000	;% 	 524 	 y_value_velocity_node_262
	0.000000	;% 	 525 	 x_value_velocity_node_263
	0.000000	;% 	 526 	 y_value_velocity_node_263
	0.000000	;% 	 527 	 x_value_velocity_node_264
	0.000000	;% 	 528 	 y_value_velocity_node_264
	0.000000	;% 	 529 	 x_value_velocity_node_265
	0.000000	;% 	 530 	 y_value_velocity_node_265
	0.000000	;% 	 531 	 x_value_velocity_node_266
	0.000000	;% 	 532 	 y_value_velocity_node_266
	0.000000	;% 	 533 	 x_value_velocity_node_267
	0.000000	;% 	 534 	 y_value_velocity_node_267
	0.000000	;% 	 535 	 x_value_velocity_node_268
	0.000000	;% 	 536 	 y_value_velocity_node_268
	0.000000	;% 	 537 	 x_value_velocity_node_269
	0.000000	;% 	 538 	 y_value_velocity_node_269
	0.000000	;% 	 539 	 x_value_velocity_node_270
	0.000000	;% 	 540 	 y_value_velocity_node_270
	0.000000	;% 	 541 	 x_value_velocity_node_271
	0.000000	;% 	 542 	 y_value_velocity_node_271
	0.000000	;% 	 543 	 x_value_velocity_node_272
	0.000000	;% 	 544 	 y_value_velocity_node_272
	0.000000	;% 	 545 	 x_value_velocity_node_273
	0.000000	;% 	 546 	 y_value_velocity_node_273
	0.000000	;% 	 547 	 x_value_velocity_node_274
	0.000000	;% 	 548 	 y_value_velocity_node_274
	0.000000	;% 	 549 	 x_value_velocity_node_275
	0.000000	;% 	 550 	 y_value_velocity_node_275
	0.000000	;% 	 551 	 x_value_velocity_node_276
	0.000000	;% 	 552 	 y_value_velocity_node_276
	0.000000	;% 	 553 	 x_value_velocity_node_277
	0.000000	;% 	 554 	 y_value_velocity_node_277
	0.000000	;% 	 555 	 x_value_velocity_node_278
	0.000000	;% 	 556 	 y_value_velocity_node_278
	0.000000	;% 	 557 	 x_value_velocity_node_279
	0.000000	;% 	 558 	 y_value_velocity_node_279
	0.000000	;% 	 559 	 x_value_velocity_node_280
	0.000000	;% 	 560 	 y_value_velocity_node_280
	0.000000	;% 	 561 	 x_value_velocity_node_281
	0.000000	;% 	 562 	 y_value_velocity_node_281
	0.000000	;% 	 563 	 x_value_velocity_node_282
	0.000000	;% 	 564 	 y_value_velocity_node_282
	0.000000	;% 	 565 	 x_value_velocity_node_283
	0.000000	;% 	 566 	 y_value_velocity_node_283
	0.000000	;% 	 567 	 x_value_velocity_node_284
	0.000000	;% 	 568 	 y_value_velocity_node_284
	0.000000	;% 	 569 	 x_value_velocity_node_285
	0.000000	;% 	 570 	 y_value_velocity_node_285
	0.000000	;% 	 571 	 x_value_velocity_node_286
	0.000000	;% 	 572 	 y_value_velocity_node_286
	0.000000	;% 	 573 	 x_value_velocity_node_287
	0.000000	;% 	 574 	 y_value_velocity_node_287
	0.000000	;% 	 575 	 x_value_velocity_node_288
	0.000000	;% 	 576 	 y_value_velocity_node_288
	0.000000	;% 	 577 	 x_value_velocity_node_289
	0.000000	;% 	 578 	 y_value_velocity_node_289
	0.000000	;% 	 579 	 x_value_velocity_node_290
	0.000000	;% 	 580 	 y_value_velocity_node_290
	0.000000	;% 	 581 	 x_value_velocity_node_291
	0.000000	;% 	 582 	 y_value_velocity_node_291
	0.000000	;% 	 583 	 x_value_velocity_node_292
	0.000000	;% 	 584 	 y_value_velocity_node_292
	0.000000	;% 	 585 	 x_value_velocity_node_293
	0.000000	;% 	 586 	 y_value_velocity_node_293
	0.000000	;% 	 587 	 x_value_velocity_node_294
	0.000000	;% 	 588 	 y_value_velocity_node_294
	0.000000	;% 	 589 	 x_value_velocity_node_295
	0.000000	;% 	 590 	 y_value_velocity_node_295
	0.000000	;% 	 591 	 x_value_velocity_node_296
	0.000000	;% 	 592 	 y_value_velocity_node_296
	0.000000	;% 	 593 	 x_value_velocity_node_297
	0.000000	;% 	 594 	 y_value_velocity_node_297
	0.000000	;% 	 595 	 x_value_velocity_node_298
	0.000000	;% 	 596 	 y_value_velocity_node_298
	0.000000	;% 	 597 	 x_value_velocity_node_299
	0.000000	;% 	 598 	 y_value_velocity_node_299
	0.000000	;% 	 599 	 x_value_velocity_node_300
	0.000000	;% 	 600 	 y_value_velocity_node_300
	0.000000	;% 	 601 	 x_value_velocity_node_301
	0.000000	;% 	 602 	 y_value_velocity_node_301
	0.000000	;% 	 603 	 x_value_velocity_node_302
	0.000000	;% 	 604 	 y_value_velocity_node_302
	0.000000	;% 	 605 	 x_value_velocity_node_303
	0.000000	;% 	 606 	 y_value_velocity_node_303
	0.000000	;% 	 607 	 x_value_velocity_node_304
	0.000000	;% 	 608 	 y_value_velocity_node_304
	0.000000	;% 	 609 	 x_value_velocity_node_305
	0.000000	;% 	 610 	 y_value_velocity_node_305
	0.000000	;% 	 611 	 x_value_velocity_node_306
	0.000000	;% 	 612 	 y_value_velocity_node_306
	0.000000	;% 	 613 	 x_value_velocity_node_307
	0.000000	;% 	 614 	 y_value_velocity_node_307
	0.000000	;% 	 615 	 x_value_velocity_node_308
	0.000000	;% 	 616 	 y_value_velocity_node_308
	0.000000	;% 	 617 	 x_value_velocity_node_309
	0.000000	;% 	 618 	 y_value_velocity_node_309
	0.000000	;% 	 619 	 x_value_velocity_node_310
	0.000000	;% 	 620 	 y_value_velocity_node_310
	0.000000	;% 	 621 	 x_value_velocity_node_311
	0.000000	;% 	 622 	 y_value_velocity_node_311
	0.000000	;% 	 623 	 x_value_velocity_node_312
	0.000000	;% 	 624 	 y_value_velocity_node_312
	0.000000	;% 	 625 	 x_value_velocity_node_313
	0.000000	;% 	 626 	 y_value_velocity_node_313
	0.000000	;% 	 627 	 x_value_velocity_node_314
	0.000000	;% 	 628 	 y_value_velocity_node_314
	0.000000	;% 	 629 	 x_value_velocity_node_315
	0.000000	;% 	 630 	 y_value_velocity_node_315
	0.000000	;% 	 631 	 x_value_velocity_node_316
	0.000000	;% 	 632 	 y_value_velocity_node_316
	0.000000	;% 	 633 	 x_value_velocity_node_317
	0.000000	;% 	 634 	 y_value_velocity_node_317
	0.000000	;% 	 635 	 x_value_velocity_node_318
	0.000000	;% 	 636 	 y_value_velocity_node_318
	0.000000	;% 	 637 	 x_value_velocity_node_319
	0.000000	;% 	 638 	 y_value_velocity_node_319
	0.000000	;% 	 639 	 x_value_velocity_node_320
	0.000000	;% 	 640 	 y_value_velocity_node_320
	0.000000	;% 	 641 	 x_value_velocity_node_321
	0.000000	;% 	 642 	 y_value_velocity_node_321
	0.000000	;% 	 643 	 x_value_velocity_node_322
	0.000000	;% 	 644 	 y_value_velocity_node_322
	0.000000	;% 	 645 	 x_value_velocity_node_323
	0.000000	;% 	 646 	 y_value_velocity_node_323
	0.000000	;% 	 647 	 x_value_velocity_node_324
	0.000000	;% 	 648 	 y_value_velocity_node_324
	0.000000	;% 	 649 	 x_value_velocity_node_325
	0.000000	;% 	 650 	 y_value_velocity_node_325
	0.000000	;% 	 651 	 x_value_velocity_node_326
	0.000000	;% 	 652 	 y_value_velocity_node_326
	0.000000	;% 	 653 	 x_value_velocity_node_327
	0.000000	;% 	 654 	 y_value_velocity_node_327
	0.000000	;% 	 655 	 x_value_velocity_node_328
	0.000000	;% 	 656 	 y_value_velocity_node_328
	0.000000	;% 	 657 	 x_value_velocity_node_329
	0.000000	;% 	 658 	 y_value_velocity_node_329
	0.000000	;% 	 659 	 x_value_velocity_node_330
	0.000000	;% 	 660 	 y_value_velocity_node_330
	0.000000	;% 	 661 	 x_value_velocity_node_331
	0.000000	;% 	 662 	 y_value_velocity_node_331
	0.000000	;% 	 663 	 x_value_velocity_node_332
	0.000000	;% 	 664 	 y_value_velocity_node_332
	0.000000	;% 	 665 	 x_value_velocity_node_333
	0.000000	;% 	 666 	 y_value_velocity_node_333
	0.000000	;% 	 667 	 x_value_velocity_node_334
	0.000000	;% 	 668 	 y_value_velocity_node_334
	0.000000	;% 	 669 	 x_value_velocity_node_335
	0.000000	;% 	 670 	 y_value_velocity_node_335
	0.000000	;% 	 671 	 x_value_velocity_node_336
	0.000000	;% 	 672 	 y_value_velocity_node_336
	0.000000	;% 	 673 	 x_value_velocity_node_337
	0.000000	;% 	 674 	 y_value_velocity_node_337
	0.000000	;% 	 675 	 x_value_velocity_node_338
	0.000000	;% 	 676 	 y_value_velocity_node_338
	0.000000	;% 	 677 	 x_value_velocity_node_339
	0.000000	;% 	 678 	 y_value_velocity_node_339
	0.000000	;% 	 679 	 x_value_velocity_node_340
	0.000000	;% 	 680 	 y_value_velocity_node_340
	0.000000	;% 	 681 	 x_value_velocity_node_341
	0.000000	;% 	 682 	 y_value_velocity_node_341
	0.000000	;% 	 683 	 x_value_velocity_node_342
	0.000000	;% 	 684 	 y_value_velocity_node_342
	0.000000	;% 	 685 	 x_value_velocity_node_343
	0.000000	;% 	 686 	 y_value_velocity_node_343
	0.000000	;% 	 687 	 x_value_velocity_node_344
	0.000000	;% 	 688 	 y_value_velocity_node_344
	0.000000	;% 	 689 	 x_value_velocity_node_345
	0.000000	;% 	 690 	 y_value_velocity_node_345
	0.000000	;% 	 691 	 x_value_velocity_node_346
	0.000000	;% 	 692 	 y_value_velocity_node_346
	0.000000	;% 	 693 	 x_value_velocity_node_347
	0.000000	;% 	 694 	 y_value_velocity_node_347
	0.000000	;% 	 695 	 x_value_velocity_node_348
	0.000000	;% 	 696 	 y_value_velocity_node_348
	0.000000	;% 	 697 	 x_value_velocity_node_349
	0.000000	;% 	 698 	 y_value_velocity_node_349
	0.000000	;% 	 699 	 x_value_velocity_node_350
	0.000000	;% 	 700 	 y_value_velocity_node_350
	0.000000	;% 	 701 	 x_value_velocity_node_351
	0.000000	;% 	 702 	 y_value_velocity_node_351
	0.000000	;% 	 703 	 x_value_velocity_node_352
	0.000000	;% 	 704 	 y_value_velocity_node_352
	0.000000	;% 	 705 	 x_value_velocity_node_353
	0.000000	;% 	 706 	 y_value_velocity_node_353
	0.000000	;% 	 707 	 x_value_velocity_node_354
	0.000000	;% 	 708 	 y_value_velocity_node_354
	0.000000	;% 	 709 	 x_value_velocity_node_355
	0.000000	;% 	 710 	 y_value_velocity_node_355
	0.000000	;% 	 711 	 x_value_velocity_node_356
	0.000000	;% 	 712 	 y_value_velocity_node_356
	0.000000	;% 	 713 	 x_value_velocity_node_357
	0.000000	;% 	 714 	 y_value_velocity_node_357
	0.000000	;% 	 715 	 x_value_velocity_node_358
	0.000000	;% 	 716 	 y_value_velocity_node_358
	0.000000	;% 	 717 	 x_value_velocity_node_359
	0.000000	;% 	 718 	 y_value_velocity_node_359
	0.000000	;% 	 719 	 x_value_velocity_node_360
	0.000000	;% 	 720 	 y_value_velocity_node_360
	0.000000	;% 	 721 	 x_value_velocity_node_361
	0.000000	;% 	 722 	 y_value_velocity_node_361
	0.000000	;% 	 723 	 x_value_velocity_node_362
	0.000000	;% 	 724 	 y_value_velocity_node_362
	0.000000	;% 	 725 	 x_value_velocity_node_363
	0.000000	;% 	 726 	 y_value_velocity_node_363
	0.000000	;% 	 727 	 x_value_velocity_node_364
	0.000000	;% 	 728 	 y_value_velocity_node_364
	0.000000	;% 	 729 	 x_value_velocity_node_365
	0.000000	;% 	 730 	 y_value_velocity_node_365
	0.000000	;% 	 731 	 x_value_velocity_node_366
	0.000000	;% 	 732 	 y_value_velocity_node_366
	0.000000	;% 	 733 	 x_value_velocity_node_367
	0.000000	;% 	 734 	 y_value_velocity_node_367
	0.000000	;% 	 735 	 x_value_velocity_node_368
	0.000000	;% 	 736 	 y_value_velocity_node_368
	0.000000	;% 	 737 	 x_value_velocity_node_369
	0.000000	;% 	 738 	 y_value_velocity_node_369
	0.000000	;% 	 739 	 x_value_velocity_node_370
	0.000000	;% 	 740 	 y_value_velocity_node_370
	0.000000	;% 	 741 	 x_value_velocity_node_371
	0.000000	;% 	 742 	 y_value_velocity_node_371
	0.000000	;% 	 743 	 x_value_velocity_node_372
	0.000000	;% 	 744 	 y_value_velocity_node_372
	0.000000	;% 	 745 	 x_value_velocity_node_373
	0.000000	;% 	 746 	 y_value_velocity_node_373
	0.000000	;% 	 747 	 x_value_velocity_node_374
	0.000000	;% 	 748 	 y_value_velocity_node_374
	0.000000	;% 	 749 	 x_value_velocity_node_375
	0.000000	;% 	 750 	 y_value_velocity_node_375
	0.000000	;% 	 751 	 x_value_velocity_node_376
	0.000000	;% 	 752 	 y_value_velocity_node_376
	0.000000	;% 	 753 	 x_value_velocity_node_377
	0.000000	;% 	 754 	 y_value_velocity_node_377
	0.000000	;% 	 755 	 x_value_velocity_node_378
	0.000000	;% 	 756 	 y_value_velocity_node_378
	0.000000	;% 	 757 	 x_value_velocity_node_379
	0.000000	;% 	 758 	 y_value_velocity_node_379
	0.000000	;% 	 759 	 x_value_velocity_node_380
	0.000000	;% 	 760 	 y_value_velocity_node_380
	0.000000	;% 	 761 	 x_value_velocity_node_381
	0.000000	;% 	 762 	 y_value_velocity_node_381
	0.000000	;% 	 763 	 x_value_velocity_node_382
	0.000000	;% 	 764 	 y_value_velocity_node_382
	0.000000	;% 	 765 	 x_value_velocity_node_383
	0.000000	;% 	 766 	 y_value_velocity_node_383
	0.000000	;% 	 767 	 x_value_velocity_node_384
	0.000000	;% 	 768 	 y_value_velocity_node_384
	0.000000	;% 	 769 	 x_value_velocity_node_385
	0.000000	;% 	 770 	 y_value_velocity_node_385
	0.000000	;% 	 771 	 x_value_velocity_node_386
	0.000000	;% 	 772 	 y_value_velocity_node_386
	0.000000	;% 	 773 	 x_value_velocity_node_387
	0.000000	;% 	 774 	 y_value_velocity_node_387
	0.000000	;% 	 775 	 x_value_velocity_node_388
	0.000000	;% 	 776 	 y_value_velocity_node_388
	0.000000	;% 	 777 	 x_value_velocity_node_389
	0.000000	;% 	 778 	 y_value_velocity_node_389
	0.000000	;% 	 779 	 x_value_velocity_node_390
	0.000000	;% 	 780 	 y_value_velocity_node_390
	0.000000	;% 	 781 	 x_value_velocity_node_391
	0.000000	;% 	 782 	 y_value_velocity_node_391
	0.000000	;% 	 783 	 x_value_velocity_node_392
	0.000000	;% 	 784 	 y_value_velocity_node_392
	0.000000	;% 	 785 	 x_value_velocity_node_393
	0.000000	;% 	 786 	 y_value_velocity_node_393
	0.000000	;% 	 787 	 x_value_velocity_node_394
	0.000000	;% 	 788 	 y_value_velocity_node_394
	0.000000	;% 	 789 	 x_value_velocity_node_395
	0.000000	;% 	 790 	 y_value_velocity_node_395
	0.000000	;% 	 791 	 x_value_velocity_node_396
	0.000000	;% 	 792 	 y_value_velocity_node_396
	0.000000	;% 	 793 	 x_value_velocity_node_397
	0.000000	;% 	 794 	 y_value_velocity_node_397
	0.000000	;% 	 795 	 x_value_velocity_node_398
	0.000000	;% 	 796 	 y_value_velocity_node_398
	0.000000	;% 	 797 	 x_value_velocity_node_399
	0.000000	;% 	 798 	 y_value_velocity_node_399
	0.000000	;% 	 799 	 x_value_velocity_node_400
	0.000000	;% 	 800 	 y_value_velocity_node_400
	0.000000	;% 	 801 	 x_value_velocity_node_401
	0.000000	;% 	 802 	 y_value_velocity_node_401
	0.000000	;% 	 803 	 x_value_velocity_node_402
	0.000000	;% 	 804 	 y_value_velocity_node_402
	0.000000	;% 	 805 	 x_value_velocity_node_403
	0.000000	;% 	 806 	 y_value_velocity_node_403
	0.000000	;% 	 807 	 x_value_velocity_node_404
	0.000000	;% 	 808 	 y_value_velocity_node_404
	0.000000	;% 	 809 	 x_value_velocity_node_405
	0.000000	;% 	 810 	 y_value_velocity_node_405
	0.000000	;% 	 811 	 x_value_velocity_node_406
	0.000000	;% 	 812 	 y_value_velocity_node_406
	0.000000	;% 	 813 	 x_value_velocity_node_407
	0.000000	;% 	 814 	 y_value_velocity_node_407
	0.000000	;% 	 815 	 x_value_velocity_node_408
	0.000000	;% 	 816 	 y_value_velocity_node_408
	0.000000	;% 	 817 	 x_value_velocity_node_409
	0.000000	;% 	 818 	 y_value_velocity_node_409
	0.000000	;% 	 819 	 x_value_velocity_node_410
	0.000000	;% 	 820 	 y_value_velocity_node_410
	0.000000	;% 	 821 	 x_value_velocity_node_411
	0.000000	;% 	 822 	 y_value_velocity_node_411
	0.000000	;% 	 823 	 x_value_velocity_node_412
	0.000000	;% 	 824 	 y_value_velocity_node_412
	0.000000	;% 	 825 	 x_value_velocity_node_413
	0.000000	;% 	 826 	 y_value_velocity_node_413
	0.000000	;% 	 827 	 x_value_velocity_node_414
	0.000000	;% 	 828 	 y_value_velocity_node_414
	0.000000	;% 	 829 	 x_value_velocity_node_415
	0.000000	;% 	 830 	 y_value_velocity_node_415
	0.000000	;% 	 831 	 x_value_velocity_node_416
	0.000000	;% 	 832 	 y_value_velocity_node_416
	0.000000	;% 	 833 	 x_value_velocity_node_417
	0.000000	;% 	 834 	 y_value_velocity_node_417
	0.000000	;% 	 835 	 x_value_velocity_node_418
	0.000000	;% 	 836 	 y_value_velocity_node_418
	0.000000	;% 	 837 	 x_value_velocity_node_419
	0.000000	;% 	 838 	 y_value_velocity_node_419
	0.000000	;% 	 839 	 x_value_velocity_node_420
	0.000000	;% 	 840 	 y_value_velocity_node_420
	0.000000	;% 	 841 	 x_value_velocity_node_421
	0.000000	;% 	 842 	 y_value_velocity_node_421
	0.000000	;% 	 843 	 x_value_velocity_node_422
	0.000000	;% 	 844 	 y_value_velocity_node_422
	0.000000	;% 	 845 	 x_value_velocity_node_423
	0.000000	;% 	 846 	 y_value_velocity_node_423
	0.000000	;% 	 847 	 x_value_velocity_node_424
	0.000000	;% 	 848 	 y_value_velocity_node_424
	0.000000	;% 	 849 	 x_value_velocity_node_425
	0.000000	;% 	 850 	 y_value_velocity_node_425
	0.000000	;% 	 851 	 x_value_velocity_node_426
	0.000000	;% 	 852 	 y_value_velocity_node_426
	0.000000	;% 	 853 	 x_value_velocity_node_427
	0.000000	;% 	 854 	 y_value_velocity_node_427
	0.000000	;% 	 855 	 x_value_velocity_node_428
	0.000000	;% 	 856 	 y_value_velocity_node_428
	0.000000	;% 	 857 	 x_value_velocity_node_429
	0.000000	;% 	 858 	 y_value_velocity_node_429
	0.000000	;% 	 859 	 x_value_velocity_node_430
	0.000000	;% 	 860 	 y_value_velocity_node_430
	0.000000	;% 	 861 	 x_value_velocity_node_431
	0.000000	;% 	 862 	 y_value_velocity_node_431
	0.000000	;% 	 863 	 x_value_velocity_node_432
	0.000000	;% 	 864 	 y_value_velocity_node_432
	0.000000	;% 	 865 	 x_value_velocity_node_433
	0.000000	;% 	 866 	 y_value_velocity_node_433
	0.000000	;% 	 867 	 x_value_velocity_node_434
	0.000000	;% 	 868 	 y_value_velocity_node_434
	0.000000	;% 	 869 	 x_value_velocity_node_435
	0.000000	;% 	 870 	 y_value_velocity_node_435
	0.000000	;% 	 871 	 x_value_velocity_node_436
	0.000000	;% 	 872 	 y_value_velocity_node_436
	0.000000	;% 	 873 	 x_value_velocity_node_437
	0.000000	;% 	 874 	 y_value_velocity_node_437
	0.000000	;% 	 875 	 x_value_velocity_node_438
	0.000000	;% 	 876 	 y_value_velocity_node_438
	0.000000	;% 	 877 	 x_value_velocity_node_439
	0.000000	;% 	 878 	 y_value_velocity_node_439
	0.000000	;% 	 879 	 x_value_velocity_node_440
	0.000000	;% 	 880 	 y_value_velocity_node_440
	0.000000	;% 	 881 	 x_value_velocity_node_441
	0.000000	;% 	 882 	 y_value_velocity_node_441
	0.000000	;% 	 883 	 x_value_velocity_node_442
	0.000000	;% 	 884 	 y_value_velocity_node_442
	0.000000	;% 	 885 	 x_value_velocity_node_443
	0.000000	;% 	 886 	 y_value_velocity_node_443
	0.000000	;% 	 887 	 x_value_velocity_node_444
	0.000000	;% 	 888 	 y_value_velocity_node_444
	0.000000	;% 	 889 	 x_value_velocity_node_445
	0.000000	;% 	 890 	 y_value_velocity_node_445
	0.000000	;% 	 891 	 x_value_velocity_node_446
	0.000000	;% 	 892 	 y_value_velocity_node_446
	0.000000	;% 	 893 	 x_value_velocity_node_447
	0.000000	;% 	 894 	 y_value_velocity_node_447
	0.000000	;% 	 895 	 x_value_velocity_node_448
	0.000000	;% 	 896 	 y_value_velocity_node_448
	0.000000	;% 	 897 	 x_value_velocity_node_449
	0.000000	;% 	 898 	 y_value_velocity_node_449
	0.000000	;% 	 899 	 x_value_velocity_node_450
	0.000000	;% 	 900 	 y_value_velocity_node_450
	0.000000	;% 	 901 	 x_value_velocity_node_451
	0.000000	;% 	 902 	 y_value_velocity_node_451
	0.000000	;% 	 903 	 x_value_velocity_node_452
	0.000000	;% 	 904 	 y_value_velocity_node_452
	0.000000	;% 	 905 	 x_value_velocity_node_453
	0.000000	;% 	 906 	 y_value_velocity_node_453
	0.000000	;% 	 907 	 x_value_velocity_node_454
	0.000000	;% 	 908 	 y_value_velocity_node_454
	0.000000	;% 	 909 	 x_value_velocity_node_455
	0.000000	;% 	 910 	 y_value_velocity_node_455
	0.000000	;% 	 911 	 x_value_velocity_node_456
	0.000000	;% 	 912 	 y_value_velocity_node_456
	0.000000	;% 	 913 	 x_value_velocity_node_457
	0.000000	;% 	 914 	 y_value_velocity_node_457
	0.000000	;% 	 915 	 x_value_velocity_node_458
	0.000000	;% 	 916 	 y_value_velocity_node_458
	0.000000	;% 	 917 	 x_value_velocity_node_459
	0.000000	;% 	 918 	 y_value_velocity_node_459
	0.000000	;% 	 919 	 x_value_velocity_node_460
	0.000000	;% 	 920 	 y_value_velocity_node_460
	0.000000	;% 	 921 	 x_value_velocity_node_461
	0.000000	;% 	 922 	 y_value_velocity_node_461
	0.000000	;% 	 923 	 x_value_velocity_node_462
	0.000000	;% 	 924 	 y_value_velocity_node_462
	0.000000	;% 	 925 	 x_value_velocity_node_463
	0.000000	;% 	 926 	 y_value_velocity_node_463
	0.000000	;% 	 927 	 x_value_velocity_node_464
	0.000000	;% 	 928 	 y_value_velocity_node_464
	0.000000	;% 	 929 	 x_value_velocity_node_465
	0.000000	;% 	 930 	 y_value_velocity_node_465
	0.000000	;% 	 931 	 x_value_velocity_node_466
	0.000000	;% 	 932 	 y_value_velocity_node_466
	0.000000	;% 	 933 	 x_value_velocity_node_467
	0.000000	;% 	 934 	 y_value_velocity_node_467
	0.000000	;% 	 935 	 x_value_velocity_node_468
	0.000000	;% 	 936 	 y_value_velocity_node_468
	0.000000	;% 	 937 	 x_value_velocity_node_469
	0.000000	;% 	 938 	 y_value_velocity_node_469
	0.000000	;% 	 939 	 x_value_velocity_node_470
	0.000000	;% 	 940 	 y_value_velocity_node_470
	0.000000	;% 	 941 	 x_value_velocity_node_471
	0.000000	;% 	 942 	 y_value_velocity_node_471
	0.000000	;% 	 943 	 x_value_velocity_node_472
	0.000000	;% 	 944 	 y_value_velocity_node_472
	0.000000	;% 	 945 	 x_value_velocity_node_473
	0.000000	;% 	 946 	 y_value_velocity_node_473
	0.000000	;% 	 947 	 x_value_velocity_node_474
	0.000000	;% 	 948 	 y_value_velocity_node_474
	0.000000	;% 	 949 	 x_value_velocity_node_475
	0.000000	;% 	 950 	 y_value_velocity_node_475
	0.000000	;% 	 951 	 x_value_velocity_node_476
	0.000000	;% 	 952 	 y_value_velocity_node_476
	0.000000	;% 	 953 	 x_value_velocity_node_477
	0.000000	;% 	 954 	 y_value_velocity_node_477
	0.000000	;% 	 955 	 x_value_velocity_node_478
	0.000000	;% 	 956 	 y_value_velocity_node_478
	0.000000	;% 	 957 	 x_value_velocity_node_479
	0.000000	;% 	 958 	 y_value_velocity_node_479
	0.000000	;% 	 959 	 x_value_velocity_node_480
	0.000000	;% 	 960 	 y_value_velocity_node_480
	0.000000	;% 	 961 	 x_value_velocity_node_481
	0.000000	;% 	 962 	 y_value_velocity_node_481
	0.000000	;% 	 963 	 x_value_velocity_node_482
	0.000000	;% 	 964 	 y_value_velocity_node_482
	0.000000	;% 	 965 	 x_value_velocity_node_483
	0.000000	;% 	 966 	 y_value_velocity_node_483
	0.000000	;% 	 967 	 x_value_velocity_node_484
	0.000000	;% 	 968 	 y_value_velocity_node_484
	0.000000	;% 	 969 	 x_value_velocity_node_485
	0.000000	;% 	 970 	 y_value_velocity_node_485
	0.000000	;% 	 971 	 x_value_velocity_node_486
	0.000000	;% 	 972 	 y_value_velocity_node_486
	0.000000	;% 	 973 	 x_value_velocity_node_487
	0.000000	;% 	 974 	 y_value_velocity_node_487
	0.000000	;% 	 975 	 x_value_velocity_node_488
	0.000000	;% 	 976 	 y_value_velocity_node_488
	0.000000	;% 	 977 	 x_value_velocity_node_489
	0.000000	;% 	 978 	 y_value_velocity_node_489
	0.000000	;% 	 979 	 x_value_velocity_node_490
	0.000000	;% 	 980 	 y_value_velocity_node_490
	0.000000	;% 	 981 	 x_value_velocity_node_491
	0.000000	;% 	 982 	 y_value_velocity_node_491
	0.000000	;% 	 983 	 x_value_velocity_node_492
	0.000000	;% 	 984 	 y_value_velocity_node_492
	0.000000	;% 	 985 	 x_value_velocity_node_493
	0.000000	;% 	 986 	 y_value_velocity_node_493
	0.000000	;% 	 987 	 x_value_velocity_node_494
	0.000000	;% 	 988 	 y_value_velocity_node_494
	0.000000	;% 	 989 	 x_value_velocity_node_495
	0.000000	;% 	 990 	 y_value_velocity_node_495
	0.000000	;% 	 991 	 x_value_velocity_node_496
	0.000000	;% 	 992 	 y_value_velocity_node_496
	0.000000	;% 	 993 	 x_value_velocity_node_497
	0.000000	;% 	 994 	 y_value_velocity_node_497
	0.000000	;% 	 995 	 x_value_velocity_node_498
	0.000000	;% 	 996 	 y_value_velocity_node_498
	0.000000	;% 	 997 	 x_value_velocity_node_499
	0.000000	;% 	 998 	 y_value_velocity_node_499
	0.000000	;% 	 999 	 x_value_velocity_node_500
	0.000000	;% 	 1000 	 y_value_velocity_node_500
	0.000000	;% 	 1001 	 x_value_velocity_node_501
	0.000000	;% 	 1002 	 y_value_velocity_node_501
	0.000000	;% 	 1003 	 x_value_velocity_node_502
	0.000000	;% 	 1004 	 y_value_velocity_node_502
	0.000000	;% 	 1005 	 x_value_velocity_node_503
	0.000000	;% 	 1006 	 y_value_velocity_node_503
	0.000000	;% 	 1007 	 x_value_velocity_node_504
	0.000000	;% 	 1008 	 y_value_velocity_node_504
	0.000000	;% 	 1009 	 x_value_velocity_node_505
	0.000000	;% 	 1010 	 y_value_velocity_node_505
	0.000000	;% 	 1011 	 x_value_velocity_node_506
	0.000000	;% 	 1012 	 y_value_velocity_node_506
	0.000000	;% 	 1013 	 x_value_velocity_node_507
	0.000000	;% 	 1014 	 y_value_velocity_node_507
	0.000000	;% 	 1015 	 x_value_velocity_node_508
	0.000000	;% 	 1016 	 y_value_velocity_node_508
	0.000000	;% 	 1017 	 x_value_velocity_node_509
	0.000000	;% 	 1018 	 y_value_velocity_node_509
	0.000000	;% 	 1019 	 x_value_velocity_node_510
	0.000000	;% 	 1020 	 y_value_velocity_node_510
	0.000000	;% 	 1021 	 x_value_velocity_node_511
	0.000000	;% 	 1022 	 y_value_velocity_node_511
	0.000000	;% 	 1023 	 x_value_velocity_node_512
	0.000000	;% 	 1024 	 y_value_velocity_node_512
	0.000000	;% 	 1025 	 x_value_velocity_node_513
	0.000000	;% 	 1026 	 y_value_velocity_node_513
	0.000000	;% 	 1027 	 x_value_velocity_node_514
	0.000000	;% 	 1028 	 y_value_velocity_node_514
	0.000000	;% 	 1029 	 x_value_velocity_node_515
	0.000000	;% 	 1030 	 y_value_velocity_node_515
	0.000000	;% 	 1031 	 x_value_velocity_node_516
	0.000000	;% 	 1032 	 y_value_velocity_node_516
	-7.5393858e-13	;% 	 1033 	 x_value_node_1
	8.7735053e-02	;% 	 1034 	 y_value_node_1
	-6.7560324e-13	;% 	 1035 	 x_value_node_2
	1.3190649e-01	;% 	 1036 	 y_value_node_2
	-6.8427772e-13	;% 	 1037 	 x_value_node_3
	1.7781029e-01	;% 	 1038 	 y_value_node_3
	-7.1377149e-13	;% 	 1039 	 x_value_node_4
	2.2236245e-01	;% 	 1040 	 y_value_node_4
	-7.2467986e-13	;% 	 1041 	 x_value_node_5
	2.6955978e-01	;% 	 1042 	 y_value_node_5
	-6.1458477e-13	;% 	 1043 	 x_value_node_6
	3.1588832e-01	;% 	 1044 	 y_value_node_6
	-6.3743021e-13	;% 	 1045 	 x_value_node_7
	4.0366119e-01	;% 	 1046 	 y_value_node_7
	-6.4910794e-13	;% 	 1047 	 x_value_node_8
	4.4910156e-01	;% 	 1048 	 y_value_node_8
	-6.5678192e-13	;% 	 1049 	 x_value_node_9
	4.9466200e-01	;% 	 1050 	 y_value_node_9
	-6.3547691e-13	;% 	 1051 	 x_value_node_10
	5.3973353e-01	;% 	 1052 	 y_value_node_10
	-5.9880703e-13	;% 	 1053 	 x_value_node_11
	5.8433517e-01	;% 	 1054 	 y_value_node_11
	-6.4523994e-13	;% 	 1055 	 x_value_node_12
	6.2967628e-01	;% 	 1056 	 y_value_node_12
	-6.1204817e-13	;% 	 1057 	 x_value_node_13
	6.7544526e-01	;% 	 1058 	 y_value_node_13
	-6.6246834e-13	;% 	 1059 	 x_value_node_14
	7.2076297e-01	;% 	 1060 	 y_value_node_14
	-7.1931263e-13	;% 	 1061 	 x_value_node_15
	7.6770981e-01	;% 	 1062 	 y_value_node_15
	-7.3893626e-13	;% 	 1063 	 x_value_node_16
	8.1612831e-01	;% 	 1064 	 y_value_node_16
	-7.1661947e-13	;% 	 1065 	 x_value_node_17
	8.6490688e-01	;% 	 1066 	 y_value_node_17
	-5.7067415e-13	;% 	 1067 	 x_value_node_18
	9.1180853e-01	;% 	 1068 	 y_value_node_18
	-4.9628704e-13	;% 	 1069 	 x_value_node_19
	3.5913345e-01	;% 	 1070 	 y_value_node_19
	0.0000000e+00	;% 	 1071 	 x_value_node_20
	0.0000000e+00	;% 	 1072 	 y_value_node_20
	0.0000000e+00	;% 	 1073 	 x_value_node_21
	1.0000000e+00	;% 	 1074 	 y_value_node_21
	1.6197438e-13	;% 	 1075 	 x_value_node_22
	4.4459136e-02	;% 	 1076 	 y_value_node_22
	2.6646675e-13	;% 	 1077 	 x_value_node_23
	9.5553469e-01	;% 	 1078 	 y_value_node_23
	4.2451429e-02	;% 	 1079 	 x_value_node_24
	2.4132767e-01	;% 	 1080 	 y_value_node_24
	4.3726166e-02	;% 	 1081 	 x_value_node_25
	2.9252397e-01	;% 	 1082 	 y_value_node_25
	4.3767191e-02	;% 	 1083 	 x_value_node_26
	4.7207992e-01	;% 	 1084 	 y_value_node_26
	4.3878119e-02	;% 	 1085 	 x_value_node_27
	7.9268478e-01	;% 	 1086 	 y_value_node_27
	4.3880957e-02	;% 	 1087 	 x_value_node_28
	8.4542588e-01	;% 	 1088 	 y_value_node_28
	4.4065465e-02	;% 	 1089 	 x_value_node_29
	4.2459051e-01	;% 	 1090 	 y_value_node_29
	4.4653026e-02	;% 	 1091 	 x_value_node_30
	5.1798491e-01	;% 	 1092 	 y_value_node_30
	4.4700794e-02	;% 	 1093 	 x_value_node_31
	9.1937235e-02	;% 	 1094 	 y_value_node_31
	4.5014214e-02	;% 	 1095 	 x_value_node_32
	6.5281950e-01	;% 	 1096 	 y_value_node_32
	4.5050270e-02	;% 	 1097 	 x_value_node_33
	6.0701688e-01	;% 	 1098 	 y_value_node_33
	4.5136454e-02	;% 	 1099 	 x_value_node_34
	7.4327962e-01	;% 	 1100 	 y_value_node_34
	4.5250691e-02	;% 	 1101 	 x_value_node_35
	1.4647330e-01	;% 	 1102 	 y_value_node_35
	4.5974911e-02	;% 	 1103 	 x_value_node_36
	5.6152254e-01	;% 	 1104 	 y_value_node_36
	4.6046283e-02	;% 	 1105 	 x_value_node_37
	1.0000000e+00	;% 	 1106 	 y_value_node_37
	4.6234039e-02	;% 	 1107 	 x_value_node_38
	3.7960380e-01	;% 	 1108 	 y_value_node_38
	4.6531755e-02	;% 	 1109 	 x_value_node_39
	0.0000000e+00	;% 	 1110 	 y_value_node_39
	4.6858362e-02	;% 	 1111 	 x_value_node_40
	8.9826178e-01	;% 	 1112 	 y_value_node_40
	4.7143468e-02	;% 	 1113 	 x_value_node_41
	6.9848242e-01	;% 	 1114 	 y_value_node_41
	4.7935369e-02	;% 	 1115 	 x_value_node_42
	1.9274478e-01	;% 	 1116 	 y_value_node_42
	4.9695460e-02	;% 	 1117 	 x_value_node_43
	3.3560678e-01	;% 	 1118 	 y_value_node_43
	5.6207511e-02	;% 	 1119 	 x_value_node_44
	9.5005742e-01	;% 	 1120 	 y_value_node_44
	5.9530155e-02	;% 	 1121 	 x_value_node_45
	4.5180595e-02	;% 	 1122 	 y_value_node_45
	8.0433929e-02	;% 	 1123 	 x_value_node_46
	2.6698549e-01	;% 	 1124 	 y_value_node_46
	8.3693768e-02	;% 	 1125 	 x_value_node_47
	4.4820053e-01	;% 	 1126 	 y_value_node_47
	8.3774923e-02	;% 	 1127 	 x_value_node_48
	1.2496132e-01	;% 	 1128 	 y_value_node_48
	8.4177199e-02	;% 	 1129 	 x_value_node_49
	8.1540348e-01	;% 	 1130 	 y_value_node_49
	8.6168193e-02	;% 	 1131 	 x_value_node_50
	4.9726909e-01	;% 	 1132 	 y_value_node_50
	8.6382368e-02	;% 	 1133 	 x_value_node_51
	7.6358830e-01	;% 	 1134 	 y_value_node_51
	8.7506489e-02	;% 	 1135 	 x_value_node_52
	2.1848457e-01	;% 	 1136 	 y_value_node_52
	8.8081792e-02	;% 	 1137 	 x_value_node_53
	5.8362511e-01	;% 	 1138 	 y_value_node_53
	8.8492387e-02	;% 	 1139 	 x_value_node_54
	6.3033290e-01	;% 	 1140 	 y_value_node_54
	8.8701455e-02	;% 	 1141 	 x_value_node_55
	8.6426621e-01	;% 	 1142 	 y_value_node_55
	8.9649616e-02	;% 	 1143 	 x_value_node_56
	4.0216609e-01	;% 	 1144 	 y_value_node_56
	9.0049319e-02	;% 	 1145 	 x_value_node_57
	6.7503349e-01	;% 	 1146 	 y_value_node_57
	9.1600138e-02	;% 	 1147 	 x_value_node_58
	5.3881413e-01	;% 	 1148 	 y_value_node_58
	9.3026294e-02	;% 	 1149 	 x_value_node_59
	3.5800681e-01	;% 	 1150 	 y_value_node_59
	9.3175498e-02	;% 	 1151 	 x_value_node_60
	1.0000000e+00	;% 	 1152 	 y_value_node_60
	9.3924516e-02	;% 	 1153 	 x_value_node_61
	7.2007625e-01	;% 	 1154 	 y_value_node_61
	9.4830346e-02	;% 	 1155 	 x_value_node_62
	3.0832873e-01	;% 	 1156 	 y_value_node_62
	9.5954002e-02	;% 	 1157 	 x_value_node_63
	9.1199654e-01	;% 	 1158 	 y_value_node_63
	9.6479369e-02	;% 	 1159 	 x_value_node_64
	0.0000000e+00	;% 	 1160 	 y_value_node_64
	9.6495603e-02	;% 	 1161 	 x_value_node_65
	1.7041506e-01	;% 	 1162 	 y_value_node_65
	9.7706334e-02	;% 	 1163 	 x_value_node_66
	8.0427650e-02	;% 	 1164 	 y_value_node_66
	1.1316132e-01	;% 	 1165 	 x_value_node_67
	9.5626665e-01	;% 	 1166 	 y_value_node_67
	1.1999285e-01	;% 	 1167 	 x_value_node_68
	4.1091542e-02	;% 	 1168 	 y_value_node_68
	1.2005056e-01	;% 	 1169 	 x_value_node_69
	2.5688675e-01	;% 	 1170 	 y_value_node_69
	1.2022093e-01	;% 	 1171 	 x_value_node_70
	4.7519045e-01	;% 	 1172 	 y_value_node_70
	1.2240172e-01	;% 	 1173 	 x_value_node_71
	7.8468552e-01	;% 	 1174 	 y_value_node_71
	1.2711246e-01	;% 	 1175 	 x_value_node_72
	4.3040678e-01	;% 	 1176 	 y_value_node_72
	1.2786593e-01	;% 	 1177 	 x_value_node_73
	6.0702817e-01	;% 	 1178 	 y_value_node_73
	1.2913621e-01	;% 	 1179 	 x_value_node_74
	1.2443853e-01	;% 	 1180 	 y_value_node_74
	1.2994024e-01	;% 	 1181 	 x_value_node_75
	8.2925911e-01	;% 	 1182 	 y_value_node_75
	1.3153605e-01	;% 	 1183 	 x_value_node_76
	3.3524104e-01	;% 	 1184 	 y_value_node_76
	1.3158024e-01	;% 	 1185 	 x_value_node_77
	5.6133719e-01	;% 	 1186 	 y_value_node_77
	1.3185836e-01	;% 	 1187 	 x_value_node_78
	2.0862506e-01	;% 	 1188 	 y_value_node_78
	1.3305919e-01	;% 	 1189 	 x_value_node_79
	6.5336533e-01	;% 	 1190 	 y_value_node_79
	1.3567743e-01	;% 	 1191 	 x_value_node_80
	6.9443734e-01	;% 	 1192 	 y_value_node_80
	1.3589364e-01	;% 	 1193 	 x_value_node_81
	8.7331139e-01	;% 	 1194 	 y_value_node_81
	1.3617503e-01	;% 	 1195 	 x_value_node_82
	3.8608360e-01	;% 	 1196 	 y_value_node_82
	1.3641723e-01	;% 	 1197 	 x_value_node_83
	5.1636466e-01	;% 	 1198 	 y_value_node_83
	1.3816016e-01	;% 	 1199 	 x_value_node_84
	7.4225860e-01	;% 	 1200 	 y_value_node_84
	1.4370768e-01	;% 	 1201 	 x_value_node_85
	2.9093052e-01	;% 	 1202 	 y_value_node_85
	1.4472037e-01	;% 	 1203 	 x_value_node_86
	1.0000000e+00	;% 	 1204 	 y_value_node_86
	1.4684710e-01	;% 	 1205 	 x_value_node_87
	1.6476556e-01	;% 	 1206 	 y_value_node_87
	1.4793230e-01	;% 	 1207 	 x_value_node_88
	9.1673294e-01	;% 	 1208 	 y_value_node_88
	1.4991213e-01	;% 	 1209 	 x_value_node_89
	0.0000000e+00	;% 	 1210 	 y_value_node_89
	1.5115615e-01	;% 	 1211 	 x_value_node_90
	8.2214404e-02	;% 	 1212 	 y_value_node_90
	1.5864958e-01	;% 	 1213 	 x_value_node_91
	4.7003340e-01	;% 	 1214 	 y_value_node_91
	1.6382215e-01	;% 	 1215 	 x_value_node_92
	2.4443676e-01	;% 	 1216 	 y_value_node_92
	1.6439610e-01	;% 	 1217 	 x_value_node_93
	7.8624072e-01	;% 	 1218 	 y_value_node_93
	1.6721116e-01	;% 	 1219 	 x_value_node_94
	3.5427150e-01	;% 	 1220 	 y_value_node_94
	1.6848388e-01	;% 	 1221 	 x_value_node_95
	6.3201687e-01	;% 	 1222 	 y_value_node_95
	1.6892236e-01	;% 	 1223 	 x_value_node_96
	4.2550358e-01	;% 	 1224 	 y_value_node_96
	1.6897836e-01	;% 	 1225 	 x_value_node_97
	9.5825373e-01	;% 	 1226 	 y_value_node_97
	1.6927584e-01	;% 	 1227 	 x_value_node_98
	5.8992954e-01	;% 	 1228 	 y_value_node_98
	1.7447418e-01	;% 	 1229 	 x_value_node_99
	7.1163660e-01	;% 	 1230 	 y_value_node_99
	1.7458048e-01	;% 	 1231 	 x_value_node_100
	8.3132298e-01	;% 	 1232 	 y_value_node_100
	1.7484975e-01	;% 	 1233 	 x_value_node_101
	5.4751405e-01	;% 	 1234 	 y_value_node_101
	1.7619377e-01	;% 	 1235 	 x_value_node_102
	4.4037497e-02	;% 	 1236 	 y_value_node_102
	1.7929729e-01	;% 	 1237 	 x_value_node_103
	3.1272874e-01	;% 	 1238 	 y_value_node_103
	1.7940391e-01	;% 	 1239 	 x_value_node_104
	1.2220290e-01	;% 	 1240 	 y_value_node_104
	1.7959009e-01	;% 	 1241 	 x_value_node_105
	2.0114799e-01	;% 	 1242 	 y_value_node_105
	1.8276635e-01	;% 	 1243 	 x_value_node_106
	5.0625994e-01	;% 	 1244 	 y_value_node_106
	1.8294755e-01	;% 	 1245 	 x_value_node_107
	8.7515588e-01	;% 	 1246 	 y_value_node_107
	1.8402768e-01	;% 	 1247 	 x_value_node_108
	6.7113365e-01	;% 	 1248 	 y_value_node_108
	1.8786483e-01	;% 	 1249 	 x_value_node_109
	3.8749120e-01	;% 	 1250 	 y_value_node_109
	1.9024574e-01	;% 	 1251 	 x_value_node_110
	7.4981266e-01	;% 	 1252 	 y_value_node_110
	1.9415901e-01	;% 	 1253 	 x_value_node_111
	2.7180184e-01	;% 	 1254 	 y_value_node_111
	1.9567900e-01	;% 	 1255 	 x_value_node_112
	1.5965806e-01	;% 	 1256 	 y_value_node_112
	1.9722943e-01	;% 	 1257 	 x_value_node_113
	1.0000000e+00	;% 	 1258 	 y_value_node_113
	1.9918682e-01	;% 	 1259 	 x_value_node_114
	4.6327426e-01	;% 	 1260 	 y_value_node_114
	1.9940825e-01	;% 	 1261 	 x_value_node_115
	9.1823208e-01	;% 	 1262 	 y_value_node_115
	2.0101466e-01	;% 	 1263 	 x_value_node_116
	0.0000000e+00	;% 	 1264 	 y_value_node_116
	2.0600050e-01	;% 	 1265 	 x_value_node_117
	8.7918166e-02	;% 	 1266 	 y_value_node_117
	2.0808129e-01	;% 	 1267 	 x_value_node_118
	6.2462091e-01	;% 	 1268 	 y_value_node_118
	2.0910119e-01	;% 	 1269 	 x_value_node_119
	7.9365782e-01	;% 	 1270 	 y_value_node_119
	2.0965595e-01	;% 	 1271 	 x_value_node_120
	5.8359937e-01	;% 	 1272 	 y_value_node_120
	2.1072805e-01	;% 	 1273 	 x_value_node_121
	3.4373864e-01	;% 	 1274 	 y_value_node_121
	2.1271360e-01	;% 	 1275 	 x_value_node_122
	2.2896129e-01	;% 	 1276 	 y_value_node_122
	2.1393912e-01	;% 	 1277 	 x_value_node_123
	4.2105630e-01	;% 	 1278 	 y_value_node_123
	2.1753397e-01	;% 	 1279 	 x_value_node_124
	5.3894040e-01	;% 	 1280 	 y_value_node_124
	2.1892790e-01	;% 	 1281 	 x_value_node_125
	7.0972246e-01	;% 	 1282 	 y_value_node_125
	2.2091703e-01	;% 	 1283 	 x_value_node_126
	8.3740401e-01	;% 	 1284 	 y_value_node_126
	2.2298622e-01	;% 	 1285 	 x_value_node_127
	9.5923120e-01	;% 	 1286 	 y_value_node_127
	2.2590943e-01	;% 	 1287 	 x_value_node_128
	3.0126176e-01	;% 	 1288 	 y_value_node_128
	2.2711942e-01	;% 	 1289 	 x_value_node_129
	4.4939478e-02	;% 	 1290 	 y_value_node_129
	2.2715630e-01	;% 	 1291 	 x_value_node_130
	5.0001985e-01	;% 	 1292 	 y_value_node_130
	2.2808718e-01	;% 	 1293 	 x_value_node_131
	6.6008957e-01	;% 	 1294 	 y_value_node_131
	2.2954182e-01	;% 	 1295 	 x_value_node_132
	1.8483672e-01	;% 	 1296 	 y_value_node_132
	2.3092812e-01	;% 	 1297 	 x_value_node_133
	8.7933045e-01	;% 	 1298 	 y_value_node_133
	2.3239182e-01	;% 	 1299 	 x_value_node_134
	3.7694075e-01	;% 	 1300 	 y_value_node_134
	2.3461152e-01	;% 	 1301 	 x_value_node_135
	1.3326286e-01	;% 	 1302 	 y_value_node_135
	2.3575807e-01	;% 	 1303 	 x_value_node_136
	7.5597623e-01	;% 	 1304 	 y_value_node_136
	2.3915456e-01	;% 	 1305 	 x_value_node_137
	4.5600333e-01	;% 	 1306 	 y_value_node_137
	2.4250127e-01	;% 	 1307 	 x_value_node_138
	2.6016538e-01	;% 	 1308 	 y_value_node_138
	2.4568085e-01	;% 	 1309 	 x_value_node_139
	5.7166282e-01	;% 	 1310 	 y_value_node_139
	2.4956832e-01	;% 	 1311 	 x_value_node_140
	1.0000000e+00	;% 	 1312 	 y_value_node_140
	2.5052151e-01	;% 	 1313 	 x_value_node_141
	0.0000000e+00	;% 	 1314 	 y_value_node_141
	2.5057084e-01	;% 	 1315 	 x_value_node_142
	6.1623442e-01	;% 	 1316 	 y_value_node_142
	2.5108782e-01	;% 	 1317 	 x_value_node_143
	9.2072459e-01	;% 	 1318 	 y_value_node_143
	2.5383690e-01	;% 	 1319 	 x_value_node_144
	8.0176072e-01	;% 	 1320 	 y_value_node_144
	2.5399407e-01	;% 	 1321 	 x_value_node_145
	3.3278480e-01	;% 	 1322 	 y_value_node_145
	2.5410023e-01	;% 	 1323 	 x_value_node_146
	4.0995372e-01	;% 	 1324 	 y_value_node_146
	2.5420499e-01	;% 	 1325 	 x_value_node_147
	8.9748081e-02	;% 	 1326 	 y_value_node_147
	2.5534395e-01	;% 	 1327 	 x_value_node_148
	6.9048784e-01	;% 	 1328 	 y_value_node_148
	2.5969373e-01	;% 	 1329 	 x_value_node_149
	2.1783665e-01	;% 	 1330 	 y_value_node_149
	2.6325772e-01	;% 	 1331 	 x_value_node_150
	5.3371854e-01	;% 	 1332 	 y_value_node_150
	2.6549745e-01	;% 	 1333 	 x_value_node_151
	4.8941003e-01	;% 	 1334 	 y_value_node_151
	2.6696183e-01	;% 	 1335 	 x_value_node_152
	7.2971021e-01	;% 	 1336 	 y_value_node_152
	2.6904301e-01	;% 	 1337 	 x_value_node_153
	8.4389790e-01	;% 	 1338 	 y_value_node_153
	2.7145943e-01	;% 	 1339 	 x_value_node_154
	1.7077159e-01	;% 	 1340 	 y_value_node_154
	2.7189660e-01	;% 	 1341 	 x_value_node_155
	2.9180123e-01	;% 	 1342 	 y_value_node_155
	2.7458060e-01	;% 	 1343 	 x_value_node_156
	3.6497398e-01	;% 	 1344 	 y_value_node_156
	2.7529898e-01	;% 	 1345 	 x_value_node_157
	4.4295003e-01	;% 	 1346 	 y_value_node_157
	2.7532324e-01	;% 	 1347 	 x_value_node_158
	6.5382588e-01	;% 	 1348 	 y_value_node_158
	2.7570767e-01	;% 	 1349 	 x_value_node_159
	4.5160173e-02	;% 	 1350 	 y_value_node_159
	2.7660310e-01	;% 	 1351 	 x_value_node_160
	9.5823117e-01	;% 	 1352 	 y_value_node_160
	2.7876629e-01	;% 	 1353 	 x_value_node_161
	8.8266047e-01	;% 	 1354 	 y_value_node_161
	2.8051729e-01	;% 	 1355 	 x_value_node_162
	5.8091720e-01	;% 	 1356 	 y_value_node_162
	2.8286243e-01	;% 	 1357 	 x_value_node_163
	7.7371515e-01	;% 	 1358 	 y_value_node_163
	2.8492088e-01	;% 	 1359 	 x_value_node_164
	1.2955627e-01	;% 	 1360 	 y_value_node_164
	2.8923160e-01	;% 	 1361 	 x_value_node_165
	2.5135573e-01	;% 	 1362 	 y_value_node_165
	2.9220464e-01	;% 	 1363 	 x_value_node_166
	3.9771869e-01	;% 	 1364 	 y_value_node_166
	2.9714163e-01	;% 	 1365 	 x_value_node_167
	6.2170797e-01	;% 	 1366 	 y_value_node_167
	2.9730352e-01	;% 	 1367 	 x_value_node_168
	6.9421251e-01	;% 	 1368 	 y_value_node_168
	2.9863937e-01	;% 	 1369 	 x_value_node_169
	3.2363435e-01	;% 	 1370 	 y_value_node_169
	2.9893297e-01	;% 	 1371 	 x_value_node_170
	0.0000000e+00	;% 	 1372 	 y_value_node_170
	3.0031179e-01	;% 	 1373 	 x_value_node_171
	5.1116328e-01	;% 	 1374 	 y_value_node_171
	3.0038778e-01	;% 	 1375 	 x_value_node_172
	1.0000000e+00	;% 	 1376 	 y_value_node_172
	3.0214240e-01	;% 	 1377 	 x_value_node_173
	4.7080464e-01	;% 	 1378 	 y_value_node_173
	3.0243014e-01	;% 	 1379 	 x_value_node_174
	8.1915406e-01	;% 	 1380 	 y_value_node_174
	3.0247257e-01	;% 	 1381 	 x_value_node_175
	8.7332895e-02	;% 	 1382 	 y_value_node_175
	3.0311868e-01	;% 	 1383 	 x_value_node_176
	2.0723209e-01	;% 	 1384 	 y_value_node_176
	3.0369864e-01	;% 	 1385 	 x_value_node_177
	9.1654417e-01	;% 	 1386 	 y_value_node_177
	3.0610154e-01	;% 	 1387 	 x_value_node_178
	5.4902437e-01	;% 	 1388 	 y_value_node_178
	3.0963521e-01	;% 	 1389 	 x_value_node_179
	7.3998533e-01	;% 	 1390 	 y_value_node_179
	3.1266077e-01	;% 	 1391 	 x_value_node_180
	4.2997135e-01	;% 	 1392 	 y_value_node_180
	3.1695286e-01	;% 	 1393 	 x_value_node_181
	3.5637145e-01	;% 	 1394 	 y_value_node_181
	3.1775157e-01	;% 	 1395 	 x_value_node_182
	2.8507889e-01	;% 	 1396 	 y_value_node_182
	3.1953505e-01	;% 	 1397 	 x_value_node_183
	1.6647171e-01	;% 	 1398 	 y_value_node_183
	3.2030470e-01	;% 	 1399 	 x_value_node_184
	5.8780431e-01	;% 	 1400 	 y_value_node_184
	3.2046531e-01	;% 	 1401 	 x_value_node_185
	8.6631592e-01	;% 	 1402 	 y_value_node_185
	3.2240387e-01	;% 	 1403 	 x_value_node_186
	6.6005783e-01	;% 	 1404 	 y_value_node_186
	3.2423259e-01	;% 	 1405 	 x_value_node_187
	4.3756364e-02	;% 	 1406 	 y_value_node_187
	3.2679954e-01	;% 	 1407 	 x_value_node_188
	9.5681746e-01	;% 	 1408 	 y_value_node_188
	3.2743645e-01	;% 	 1409 	 x_value_node_189
	7.8343749e-01	;% 	 1410 	 y_value_node_189
	3.3173082e-01	;% 	 1411 	 x_value_node_190
	3.9190059e-01	;% 	 1412 	 y_value_node_190
	3.3286851e-01	;% 	 1413 	 x_value_node_191
	2.4182691e-01	;% 	 1414 	 y_value_node_191
	3.3432976e-01	;% 	 1415 	 x_value_node_192
	1.2638944e-01	;% 	 1416 	 y_value_node_192
	3.3555235e-01	;% 	 1417 	 x_value_node_193
	7.0741402e-01	;% 	 1418 	 y_value_node_193
	3.4138254e-01	;% 	 1419 	 x_value_node_194
	6.2182160e-01	;% 	 1420 	 y_value_node_194
	3.4481961e-01	;% 	 1421 	 x_value_node_195
	3.1903668e-01	;% 	 1422 	 y_value_node_195
	3.4706405e-01	;% 	 1423 	 x_value_node_196
	8.2889894e-01	;% 	 1424 	 y_value_node_196
	3.4717517e-01	;% 	 1425 	 x_value_node_197
	0.0000000e+00	;% 	 1426 	 y_value_node_197
	3.4819107e-01	;% 	 1427 	 x_value_node_198
	9.1037176e-01	;% 	 1428 	 y_value_node_198
	3.4949879e-01	;% 	 1429 	 x_value_node_199
	1.0000000e+00	;% 	 1430 	 y_value_node_199
	3.4963781e-01	;% 	 1431 	 x_value_node_200
	8.4823115e-02	;% 	 1432 	 y_value_node_200
	3.4980923e-01	;% 	 1433 	 x_value_node_201
	2.0227563e-01	;% 	 1434 	 y_value_node_201
	3.5360518e-01	;% 	 1435 	 x_value_node_202
	7.4808851e-01	;% 	 1436 	 y_value_node_202
	3.5833545e-01	;% 	 1437 	 x_value_node_203
	3.5882226e-01	;% 	 1438 	 y_value_node_203
	3.5953008e-01	;% 	 1439 	 x_value_node_204
	2.7465084e-01	;% 	 1440 	 y_value_node_204
	3.6209536e-01	;% 	 1441 	 x_value_node_205
	6.8244865e-01	;% 	 1442 	 y_value_node_205
	3.6846652e-01	;% 	 1443 	 x_value_node_206
	6.5066168e-01	;% 	 1444 	 y_value_node_206
	3.6862805e-01	;% 	 1445 	 x_value_node_207
	1.6177985e-01	;% 	 1446 	 y_value_node_207
	3.6955994e-01	;% 	 1447 	 x_value_node_208
	8.7099158e-01	;% 	 1448 	 y_value_node_208
	3.7048604e-01	;% 	 1449 	 x_value_node_209
	7.9188165e-01	;% 	 1450 	 y_value_node_209
	3.7313051e-01	;% 	 1451 	 x_value_node_210
	4.0484732e-02	;% 	 1452 	 y_value_node_210
	3.7352246e-01	;% 	 1453 	 x_value_node_211
	9.5465150e-01	;% 	 1454 	 y_value_node_211
	3.7987297e-01	;% 	 1455 	 x_value_node_212
	2.3710171e-01	;% 	 1456 	 y_value_node_212
	3.8212589e-01	;% 	 1457 	 x_value_node_213
	7.1531315e-01	;% 	 1458 	 y_value_node_213
	3.8323088e-01	;% 	 1459 	 x_value_node_214
	1.2356183e-01	;% 	 1460 	 y_value_node_214
	3.8639918e-01	;% 	 1461 	 x_value_node_215
	3.0072378e-01	;% 	 1462 	 y_value_node_215
	3.8938250e-01	;% 	 1463 	 x_value_node_216
	3.3337537e-01	;% 	 1464 	 y_value_node_216
	3.9394262e-01	;% 	 1465 	 x_value_node_217
	8.3384261e-01	;% 	 1466 	 y_value_node_217
	3.9395820e-01	;% 	 1467 	 x_value_node_218
	8.0529349e-02	;% 	 1468 	 y_value_node_218
	3.9539450e-01	;% 	 1469 	 x_value_node_219
	1.9515687e-01	;% 	 1470 	 y_value_node_219
	3.9616953e-01	;% 	 1471 	 x_value_node_220
	7.5640454e-01	;% 	 1472 	 y_value_node_220
	3.9622946e-01	;% 	 1473 	 x_value_node_221
	9.1252665e-01	;% 	 1474 	 y_value_node_221
	3.9635872e-01	;% 	 1475 	 x_value_node_222
	0.0000000e+00	;% 	 1476 	 y_value_node_222
	3.9693984e-01	;% 	 1477 	 x_value_node_223
	1.0000000e+00	;% 	 1478 	 y_value_node_223
	4.0664698e-01	;% 	 1479 	 x_value_node_224
	6.7687627e-01	;% 	 1480 	 y_value_node_224
	4.0894258e-01	;% 	 1481 	 x_value_node_225
	2.7180538e-01	;% 	 1482 	 y_value_node_225
	4.1440843e-01	;% 	 1483 	 x_value_node_226
	7.9704750e-01	;% 	 1484 	 y_value_node_226
	4.1902240e-01	;% 	 1485 	 x_value_node_227
	8.7295043e-01	;% 	 1486 	 y_value_node_227
	4.2055978e-01	;% 	 1487 	 x_value_node_228
	1.5279205e-01	;% 	 1488 	 y_value_node_228
	4.2114686e-01	;% 	 1489 	 x_value_node_229
	9.5489471e-01	;% 	 1490 	 y_value_node_229
	4.2169461e-01	;% 	 1491 	 x_value_node_230
	7.2023337e-01	;% 	 1492 	 y_value_node_230
	4.2328663e-01	;% 	 1493 	 x_value_node_231
	4.8442513e-02	;% 	 1494 	 y_value_node_231
	4.2429142e-01	;% 	 1495 	 x_value_node_232
	2.3318275e-01	;% 	 1496 	 y_value_node_232
	4.2817315e-01	;% 	 1497 	 x_value_node_233
	1.0465563e-01	;% 	 1498 	 y_value_node_233
	4.3048696e-01	;% 	 1499 	 x_value_node_234
	3.1246884e-01	;% 	 1500 	 y_value_node_234
	4.3689647e-01	;% 	 1501 	 x_value_node_235
	1.9447269e-01	;% 	 1502 	 y_value_node_235
	4.3877287e-01	;% 	 1503 	 x_value_node_236
	7.6031031e-01	;% 	 1504 	 y_value_node_236
	4.4069477e-01	;% 	 1505 	 x_value_node_237
	0.0000000e+00	;% 	 1506 	 y_value_node_237
	4.4229107e-01	;% 	 1507 	 x_value_node_238
	8.3561086e-01	;% 	 1508 	 y_value_node_238
	4.4408851e-01	;% 	 1509 	 x_value_node_239
	1.0000000e+00	;% 	 1510 	 y_value_node_239
	4.4501598e-01	;% 	 1511 	 x_value_node_240
	9.1110599e-01	;% 	 1512 	 y_value_node_240
	4.4821661e-01	;% 	 1513 	 x_value_node_241
	6.9317992e-01	;% 	 1514 	 y_value_node_241
	4.5034605e-01	;% 	 1515 	 x_value_node_242
	2.6802345e-01	;% 	 1516 	 y_value_node_242
	4.5773919e-01	;% 	 1517 	 x_value_node_243
	7.9917302e-01	;% 	 1518 	 y_value_node_243
	4.6453076e-01	;% 	 1519 	 x_value_node_244
	1.3045383e-01	;% 	 1520 	 y_value_node_244
	4.6525387e-01	;% 	 1521 	 x_value_node_245
	8.1819259e-02	;% 	 1522 	 y_value_node_245
	4.6609466e-01	;% 	 1523 	 x_value_node_246
	7.3176236e-01	;% 	 1524 	 y_value_node_246
	4.6705307e-01	;% 	 1525 	 x_value_node_247
	3.9558894e-02	;% 	 1526 	 y_value_node_247
	4.6793976e-01	;% 	 1527 	 x_value_node_248
	9.5449722e-01	;% 	 1528 	 y_value_node_248
	4.6868454e-01	;% 	 1529 	 x_value_node_249
	1.7447312e-01	;% 	 1530 	 y_value_node_249
	4.6935411e-01	;% 	 1531 	 x_value_node_250
	8.6788079e-01	;% 	 1532 	 y_value_node_250
	4.6961817e-01	;% 	 1533 	 x_value_node_251
	2.2543986e-01	;% 	 1534 	 y_value_node_251
	4.7192637e-01	;% 	 1535 	 x_value_node_252
	3.0198012e-01	;% 	 1536 	 y_value_node_252
	4.8451201e-01	;% 	 1537 	 x_value_node_253
	7.7198858e-01	;% 	 1538 	 y_value_node_253
	4.8868224e-01	;% 	 1539 	 x_value_node_254
	0.0000000e+00	;% 	 1540 	 y_value_node_254
	4.9079676e-01	;% 	 1541 	 x_value_node_255
	1.0000000e+00	;% 	 1542 	 y_value_node_255
	4.9130669e-01	;% 	 1543 	 x_value_node_256
	9.0977084e-01	;% 	 1544 	 y_value_node_256
	4.9134601e-01	;% 	 1545 	 x_value_node_257
	6.9981268e-01	;% 	 1546 	 y_value_node_257
	4.9272255e-01	;% 	 1547 	 x_value_node_258
	8.2266614e-01	;% 	 1548 	 y_value_node_258
	4.9360354e-01	;% 	 1549 	 x_value_node_259
	2.6669810e-01	;% 	 1550 	 y_value_node_259
	5.0559732e-01	;% 	 1551 	 x_value_node_260
	1.0039660e-01	;% 	 1552 	 y_value_node_260
	5.0603995e-01	;% 	 1553 	 x_value_node_261
	1.4783728e-01	;% 	 1554 	 y_value_node_261
	5.0639193e-01	;% 	 1555 	 x_value_node_262
	1.9520090e-01	;% 	 1556 	 y_value_node_262
	5.0925455e-01	;% 	 1557 	 x_value_node_263
	7.3704021e-01	;% 	 1558 	 y_value_node_263
	5.0959579e-01	;% 	 1559 	 x_value_node_264
	5.0617467e-02	;% 	 1560 	 y_value_node_264
	5.1246676e-01	;% 	 1561 	 x_value_node_265
	2.3502752e-01	;% 	 1562 	 y_value_node_265
	5.1394203e-01	;% 	 1563 	 x_value_node_266
	8.6500021e-01	;% 	 1564 	 y_value_node_266
	5.1399957e-01	;% 	 1565 	 x_value_node_267
	9.5402917e-01	;% 	 1566 	 y_value_node_267
	5.1628334e-01	;% 	 1567 	 x_value_node_268
	3.0066397e-01	;% 	 1568 	 y_value_node_268
	5.2248743e-01	;% 	 1569 	 x_value_node_269
	7.8153799e-01	;% 	 1570 	 y_value_node_269
	5.3148563e-01	;% 	 1571 	 x_value_node_270
	0.0000000e+00	;% 	 1572 	 y_value_node_270
	5.3347450e-01	;% 	 1573 	 x_value_node_271
	6.9717875e-01	;% 	 1574 	 y_value_node_271
	5.3640356e-01	;% 	 1575 	 x_value_node_272
	9.0887624e-01	;% 	 1576 	 y_value_node_272
	5.3725060e-01	;% 	 1577 	 x_value_node_273
	1.0000000e+00	;% 	 1578 	 y_value_node_273
	5.3773696e-01	;% 	 1579 	 x_value_node_274
	8.2288628e-01	;% 	 1580 	 y_value_node_274
	5.4299544e-01	;% 	 1581 	 x_value_node_275
	2.6576594e-01	;% 	 1582 	 y_value_node_275
	5.4367274e-01	;% 	 1583 	 x_value_node_276
	1.7347782e-01	;% 	 1584 	 y_value_node_276
	5.4570431e-01	;% 	 1585 	 x_value_node_277
	1.2655260e-01	;% 	 1586 	 y_value_node_277
	5.4726983e-01	;% 	 1587 	 x_value_node_278
	7.3778647e-01	;% 	 1588 	 y_value_node_278
	5.4963512e-01	;% 	 1589 	 x_value_node_279
	2.2069904e-01	;% 	 1590 	 y_value_node_279
	5.4981493e-01	;% 	 1591 	 x_value_node_280
	8.1090751e-02	;% 	 1592 	 y_value_node_280
	5.5456322e-01	;% 	 1593 	 x_value_node_281
	3.9372551e-02	;% 	 1594 	 y_value_node_281
	5.5745951e-01	;% 	 1595 	 x_value_node_282
	3.0843172e-01	;% 	 1596 	 y_value_node_282
	5.5895088e-01	;% 	 1597 	 x_value_node_283
	8.6577664e-01	;% 	 1598 	 y_value_node_283
	5.5974380e-01	;% 	 1599 	 x_value_node_284
	9.5398928e-01	;% 	 1600 	 y_value_node_284
	5.6324876e-01	;% 	 1601 	 x_value_node_285
	7.7993324e-01	;% 	 1602 	 y_value_node_285
	5.7264129e-01	;% 	 1603 	 x_value_node_286
	6.8634174e-01	;% 	 1604 	 y_value_node_286
	5.7967179e-01	;% 	 1605 	 x_value_node_287
	0.0000000e+00	;% 	 1606 	 y_value_node_287
	5.8099567e-01	;% 	 1607 	 x_value_node_288
	1.9459690e-01	;% 	 1608 	 y_value_node_288
	5.8147405e-01	;% 	 1609 	 x_value_node_289
	8.2361036e-01	;% 	 1610 	 y_value_node_289
	5.8199262e-01	;% 	 1611 	 x_value_node_290
	9.0983184e-01	;% 	 1612 	 y_value_node_290
	5.8313077e-01	;% 	 1613 	 x_value_node_291
	2.8471853e-01	;% 	 1614 	 y_value_node_291
	5.8390205e-01	;% 	 1615 	 x_value_node_292
	1.0000000e+00	;% 	 1616 	 y_value_node_292
	5.8416474e-01	;% 	 1617 	 x_value_node_293
	1.4820911e-01	;% 	 1618 	 y_value_node_293
	5.8439662e-01	;% 	 1619 	 x_value_node_294
	7.3621589e-01	;% 	 1620 	 y_value_node_294
	5.8697119e-01	;% 	 1621 	 x_value_node_295
	2.4532665e-01	;% 	 1622 	 y_value_node_295
	5.8839574e-01	;% 	 1623 	 x_value_node_296
	1.0086013e-01	;% 	 1624 	 y_value_node_296
	5.9775017e-01	;% 	 1625 	 x_value_node_297
	5.0258264e-02	;% 	 1626 	 y_value_node_297
	6.0019384e-01	;% 	 1627 	 x_value_node_298
	3.2690698e-01	;% 	 1628 	 y_value_node_298
	6.0396017e-01	;% 	 1629 	 x_value_node_299
	7.8253504e-01	;% 	 1630 	 y_value_node_299
	6.0404333e-01	;% 	 1631 	 x_value_node_300
	8.6722692e-01	;% 	 1632 	 y_value_node_300
	6.0618126e-01	;% 	 1633 	 x_value_node_301
	9.5462366e-01	;% 	 1634 	 y_value_node_301
	6.0823344e-01	;% 	 1635 	 x_value_node_302
	7.0292251e-01	;% 	 1636 	 y_value_node_302
	6.1526256e-01	;% 	 1637 	 x_value_node_303
	2.1536339e-01	;% 	 1638 	 y_value_node_303
	6.1552985e-01	;% 	 1639 	 x_value_node_304
	6.6325702e-01	;% 	 1640 	 y_value_node_304
	6.1979339e-01	;% 	 1641 	 x_value_node_305
	2.8354774e-01	;% 	 1642 	 y_value_node_305
	6.2217008e-01	;% 	 1643 	 x_value_node_306
	1.7288396e-01	;% 	 1644 	 y_value_node_306
	6.2328753e-01	;% 	 1645 	 x_value_node_307
	0.0000000e+00	;% 	 1646 	 y_value_node_307
	6.2586547e-01	;% 	 1647 	 x_value_node_308
	8.2626065e-01	;% 	 1648 	 y_value_node_308
	6.2611925e-01	;% 	 1649 	 x_value_node_309
	7.4623156e-01	;% 	 1650 	 y_value_node_309
	6.2805750e-01	;% 	 1651 	 x_value_node_310
	1.2981427e-01	;% 	 1652 	 y_value_node_310
	6.2833793e-01	;% 	 1653 	 x_value_node_311
	9.1104869e-01	;% 	 1654 	 y_value_node_311
	6.3099120e-01	;% 	 1655 	 x_value_node_312
	8.5920092e-02	;% 	 1656 	 y_value_node_312
	6.3132719e-01	;% 	 1657 	 x_value_node_313
	1.0000000e+00	;% 	 1658 	 y_value_node_313
	6.3601632e-01	;% 	 1659 	 x_value_node_314
	3.5337271e-01	;% 	 1660 	 y_value_node_314
	6.3773824e-01	;% 	 1661 	 x_value_node_315
	2.4622223e-01	;% 	 1662 	 y_value_node_315
	6.4565121e-01	;% 	 1663 	 x_value_node_316
	4.0456307e-02	;% 	 1664 	 y_value_node_316
	6.4577948e-01	;% 	 1665 	 x_value_node_317
	3.1447404e-01	;% 	 1666 	 y_value_node_317
	6.4655663e-01	;% 	 1667 	 x_value_node_318
	7.0815665e-01	;% 	 1668 	 y_value_node_318
	6.4831679e-01	;% 	 1669 	 x_value_node_319
	6.3417201e-01	;% 	 1670 	 y_value_node_319
	6.4848840e-01	;% 	 1671 	 x_value_node_320
	7.8784040e-01	;% 	 1672 	 y_value_node_320
	6.5028060e-01	;% 	 1673 	 x_value_node_321
	8.6926055e-01	;% 	 1674 	 y_value_node_321
	6.5364776e-01	;% 	 1675 	 x_value_node_322
	9.5521788e-01	;% 	 1676 	 y_value_node_322
	6.5804264e-01	;% 	 1677 	 x_value_node_323
	2.0284599e-01	;% 	 1678 	 y_value_node_323
	6.6175268e-01	;% 	 1679 	 x_value_node_324
	6.7226162e-01	;% 	 1680 	 y_value_node_324
	6.6507596e-01	;% 	 1681 	 x_value_node_325
	3.8708442e-01	;% 	 1682 	 y_value_node_325
	6.6577282e-01	;% 	 1683 	 x_value_node_326
	2.7517102e-01	;% 	 1684 	 y_value_node_326
	6.6624358e-01	;% 	 1685 	 x_value_node_327
	1.6056443e-01	;% 	 1686 	 y_value_node_327
	6.6975065e-01	;% 	 1687 	 x_value_node_328
	7.4914536e-01	;% 	 1688 	 y_value_node_328
	6.7235706e-01	;% 	 1689 	 x_value_node_329
	8.2935481e-01	;% 	 1690 	 y_value_node_329
	6.7237349e-01	;% 	 1691 	 x_value_node_330
	0.0000000e+00	;% 	 1692 	 y_value_node_330
	6.7396136e-01	;% 	 1693 	 x_value_node_331
	1.1767889e-01	;% 	 1694 	 y_value_node_331
	6.7432196e-01	;% 	 1695 	 x_value_node_332
	5.9804006e-01	;% 	 1696 	 y_value_node_332
	6.7561498e-01	;% 	 1697 	 x_value_node_333
	7.6902712e-02	;% 	 1698 	 y_value_node_333
	6.7600438e-01	;% 	 1699 	 x_value_node_334
	9.1228680e-01	;% 	 1700 	 y_value_node_334
	6.7735392e-01	;% 	 1701 	 x_value_node_335
	3.4532229e-01	;% 	 1702 	 y_value_node_335
	6.7976853e-01	;% 	 1703 	 x_value_node_336
	1.0000000e+00	;% 	 1704 	 y_value_node_336
	6.8468867e-01	;% 	 1705 	 x_value_node_337
	2.3218015e-01	;% 	 1706 	 y_value_node_337
	6.8716656e-01	;% 	 1707 	 x_value_node_338
	4.2951114e-01	;% 	 1708 	 y_value_node_338
	6.8951085e-01	;% 	 1709 	 x_value_node_339
	7.1068138e-01	;% 	 1710 	 y_value_node_339
	6.8987177e-01	;% 	 1711 	 x_value_node_340
	6.3723654e-01	;% 	 1712 	 y_value_node_340
	6.9200881e-01	;% 	 1713 	 x_value_node_341
	5.5596978e-01	;% 	 1714 	 y_value_node_341
	6.9250614e-01	;% 	 1715 	 x_value_node_342
	3.0633028e-01	;% 	 1716 	 y_value_node_342
	6.9422843e-01	;% 	 1717 	 x_value_node_343
	7.8984980e-01	;% 	 1718 	 y_value_node_343
	6.9784613e-01	;% 	 1719 	 x_value_node_344
	4.7072697e-01	;% 	 1720 	 y_value_node_344
	6.9820764e-01	;% 	 1721 	 x_value_node_345
	8.7110731e-01	;% 	 1722 	 y_value_node_345
	6.9909641e-01	;% 	 1723 	 x_value_node_346
	4.2085323e-02	;% 	 1724 	 y_value_node_346
	6.9970469e-01	;% 	 1725 	 x_value_node_347
	5.1086439e-01	;% 	 1726 	 y_value_node_347
	7.0238965e-01	;% 	 1727 	 x_value_node_348
	9.5575126e-01	;% 	 1728 	 y_value_node_348
	7.0392280e-01	;% 	 1729 	 x_value_node_349
	4.0084688e-01	;% 	 1730 	 y_value_node_349
	7.0450990e-01	;% 	 1731 	 x_value_node_350
	1.8674848e-01	;% 	 1732 	 y_value_node_350
	7.0845204e-01	;% 	 1733 	 x_value_node_351
	6.7367399e-01	;% 	 1734 	 y_value_node_351
	7.0979063e-01	;% 	 1735 	 x_value_node_352
	2.6416666e-01	;% 	 1736 	 y_value_node_352
	7.1064745e-01	;% 	 1737 	 x_value_node_353
	3.6707516e-01	;% 	 1738 	 y_value_node_353
	7.1173731e-01	;% 	 1739 	 x_value_node_354
	5.9807694e-01	;% 	 1740 	 y_value_node_354
	7.1181301e-01	;% 	 1741 	 x_value_node_355
	1.4292338e-01	;% 	 1742 	 y_value_node_355
	7.1482879e-01	;% 	 1743 	 x_value_node_356
	7.5053148e-01	;% 	 1744 	 y_value_node_356
	7.1986165e-01	;% 	 1745 	 x_value_node_357
	8.3074088e-01	;% 	 1746 	 y_value_node_357
	7.2033890e-01	;% 	 1747 	 x_value_node_358
	9.1736015e-02	;% 	 1748 	 y_value_node_358
	7.2115313e-01	;% 	 1749 	 x_value_node_359
	0.0000000e+00	;% 	 1750 	 y_value_node_359
	7.2522848e-01	;% 	 1751 	 x_value_node_360
	9.1324428e-01	;% 	 1752 	 y_value_node_360
	7.2536456e-01	;% 	 1753 	 x_value_node_361
	3.3226200e-01	;% 	 1754 	 y_value_node_361
	7.2664518e-01	;% 	 1755 	 x_value_node_362
	4.4105330e-01	;% 	 1756 	 y_value_node_362
	7.2944874e-01	;% 	 1757 	 x_value_node_363
	1.0000000e+00	;% 	 1758 	 y_value_node_363
	7.3038411e-01	;% 	 1759 	 x_value_node_364
	5.2756737e-01	;% 	 1760 	 y_value_node_364
	7.3052367e-01	;% 	 1761 	 x_value_node_365
	2.1827924e-01	;% 	 1762 	 y_value_node_365
	7.3342921e-01	;% 	 1763 	 x_value_node_366
	5.6367258e-01	;% 	 1764 	 y_value_node_366
	7.3350983e-01	;% 	 1765 	 x_value_node_367
	6.3515743e-01	;% 	 1766 	 y_value_node_367
	7.3462253e-01	;% 	 1767 	 x_value_node_368
	7.1157650e-01	;% 	 1768 	 y_value_node_368
	7.3849802e-01	;% 	 1769 	 x_value_node_369
	4.8080011e-01	;% 	 1770 	 y_value_node_369
	7.3989711e-01	;% 	 1771 	 x_value_node_370
	2.9492112e-01	;% 	 1772 	 y_value_node_370
	7.4115372e-01	;% 	 1773 	 x_value_node_371
	7.9065434e-01	;% 	 1774 	 y_value_node_371
	7.4360438e-01	;% 	 1775 	 x_value_node_372
	4.0193427e-01	;% 	 1776 	 y_value_node_372
	7.4569311e-01	;% 	 1777 	 x_value_node_373
	4.7172346e-02	;% 	 1778 	 y_value_node_373
	7.4737940e-01	;% 	 1779 	 x_value_node_374
	8.7199225e-01	;% 	 1780 	 y_value_node_374
	7.5200843e-01	;% 	 1781 	 x_value_node_375
	1.2828473e-01	;% 	 1782 	 y_value_node_375
	7.5249964e-01	;% 	 1783 	 x_value_node_376
	9.5601151e-01	;% 	 1784 	 y_value_node_376
	7.5311516e-01	;% 	 1785 	 x_value_node_377
	2.5350521e-01	;% 	 1786 	 y_value_node_377
	7.5379066e-01	;% 	 1787 	 x_value_node_378
	6.7221403e-01	;% 	 1788 	 y_value_node_378
	7.5453373e-01	;% 	 1789 	 x_value_node_379
	1.7300999e-01	;% 	 1790 	 y_value_node_379
	7.5553678e-01	;% 	 1791 	 x_value_node_380
	5.9684086e-01	;% 	 1792 	 y_value_node_380
	7.5697897e-01	;% 	 1793 	 x_value_node_381
	3.6408323e-01	;% 	 1794 	 y_value_node_381
	7.6125487e-01	;% 	 1795 	 x_value_node_382
	7.5078591e-01	;% 	 1796 	 y_value_node_382
	7.6411029e-01	;% 	 1797 	 x_value_node_383
	5.1187866e-01	;% 	 1798 	 y_value_node_383
	7.6650782e-01	;% 	 1799 	 x_value_node_384
	4.3859799e-01	;% 	 1800 	 y_value_node_384
	7.6795804e-01	;% 	 1801 	 x_value_node_385
	0.0000000e+00	;% 	 1802 	 y_value_node_385
	7.6833071e-01	;% 	 1803 	 x_value_node_386
	8.3119804e-01	;% 	 1804 	 y_value_node_386
	7.7186217e-01	;% 	 1805 	 x_value_node_387
	8.8736182e-02	;% 	 1806 	 y_value_node_387
	7.7252391e-01	;% 	 1807 	 x_value_node_388
	3.2689948e-01	;% 	 1808 	 y_value_node_388
	7.7472447e-01	;% 	 1809 	 x_value_node_389
	5.5210791e-01	;% 	 1810 	 y_value_node_389
	7.7596279e-01	;% 	 1811 	 x_value_node_390
	9.1340699e-01	;% 	 1812 	 y_value_node_390
	7.7732694e-01	;% 	 1813 	 x_value_node_391
	2.0956051e-01	;% 	 1814 	 y_value_node_391
	7.7952553e-01	;% 	 1815 	 x_value_node_392
	6.3257728e-01	;% 	 1816 	 y_value_node_392
	7.8037547e-01	;% 	 1817 	 x_value_node_393
	7.1061713e-01	;% 	 1818 	 y_value_node_393
	7.8047351e-01	;% 	 1819 	 x_value_node_394
	1.0000000e+00	;% 	 1820 	 y_value_node_394
	7.8416831e-01	;% 	 1821 	 x_value_node_395
	4.7195577e-01	;% 	 1822 	 y_value_node_395
	7.8637355e-01	;% 	 1823 	 x_value_node_396
	2.8859989e-01	;% 	 1824 	 y_value_node_396
	7.8671381e-01	;% 	 1825 	 x_value_node_397
	3.9703329e-01	;% 	 1826 	 y_value_node_397
	7.8931429e-01	;% 	 1827 	 x_value_node_398
	7.9054566e-01	;% 	 1828 	 y_value_node_398
	7.9525095e-01	;% 	 1829 	 x_value_node_399
	4.6466542e-02	;% 	 1830 	 y_value_node_399
	7.9549553e-01	;% 	 1831 	 x_value_node_400
	2.4837358e-01	;% 	 1832 	 y_value_node_400
	7.9602364e-01	;% 	 1833 	 x_value_node_401
	1.3719012e-01	;% 	 1834 	 y_value_node_401
	7.9610138e-01	;% 	 1835 	 x_value_node_402
	5.9033006e-01	;% 	 1836 	 y_value_node_402
	7.9789799e-01	;% 	 1837 	 x_value_node_403
	8.7170675e-01	;% 	 1838 	 y_value_node_403
	7.9841970e-01	;% 	 1839 	 x_value_node_404
	6.6954466e-01	;% 	 1840 	 y_value_node_404
	8.0266896e-01	;% 	 1841 	 x_value_node_405
	5.1032661e-01	;% 	 1842 	 y_value_node_405
	8.0374687e-01	;% 	 1843 	 x_value_node_406
	9.5607680e-01	;% 	 1844 	 y_value_node_406
	8.0526079e-01	;% 	 1845 	 x_value_node_407
	3.5611002e-01	;% 	 1846 	 y_value_node_407
	8.0856438e-01	;% 	 1847 	 x_value_node_408
	7.5025617e-01	;% 	 1848 	 y_value_node_408
	8.1002843e-01	;% 	 1849 	 x_value_node_409
	1.7790521e-01	;% 	 1850 	 y_value_node_409
	8.1145987e-01	;% 	 1851 	 x_value_node_410
	4.3154787e-01	;% 	 1852 	 y_value_node_410
	8.1542769e-01	;% 	 1853 	 x_value_node_411
	0.0000000e+00	;% 	 1854 	 y_value_node_411
	8.1785916e-01	;% 	 1855 	 x_value_node_412
	8.2971381e-01	;% 	 1856 	 y_value_node_412
	8.1942511e-01	;% 	 1857 	 x_value_node_413
	9.5368926e-02	;% 	 1858 	 y_value_node_413
	8.1957030e-01	;% 	 1859 	 x_value_node_414
	5.4816790e-01	;% 	 1860 	 y_value_node_414
	8.2149264e-01	;% 	 1861 	 x_value_node_415
	3.1591187e-01	;% 	 1862 	 y_value_node_415
	8.2614114e-01	;% 	 1863 	 x_value_node_416
	6.2693049e-01	;% 	 1864 	 y_value_node_416
	8.2642883e-01	;% 	 1865 	 x_value_node_417
	7.1005833e-01	;% 	 1866 	 y_value_node_417
	8.2809505e-01	;% 	 1867 	 x_value_node_418
	9.1324899e-01	;% 	 1868 	 y_value_node_418
	8.2837454e-01	;% 	 1869 	 x_value_node_419
	2.2294907e-01	;% 	 1870 	 y_value_node_419
	8.2871043e-01	;% 	 1871 	 x_value_node_420
	4.6914409e-01	;% 	 1872 	 y_value_node_420
	8.3198934e-01	;% 	 1873 	 x_value_node_421
	3.8901836e-01	;% 	 1874 	 y_value_node_421
	8.3298908e-01	;% 	 1875 	 x_value_node_422
	1.0000000e+00	;% 	 1876 	 y_value_node_422
	8.3389174e-01	;% 	 1877 	 x_value_node_423
	2.7183958e-01	;% 	 1878 	 y_value_node_423
	8.3744686e-01	;% 	 1879 	 x_value_node_424
	5.8426809e-01	;% 	 1880 	 y_value_node_424
	8.3937072e-01	;% 	 1881 	 x_value_node_425
	7.8695861e-01	;% 	 1882 	 y_value_node_425
	8.4017002e-01	;% 	 1883 	 x_value_node_426
	6.6925667e-01	;% 	 1884 	 y_value_node_426
	8.4306503e-01	;% 	 1885 	 x_value_node_427
	4.8632758e-02	;% 	 1886 	 y_value_node_427
	8.4406772e-01	;% 	 1887 	 x_value_node_428
	5.0949877e-01	;% 	 1888 	 y_value_node_428
	8.4785318e-01	;% 	 1889 	 x_value_node_429
	1.4152357e-01	;% 	 1890 	 y_value_node_429
	8.4913113e-01	;% 	 1891 	 x_value_node_430
	8.7135088e-01	;% 	 1892 	 y_value_node_430
	8.5522174e-01	;% 	 1893 	 x_value_node_431
	3.4608451e-01	;% 	 1894 	 y_value_node_431
	8.5596823e-01	;% 	 1895 	 x_value_node_432
	9.5561783e-01	;% 	 1896 	 y_value_node_432
	8.5727918e-01	;% 	 1897 	 x_value_node_433
	4.2605346e-01	;% 	 1898 	 y_value_node_433
	8.5811212e-01	;% 	 1899 	 x_value_node_434
	7.4364195e-01	;% 	 1900 	 y_value_node_434
	8.5825878e-01	;% 	 1901 	 x_value_node_435
	1.9362971e-01	;% 	 1902 	 y_value_node_435
	8.6226778e-01	;% 	 1903 	 x_value_node_436
	0.0000000e+00	;% 	 1904 	 y_value_node_436
	8.6665207e-01	;% 	 1905 	 x_value_node_437
	8.2851689e-01	;% 	 1906 	 y_value_node_437
	8.6692056e-01	;% 	 1907 	 x_value_node_438
	9.4313174e-02	;% 	 1908 	 y_value_node_438
	8.6797522e-01	;% 	 1909 	 x_value_node_439
	3.0022073e-01	;% 	 1910 	 y_value_node_439
	8.6914743e-01	;% 	 1911 	 x_value_node_440
	5.5025132e-01	;% 	 1912 	 y_value_node_440
	8.7202312e-01	;% 	 1913 	 x_value_node_441
	4.6426026e-01	;% 	 1914 	 y_value_node_441
	8.7222669e-01	;% 	 1915 	 x_value_node_442
	6.4400204e-01	;% 	 1916 	 y_value_node_442
	8.7247468e-01	;% 	 1917 	 x_value_node_443
	2.4590818e-01	;% 	 1918 	 y_value_node_443
	8.7254708e-01	;% 	 1919 	 x_value_node_444
	6.0005066e-01	;% 	 1920 	 y_value_node_444
	8.7477303e-01	;% 	 1921 	 x_value_node_445
	6.9776369e-01	;% 	 1922 	 y_value_node_445
	8.7724893e-01	;% 	 1923 	 x_value_node_446
	3.8458050e-01	;% 	 1924 	 y_value_node_446
	8.8236891e-01	;% 	 1925 	 x_value_node_447
	9.1188805e-01	;% 	 1926 	 y_value_node_447
	8.8272802e-01	;% 	 1927 	 x_value_node_448
	5.0614246e-01	;% 	 1928 	 y_value_node_448
	8.8704018e-01	;% 	 1929 	 x_value_node_449
	1.0000000e+00	;% 	 1930 	 y_value_node_449
	8.8914193e-01	;% 	 1931 	 x_value_node_450
	7.8507355e-01	;% 	 1932 	 y_value_node_450
	8.9303599e-01	;% 	 1933 	 x_value_node_451
	1.6396663e-01	;% 	 1934 	 y_value_node_451
	8.9307261e-01	;% 	 1935 	 x_value_node_452
	4.4547263e-02	;% 	 1936 	 y_value_node_452
	9.0147441e-01	;% 	 1937 	 x_value_node_453
	8.6924570e-01	;% 	 1938 	 y_value_node_453
	9.0396328e-01	;% 	 1939 	 x_value_node_454
	3.3696041e-01	;% 	 1940 	 y_value_node_454
	9.0463585e-01	;% 	 1941 	 x_value_node_455
	7.4391816e-01	;% 	 1942 	 y_value_node_455
	9.0494845e-01	;% 	 1943 	 x_value_node_456
	1.2733417e-01	;% 	 1944 	 y_value_node_456
	9.0682090e-01	;% 	 1945 	 x_value_node_457
	4.2706541e-01	;% 	 1946 	 y_value_node_457
	9.0781193e-01	;% 	 1947 	 x_value_node_458
	2.0368639e-01	;% 	 1948 	 y_value_node_458
	9.0813559e-01	;% 	 1949 	 x_value_node_459
	9.5455482e-01	;% 	 1950 	 y_value_node_459
	9.0893862e-01	;% 	 1951 	 x_value_node_460
	2.8859361e-01	;% 	 1952 	 y_value_node_460
	9.1058273e-01	;% 	 1953 	 x_value_node_461
	5.6889806e-01	;% 	 1954 	 y_value_node_461
	9.1120229e-01	;% 	 1955 	 x_value_node_462
	0.0000000e+00	;% 	 1956 	 y_value_node_462
	9.1168565e-01	;% 	 1957 	 x_value_node_463
	6.6117662e-01	;% 	 1958 	 y_value_node_463
	9.1392606e-01	;% 	 1959 	 x_value_node_464
	6.1508989e-01	;% 	 1960 	 y_value_node_464
	9.1530870e-01	;% 	 1961 	 x_value_node_465
	8.2411561e-01	;% 	 1962 	 y_value_node_465
	9.1621646e-01	;% 	 1963 	 x_value_node_466
	4.7363061e-01	;% 	 1964 	 y_value_node_466
	9.1664758e-01	;% 	 1965 	 x_value_node_467
	8.3008717e-02	;% 	 1966 	 y_value_node_467
	9.1689766e-01	;% 	 1967 	 x_value_node_468
	5.2477868e-01	;% 	 1968 	 y_value_node_468
	9.1739888e-01	;% 	 1969 	 x_value_node_469
	2.4592126e-01	;% 	 1970 	 y_value_node_469
	9.1757543e-01	;% 	 1971 	 x_value_node_470
	3.8097188e-01	;% 	 1972 	 y_value_node_470
	9.1872532e-01	;% 	 1973 	 x_value_node_471
	7.0498059e-01	;% 	 1974 	 y_value_node_471
	9.3929527e-01	;% 	 1975 	 x_value_node_472
	9.0924256e-01	;% 	 1976 	 y_value_node_472
	9.4272557e-01	;% 	 1977 	 x_value_node_473
	1.0000000e+00	;% 	 1978 	 y_value_node_473
	9.4304610e-01	;% 	 1979 	 x_value_node_474
	7.7625424e-01	;% 	 1980 	 y_value_node_474
	9.4788597e-01	;% 	 1981 	 x_value_node_475
	1.6289641e-01	;% 	 1982 	 y_value_node_475
	9.5104275e-01	;% 	 1983 	 x_value_node_476
	3.1107389e-01	;% 	 1984 	 y_value_node_476
	9.5109032e-01	;% 	 1985 	 x_value_node_477
	5.1711158e-02	;% 	 1986 	 y_value_node_477
	9.5326555e-01	;% 	 1987 	 x_value_node_478
	8.6624767e-01	;% 	 1988 	 y_value_node_478
	9.5421810e-01	;% 	 1989 	 x_value_node_479
	4.4801474e-01	;% 	 1990 	 y_value_node_479
	9.5478573e-01	;% 	 1991 	 x_value_node_480
	5.8855584e-01	;% 	 1992 	 y_value_node_480
	9.5489716e-01	;% 	 1993 	 x_value_node_481
	3.5490099e-01	;% 	 1994 	 y_value_node_481
	9.5528423e-01	;% 	 1995 	 x_value_node_482
	0.0000000e+00	;% 	 1996 	 y_value_node_482
	9.5533466e-01	;% 	 1997 	 x_value_node_483
	4.0422028e-01	;% 	 1998 	 y_value_node_483
	9.5535842e-01	;% 	 1999 	 x_value_node_484
	6.3552980e-01	;% 	 2000 	 y_value_node_484
	9.5589998e-01	;% 	 2001 	 x_value_node_485
	1.1141211e-01	;% 	 2002 	 y_value_node_485
	9.5611368e-01	;% 	 2003 	 x_value_node_486
	2.1183103e-01	;% 	 2004 	 y_value_node_486
	9.5654780e-01	;% 	 2005 	 x_value_node_487
	5.4363754e-01	;% 	 2006 	 y_value_node_487
	9.5670852e-01	;% 	 2007 	 x_value_node_488
	4.9589087e-01	;% 	 2008 	 y_value_node_488
	9.5728072e-01	;% 	 2009 	 x_value_node_489
	7.3337068e-01	;% 	 2010 	 y_value_node_489
	9.5738849e-01	;% 	 2011 	 x_value_node_490
	6.8212939e-01	;% 	 2012 	 y_value_node_490
	9.5773320e-01	;% 	 2013 	 x_value_node_491
	2.6419791e-01	;% 	 2014 	 y_value_node_491
	9.5780261e-01	;% 	 2015 	 x_value_node_492
	9.5283389e-01	;% 	 2016 	 y_value_node_492
	9.5910290e-01	;% 	 2017 	 x_value_node_493
	8.1789148e-01	;% 	 2018 	 y_value_node_493
	1.0000000e+00	;% 	 2019 	 x_value_node_494
	0.0000000e+00	;% 	 2020 	 y_value_node_494
	1.0000000e+00	;% 	 2021 	 x_value_node_495
	1.0000000e+00	;% 	 2022 	 y_value_node_495
	1.0000000e+00	;% 	 2023 	 x_value_node_496
	9.0715877e-01	;% 	 2024 	 y_value_node_496
	1.0000000e+00	;% 	 2025 	 x_value_node_497
	7.7559956e-01	;% 	 2026 	 y_value_node_497
	1.0000000e+00	;% 	 2027 	 x_value_node_498
	1.4164649e-01	;% 	 2028 	 y_value_node_498
	1.0000000e+00	;% 	 2029 	 x_value_node_499
	1.8813296e-01	;% 	 2030 	 y_value_node_499
	1.0000000e+00	;% 	 2031 	 x_value_node_500
	3.3242791e-01	;% 	 2032 	 y_value_node_500
	1.0000000e+00	;% 	 2033 	 x_value_node_501
	9.1265472e-02	;% 	 2034 	 y_value_node_501
	1.0000000e+00	;% 	 2035 	 x_value_node_502
	3.7889192e-01	;% 	 2036 	 y_value_node_502
	1.0000000e+00	;% 	 2037 	 x_value_node_503
	4.7016301e-01	;% 	 2038 	 y_value_node_503
	1.0000000e+00	;% 	 2039 	 x_value_node_504
	6.0543172e-01	;% 	 2040 	 y_value_node_504
	1.0000000e+00	;% 	 2041 	 x_value_node_505
	4.5533406e-02	;% 	 2042 	 y_value_node_505
	1.0000000e+00	;% 	 2043 	 x_value_node_506
	2.8706552e-01	;% 	 2044 	 y_value_node_506
	1.0000000e+00	;% 	 2045 	 x_value_node_507
	4.2498101e-01	;% 	 2046 	 y_value_node_507
	1.0000000e+00	;% 	 2047 	 x_value_node_508
	5.1609679e-01	;% 	 2048 	 y_value_node_508
	1.0000000e+00	;% 	 2049 	 x_value_node_509
	5.6135008e-01	;% 	 2050 	 y_value_node_509
	1.0000000e+00	;% 	 2051 	 x_value_node_510
	6.9281584e-01	;% 	 2052 	 y_value_node_510
	1.0000000e+00	;% 	 2053 	 x_value_node_511
	8.6273591e-01	;% 	 2054 	 y_value_node_511
	1.0000000e+00	;% 	 2055 	 x_value_node_512
	6.4902673e-01	;% 	 2056 	 y_value_node_512
	1.0000000e+00	;% 	 2057 	 x_value_node_513
	7.3409928e-01	;% 	 2058 	 y_value_node_513
	1.0000000e+00	;% 	 2059 	 x_value_node_514
	2.3765820e-01	;% 	 2060 	 y_value_node_514
	1.0000000e+00	;% 	 2061 	 x_value_node_515
	8.1913529e-01	;% 	 2062 	 y_value_node_515
	1.0000000e+00	;% 	 2063 	 x_value_node_516
	9.5320641e-01	;% 	 2064 	 y_value_node_516
];

% Calculate MESH struct - 
MESH.NODE(1).edge_array = [ 22 31 31 2 ];
MESH.NODE(1).fixed = 0;
MESH.NODE(2).edge_array = [ 31 1 35 31 3 35 ];
MESH.NODE(2).fixed = 0;
MESH.NODE(3).edge_array = [ 2 35 42 35 4 42 ];
MESH.NODE(3).fixed = 0;
MESH.NODE(4).edge_array = [ 5 24 24 42 3 42 ];
MESH.NODE(4).fixed = 0;
MESH.NODE(5).edge_array = [ 24 4 25 24 6 25 ];
MESH.NODE(5).fixed = 0;
MESH.NODE(6).edge_array = [ 19 43 25 5 43 25 ];
MESH.NODE(6).fixed = 0;
MESH.NODE(7).edge_array = [ 38 19 38 29 8 29 ];
MESH.NODE(7).fixed = 0;
MESH.NODE(8).edge_array = [ 9 26 26 29 7 29 ];
MESH.NODE(8).fixed = 0;
MESH.NODE(9).edge_array = [ 30 10 8 26 30 26 ];
MESH.NODE(9).fixed = 0;
MESH.NODE(10).edge_array = [ 30 9 36 30 11 36 ];
MESH.NODE(10).fixed = 0;
MESH.NODE(11).edge_array = [ 33 12 33 36 36 10 ];
MESH.NODE(11).fixed = 0;
MESH.NODE(12).edge_array = [ 32 13 32 33 33 11 ];
MESH.NODE(12).fixed = 0;
MESH.NODE(13).edge_array = [ 14 41 41 32 32 12 ];
MESH.NODE(13).fixed = 0;
MESH.NODE(14).edge_array = [ 41 13 15 34 41 34 ];
MESH.NODE(14).fixed = 0;
MESH.NODE(15).edge_array = [ 14 34 34 27 16 27 ];
MESH.NODE(15).fixed = 0;
MESH.NODE(16).edge_array = [ 17 28 15 27 28 27 ];
MESH.NODE(16).fixed = 0;
MESH.NODE(17).edge_array = [ 28 16 18 40 28 40 ];
MESH.NODE(17).fixed = 0;
MESH.NODE(18).edge_array = [ 23 44 44 40 17 40 ];
MESH.NODE(18).fixed = 0;
MESH.NODE(19).edge_array = [ 6 43 43 38 7 38 ];
MESH.NODE(19).fixed = 0;
MESH.NODE(20).edge_array = [ 22 39 ];
MESH.NODE(20).fixed = 1;
MESH.NODE(21).edge_array = [ 37 23 ];
MESH.NODE(21).fixed = 0;
MESH.NODE(22).edge_array = [ 39 20 45 39 1 31 31 45 ];
MESH.NODE(22).fixed = 0;
MESH.NODE(23).edge_array = [ 18 44 37 21 37 44 ];
MESH.NODE(23).fixed = 0;
MESH.NODE(24).edge_array = [ 5 4 52 42 4 42 52 46 5 25 46 25 ];
MESH.NODE(24).fixed = 0;
MESH.NODE(25).edge_array = [ 46 62 43 62 5 24 46 24 6 5 43 6 ];
MESH.NODE(25).fixed = 0;
MESH.NODE(26).edge_array = [ 8 9 30 9 30 50 47 50 47 29 29 8 ];
MESH.NODE(26).fixed = 0;
MESH.NODE(27).edge_array = [ 34 15 15 16 28 16 49 28 49 51 51 34 ];
MESH.NODE(27).fixed = 0;
MESH.NODE(28).edge_array = [ 17 16 17 40 40 55 55 49 27 16 49 27 ];
MESH.NODE(28).fixed = 0;
MESH.NODE(29).edge_array = [ 56 47 38 56 26 47 38 7 26 8 7 8 ];
MESH.NODE(29).fixed = 0;
MESH.NODE(30).edge_array = [ 9 10 26 9 50 26 58 50 58 36 10 36 ];
MESH.NODE(30).fixed = 0;
MESH.NODE(31).edge_array = [ 22 1 22 45 66 45 48 66 35 48 1 2 35 2 ];
MESH.NODE(31).fixed = 0;
MESH.NODE(32).edge_array = [ 41 13 57 41 57 54 12 13 12 33 54 33 ];
MESH.NODE(32).fixed = 0;
MESH.NODE(33).edge_array = [ 12 32 54 53 32 54 11 12 53 36 11 36 ];
MESH.NODE(33).fixed = 0;
MESH.NODE(34).edge_array = [ 41 61 14 15 41 14 15 27 51 61 27 51 ];
MESH.NODE(34).fixed = 0;
MESH.NODE(35).edge_array = [ 31 48 65 48 31 2 2 3 42 65 3 42 ];
MESH.NODE(35).fixed = 0;
MESH.NODE(36).edge_array = [ 33 53 58 30 58 53 11 33 10 30 11 10 ];
MESH.NODE(36).fixed = 0;
MESH.NODE(37).edge_array = [ 60 44 23 21 44 23 ];
MESH.NODE(37).fixed = 0;
MESH.NODE(38).edge_array = [ 56 59 43 59 43 19 7 19 29 56 7 29 ];
MESH.NODE(38).fixed = 0;
MESH.NODE(39).edge_array = [ 45 64 22 20 22 45 ];
MESH.NODE(39).fixed = 1;
MESH.NODE(40).edge_array = [ 18 44 63 44 17 18 28 17 63 55 28 55 ];
MESH.NODE(40).fixed = 0;
MESH.NODE(41).edge_array = [ 14 13 34 61 14 34 61 57 32 13 57 32 ];
MESH.NODE(41).fixed = 0;
MESH.NODE(42).edge_array = [ 35 65 52 65 52 24 3 35 4 24 3 4 ];
MESH.NODE(42).fixed = 0;
MESH.NODE(43).edge_array = [ 62 59 6 19 62 25 25 6 38 59 19 38 ];
MESH.NODE(43).fixed = 0;
MESH.NODE(44).edge_array = [ 60 37 18 23 37 23 60 67 67 63 18 40 63 40 ];
MESH.NODE(44).fixed = 0;
MESH.NODE(45).edge_array = [ 64 39 22 39 68 64 22 31 68 66 31 66 ];
MESH.NODE(45).fixed = 0;
MESH.NODE(46).edge_array = [ 62 69 52 24 52 69 25 62 24 25 ];
MESH.NODE(46).fixed = 0;
MESH.NODE(47).edge_array = [ 26 50 56 72 50 70 72 70 56 29 26 29 ];
MESH.NODE(47).fixed = 0;
MESH.NODE(48).edge_array = [ 31 66 65 74 66 74 31 35 65 35 ];
MESH.NODE(48).fixed = 0;
MESH.NODE(49).edge_array = [ 28 55 27 28 27 51 55 75 51 71 75 71 ];
MESH.NODE(49).fixed = 0;
MESH.NODE(50).edge_array = [ 30 26 47 26 83 70 47 70 83 58 30 58 ];
MESH.NODE(50).fixed = 0;
MESH.NODE(51).edge_array = [ 34 61 27 49 27 34 84 61 84 71 49 71 ];
MESH.NODE(51).fixed = 0;
MESH.NODE(52).edge_array = [ 65 42 42 24 69 78 78 65 24 46 46 69 ];
MESH.NODE(52).fixed = 0;
MESH.NODE(53).edge_array = [ 58 77 54 73 77 73 54 33 33 36 58 36 ];
MESH.NODE(53).fixed = 0;
MESH.NODE(54).edge_array = [ 57 32 57 79 79 73 73 53 53 33 32 33 ];
MESH.NODE(54).fixed = 0;
MESH.NODE(55).edge_array = [ 63 40 28 40 63 81 28 49 81 75 49 75 ];
MESH.NODE(55).fixed = 0;
MESH.NODE(56).edge_array = [ 47 72 82 59 72 82 59 38 29 47 38 29 ];
MESH.NODE(56).fixed = 0;
MESH.NODE(57).edge_array = [ 61 80 41 61 32 41 54 32 80 79 79 54 ];
MESH.NODE(57).fixed = 0;
MESH.NODE(58).edge_array = [ 83 50 30 50 53 77 77 83 30 36 36 53 ];
MESH.NODE(58).fixed = 0;
MESH.NODE(59).edge_array = [ 62 76 62 43 56 82 76 82 56 38 43 38 ];
MESH.NODE(59).fixed = 0;
MESH.NODE(60).edge_array = [ 44 37 67 44 86 67 ];
MESH.NODE(60).fixed = 0;
MESH.NODE(61).edge_array = [ 41 34 34 51 80 57 41 57 51 84 84 80 ];
MESH.NODE(61).fixed = 0;
MESH.NODE(62).edge_array = [ 69 46 85 69 59 76 85 76 43 59 46 25 43 25 ];
MESH.NODE(62).fixed = 0;
MESH.NODE(63).edge_array = [ 67 44 40 44 55 40 81 55 67 88 81 88 ];
MESH.NODE(63).fixed = 0;
MESH.NODE(64).edge_array = [ 45 39 68 89 45 68 ];
MESH.NODE(64).fixed = 1;
MESH.NODE(65).edge_array = [ 74 48 48 35 35 42 52 42 52 78 74 87 78 87 ];
MESH.NODE(65).fixed = 0;
MESH.NODE(66).edge_array = [ 68 90 68 45 31 45 31 48 74 90 48 74 ];
MESH.NODE(66).fixed = 0;
MESH.NODE(67).edge_array = [ 60 44 86 60 63 44 86 97 63 88 97 88 ];
MESH.NODE(67).fixed = 0;
MESH.NODE(68).edge_array = [ 64 89 45 64 102 89 90 102 66 90 45 66 ];
MESH.NODE(68).fixed = 0;
MESH.NODE(69).edge_array = [ 92 78 52 78 62 46 52 46 62 85 92 85 ];
MESH.NODE(69).fixed = 0;
MESH.NODE(70).edge_array = [ 83 50 91 83 47 50 72 47 72 91 ];
MESH.NODE(70).fixed = 0;
MESH.NODE(71).edge_array = [ 75 93 84 93 84 51 51 49 75 49 ];
MESH.NODE(71).fixed = 0;
MESH.NODE(72).edge_array = [ 56 47 91 96 82 56 96 82 47 70 70 91 ];
MESH.NODE(72).fixed = 0;
MESH.NODE(73).edge_array = [ 79 54 54 53 77 53 77 98 95 98 79 95 ];
MESH.NODE(73).fixed = 0;
MESH.NODE(74).edge_array = [ 90 104 65 48 66 90 66 48 65 87 87 104 ];
MESH.NODE(74).fixed = 0;
MESH.NODE(75).edge_array = [ 93 100 81 100 81 55 49 55 93 71 71 49 ];
MESH.NODE(75).fixed = 0;
MESH.NODE(76).edge_array = [ 62 59 85 62 94 103 85 103 59 82 82 94 ];
MESH.NODE(76).fixed = 0;
MESH.NODE(77).edge_array = [ 58 53 98 101 83 101 58 83 53 73 73 98 ];
MESH.NODE(77).fixed = 0;
MESH.NODE(78).edge_array = [ 92 69 52 69 92 105 52 65 105 87 87 65 ];
MESH.NODE(78).fixed = 0;
MESH.NODE(79).edge_array = [ 57 80 57 54 108 80 73 54 108 95 73 95 ];
MESH.NODE(79).fixed = 0;
MESH.NODE(80).edge_array = [ 99 108 61 57 61 84 99 84 57 79 108 79 ];
MESH.NODE(80).fixed = 0;
MESH.NODE(81).edge_array = [ 63 55 107 100 63 88 88 107 100 75 75 55 ];
MESH.NODE(81).fixed = 0;
MESH.NODE(82).edge_array = [ 56 59 76 59 76 94 72 56 72 96 109 96 94 109 ];
MESH.NODE(82).fixed = 0;
MESH.NODE(83).edge_array = [ 106 101 106 91 70 50 91 70 50 58 77 101 58 77 ];
MESH.NODE(83).fixed = 0;
MESH.NODE(84).edge_array = [ 51 61 61 80 99 80 99 110 93 110 71 93 51 71 ];
MESH.NODE(84).fixed = 0;
MESH.NODE(85).edge_array = [ 62 69 92 69 103 111 92 111 62 76 76 103 ];
MESH.NODE(85).fixed = 0;
MESH.NODE(86).edge_array = [ 67 60 113 97 67 97 ];
MESH.NODE(86).fixed = 0;
MESH.NODE(87).edge_array = [ 78 105 112 105 74 65 78 65 74 104 112 104 ];
MESH.NODE(87).fixed = 0;
MESH.NODE(88).edge_array = [ 63 67 81 63 97 67 97 115 115 107 81 107 ];
MESH.NODE(88).fixed = 0;
MESH.NODE(89).edge_array = [ 64 68 68 102 102 116 ];
MESH.NODE(89).fixed = 1;
MESH.NODE(90).edge_array = [ 68 102 68 66 74 104 66 74 104 117 102 117 ];
MESH.NODE(90).fixed = 0;
MESH.NODE(91).edge_array = [ 114 96 114 106 83 106 96 72 70 83 72 70 ];
MESH.NODE(91).fixed = 0;
MESH.NODE(92).edge_array = [ 111 122 122 105 78 69 105 78 69 85 85 111 ];
MESH.NODE(92).fixed = 0;
MESH.NODE(93).edge_array = [ 119 100 119 110 75 100 110 84 75 71 84 71 ];
MESH.NODE(93).fixed = 0;
MESH.NODE(94).edge_array = [ 121 103 121 109 103 76 76 82 82 109 ];
MESH.NODE(94).fixed = 0;
MESH.NODE(95).edge_array = [ 98 118 108 118 79 108 73 98 73 79 ];
MESH.NODE(95).fixed = 0;
MESH.NODE(96).edge_array = [ 109 123 123 114 114 91 91 72 72 82 109 82 ];
MESH.NODE(96).fixed = 0;
MESH.NODE(97).edge_array = [ 127 113 115 127 86 113 67 86 88 67 115 88 ];
MESH.NODE(97).fixed = 0;
MESH.NODE(98).edge_array = [ 101 77 118 120 120 101 77 73 95 118 73 95 ];
MESH.NODE(98).fixed = 0;
MESH.NODE(99).edge_array = [ 110 125 125 108 108 80 80 84 84 110 ];
MESH.NODE(99).fixed = 0;
MESH.NODE(100).edge_array = [ 126 107 107 81 126 119 119 93 93 75 81 75 ];
MESH.NODE(100).fixed = 0;
MESH.NODE(101).edge_array = [ 106 83 106 124 98 77 83 77 124 120 98 120 ];
MESH.NODE(101).fixed = 0;
MESH.NODE(102).edge_array = [ 68 89 68 90 90 117 116 89 117 129 116 129 ];
MESH.NODE(102).fixed = 0;
MESH.NODE(103).edge_array = [ 121 94 111 85 94 76 85 76 128 111 121 128 ];
MESH.NODE(103).fixed = 0;
MESH.NODE(104).edge_array = [ 90 74 90 117 117 135 135 112 74 87 112 87 ];
MESH.NODE(104).fixed = 0;
MESH.NODE(105).edge_array = [ 132 122 92 122 132 112 92 78 78 87 112 87 ];
MESH.NODE(105).fixed = 0;
MESH.NODE(106).edge_array = [ 83 101 114 91 83 91 114 130 101 124 130 124 ];
MESH.NODE(106).fixed = 0;
MESH.NODE(107).edge_array = [ 126 100 126 133 115 133 100 81 115 88 81 88 ];
MESH.NODE(107).fixed = 0;
MESH.NODE(108).edge_array = [ 99 125 131 125 131 118 99 80 79 80 118 95 79 95 ];
MESH.NODE(108).fixed = 0;
MESH.NODE(109).edge_array = [ 134 121 123 134 96 123 121 94 82 96 94 82 ];
MESH.NODE(109).fixed = 0;
MESH.NODE(110).edge_array = [ 125 136 119 136 125 99 119 93 99 84 93 84 ];
MESH.NODE(110).fixed = 0;
MESH.NODE(111).edge_array = [ 92 122 122 138 103 85 92 85 138 128 103 128 ];
MESH.NODE(111).fixed = 0;
MESH.NODE(112).edge_array = [ 135 104 135 132 132 105 87 105 104 87 ];
MESH.NODE(112).fixed = 0;
MESH.NODE(113).edge_array = [ 127 97 86 97 127 140 ];
MESH.NODE(113).fixed = 0;
MESH.NODE(114).edge_array = [ 123 96 123 137 96 91 91 106 130 137 106 130 ];
MESH.NODE(114).fixed = 0;
MESH.NODE(115).edge_array = [ 107 133 143 133 143 127 97 127 97 88 107 88 ];
MESH.NODE(115).fixed = 0;
MESH.NODE(116).edge_array = [ 102 89 129 141 102 129 ];
MESH.NODE(116).fixed = 1;
MESH.NODE(117).edge_array = [ 90 104 102 90 104 135 135 147 129 102 147 129 ];
MESH.NODE(117).fixed = 0;
MESH.NODE(118).edge_array = [ 142 131 131 108 142 120 98 120 98 95 108 95 ];
MESH.NODE(118).fixed = 0;
MESH.NODE(119).edge_array = [ 126 100 110 136 144 136 144 126 93 100 110 93 ];
MESH.NODE(119).fixed = 0;
MESH.NODE(120).edge_array = [ 142 118 139 142 98 118 139 124 124 101 98 101 ];
MESH.NODE(120).fixed = 0;
MESH.NODE(121).edge_array = [ 109 134 103 94 94 109 128 103 134 145 128 145 ];
MESH.NODE(121).fixed = 0;
MESH.NODE(122).edge_array = [ 132 105 92 111 92 105 111 138 149 132 138 149 ];
MESH.NODE(122).fixed = 0;
MESH.NODE(123).edge_array = [ 109 134 109 96 96 114 114 137 146 134 137 146 ];
MESH.NODE(123).fixed = 0;
MESH.NODE(124).edge_array = [ 130 150 106 101 130 106 139 150 139 120 101 120 ];
MESH.NODE(124).fixed = 0;
MESH.NODE(125).edge_array = [ 136 152 110 136 152 148 110 99 148 131 99 108 131 108 ];
MESH.NODE(125).fixed = 0;
MESH.NODE(126).edge_array = [ 100 107 107 133 133 153 153 144 119 100 144 119 ];
MESH.NODE(126).fixed = 0;
MESH.NODE(127).edge_array = [ 143 115 97 113 115 97 113 140 143 160 140 160 ];
MESH.NODE(127).fixed = 0;
MESH.NODE(128).edge_array = [ 138 111 103 111 121 103 121 145 155 138 145 155 ];
MESH.NODE(128).fixed = 0;
MESH.NODE(129).edge_array = [ 116 141 159 141 117 102 116 102 117 147 159 147 ];
MESH.NODE(129).fixed = 0;
MESH.NODE(130).edge_array = [ 114 137 114 106 151 137 150 151 124 150 106 124 ];
MESH.NODE(130).fixed = 0;
MESH.NODE(131).edge_array = [ 148 158 142 158 142 118 148 125 108 125 118 108 ];
MESH.NODE(131).fixed = 0;
MESH.NODE(132).edge_array = [ 105 122 135 112 112 105 122 149 149 154 135 154 ];
MESH.NODE(132).fixed = 0;
MESH.NODE(133).edge_array = [ 126 107 161 143 161 153 126 153 107 115 143 115 ];
MESH.NODE(133).fixed = 0;
MESH.NODE(134).edge_array = [ 109 121 109 123 123 146 146 156 121 145 156 145 ];
MESH.NODE(134).fixed = 0;
MESH.NODE(135).edge_array = [ 117 104 117 147 104 112 112 132 164 147 132 154 164 154 ];
MESH.NODE(135).fixed = 0;
MESH.NODE(136).edge_array = [ 152 125 125 110 110 119 144 119 163 152 144 163 ];
MESH.NODE(136).fixed = 0;
MESH.NODE(137).edge_array = [ 123 114 123 146 157 146 114 130 130 151 157 151 ];
MESH.NODE(137).fixed = 0;
MESH.NODE(138).edge_array = [ 122 111 149 122 111 128 128 155 149 165 155 165 ];
MESH.NODE(138).fixed = 0;
MESH.NODE(139).edge_array = [ 142 162 150 162 124 150 120 142 124 120 ];
MESH.NODE(139).fixed = 0;
MESH.NODE(140).edge_array = [ 127 113 172 160 160 127 ];
MESH.NODE(140).fixed = 0;
MESH.NODE(141).edge_array = [ 116 129 159 129 159 170 ];
MESH.NODE(141).fixed = 1;
MESH.NODE(142).edge_array = [ 167 158 167 162 131 158 118 131 162 139 120 118 139 120 ];
MESH.NODE(142).fixed = 0;
MESH.NODE(143).edge_array = [ 161 133 133 115 115 127 177 161 177 160 127 160 ];
MESH.NODE(143).fixed = 0;
MESH.NODE(144).edge_array = [ 153 126 136 119 119 126 163 136 153 174 163 174 ];
MESH.NODE(144).fixed = 0;
MESH.NODE(145).edge_array = [ 121 134 156 134 128 121 155 128 155 169 156 169 ];
MESH.NODE(145).fixed = 0;
MESH.NODE(146).edge_array = [ 123 134 123 137 157 137 156 134 156 166 157 166 ];
MESH.NODE(146).fixed = 0;
MESH.NODE(147).edge_array = [ 117 135 117 129 159 129 135 164 164 175 159 175 ];
MESH.NODE(147).fixed = 0;
MESH.NODE(148).edge_array = [ 125 152 158 131 131 125 168 158 152 168 ];
MESH.NODE(148).fixed = 0;
MESH.NODE(149).edge_array = [ 122 132 138 122 154 132 154 176 176 165 138 165 ];
MESH.NODE(149).fixed = 0;
MESH.NODE(150).edge_array = [ 162 178 130 151 130 124 178 171 151 171 139 162 124 139 ];
MESH.NODE(150).fixed = 0;
MESH.NODE(151).edge_array = [ 130 137 157 173 157 137 130 150 150 171 171 173 ];
MESH.NODE(151).fixed = 0;
MESH.NODE(152).edge_array = [ 136 125 125 148 136 163 148 168 168 179 163 179 ];
MESH.NODE(152).fixed = 0;
MESH.NODE(153).edge_array = [ 161 133 126 133 144 126 144 174 161 185 174 185 ];
MESH.NODE(153).fixed = 0;
MESH.NODE(154).edge_array = [ 183 164 149 132 135 132 164 135 149 176 176 183 ];
MESH.NODE(154).fixed = 0;
MESH.NODE(155).edge_array = [ 128 138 145 128 182 169 145 169 182 165 165 138 ];
MESH.NODE(155).fixed = 0;
MESH.NODE(156).edge_array = [ 146 134 145 134 146 166 166 181 145 169 181 169 ];
MESH.NODE(156).fixed = 0;
MESH.NODE(157).edge_array = [ 180 173 146 137 151 173 137 151 180 166 146 166 ];
MESH.NODE(157).fixed = 0;
MESH.NODE(158).edge_array = [ 186 167 167 142 148 131 142 131 148 168 186 168 ];
MESH.NODE(158).fixed = 0;
MESH.NODE(159).edge_array = [ 141 129 129 147 170 141 187 170 147 175 175 187 ];
MESH.NODE(159).fixed = 0;
MESH.NODE(160).edge_array = [ 177 143 140 172 143 127 140 127 172 188 188 177 ];
MESH.NODE(160).fixed = 0;
MESH.NODE(161).edge_array = [ 133 143 153 133 143 177 153 185 177 185 ];
MESH.NODE(161).fixed = 0;
MESH.NODE(162).edge_array = [ 178 150 167 142 167 184 184 178 142 139 150 139 ];
MESH.NODE(162).fixed = 0;
MESH.NODE(163).edge_array = [ 136 152 144 136 144 174 179 152 174 189 179 189 ];
MESH.NODE(163).fixed = 0;
MESH.NODE(164).edge_array = [ 135 147 175 147 183 154 135 154 183 192 175 192 ];
MESH.NODE(164).fixed = 0;
MESH.NODE(165).edge_array = [ 182 191 176 149 176 191 182 155 149 138 155 138 ];
MESH.NODE(165).fixed = 0;
MESH.NODE(166).edge_array = [ 156 146 157 180 146 157 180 190 181 156 190 181 ];
MESH.NODE(166).fixed = 0;
MESH.NODE(167).edge_array = [ 186 194 186 158 142 158 162 142 194 184 184 162 ];
MESH.NODE(167).fixed = 0;
MESH.NODE(168).edge_array = [ 148 158 186 158 148 152 152 179 193 186 179 193 ];
MESH.NODE(168).fixed = 0;
MESH.NODE(169).edge_array = [ 182 155 155 145 145 156 181 156 195 182 181 195 ];
MESH.NODE(169).fixed = 0;
MESH.NODE(170).edge_array = [ 187 197 159 141 159 187 ];
MESH.NODE(170).fixed = 1;
MESH.NODE(171).edge_array = [ 150 178 151 150 151 173 ];
MESH.NODE(171).fixed = 0;
MESH.NODE(172).edge_array = [ 140 160 160 188 199 188 ];
MESH.NODE(172).fixed = 0;
MESH.NODE(173).edge_array = [ 180 157 157 151 151 171 ];
MESH.NODE(173).fixed = 0;
MESH.NODE(174).edge_array = [ 144 153 163 144 185 196 153 185 189 163 196 189 ];
MESH.NODE(174).fixed = 0;
MESH.NODE(175).edge_array = [ 200 187 164 147 159 147 159 187 164 192 192 200 ];
MESH.NODE(175).fixed = 0;
MESH.NODE(176).edge_array = [ 154 149 154 183 149 165 165 191 201 183 191 201 ];
MESH.NODE(176).fixed = 0;
MESH.NODE(177).edge_array = [ 143 161 143 160 160 188 198 188 185 161 198 185 ];
MESH.NODE(177).fixed = 0;
MESH.NODE(178).edge_array = [ 162 150 162 184 150 171 ];
MESH.NODE(178).fixed = 0;
MESH.NODE(179).edge_array = [ 168 152 163 152 193 168 202 193 189 202 163 189 ];
MESH.NODE(179).fixed = 0;
MESH.NODE(180).edge_array = [ 157 173 157 166 166 190 ];
MESH.NODE(180).fixed = 0;
MESH.NODE(181).edge_array = [ 166 156 190 166 169 156 190 203 169 195 203 195 ];
MESH.NODE(181).fixed = 0;
MESH.NODE(182).edge_array = [ 155 169 204 191 191 165 165 155 204 195 169 195 ];
MESH.NODE(182).fixed = 0;
MESH.NODE(183).edge_array = [ 164 154 207 192 192 164 154 176 201 207 176 201 ];
MESH.NODE(183).fixed = 0;
MESH.NODE(184).edge_array = [ 167 194 167 162 162 178 ];
MESH.NODE(184).fixed = 0;
MESH.NODE(185).edge_array = [ 174 196 153 161 174 153 177 161 198 177 208 196 198 208 ];
MESH.NODE(185).fixed = 0;
MESH.NODE(186).edge_array = [ 194 167 167 158 206 194 205 206 158 168 193 205 168 193 ];
MESH.NODE(186).fixed = 0;
MESH.NODE(187).edge_array = [ 197 170 159 170 200 175 159 175 210 197 200 210 ];
MESH.NODE(187).fixed = 0;
MESH.NODE(188).edge_array = [ 160 172 160 177 199 172 211 199 198 177 198 211 ];
MESH.NODE(188).fixed = 0;
MESH.NODE(189).edge_array = [ 174 163 179 202 179 163 209 202 209 196 174 196 ];
MESH.NODE(189).fixed = 0;
MESH.NODE(190).edge_array = [ 166 180 181 166 181 203 ];
MESH.NODE(190).fixed = 0;
MESH.NODE(191).edge_array = [ 182 204 212 204 182 165 176 165 212 201 176 201 ];
MESH.NODE(191).fixed = 0;
MESH.NODE(192).edge_array = [ 207 214 183 207 200 214 183 164 175 164 175 200 ];
MESH.NODE(192).fixed = 0;
MESH.NODE(193).edge_array = [ 186 205 168 186 179 168 179 202 213 202 213 205 ];
MESH.NODE(193).fixed = 0;
MESH.NODE(194).edge_array = [ 186 167 186 206 167 184 ];
MESH.NODE(194).fixed = 0;
MESH.NODE(195).edge_array = [ 204 215 204 182 216 215 203 216 169 182 169 181 203 181 ];
MESH.NODE(195).fixed = 0;
MESH.NODE(196).edge_array = [ 217 209 174 185 209 189 174 189 185 208 208 217 ];
MESH.NODE(196).fixed = 0;
MESH.NODE(197).edge_array = [ 187 170 222 210 187 210 ];
MESH.NODE(197).fixed = 1;
MESH.NODE(198).edge_array = [ 211 221 177 188 188 211 185 177 185 208 221 208 ];
MESH.NODE(198).fixed = 0;
MESH.NODE(199).edge_array = [ 223 211 188 172 211 188 ];
MESH.NODE(199).fixed = 0;
MESH.NODE(200).edge_array = [ 187 175 214 218 192 214 175 192 210 187 218 210 ];
MESH.NODE(200).fixed = 0;
MESH.NODE(201).edge_array = [ 212 191 183 207 176 183 176 191 219 207 212 219 ];
MESH.NODE(201).fixed = 0;
MESH.NODE(202).edge_array = [ 220 213 220 209 179 193 213 193 179 189 209 189 ];
MESH.NODE(202).fixed = 0;
MESH.NODE(203).edge_array = [ 181 190 216 195 195 181 ];
MESH.NODE(203).fixed = 0;
MESH.NODE(204).edge_array = [ 182 191 212 191 215 225 225 212 195 215 182 195 ];
MESH.NODE(204).fixed = 0;
MESH.NODE(205).edge_array = [ 224 213 224 206 186 206 186 193 213 193 ];
MESH.NODE(205).fixed = 0;
MESH.NODE(206).edge_array = [ 224 205 186 194 186 205 ];
MESH.NODE(206).fixed = 0;
MESH.NODE(207).edge_array = [ 228 214 214 192 183 192 183 201 201 219 228 219 ];
MESH.NODE(207).fixed = 0;
MESH.NODE(208).edge_array = [ 185 196 185 198 196 217 198 221 227 221 227 217 ];
MESH.NODE(208).fixed = 0;
MESH.NODE(209).edge_array = [ 220 202 226 220 196 217 226 217 202 189 189 196 ];
MESH.NODE(209).fixed = 0;
MESH.NODE(210).edge_array = [ 231 222 231 218 222 197 187 197 200 187 218 200 ];
MESH.NODE(210).fixed = 0;
MESH.NODE(211).edge_array = [ 229 221 229 223 199 223 221 198 188 199 198 188 ];
MESH.NODE(211).fixed = 0;
MESH.NODE(212).edge_array = [ 191 204 225 232 204 225 201 191 201 219 232 219 ];
MESH.NODE(212).fixed = 0;
MESH.NODE(213).edge_array = [ 220 202 224 205 220 230 230 224 193 202 205 193 ];
MESH.NODE(213).fixed = 0;
MESH.NODE(214).edge_array = [ 207 228 228 233 200 218 233 218 207 192 200 192 ];
MESH.NODE(214).fixed = 0;
MESH.NODE(215).edge_array = [ 234 216 204 225 234 225 204 195 216 195 ];
MESH.NODE(215).fixed = 0;
MESH.NODE(216).edge_array = [ 234 215 215 195 203 195 ];
MESH.NODE(216).fixed = 0;
MESH.NODE(217).edge_array = [ 227 238 238 226 196 209 226 209 196 208 227 208 ];
MESH.NODE(217).fixed = 0;
MESH.NODE(218).edge_array = [ 200 214 233 214 233 231 231 210 210 200 ];
MESH.NODE(218).fixed = 0;
MESH.NODE(219).edge_array = [ 201 207 201 212 228 235 228 207 232 235 212 232 ];
MESH.NODE(219).fixed = 0;
MESH.NODE(220).edge_array = [ 213 202 236 230 213 230 236 226 202 209 226 209 ];
MESH.NODE(220).fixed = 0;
MESH.NODE(221).edge_array = [ 229 240 240 227 229 211 211 198 198 208 227 208 ];
MESH.NODE(221).fixed = 0;
MESH.NODE(222).edge_array = [ 231 237 231 210 197 210 ];
MESH.NODE(222).fixed = 1;
MESH.NODE(223).edge_array = [ 229 239 229 211 199 211 ];
MESH.NODE(223).fixed = 0;
MESH.NODE(224).edge_array = [ 205 213 206 205 230 241 213 230 ];
MESH.NODE(224).fixed = 0;
MESH.NODE(225).edge_array = [ 212 232 232 242 204 215 204 212 234 215 234 242 ];
MESH.NODE(225).fixed = 0;
MESH.NODE(226).edge_array = [ 236 220 236 243 238 243 217 238 220 209 209 217 ];
MESH.NODE(226).fixed = 0;
MESH.NODE(227).edge_array = [ 217 238 240 221 250 238 250 240 208 221 217 208 ];
MESH.NODE(227).fixed = 0;
MESH.NODE(228).edge_array = [ 207 214 233 214 244 233 235 249 249 244 219 235 207 219 ];
MESH.NODE(228).fixed = 0;
MESH.NODE(229).edge_array = [ 223 239 239 248 240 221 248 240 221 211 211 223 ];
MESH.NODE(229).fixed = 0;
MESH.NODE(230).edge_array = [ 236 220 213 220 224 241 213 224 246 241 236 246 ];
MESH.NODE(230).fixed = 0;
MESH.NODE(231).edge_array = [ 237 247 245 247 222 237 245 233 218 233 222 210 210 218 ];
MESH.NODE(231).fixed = 0;
MESH.NODE(232).edge_array = [ 242 251 251 235 212 225 225 242 235 219 212 219 ];
MESH.NODE(232).fixed = 0;
MESH.NODE(233).edge_array = [ 228 214 228 244 244 245 218 214 245 231 218 231 ];
MESH.NODE(233).fixed = 0;
MESH.NODE(234).edge_array = [ 252 242 215 216 225 215 242 225 ];
MESH.NODE(234).fixed = 0;
MESH.NODE(235).edge_array = [ 228 249 232 251 249 251 228 219 232 219 ];
MESH.NODE(235).fixed = 0;
MESH.NODE(236).edge_array = [ 243 253 230 220 253 246 230 246 220 226 226 243 ];
MESH.NODE(236).fixed = 0;
MESH.NODE(237).edge_array = [ 247 254 231 247 222 231 ];
MESH.NODE(237).fixed = 1;
MESH.NODE(238).edge_array = [ 258 243 258 250 217 227 250 227 243 226 217 226 ];
MESH.NODE(238).fixed = 0;
MESH.NODE(239).edge_array = [ 229 223 229 248 255 248 ];
MESH.NODE(239).fixed = 0;
MESH.NODE(240).edge_array = [ 229 221 229 248 227 221 250 227 250 256 248 256 ];
MESH.NODE(240).fixed = 0;
MESH.NODE(241).edge_array = [ 224 230 257 246 230 246 ];
MESH.NODE(241).fixed = 0;
MESH.NODE(242).edge_array = [ 252 259 259 251 232 251 252 234 232 225 234 225 ];
MESH.NODE(242).fixed = 0;
MESH.NODE(243).edge_array = [ 238 258 236 253 258 253 236 226 238 226 ];
MESH.NODE(243).fixed = 0;
MESH.NODE(244).edge_array = [ 228 233 228 249 233 245 249 261 245 260 261 260 ];
MESH.NODE(244).fixed = 0;
MESH.NODE(245).edge_array = [ 233 244 264 247 247 231 231 233 244 260 264 260 ];
MESH.NODE(245).fixed = 0;
MESH.NODE(246).edge_array = [ 253 236 257 241 230 241 230 236 263 257 253 263 ];
MESH.NODE(246).fixed = 0;
MESH.NODE(247).edge_array = [ 237 254 245 264 254 264 237 231 245 231 ];
MESH.NODE(247).fixed = 0;
MESH.NODE(248).edge_array = [ 229 239 255 239 229 240 255 267 240 256 267 256 ];
MESH.NODE(248).fixed = 0;
MESH.NODE(249).edge_array = [ 228 235 228 244 261 244 261 262 235 251 262 251 ];
MESH.NODE(249).fixed = 0;
MESH.NODE(250).edge_array = [ 258 266 258 238 238 227 227 240 240 256 256 266 ];
MESH.NODE(250).fixed = 0;
MESH.NODE(251).edge_array = [ 242 259 265 259 232 242 232 235 262 265 249 235 262 249 ];
MESH.NODE(251).fixed = 0;
MESH.NODE(252).edge_array = [ 268 259 242 259 242 234 ];
MESH.NODE(252).fixed = 0;
MESH.NODE(253).edge_array = [ 236 243 258 243 258 269 246 236 246 263 269 263 ];
MESH.NODE(253).fixed = 0;
MESH.NODE(254).edge_array = [ 237 247 247 264 264 270 ];
MESH.NODE(254).fixed = 1;
MESH.NODE(255).edge_array = [ 248 239 267 248 273 267 ];
MESH.NODE(255).fixed = 0;
MESH.NODE(256).edge_array = [ 250 240 267 272 272 266 250 266 240 248 267 248 ];
MESH.NODE(256).fixed = 0;
MESH.NODE(257).edge_array = [ 241 246 246 263 271 263 ];
MESH.NODE(257).fixed = 0;
MESH.NODE(258).edge_array = [ 238 243 253 243 269 253 250 266 238 250 274 269 266 274 ];
MESH.NODE(258).fixed = 0;
MESH.NODE(259).edge_array = [ 268 252 242 252 268 275 265 275 242 251 265 251 ];
MESH.NODE(259).fixed = 0;
MESH.NODE(260).edge_array = [ 277 261 245 244 261 244 277 280 264 280 264 245 ];
MESH.NODE(260).fixed = 0;
MESH.NODE(261).edge_array = [ 249 244 276 277 262 276 249 262 277 260 260 244 ];
MESH.NODE(261).fixed = 0;
MESH.NODE(262).edge_array = [ 261 276 261 249 279 276 265 279 251 265 249 251 ];
MESH.NODE(262).fixed = 0;
MESH.NODE(263).edge_array = [ 246 257 246 253 271 257 278 271 278 269 253 269 ];
MESH.NODE(263).fixed = 0;
MESH.NODE(264).edge_array = [ 245 247 281 280 281 270 254 247 254 270 260 280 245 260 ];
MESH.NODE(264).fixed = 0;
MESH.NODE(265).edge_array = [ 279 262 259 275 275 279 251 259 262 251 ];
MESH.NODE(265).fixed = 0;
MESH.NODE(266).edge_array = [ 283 272 258 250 258 274 283 274 272 256 250 256 ];
MESH.NODE(266).fixed = 0;
MESH.NODE(267).edge_array = [ 272 284 255 248 273 284 273 255 272 256 256 248 ];
MESH.NODE(267).fixed = 0;
MESH.NODE(268).edge_array = [ 259 252 275 259 282 275 ];
MESH.NODE(268).fixed = 0;
MESH.NODE(269).edge_array = [ 285 278 258 253 258 274 274 285 278 263 253 263 ];
MESH.NODE(269).fixed = 0;
MESH.NODE(270).edge_array = [ 281 287 281 264 254 264 ];
MESH.NODE(270).fixed = 1;
MESH.NODE(271).edge_array = [ 278 286 257 263 278 263 ];
MESH.NODE(271).fixed = 0;
MESH.NODE(272).edge_array = [ 284 290 283 290 283 266 267 284 267 256 266 256 ];
MESH.NODE(272).fixed = 0;
MESH.NODE(273).edge_array = [ 284 292 284 267 267 255 ];
MESH.NODE(273).fixed = 0;
MESH.NODE(274).edge_array = [ 258 269 285 289 269 285 258 266 283 289 283 266 ];
MESH.NODE(274).fixed = 0;
MESH.NODE(275).edge_array = [ 268 259 265 259 268 282 291 282 265 279 279 295 291 295 ];
MESH.NODE(275).fixed = 0;
MESH.NODE(276).edge_array = [ 293 288 288 279 293 277 261 277 261 262 279 262 ];
MESH.NODE(276).fixed = 0;
MESH.NODE(277).edge_array = [ 293 276 261 276 296 293 296 280 260 261 280 260 ];
MESH.NODE(277).fixed = 0;
MESH.NODE(278).edge_array = [ 269 285 294 285 294 286 271 286 271 263 263 269 ];
MESH.NODE(278).fixed = 0;
MESH.NODE(279).edge_array = [ 288 276 288 295 276 262 265 262 265 275 275 295 ];
MESH.NODE(279).fixed = 0;
MESH.NODE(280).edge_array = [ 296 297 297 281 281 264 296 277 277 260 264 260 ];
MESH.NODE(280).fixed = 0;
MESH.NODE(281).edge_array = [ 280 297 297 287 270 287 264 280 270 264 ];
MESH.NODE(281).fixed = 0;
MESH.NODE(282).edge_array = [ 291 298 268 275 291 275 ];
MESH.NODE(282).fixed = 0;
MESH.NODE(283).edge_array = [ 272 290 266 272 290 300 300 289 289 274 274 266 ];
MESH.NODE(283).fixed = 0;
MESH.NODE(284).edge_array = [ 301 292 301 290 290 272 273 292 272 267 273 267 ];
MESH.NODE(284).fixed = 0;
MESH.NODE(285).edge_array = [ 299 289 299 294 269 278 294 278 274 289 269 274 ];
MESH.NODE(285).fixed = 0;
MESH.NODE(286).edge_array = [ 302 304 294 302 294 278 271 278 ];
MESH.NODE(286).fixed = 0;
MESH.NODE(287).edge_array = [ 297 307 297 281 270 281 ];
MESH.NODE(287).fixed = 1;
MESH.NODE(288).edge_array = [ 293 306 293 276 276 279 279 295 303 306 295 303 ];
MESH.NODE(288).fixed = 0;
MESH.NODE(289).edge_array = [ 308 299 299 285 308 300 283 300 285 274 283 274 ];
MESH.NODE(289).fixed = 0;
MESH.NODE(290).edge_array = [ 301 284 301 311 284 272 283 272 283 300 311 300 ];
MESH.NODE(290).fixed = 0;
MESH.NODE(291).edge_array = [ 282 298 275 282 295 275 298 305 305 295 ];
MESH.NODE(291).fixed = 0;
MESH.NODE(292).edge_array = [ 301 284 284 273 301 313 ];
MESH.NODE(292).fixed = 0;
MESH.NODE(293).edge_array = [ 288 306 276 288 306 310 310 296 277 276 296 277 ];
MESH.NODE(293).fixed = 0;
MESH.NODE(294).edge_array = [ 285 299 286 302 278 285 286 278 299 309 309 302 ];
MESH.NODE(294).fixed = 0;
MESH.NODE(295).edge_array = [ 288 279 288 303 303 315 279 275 291 275 291 305 315 305 ];
MESH.NODE(295).fixed = 0;
MESH.NODE(296).edge_array = [ 280 297 310 293 277 293 280 277 312 297 310 312 ];
MESH.NODE(296).fixed = 0;
MESH.NODE(297).edge_array = [ 307 287 307 316 280 296 280 281 287 281 316 312 296 312 ];
MESH.NODE(297).fixed = 0;
MESH.NODE(298).edge_array = [ 291 282 317 305 305 291 314 317 ];
MESH.NODE(298).fixed = 0;
MESH.NODE(299).edge_array = [ 308 289 285 289 285 294 294 309 308 320 309 320 ];
MESH.NODE(299).fixed = 0;
MESH.NODE(300).edge_array = [ 283 290 311 290 311 321 321 308 308 289 283 289 ];
MESH.NODE(300).fixed = 0;
MESH.NODE(301).edge_array = [ 284 292 290 284 322 311 311 290 292 313 313 322 ];
MESH.NODE(301).fixed = 0;
MESH.NODE(302).edge_array = [ 286 304 286 294 304 318 294 309 318 309 ];
MESH.NODE(302).fixed = 0;
MESH.NODE(303).edge_array = [ 288 306 288 295 323 306 295 315 323 315 ];
MESH.NODE(303).fixed = 0;
MESH.NODE(304).edge_array = [ 286 302 319 324 302 318 324 318 ];
MESH.NODE(304).fixed = 0;
MESH.NODE(305).edge_array = [ 298 317 298 291 326 317 326 315 291 295 315 295 ];
MESH.NODE(305).fixed = 0;
MESH.NODE(306).edge_array = [ 293 288 293 310 310 327 288 303 327 323 303 323 ];
MESH.NODE(306).fixed = 0;
MESH.NODE(307).edge_array = [ 297 287 316 330 297 316 ];
MESH.NODE(307).fixed = 1;
MESH.NODE(308).edge_array = [ 299 289 321 329 321 300 289 300 299 320 329 320 ];
MESH.NODE(308).fixed = 0;
MESH.NODE(309).edge_array = [ 318 328 294 299 294 302 318 302 299 320 320 328 ];
MESH.NODE(309).fixed = 0;
MESH.NODE(310).edge_array = [ 293 306 306 327 327 331 296 293 296 312 331 312 ];
MESH.NODE(310).fixed = 0;
MESH.NODE(311).edge_array = [ 301 322 301 290 322 334 334 321 300 290 321 300 ];
MESH.NODE(311).fixed = 0;
MESH.NODE(312).edge_array = [ 333 316 316 297 296 297 296 310 310 331 333 331 ];
MESH.NODE(312).fixed = 0;
MESH.NODE(313).edge_array = [ 336 322 301 292 301 322 ];
MESH.NODE(313).fixed = 0;
MESH.NODE(314).edge_array = [ 335 317 335 325 298 317 ];
MESH.NODE(314).fixed = 0;
MESH.NODE(315).edge_array = [ 303 295 323 337 323 303 326 337 326 305 295 305 ];
MESH.NODE(315).fixed = 0;
MESH.NODE(316).edge_array = [ 346 330 307 330 307 297 333 346 333 312 297 312 ];
MESH.NODE(316).fixed = 0;
MESH.NODE(317).edge_array = [ 342 326 298 305 326 305 342 335 335 314 298 314 ];
MESH.NODE(317).fixed = 0;
MESH.NODE(318).edge_array = [ 324 339 328 339 304 302 324 304 309 328 302 309 ];
MESH.NODE(318).fixed = 0;
MESH.NODE(319).edge_array = [ 304 324 324 340 340 332 ];
MESH.NODE(319).fixed = 0;
MESH.NODE(320).edge_array = [ 343 328 299 308 329 308 343 329 309 299 309 328 ];
MESH.NODE(320).fixed = 0;
MESH.NODE(321).edge_array = [ 329 308 311 334 311 300 308 300 334 345 329 345 ];
MESH.NODE(321).fixed = 0;
MESH.NODE(322).edge_array = [ 301 311 311 334 334 348 336 348 336 313 301 313 ];
MESH.NODE(322).fixed = 0;
MESH.NODE(323).edge_array = [ 337 350 327 350 327 306 303 306 315 337 303 315 ];
MESH.NODE(323).fixed = 0;
MESH.NODE(324).edge_array = [ 319 304 318 339 304 318 339 351 340 319 351 340 ];
MESH.NODE(324).fixed = 0;
MESH.NODE(325).edge_array = [ 349 353 349 338 353 335 335 314 ];
MESH.NODE(325).fixed = 0;
MESH.NODE(326).edge_array = [ 342 317 342 352 337 352 315 337 305 317 315 305 ];
MESH.NODE(326).fixed = 0;
MESH.NODE(327).edge_array = [ 310 306 310 331 355 331 350 355 323 350 306 323 ];
MESH.NODE(327).fixed = 0;
MESH.NODE(328).edge_array = [ 339 356 339 318 343 356 318 309 343 320 309 320 ];
MESH.NODE(328).fixed = 0;
MESH.NODE(329).edge_array = [ 321 308 343 357 320 308 343 320 321 345 357 345 ];
MESH.NODE(329).fixed = 0;
MESH.NODE(330).edge_array = [ 346 359 346 316 307 316 ];
MESH.NODE(330).fixed = 1;
MESH.NODE(331).edge_array = [ 310 327 358 333 358 355 327 355 310 312 333 312 ];
MESH.NODE(331).fixed = 0;
MESH.NODE(332).edge_array = [ 319 340 340 354 341 354 ];
MESH.NODE(332).fixed = 0;
MESH.NODE(333).edge_array = [ 316 346 358 331 358 346 316 312 312 331 ];
MESH.NODE(333).fixed = 0;
MESH.NODE(334).edge_array = [ 311 322 311 321 322 348 345 321 348 360 345 360 ];
MESH.NODE(334).fixed = 0;
MESH.NODE(335).edge_array = [ 325 353 342 317 353 361 342 361 317 314 314 325 ];
MESH.NODE(335).fixed = 0;
MESH.NODE(336).edge_array = [ 348 322 363 348 322 313 ];
MESH.NODE(336).fixed = 0;
MESH.NODE(337).edge_array = [ 350 323 365 350 352 365 323 315 326 352 315 326 ];
MESH.NODE(337).fixed = 0;
MESH.NODE(338).edge_array = [ 344 362 362 349 349 325 ];
MESH.NODE(338).fixed = 0;
MESH.NODE(339).edge_array = [ 328 356 356 368 324 318 328 318 324 351 368 351 ];
MESH.NODE(339).fixed = 0;
MESH.NODE(340).edge_array = [ 324 319 351 324 319 332 354 332 351 367 354 367 ];
MESH.NODE(340).fixed = 0;
MESH.NODE(341).edge_array = [ 364 347 364 366 332 354 366 354 ];
MESH.NODE(341).fixed = 0;
MESH.NODE(342).edge_array = [ 370 352 361 370 326 317 352 326 317 335 335 361 ];
MESH.NODE(342).fixed = 0;
MESH.NODE(343).edge_array = [ 328 356 371 356 329 357 357 371 328 320 320 329 ];
MESH.NODE(343).fixed = 0;
MESH.NODE(344).edge_array = [ 347 369 369 362 362 338 ];
MESH.NODE(344).fixed = 0;
MESH.NODE(345).edge_array = [ 357 374 334 321 329 321 357 329 360 374 334 360 ];
MESH.NODE(345).fixed = 0;
MESH.NODE(346).edge_array = [ 330 359 330 316 358 373 373 359 316 333 358 333 ];
MESH.NODE(346).fixed = 0;
MESH.NODE(347).edge_array = [ 364 369 341 364 369 344 ];
MESH.NODE(347).fixed = 0;
MESH.NODE(348).edge_array = [ 334 322 336 322 363 336 363 376 360 334 376 360 ];
MESH.NODE(348).fixed = 0;
MESH.NODE(349).edge_array = [ 353 372 362 372 362 338 353 325 325 338 ];
MESH.NODE(349).fixed = 0;
MESH.NODE(350).edge_array = [ 327 355 337 323 327 323 337 365 355 379 365 379 ];
MESH.NODE(350).fixed = 0;
MESH.NODE(351).edge_array = [ 324 339 368 339 340 324 368 378 340 367 378 367 ];
MESH.NODE(351).fixed = 0;
MESH.NODE(352).edge_array = [ 337 365 377 365 377 370 342 370 342 326 337 326 ];
MESH.NODE(352).fixed = 0;
MESH.NODE(353).edge_array = [ 372 381 361 381 349 372 349 325 325 335 361 335 ];
MESH.NODE(353).fixed = 0;
MESH.NODE(354).edge_array = [ 340 332 341 332 366 341 340 367 380 366 367 380 ];
MESH.NODE(354).fixed = 0;
MESH.NODE(355).edge_array = [ 358 331 327 331 327 350 350 379 375 358 379 375 ];
MESH.NODE(355).fixed = 0;
MESH.NODE(356).edge_array = [ 339 328 339 368 328 343 371 343 371 382 368 382 ];
MESH.NODE(356).fixed = 0;
MESH.NODE(357).edge_array = [ 343 329 343 371 386 374 386 371 345 374 329 345 ];
MESH.NODE(357).fixed = 0;
MESH.NODE(358).edge_array = [ 373 346 333 331 346 333 331 355 373 387 355 375 387 375 ];
MESH.NODE(358).fixed = 0;
MESH.NODE(359).edge_array = [ 330 346 346 373 385 373 ];
MESH.NODE(359).fixed = 1;
MESH.NODE(360).edge_array = [ 348 334 345 374 345 334 348 376 390 374 376 390 ];
MESH.NODE(360).fixed = 0;
MESH.NODE(361).edge_array = [ 353 381 381 388 388 370 342 370 353 335 342 335 ];
MESH.NODE(361).fixed = 0;
MESH.NODE(362).edge_array = [ 384 369 344 369 344 338 372 384 372 349 349 338 ];
MESH.NODE(362).fixed = 0;
MESH.NODE(363).edge_array = [ 376 394 348 336 376 348 ];
MESH.NODE(363).fixed = 0;
MESH.NODE(364).edge_array = [ 347 369 341 347 366 389 341 366 389 383 383 369 ];
MESH.NODE(364).fixed = 0;
MESH.NODE(365).edge_array = [ 391 377 337 350 337 352 377 352 379 350 391 379 ];
MESH.NODE(365).fixed = 0;
MESH.NODE(366).edge_array = [ 364 389 364 341 341 354 354 380 380 389 ];
MESH.NODE(366).fixed = 0;
MESH.NODE(367).edge_array = [ 340 351 378 351 354 340 392 378 392 380 380 354 ];
MESH.NODE(367).fixed = 0;
MESH.NODE(368).edge_array = [ 339 356 351 339 356 382 351 378 382 393 378 393 ];
MESH.NODE(368).fixed = 0;
MESH.NODE(369).edge_array = [ 347 364 364 383 395 383 395 384 347 344 384 362 344 362 ];
MESH.NODE(369).fixed = 0;
MESH.NODE(370).edge_array = [ 388 361 377 352 342 352 342 361 388 396 396 377 ];
MESH.NODE(370).fixed = 0;
MESH.NODE(371).edge_array = [ 386 398 356 343 343 357 386 357 382 356 398 382 ];
MESH.NODE(371).fixed = 0;
MESH.NODE(372).edge_array = [ 384 397 397 381 381 353 362 384 353 349 362 349 ];
MESH.NODE(372).fixed = 0;
MESH.NODE(373).edge_array = [ 385 399 358 346 346 359 385 359 358 387 387 399 ];
MESH.NODE(373).fixed = 0;
MESH.NODE(374).edge_array = [ 386 357 386 403 357 345 345 360 403 390 360 390 ];
MESH.NODE(374).fixed = 0;
MESH.NODE(375).edge_array = [ 355 358 387 358 387 401 379 401 379 355 ];
MESH.NODE(375).fixed = 0;
MESH.NODE(376).edge_array = [ 363 394 363 348 394 406 348 360 360 390 406 390 ];
MESH.NODE(376).fixed = 0;
MESH.NODE(377).edge_array = [ 391 400 391 365 365 352 352 370 400 396 370 396 ];
MESH.NODE(377).fixed = 0;
MESH.NODE(378).edge_array = [ 351 368 393 404 368 393 404 392 367 351 392 367 ];
MESH.NODE(378).fixed = 0;
MESH.NODE(379).edge_array = [ 401 409 391 409 355 350 365 350 365 391 401 375 375 355 ];
MESH.NODE(379).fixed = 0;
MESH.NODE(380).edge_array = [ 367 392 392 402 354 366 367 354 366 389 402 389 ];
MESH.NODE(380).fixed = 0;
MESH.NODE(381).edge_array = [ 372 397 397 407 372 353 361 353 361 388 407 388 ];
MESH.NODE(381).fixed = 0;
MESH.NODE(382).edge_array = [ 371 356 368 356 371 398 408 398 393 368 408 393 ];
MESH.NODE(382).fixed = 0;
MESH.NODE(383).edge_array = [ 364 389 405 389 364 369 395 369 395 405 ];
MESH.NODE(383).fixed = 0;
MESH.NODE(384).edge_array = [ 395 410 395 369 410 397 372 397 362 369 372 362 ];
MESH.NODE(384).fixed = 0;
MESH.NODE(385).edge_array = [ 411 399 373 399 359 373 ];
MESH.NODE(385).fixed = 1;
MESH.NODE(386).edge_array = [ 371 398 357 374 371 357 374 403 412 398 403 412 ];
MESH.NODE(386).fixed = 0;
MESH.NODE(387).edge_array = [ 373 358 413 401 413 399 373 399 358 375 375 401 ];
MESH.NODE(387).fixed = 0;
MESH.NODE(388).edge_array = [ 361 381 381 407 415 407 370 361 370 396 415 396 ];
MESH.NODE(388).fixed = 0;
MESH.NODE(389).edge_array = [ 405 414 364 366 364 383 405 383 414 402 366 380 402 380 ];
MESH.NODE(389).fixed = 0;
MESH.NODE(390).edge_array = [ 403 374 360 374 360 376 406 376 418 406 418 403 ];
MESH.NODE(390).fixed = 0;
MESH.NODE(391).edge_array = [ 419 409 400 419 377 400 365 377 409 379 365 379 ];
MESH.NODE(391).fixed = 0;
MESH.NODE(392).edge_array = [ 378 404 416 404 416 402 367 378 367 380 402 380 ];
MESH.NODE(392).fixed = 0;
MESH.NODE(393).edge_array = [ 382 368 378 404 378 368 382 408 408 417 417 404 ];
MESH.NODE(393).fixed = 0;
MESH.NODE(394).edge_array = [ 376 363 376 406 422 406 ];
MESH.NODE(394).fixed = 0;
MESH.NODE(395).edge_array = [ 369 383 383 405 410 384 384 369 405 420 420 410 ];
MESH.NODE(395).fixed = 0;
MESH.NODE(396).edge_array = [ 370 388 388 415 400 377 370 377 423 415 400 423 ];
MESH.NODE(396).fixed = 0;
MESH.NODE(397).edge_array = [ 384 410 372 384 372 381 381 407 421 410 421 407 ];
MESH.NODE(397).fixed = 0;
MESH.NODE(398).edge_array = [ 371 386 425 408 371 382 408 382 386 412 425 412 ];
MESH.NODE(398).fixed = 0;
MESH.NODE(399).edge_array = [ 411 427 411 385 427 413 385 373 413 387 373 387 ];
MESH.NODE(399).fixed = 0;
MESH.NODE(400).edge_array = [ 423 419 391 419 391 377 377 396 396 423 ];
MESH.NODE(400).fixed = 0;
MESH.NODE(401).edge_array = [ 429 409 429 413 413 387 379 409 387 375 379 375 ];
MESH.NODE(401).fixed = 0;
MESH.NODE(402).edge_array = [ 414 389 424 414 416 424 416 392 392 380 389 380 ];
MESH.NODE(402).fixed = 0;
MESH.NODE(403).edge_array = [ 386 374 418 430 374 390 418 390 412 386 430 412 ];
MESH.NODE(403).fixed = 0;
MESH.NODE(404).edge_array = [ 378 393 426 416 378 392 416 392 426 417 393 417 ];
MESH.NODE(404).fixed = 0;
MESH.NODE(405).edge_array = [ 389 414 383 389 395 383 395 420 420 428 414 428 ];
MESH.NODE(405).fixed = 0;
MESH.NODE(406).edge_array = [ 376 394 422 394 432 422 432 418 390 376 418 390 ];
MESH.NODE(406).fixed = 0;
MESH.NODE(407).edge_array = [ 431 421 381 397 421 397 431 415 381 388 415 388 ];
MESH.NODE(407).fixed = 0;
MESH.NODE(408).edge_array = [ 425 398 434 425 382 398 382 393 393 417 434 417 ];
MESH.NODE(408).fixed = 0;
MESH.NODE(409).edge_array = [ 429 435 429 401 435 419 419 391 401 379 391 379 ];
MESH.NODE(409).fixed = 0;
MESH.NODE(410).edge_array = [ 395 384 395 420 421 433 420 433 384 397 421 397 ];
MESH.NODE(410).fixed = 0;
MESH.NODE(411).edge_array = [ 427 436 399 427 385 399 ];
MESH.NODE(411).fixed = 1;
MESH.NODE(412).edge_array = [ 386 398 403 386 425 398 437 425 403 430 437 430 ];
MESH.NODE(412).fixed = 0;
MESH.NODE(413).edge_array = [ 427 399 401 429 429 438 438 427 387 401 399 387 ];
MESH.NODE(413).fixed = 0;
MESH.NODE(414).edge_array = [ 405 389 389 402 424 402 428 405 424 440 428 440 ];
MESH.NODE(414).fixed = 0;
MESH.NODE(415).edge_array = [ 431 407 439 431 439 423 388 407 388 396 423 396 ];
MESH.NODE(415).fixed = 0;
MESH.NODE(416).edge_array = [ 402 424 444 424 426 404 392 404 402 392 426 442 442 444 ];
MESH.NODE(416).fixed = 0;
MESH.NODE(417).edge_array = [ 393 408 408 434 426 404 393 404 445 434 445 426 ];
MESH.NODE(417).fixed = 0;
MESH.NODE(418).edge_array = [ 403 430 406 432 447 430 447 432 390 406 403 390 ];
MESH.NODE(418).fixed = 0;
MESH.NODE(419).edge_array = [ 435 409 443 435 423 443 409 391 423 400 391 400 ];
MESH.NODE(419).fixed = 0;
MESH.NODE(420).edge_array = [ 395 405 395 410 405 428 428 441 441 433 433 410 ];
MESH.NODE(420).fixed = 0;
MESH.NODE(421).edge_array = [ 431 407 431 446 433 446 410 433 397 410 407 397 ];
MESH.NODE(421).fixed = 0;
MESH.NODE(422).edge_array = [ 449 432 406 394 432 406 ];
MESH.NODE(422).fixed = 0;
MESH.NODE(423).edge_array = [ 439 443 419 443 415 439 419 400 396 415 400 396 ];
MESH.NODE(423).fixed = 0;
MESH.NODE(424).edge_array = [ 414 402 444 440 440 414 402 416 444 416 ];
MESH.NODE(424).fixed = 0;
MESH.NODE(425).edge_array = [ 408 398 434 408 398 412 437 412 437 450 434 450 ];
MESH.NODE(425).fixed = 0;
MESH.NODE(426).edge_array = [ 416 404 404 417 445 417 416 442 445 442 ];
MESH.NODE(426).fixed = 0;
MESH.NODE(427).edge_array = [ 452 436 411 436 411 399 399 413 413 438 438 452 ];
MESH.NODE(427).fixed = 0;
MESH.NODE(428).edge_array = [ 420 405 414 405 448 441 420 441 440 448 414 440 ];
MESH.NODE(428).fixed = 0;
MESH.NODE(429).edge_array = [ 409 435 435 451 401 409 451 456 401 413 456 438 413 438 ];
MESH.NODE(429).fixed = 0;
MESH.NODE(430).edge_array = [ 453 437 453 447 403 418 447 418 403 412 437 412 ];
MESH.NODE(430).fixed = 0;
MESH.NODE(431).edge_array = [ 446 454 407 421 421 446 454 439 415 407 439 415 ];
MESH.NODE(431).fixed = 0;
MESH.NODE(432).edge_array = [ 449 422 406 422 449 459 459 447 406 418 447 418 ];
MESH.NODE(432).fixed = 0;
MESH.NODE(433).edge_array = [ 457 441 446 457 421 446 421 410 420 441 420 410 ];
MESH.NODE(433).fixed = 0;
MESH.NODE(434).edge_array = [ 408 425 455 445 425 450 455 450 408 417 445 417 ];
MESH.NODE(434).fixed = 0;
MESH.NODE(435).edge_array = [ 429 409 451 429 409 419 443 419 451 458 443 458 ];
MESH.NODE(435).fixed = 0;
MESH.NODE(436).edge_array = [ 462 452 452 427 411 427 ];
MESH.NODE(436).fixed = 1;
MESH.NODE(437).edge_array = [ 453 465 453 430 425 412 412 430 465 450 450 425 ];
MESH.NODE(437).fixed = 0;
MESH.NODE(438).edge_array = [ 467 456 456 429 413 429 413 427 427 452 467 452 ];
MESH.NODE(438).fixed = 0;
MESH.NODE(439).edge_array = [ 443 460 460 454 431 454 415 431 443 423 415 423 ];
MESH.NODE(439).fixed = 0;
MESH.NODE(440).edge_array = [ 468 448 461 468 428 448 444 461 444 424 424 414 428 414 ];
MESH.NODE(440).fixed = 0;
MESH.NODE(441).edge_array = [ 448 466 466 457 448 428 420 428 457 433 420 433 ];
MESH.NODE(441).fixed = 0;
MESH.NODE(442).edge_array = [ 416 426 416 444 445 463 445 426 464 463 464 444 ];
MESH.NODE(442).fixed = 0;
MESH.NODE(443).edge_array = [ 460 469 439 460 435 419 469 458 458 435 439 423 419 423 ];
MESH.NODE(443).fixed = 0;
MESH.NODE(444).edge_array = [ 461 440 440 424 424 416 464 461 416 442 464 442 ];
MESH.NODE(444).fixed = 0;
MESH.NODE(445).edge_array = [ 455 434 417 434 426 417 463 442 442 426 471 463 455 471 ];
MESH.NODE(445).fixed = 0;
MESH.NODE(446).edge_array = [ 470 454 457 470 454 431 431 421 433 457 421 433 ];
MESH.NODE(446).fixed = 0;
MESH.NODE(447).edge_array = [ 453 430 459 432 453 472 459 472 430 418 418 432 ];
MESH.NODE(447).fixed = 0;
MESH.NODE(448).edge_array = [ 466 441 468 466 441 428 468 440 428 440 ];
MESH.NODE(448).fixed = 0;
MESH.NODE(449).edge_array = [ 432 422 432 459 473 459 ];
MESH.NODE(449).fixed = 0;
MESH.NODE(450).edge_array = [ 437 465 437 425 434 425 455 434 474 455 465 474 ];
MESH.NODE(450).fixed = 0;
MESH.NODE(451).edge_array = [ 435 429 456 429 475 456 435 458 458 475 ];
MESH.NODE(451).fixed = 0;
MESH.NODE(452).edge_array = [ 462 436 462 477 436 427 467 477 427 438 467 438 ];
MESH.NODE(452).fixed = 0;
MESH.NODE(453).edge_array = [ 472 478 478 465 465 437 437 430 430 447 447 472 ];
MESH.NODE(453).fixed = 0;
MESH.NODE(454).edge_array = [ 481 476 470 481 470 446 476 460 446 431 460 439 431 439 ];
MESH.NODE(454).fixed = 0;
MESH.NODE(455).edge_array = [ 445 434 434 450 489 474 450 474 489 471 445 471 ];
MESH.NODE(455).fixed = 0;
MESH.NODE(456).edge_array = [ 451 429 451 475 467 438 438 429 475 485 467 485 ];
MESH.NODE(456).fixed = 0;
MESH.NODE(457).edge_array = [ 479 483 470 483 466 479 466 441 470 446 433 441 446 433 ];
MESH.NODE(457).fixed = 0;
MESH.NODE(458).edge_array = [ 451 435 443 469 443 435 469 486 475 486 451 475 ];
MESH.NODE(458).fixed = 0;
MESH.NODE(459).edge_array = [ 432 449 492 473 449 473 492 472 447 432 472 447 ];
MESH.NODE(459).fixed = 0;
MESH.NODE(460).edge_array = [ 476 491 469 491 476 454 469 443 443 439 439 454 ];
MESH.NODE(460).fixed = 0;
MESH.NODE(461).edge_array = [ 468 487 480 487 468 440 444 440 444 464 464 480 ];
MESH.NODE(461).fixed = 0;
MESH.NODE(462).edge_array = [ 477 482 436 452 452 477 ];
MESH.NODE(462).fixed = 1;
MESH.NODE(463).edge_array = [ 490 484 484 464 445 442 464 442 490 471 445 471 ];
MESH.NODE(463).fixed = 0;
MESH.NODE(464).edge_array = [ 444 461 461 480 484 480 484 463 442 463 444 442 ];
MESH.NODE(464).fixed = 0;
MESH.NODE(465).edge_array = [ 493 478 453 478 453 437 437 450 493 474 450 474 ];
MESH.NODE(465).fixed = 0;
MESH.NODE(466).edge_array = [ 479 488 448 441 468 488 468 448 479 457 457 441 ];
MESH.NODE(466).fixed = 0;
MESH.NODE(467).edge_array = [ 452 477 438 456 452 438 485 477 456 485 ];
MESH.NODE(467).fixed = 0;
MESH.NODE(468).edge_array = [ 488 487 461 487 488 466 466 448 448 440 461 440 ];
MESH.NODE(468).fixed = 0;
MESH.NODE(469).edge_array = [ 491 486 460 491 460 443 443 458 486 458 ];
MESH.NODE(469).fixed = 0;
MESH.NODE(470).edge_array = [ 483 481 454 481 457 483 454 446 457 446 ];
MESH.NODE(470).fixed = 0;
MESH.NODE(471).edge_array = [ 489 490 489 455 490 463 445 463 445 455 ];
MESH.NODE(471).fixed = 0;
MESH.NODE(472).edge_array = [ 492 496 496 478 453 478 492 459 453 447 459 447 ];
MESH.NODE(472).fixed = 0;
MESH.NODE(473).edge_array = [ 495 492 492 459 449 459 ];
MESH.NODE(473).fixed = 0;
MESH.NODE(474).edge_array = [ 493 497 489 497 489 455 450 455 493 465 450 465 ];
MESH.NODE(474).fixed = 0;
MESH.NODE(475).edge_array = [ 499 486 499 498 451 456 458 486 451 458 498 485 456 485 ];
MESH.NODE(475).fixed = 0;
MESH.NODE(476).edge_array = [ 454 481 506 491 500 481 506 500 491 460 460 454 ];
MESH.NODE(476).fixed = 0;
MESH.NODE(477).edge_array = [ 505 501 505 482 482 462 462 452 452 467 485 501 467 485 ];
MESH.NODE(477).fixed = 0;
MESH.NODE(478).edge_array = [ 493 511 511 496 472 496 453 472 493 465 453 465 ];
MESH.NODE(478).fixed = 0;
MESH.NODE(479).edge_array = [ 488 503 503 507 507 483 466 488 483 457 466 457 ];
MESH.NODE(479).fixed = 0;
MESH.NODE(480).edge_array = [ 509 504 509 487 487 461 484 504 461 464 484 464 ];
MESH.NODE(480).fixed = 0;
MESH.NODE(481).edge_array = [ 500 502 483 502 454 476 500 476 483 470 454 470 ];
MESH.NODE(481).fixed = 0;
MESH.NODE(482).edge_array = [ 505 494 505 477 477 462 ];
MESH.NODE(482).fixed = 1;
MESH.NODE(483).edge_array = [ 502 481 481 470 502 507 479 507 479 457 470 457 ];
MESH.NODE(483).fixed = 0;
MESH.NODE(484).edge_array = [ 512 490 490 463 480 504 512 504 480 464 464 463 ];
MESH.NODE(484).fixed = 0;
MESH.NODE(485).edge_array = [ 477 501 467 477 501 498 475 498 456 475 467 456 ];
MESH.NODE(485).fixed = 0;
MESH.NODE(486).edge_array = [ 514 491 514 499 491 469 499 475 469 458 475 458 ];
MESH.NODE(486).fixed = 0;
MESH.NODE(487).edge_array = [ 488 508 508 509 488 468 509 480 468 461 480 461 ];
MESH.NODE(487).fixed = 0;
MESH.NODE(488).edge_array = [ 508 503 487 508 468 487 503 479 479 466 468 466 ];
MESH.NODE(488).fixed = 0;
MESH.NODE(489).edge_array = [ 513 497 510 513 510 490 474 497 455 474 490 471 471 455 ];
MESH.NODE(489).fixed = 0;
MESH.NODE(490).edge_array = [ 512 510 512 484 484 463 510 489 489 471 463 471 ];
MESH.NODE(490).fixed = 0;
MESH.NODE(491).edge_array = [ 514 486 506 514 506 476 486 469 476 460 469 460 ];
MESH.NODE(491).fixed = 0;
MESH.NODE(492).edge_array = [ 495 516 473 495 496 516 472 496 459 473 472 459 ];
MESH.NODE(492).fixed = 0;
MESH.NODE(493).edge_array = [ 515 497 511 515 478 511 465 478 497 474 474 465 ];
MESH.NODE(493).fixed = 0;
MESH.NODE(494).edge_array = [ 482 505 ];
MESH.NODE(494).fixed = 1;
MESH.NODE(495).edge_array = [ 516 492 473 492 ];
MESH.NODE(495).fixed = 0;
MESH.NODE(496).edge_array = [ 492 516 472 492 511 478 472 478 ];
MESH.NODE(496).fixed = 0;
MESH.NODE(497).edge_array = [ 493 515 513 489 493 474 489 474 ];
MESH.NODE(497).fixed = 0;
MESH.NODE(498).edge_array = [ 499 475 501 485 475 485 ];
MESH.NODE(498).fixed = 0;
MESH.NODE(499).edge_array = [ 514 486 475 486 498 475 ];
MESH.NODE(499).fixed = 0;
MESH.NODE(500).edge_array = [ 481 502 476 481 506 476 ];
MESH.NODE(500).fixed = 0;
MESH.NODE(501).edge_array = [ 505 477 477 485 485 498 ];
MESH.NODE(501).fixed = 0;
MESH.NODE(502).edge_array = [ 500 481 483 481 483 507 ];
MESH.NODE(502).fixed = 0;
MESH.NODE(503).edge_array = [ 488 508 488 479 479 507 ];
MESH.NODE(503).fixed = 0;
MESH.NODE(504).edge_array = [ 509 480 480 484 512 484 ];
MESH.NODE(504).fixed = 0;
MESH.NODE(505).edge_array = [ 482 494 477 501 482 477 ];
MESH.NODE(505).fixed = 0;
MESH.NODE(506).edge_array = [ 491 514 491 476 476 500 ];
MESH.NODE(506).fixed = 0;
MESH.NODE(507).edge_array = [ 502 483 479 503 479 483 ];
MESH.NODE(507).fixed = 0;
MESH.NODE(508).edge_array = [ 488 503 488 487 487 509 ];
MESH.NODE(508).fixed = 0;
MESH.NODE(509).edge_array = [ 508 487 480 504 487 480 ];
MESH.NODE(509).fixed = 0;
MESH.NODE(510).edge_array = [ 512 490 489 513 490 489 ];
MESH.NODE(510).fixed = 0;
MESH.NODE(511).edge_array = [ 493 515 493 478 478 496 ];
MESH.NODE(511).fixed = 0;
MESH.NODE(512).edge_array = [ 490 510 484 490 504 484 ];
MESH.NODE(512).fixed = 0;
MESH.NODE(513).edge_array = [ 489 497 510 489 ];
MESH.NODE(513).fixed = 0;
MESH.NODE(514).edge_array = [ 486 491 499 486 491 506 ];
MESH.NODE(514).fixed = 0;
MESH.NODE(515).edge_array = [ 493 497 493 511 ];
MESH.NODE(515).fixed = 0;
MESH.NODE(516).edge_array = [ 495 492 496 492 ];
MESH.NODE(516).fixed = 0;


% Calculate LAMBDA_MATRIX, SPRING_MATRIX and DAMPING_MATRIX - 
LAMBDA_MATRIX = CalculateLambdaMatrix(INITIAL_CONDITION_VECTOR,NUMBER_OF_NODES);
SPRING_MATRIX = CalculateSpringConstantMatrix(INITIAL_CONDITION_VECTOR,NUMBER_OF_NODES);
DAMPING_MATRIX = CalculateDampingConstantMatrix(INITIAL_CONDITION_VECTOR,NUMBER_OF_NODES);


% =========== DO NOT EDIT BELOW THIS LINE ================ %
DF.SPRING_PARAMETER_MATRIX = SPRING_MATRIX;
DF.DAMPING_PARAMETER_MATRIX = DAMPING_MATRIX;
DF.LAMBDA_PARAMETER_MATRIX = LAMBDA_MATRIX;
DF.INITIAL_CONDITION_VECTOR = INITIAL_CONDITION_VECTOR;
DF.NUMBER_OF_EDGES = NUMBER_OF_EDGES;
DF.NUMBER_OF_NODES = NUMBER_OF_NODES;
DF.NUMBER_OF_STATES = NUMBER_OF_STATES;
DF.MESH_ADJANCEY_STRUCT = MESH;
% ======================================================== %
return;
