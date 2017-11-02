--
-- Copyright 2017 Warlock <internalmike@gmail.com>
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

module Data.Pmevm.Monitor
  ( monitor
  ) where

#include <haskell>
import Data.Pmevm

monitor :: Program
monitor = Program
  [ I 0o000 0o000 0o303 "          JMP M1            "
  , I 0o000 0o001 0o070 "                            "
  , I 0o000 0o002 0o000 "                            "
  , I 0o000 0o070 0o061 "      M1: LXI SP 010000Q    "
  , I 0o000 0o071 0o000 "                            "
  , I 0o000 0o072 0o020 "                            "
  , I 0o000 0o073 0o041 "          LXI HL 006000Q    "
  , I 0o000 0o074 0o000 "                            "
  , I 0o000 0o075 0o014 "                            "
  , I 0o000 0o076 0o116 "      M2: MOV C M           "
  , I 0o000 0o077 0o174 "          MOV A H           "
  , I 0o000 0o100 0o323 "          OUT 002Q          "
  , I 0o000 0o101 0o002 "                            "
  , I 0o000 0o102 0o175 "          MOV A L           "
  , I 0o000 0o103 0o323 "          OUT 001Q          "
  , I 0o000 0o104 0o001 "                            "
  , I 0o000 0o105 0o171 "      M3: MOV A C           "
  , I 0o000 0o106 0o323 "          OUT 000Q          "
  , I 0o000 0o107 0o000 "                            "
  , I 0o000 0o110 0o315 "      M4: CALL SKL          "
  , I 0o000 0o111 0o177 "                            "
  , I 0o000 0o112 0o000 "                            "
  , I 0o000 0o113 0o376 "          CPI 010Q          "
  , I 0o000 0o114 0o010 "                            "
  , I 0o000 0o115 0o322 "          JNC M11           "
  , I 0o000 0o116 0o134 "                            "
  , I 0o000 0o117 0o000 "                            "
  , I 0o000 0o120 0o107 "          MOV E A           "
  , I 0o000 0o121 0o171 "          MOV A C           "
  , I 0o000 0o122 0o027 "          RAL               "
  , I 0o000 0o123 0o027 "          RAL               "
  , I 0o000 0o124 0o027 "          RAL               "
  , I 0o000 0o125 0o346 "          ANI 370Q          "
  , I 0o000 0o126 0o370 "                            "
  , I 0o000 0o127 0o260 "          OR B              "
  , I 0o000 0o130 0o117 "          MOV C A           "
  , I 0o000 0o131 0o303 "          JMP M3            "
  , I 0o000 0o132 0o105 "                            "
  , I 0o000 0o133 0o000 "                            "
  , I 0o000 0o134 0o376 "     M11: CPI 010Q          "
  , I 0o000 0o135 0o010 "                            "
  , I 0o000 0o136 0o302 "          JNZ M12           "
  , I 0o000 0o137 0o145 "                            "
  , I 0o000 0o140 0o000 "                            "
  , I 0o000 0o141 0o141 "          MOV H C           "
  , I 0o000 0o142 0o303 "          JMP M2            "
  , I 0o000 0o143 0o076 "                            "
  , I 0o000 0o144 0o000 "                            "
  , I 0o000 0o145 0o376 "     M12: CPI 011Q          "
  , I 0o000 0o146 0o011 "                            "
  , I 0o000 0o147 0o302 "          JNZ M13           "
  , I 0o000 0o150 0o156 "                            "
  , I 0o000 0o151 0o000 "                            "
  , I 0o000 0o152 0o151 "          MOV L C           "
  , I 0o000 0o153 0o303 "          JMP M2            "
  , I 0o000 0o154 0o076 "                            "
  , I 0o000 0o155 0o000 "                            "
  , I 0o000 0o156 0o376 "     M13: CPI 012Q          "
  , I 0o000 0o157 0o012 "                            "
  , I 0o000 0o160 0o302 "          JNZ M14           "
  , I 0o000 0o161 0o170 "                            "
  , I 0o000 0o162 0o000 "                            "
  , I 0o000 0o163 0o161 "          MOV M C           "
  , I 0o000 0o164 0o043 "          INX HL            "
  , I 0o000 0o165 0o303 "          JMP M2            "
  , I 0o000 0o166 0o076 "                            "
  , I 0o000 0o167 0o000 "                            "
  , I 0o000 0o170 0o376 "     M14: CPI 013Q          "
  , I 0o000 0o171 0o013 "                            "
  , I 0o000 0o172 0o302 "          JNZ M4            "
  , I 0o000 0o173 0o110 "                            "
  , I 0o000 0o174 0o000 "                            "
  , I 0o000 0o175 0o351 "          PCHL              "
  , I 0o000 0o176 0o000 "                            "
  , I 0o000 0o177 0o076 "     SKL: MVI A 000Q        "
  , I 0o000 0o200 0o000 "                            "
  , I 0o000 0o201 0o323 "          OUT 003Q          "
  , I 0o000 0o202 0o003 "                            "
  , I 0o000 0o203 0o333 "      M5: IN 003Q           "
  , I 0o000 0o204 0o003 "                            "
  , I 0o000 0o205 0o346 "          ANI 017Q          "
  , I 0o000 0o206 0o017 "                            "
  , I 0o000 0o207 0o376 "          CPI 017Q          "
  , I 0o000 0o210 0o017 "                            "
  , I 0o000 0o211 0o302 "          JNZ M5            "
  , I 0o000 0o212 0o203 "                            "
  , I 0o000 0o213 0o000 "                            "
  , I 0o000 0o214 0o315 "          CALL DL           "
  , I 0o000 0o215 0o277 "                            "
  , I 0o000 0o216 0o000 "                            "
  , I 0o000 0o217 0o325 "          PUSH DE           "
  , I 0o000 0o220 0o026 "      M8: MVI D 003Q        "
  , I 0o000 0o221 0o003 "                            "
  , I 0o000 0o222 0o036 "          MVI E 376Q        "
  , I 0o000 0o223 0o376 "                            "
  , I 0o000 0o224 0o173 "      M7: MOV A E           "
  , I 0o000 0o225 0o323 "          OUT 003Q          "
  , I 0o000 0o226 0o003 "                            "
  , I 0o000 0o227 0o007 "          RLC               "
  , I 0o000 0o230 0o137 "          MOV E A           "
  , I 0o000 0o231 0o333 "          IN 003Q           "
  , I 0o000 0o232 0o003 "                            "
  , I 0o000 0o233 0o346 "          ANI 017Q          "
  , I 0o000 0o234 0o017 "                            "
  , I 0o000 0o235 0o376 "          CPI 017Q          "
  , I 0o000 0o236 0o017 "                            "
  , I 0o000 0o237 0o302 "          JNZ M6            "
  , I 0o000 0o240 0o254 "                            "
  , I 0o000 0o241 0o000 "                            "
  , I 0o000 0o242 0o025 "          DCR D             "
  , I 0o000 0o243 0o172 "          MOV A D           "
  , I 0o000 0o244 0o376 "          CPI 377Q          "
  , I 0o000 0o245 0o377 "                            "
  , I 0o000 0o246 0o302 "          JNZ M7            "
  , I 0o000 0o247 0o224 "                            "
  , I 0o000 0o250 0o000 "                            "
  , I 0o000 0o251 0o303 "          JMP M8            "
  , I 0o000 0o252 0o220 "                            "
  , I 0o000 0o253 0o000 "                            "
  , I 0o000 0o254 0o315 "      M6: CALL DL           "
  , I 0o000 0o255 0o277 "                            "
  , I 0o000 0o256 0o000 "                            "
  , I 0o000 0o257 0o017 "     M10: RRC               "
  , I 0o000 0o260 0o322 "          JNC M9            "
  , I 0o000 0o261 0o274 "                            "
  , I 0o000 0o262 0o000 "                            "
  , I 0o000 0o263 0o365 "          PUSH PSWA         "
  , I 0o000 0o264 0o172 "          MOV A D           "
  , I 0o000 0o265 0o306 "          ADI 004Q          "
  , I 0o000 0o266 0o004 "                            "
  , I 0o000 0o267 0o127 "          MOV D A           "
  , I 0o000 0o270 0o361 "          POP PSWA          "
  , I 0o000 0o271 0o303 "          JMP M10           "
  , I 0o000 0o272 0o257 "                            "
  , I 0o000 0o273 0o000 "                            "
  , I 0o000 0o274 0o172 "      M9: MOV A D           "
  , I 0o000 0o275 0o321 "          POP DE            "
  , I 0o000 0o276 0o311 "          RET               "
  , I 0o000 0o277 0o365 "      DL: PUSH PSWA         "
  , I 0o000 0o300 0o325 "          PUSH DE           "
  , I 0o000 0o301 0o021 "          LXI D 001016Q     "
  , I 0o000 0o302 0o016 "                            "
  , I 0o000 0o303 0o002 "                            "
  , I 0o000 0o304 0o033 "       N: DCX DE            "
  , I 0o000 0o305 0o172 "          MOV A D           "
  , I 0o000 0o306 0o263 "          ORA E             "
  , I 0o000 0o307 0o302 "          JNZ N             "
  , I 0o000 0o310 0o304 "                            "
  , I 0o000 0o311 0o000 "                            "
  , I 0o000 0o312 0o321 "          POP DE            "
  , I 0o000 0o313 0o361 "          POP PSWA          "
  , I 0o000 0o314 0o311 "          RET               "
  ]
