{-# OPTIONS_GHC -w #-}
module PixelGrammar where
import Pixels
import Data.Matrix
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Pixels)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,401) ([0,0,64,0,0,0,64,0,63488,62463,15,28752,0,0,64,0,0,0,0,0,0,0,63360,15,0,0,0,0,0,0,0,0,0,0,2048,0,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,0,0,0,0,0,0,0,0,0,0,0,0,63488,62463,15,28752,63488,62463,15,28752,0,0,1,0,63488,62463,15,28752,63488,62463,15,28752,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,32,0,0,0,0,128,0,0,0,0,0,0,63392,15,0,0,0,0,63488,62463,63375,28767,63488,62463,63375,28767,0,0,0,0,63488,62463,63375,28767,0,1024,63360,15,0,0,0,0,63488,62463,63375,28767,0,0,0,0,63488,62463,63375,28767,63488,62463,63375,28767,63488,62463,63375,28767,63488,62463,63375,28767,63488,62463,63375,28767,63488,62463,63375,28767,63488,62463,63375,28767,0,0,0,0,0,0,0,0,63488,62463,63375,28767,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,63488,62463,15,28752,0,0,0,0,0,0,0,8,0,0,63360,12,0,0,63360,12,0,0,30592,12,0,0,14208,12,0,0,0,12,0,0,0,12,0,0,0,12,0,0,0,12,0,0,0,12,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63488,62463,15,28752,0,0,0,0,63488,62463,63375,28767,63488,62463,63375,28767,63488,62463,15,28752,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,63360,47,0,0,0,0,63488,62463,63375,28767,0,2048,63360,15,63488,62463,15,28752,0,0,0,0,0,0,0,0,0,0,63360,15,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parsePixels","Start","Exp","Elem","Row","Grid","Operators","Booleans","Type","tilevar","rotate","reflectX","reflectY","repeatX","repeatY","hJoin","vJoin","scale","iterate","fill","blank","and","not","if","then","else","mask","print","cut","paste","int","true","false","read","'->'","','","'~'","'>'","'<'","'<='","'>='","'='","'=='","'!='","'&&'","'||'","'+'","'-'","'/'","'*'","'('","')'","'['","']'","newline","Int","Bool","PTile","fst","snd","filename","%eof"]
        bit_start = st Prelude.* 64
        bit_end = (st Prelude.+ 1) Prelude.* 64
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..63]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (39) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (39) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (12) = happyShift action_8
action_2 (13) = happyShift action_9
action_2 (14) = happyShift action_10
action_2 (15) = happyShift action_11
action_2 (16) = happyShift action_12
action_2 (17) = happyShift action_13
action_2 (18) = happyShift action_14
action_2 (19) = happyShift action_15
action_2 (20) = happyShift action_16
action_2 (21) = happyShift action_17
action_2 (22) = happyShift action_18
action_2 (23) = happyShift action_19
action_2 (24) = happyShift action_20
action_2 (25) = happyShift action_21
action_2 (26) = happyShift action_22
action_2 (29) = happyShift action_23
action_2 (30) = happyShift action_24
action_2 (31) = happyShift action_25
action_2 (32) = happyShift action_26
action_2 (33) = happyShift action_27
action_2 (34) = happyShift action_28
action_2 (35) = happyShift action_29
action_2 (36) = happyShift action_30
action_2 (53) = happyShift action_31
action_2 (55) = happyShift action_32
action_2 (61) = happyShift action_33
action_2 (62) = happyShift action_34
action_2 (63) = happyShift action_35
action_2 (5) = happyGoto action_5
action_2 (9) = happyGoto action_6
action_2 (10) = happyGoto action_7
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (39) = happyShift action_2
action_3 (64) = happyAccept
action_3 (4) = happyGoto action_4
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (4) = happyGoto action_4
action_4 _ = happyReduce_2

action_5 (40) = happyShift action_63
action_5 (41) = happyShift action_64
action_5 (42) = happyShift action_65
action_5 (43) = happyShift action_66
action_5 (45) = happyShift action_67
action_5 (46) = happyShift action_68
action_5 (47) = happyShift action_69
action_5 (48) = happyShift action_70
action_5 (49) = happyShift action_71
action_5 (50) = happyShift action_72
action_5 (51) = happyShift action_73
action_5 (52) = happyShift action_74
action_5 _ = happyReduce_1

action_6 _ = happyReduce_6

action_7 _ = happyReduce_7

action_8 (44) = happyShift action_62
action_8 _ = happyReduce_4

action_9 (12) = happyShift action_8
action_9 (13) = happyShift action_9
action_9 (14) = happyShift action_10
action_9 (15) = happyShift action_11
action_9 (16) = happyShift action_12
action_9 (17) = happyShift action_13
action_9 (18) = happyShift action_14
action_9 (19) = happyShift action_15
action_9 (20) = happyShift action_16
action_9 (21) = happyShift action_17
action_9 (22) = happyShift action_18
action_9 (23) = happyShift action_19
action_9 (24) = happyShift action_20
action_9 (25) = happyShift action_21
action_9 (26) = happyShift action_22
action_9 (29) = happyShift action_23
action_9 (30) = happyShift action_24
action_9 (31) = happyShift action_25
action_9 (32) = happyShift action_26
action_9 (33) = happyShift action_27
action_9 (34) = happyShift action_28
action_9 (35) = happyShift action_29
action_9 (36) = happyShift action_30
action_9 (53) = happyShift action_31
action_9 (55) = happyShift action_32
action_9 (61) = happyShift action_33
action_9 (62) = happyShift action_34
action_9 (63) = happyShift action_35
action_9 (5) = happyGoto action_61
action_9 (9) = happyGoto action_6
action_9 (10) = happyGoto action_7
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (12) = happyShift action_8
action_10 (13) = happyShift action_9
action_10 (14) = happyShift action_10
action_10 (15) = happyShift action_11
action_10 (16) = happyShift action_12
action_10 (17) = happyShift action_13
action_10 (18) = happyShift action_14
action_10 (19) = happyShift action_15
action_10 (20) = happyShift action_16
action_10 (21) = happyShift action_17
action_10 (22) = happyShift action_18
action_10 (23) = happyShift action_19
action_10 (24) = happyShift action_20
action_10 (25) = happyShift action_21
action_10 (26) = happyShift action_22
action_10 (29) = happyShift action_23
action_10 (30) = happyShift action_24
action_10 (31) = happyShift action_25
action_10 (32) = happyShift action_26
action_10 (33) = happyShift action_27
action_10 (34) = happyShift action_28
action_10 (35) = happyShift action_29
action_10 (36) = happyShift action_30
action_10 (53) = happyShift action_31
action_10 (55) = happyShift action_32
action_10 (61) = happyShift action_33
action_10 (62) = happyShift action_34
action_10 (63) = happyShift action_35
action_10 (5) = happyGoto action_60
action_10 (9) = happyGoto action_6
action_10 (10) = happyGoto action_7
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_8
action_11 (13) = happyShift action_9
action_11 (14) = happyShift action_10
action_11 (15) = happyShift action_11
action_11 (16) = happyShift action_12
action_11 (17) = happyShift action_13
action_11 (18) = happyShift action_14
action_11 (19) = happyShift action_15
action_11 (20) = happyShift action_16
action_11 (21) = happyShift action_17
action_11 (22) = happyShift action_18
action_11 (23) = happyShift action_19
action_11 (24) = happyShift action_20
action_11 (25) = happyShift action_21
action_11 (26) = happyShift action_22
action_11 (29) = happyShift action_23
action_11 (30) = happyShift action_24
action_11 (31) = happyShift action_25
action_11 (32) = happyShift action_26
action_11 (33) = happyShift action_27
action_11 (34) = happyShift action_28
action_11 (35) = happyShift action_29
action_11 (36) = happyShift action_30
action_11 (53) = happyShift action_31
action_11 (55) = happyShift action_32
action_11 (61) = happyShift action_33
action_11 (62) = happyShift action_34
action_11 (63) = happyShift action_35
action_11 (5) = happyGoto action_59
action_11 (9) = happyGoto action_6
action_11 (10) = happyGoto action_7
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (12) = happyShift action_8
action_12 (13) = happyShift action_9
action_12 (14) = happyShift action_10
action_12 (15) = happyShift action_11
action_12 (16) = happyShift action_12
action_12 (17) = happyShift action_13
action_12 (18) = happyShift action_14
action_12 (19) = happyShift action_15
action_12 (20) = happyShift action_16
action_12 (21) = happyShift action_17
action_12 (22) = happyShift action_18
action_12 (23) = happyShift action_19
action_12 (24) = happyShift action_20
action_12 (25) = happyShift action_21
action_12 (26) = happyShift action_22
action_12 (29) = happyShift action_23
action_12 (30) = happyShift action_24
action_12 (31) = happyShift action_25
action_12 (32) = happyShift action_26
action_12 (33) = happyShift action_27
action_12 (34) = happyShift action_28
action_12 (35) = happyShift action_29
action_12 (36) = happyShift action_30
action_12 (53) = happyShift action_31
action_12 (55) = happyShift action_32
action_12 (61) = happyShift action_33
action_12 (62) = happyShift action_34
action_12 (63) = happyShift action_35
action_12 (5) = happyGoto action_58
action_12 (9) = happyGoto action_6
action_12 (10) = happyGoto action_7
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (12) = happyShift action_8
action_13 (13) = happyShift action_9
action_13 (14) = happyShift action_10
action_13 (15) = happyShift action_11
action_13 (16) = happyShift action_12
action_13 (17) = happyShift action_13
action_13 (18) = happyShift action_14
action_13 (19) = happyShift action_15
action_13 (20) = happyShift action_16
action_13 (21) = happyShift action_17
action_13 (22) = happyShift action_18
action_13 (23) = happyShift action_19
action_13 (24) = happyShift action_20
action_13 (25) = happyShift action_21
action_13 (26) = happyShift action_22
action_13 (29) = happyShift action_23
action_13 (30) = happyShift action_24
action_13 (31) = happyShift action_25
action_13 (32) = happyShift action_26
action_13 (33) = happyShift action_27
action_13 (34) = happyShift action_28
action_13 (35) = happyShift action_29
action_13 (36) = happyShift action_30
action_13 (53) = happyShift action_31
action_13 (55) = happyShift action_32
action_13 (61) = happyShift action_33
action_13 (62) = happyShift action_34
action_13 (63) = happyShift action_35
action_13 (5) = happyGoto action_57
action_13 (9) = happyGoto action_6
action_13 (10) = happyGoto action_7
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (12) = happyShift action_8
action_14 (13) = happyShift action_9
action_14 (14) = happyShift action_10
action_14 (15) = happyShift action_11
action_14 (16) = happyShift action_12
action_14 (17) = happyShift action_13
action_14 (18) = happyShift action_14
action_14 (19) = happyShift action_15
action_14 (20) = happyShift action_16
action_14 (21) = happyShift action_17
action_14 (22) = happyShift action_18
action_14 (23) = happyShift action_19
action_14 (24) = happyShift action_20
action_14 (25) = happyShift action_21
action_14 (26) = happyShift action_22
action_14 (29) = happyShift action_23
action_14 (30) = happyShift action_24
action_14 (31) = happyShift action_25
action_14 (32) = happyShift action_26
action_14 (33) = happyShift action_27
action_14 (34) = happyShift action_28
action_14 (35) = happyShift action_29
action_14 (36) = happyShift action_30
action_14 (53) = happyShift action_31
action_14 (55) = happyShift action_32
action_14 (61) = happyShift action_33
action_14 (62) = happyShift action_34
action_14 (63) = happyShift action_35
action_14 (5) = happyGoto action_56
action_14 (9) = happyGoto action_6
action_14 (10) = happyGoto action_7
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (12) = happyShift action_8
action_15 (13) = happyShift action_9
action_15 (14) = happyShift action_10
action_15 (15) = happyShift action_11
action_15 (16) = happyShift action_12
action_15 (17) = happyShift action_13
action_15 (18) = happyShift action_14
action_15 (19) = happyShift action_15
action_15 (20) = happyShift action_16
action_15 (21) = happyShift action_17
action_15 (22) = happyShift action_18
action_15 (23) = happyShift action_19
action_15 (24) = happyShift action_20
action_15 (25) = happyShift action_21
action_15 (26) = happyShift action_22
action_15 (29) = happyShift action_23
action_15 (30) = happyShift action_24
action_15 (31) = happyShift action_25
action_15 (32) = happyShift action_26
action_15 (33) = happyShift action_27
action_15 (34) = happyShift action_28
action_15 (35) = happyShift action_29
action_15 (36) = happyShift action_30
action_15 (53) = happyShift action_31
action_15 (55) = happyShift action_32
action_15 (61) = happyShift action_33
action_15 (62) = happyShift action_34
action_15 (63) = happyShift action_35
action_15 (5) = happyGoto action_55
action_15 (9) = happyGoto action_6
action_15 (10) = happyGoto action_7
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (12) = happyShift action_8
action_16 (13) = happyShift action_9
action_16 (14) = happyShift action_10
action_16 (15) = happyShift action_11
action_16 (16) = happyShift action_12
action_16 (17) = happyShift action_13
action_16 (18) = happyShift action_14
action_16 (19) = happyShift action_15
action_16 (20) = happyShift action_16
action_16 (21) = happyShift action_17
action_16 (22) = happyShift action_18
action_16 (23) = happyShift action_19
action_16 (24) = happyShift action_20
action_16 (25) = happyShift action_21
action_16 (26) = happyShift action_22
action_16 (29) = happyShift action_23
action_16 (30) = happyShift action_24
action_16 (31) = happyShift action_25
action_16 (32) = happyShift action_26
action_16 (33) = happyShift action_27
action_16 (34) = happyShift action_28
action_16 (35) = happyShift action_29
action_16 (36) = happyShift action_30
action_16 (53) = happyShift action_31
action_16 (55) = happyShift action_32
action_16 (61) = happyShift action_33
action_16 (62) = happyShift action_34
action_16 (63) = happyShift action_35
action_16 (5) = happyGoto action_54
action_16 (9) = happyGoto action_6
action_16 (10) = happyGoto action_7
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (12) = happyShift action_8
action_17 (13) = happyShift action_9
action_17 (14) = happyShift action_10
action_17 (15) = happyShift action_11
action_17 (16) = happyShift action_12
action_17 (17) = happyShift action_13
action_17 (18) = happyShift action_14
action_17 (19) = happyShift action_15
action_17 (20) = happyShift action_16
action_17 (21) = happyShift action_17
action_17 (22) = happyShift action_18
action_17 (23) = happyShift action_19
action_17 (24) = happyShift action_20
action_17 (25) = happyShift action_21
action_17 (26) = happyShift action_22
action_17 (29) = happyShift action_23
action_17 (30) = happyShift action_24
action_17 (31) = happyShift action_25
action_17 (32) = happyShift action_26
action_17 (33) = happyShift action_27
action_17 (34) = happyShift action_28
action_17 (35) = happyShift action_29
action_17 (36) = happyShift action_30
action_17 (53) = happyShift action_31
action_17 (55) = happyShift action_32
action_17 (61) = happyShift action_33
action_17 (62) = happyShift action_34
action_17 (63) = happyShift action_35
action_17 (5) = happyGoto action_53
action_17 (9) = happyGoto action_6
action_17 (10) = happyGoto action_7
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (12) = happyShift action_8
action_18 (13) = happyShift action_9
action_18 (14) = happyShift action_10
action_18 (15) = happyShift action_11
action_18 (16) = happyShift action_12
action_18 (17) = happyShift action_13
action_18 (18) = happyShift action_14
action_18 (19) = happyShift action_15
action_18 (20) = happyShift action_16
action_18 (21) = happyShift action_17
action_18 (22) = happyShift action_18
action_18 (23) = happyShift action_19
action_18 (24) = happyShift action_20
action_18 (25) = happyShift action_21
action_18 (26) = happyShift action_22
action_18 (29) = happyShift action_23
action_18 (30) = happyShift action_24
action_18 (31) = happyShift action_25
action_18 (32) = happyShift action_26
action_18 (33) = happyShift action_27
action_18 (34) = happyShift action_28
action_18 (35) = happyShift action_29
action_18 (36) = happyShift action_30
action_18 (53) = happyShift action_31
action_18 (55) = happyShift action_32
action_18 (61) = happyShift action_33
action_18 (62) = happyShift action_34
action_18 (63) = happyShift action_35
action_18 (5) = happyGoto action_52
action_18 (9) = happyGoto action_6
action_18 (10) = happyGoto action_7
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (12) = happyShift action_8
action_19 (13) = happyShift action_9
action_19 (14) = happyShift action_10
action_19 (15) = happyShift action_11
action_19 (16) = happyShift action_12
action_19 (17) = happyShift action_13
action_19 (18) = happyShift action_14
action_19 (19) = happyShift action_15
action_19 (20) = happyShift action_16
action_19 (21) = happyShift action_17
action_19 (22) = happyShift action_18
action_19 (23) = happyShift action_19
action_19 (24) = happyShift action_20
action_19 (25) = happyShift action_21
action_19 (26) = happyShift action_22
action_19 (29) = happyShift action_23
action_19 (30) = happyShift action_24
action_19 (31) = happyShift action_25
action_19 (32) = happyShift action_26
action_19 (33) = happyShift action_27
action_19 (34) = happyShift action_28
action_19 (35) = happyShift action_29
action_19 (36) = happyShift action_30
action_19 (53) = happyShift action_31
action_19 (55) = happyShift action_32
action_19 (61) = happyShift action_33
action_19 (62) = happyShift action_34
action_19 (63) = happyShift action_35
action_19 (5) = happyGoto action_51
action_19 (9) = happyGoto action_6
action_19 (10) = happyGoto action_7
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (12) = happyShift action_8
action_20 (13) = happyShift action_9
action_20 (14) = happyShift action_10
action_20 (15) = happyShift action_11
action_20 (16) = happyShift action_12
action_20 (17) = happyShift action_13
action_20 (18) = happyShift action_14
action_20 (19) = happyShift action_15
action_20 (20) = happyShift action_16
action_20 (21) = happyShift action_17
action_20 (22) = happyShift action_18
action_20 (23) = happyShift action_19
action_20 (24) = happyShift action_20
action_20 (25) = happyShift action_21
action_20 (26) = happyShift action_22
action_20 (29) = happyShift action_23
action_20 (30) = happyShift action_24
action_20 (31) = happyShift action_25
action_20 (32) = happyShift action_26
action_20 (33) = happyShift action_27
action_20 (34) = happyShift action_28
action_20 (35) = happyShift action_29
action_20 (36) = happyShift action_30
action_20 (53) = happyShift action_31
action_20 (55) = happyShift action_32
action_20 (61) = happyShift action_33
action_20 (62) = happyShift action_34
action_20 (63) = happyShift action_35
action_20 (5) = happyGoto action_50
action_20 (9) = happyGoto action_6
action_20 (10) = happyGoto action_7
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (12) = happyShift action_8
action_21 (13) = happyShift action_9
action_21 (14) = happyShift action_10
action_21 (15) = happyShift action_11
action_21 (16) = happyShift action_12
action_21 (17) = happyShift action_13
action_21 (18) = happyShift action_14
action_21 (19) = happyShift action_15
action_21 (20) = happyShift action_16
action_21 (21) = happyShift action_17
action_21 (22) = happyShift action_18
action_21 (23) = happyShift action_19
action_21 (24) = happyShift action_20
action_21 (25) = happyShift action_21
action_21 (26) = happyShift action_22
action_21 (29) = happyShift action_23
action_21 (30) = happyShift action_24
action_21 (31) = happyShift action_25
action_21 (32) = happyShift action_26
action_21 (33) = happyShift action_27
action_21 (34) = happyShift action_28
action_21 (35) = happyShift action_29
action_21 (36) = happyShift action_30
action_21 (53) = happyShift action_31
action_21 (55) = happyShift action_32
action_21 (61) = happyShift action_33
action_21 (62) = happyShift action_34
action_21 (63) = happyShift action_35
action_21 (5) = happyGoto action_49
action_21 (9) = happyGoto action_6
action_21 (10) = happyGoto action_7
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_8
action_22 (13) = happyShift action_9
action_22 (14) = happyShift action_10
action_22 (15) = happyShift action_11
action_22 (16) = happyShift action_12
action_22 (17) = happyShift action_13
action_22 (18) = happyShift action_14
action_22 (19) = happyShift action_15
action_22 (20) = happyShift action_16
action_22 (21) = happyShift action_17
action_22 (22) = happyShift action_18
action_22 (23) = happyShift action_19
action_22 (24) = happyShift action_20
action_22 (25) = happyShift action_21
action_22 (26) = happyShift action_22
action_22 (29) = happyShift action_23
action_22 (30) = happyShift action_24
action_22 (31) = happyShift action_25
action_22 (32) = happyShift action_26
action_22 (33) = happyShift action_27
action_22 (34) = happyShift action_28
action_22 (35) = happyShift action_29
action_22 (36) = happyShift action_30
action_22 (53) = happyShift action_31
action_22 (55) = happyShift action_32
action_22 (61) = happyShift action_33
action_22 (62) = happyShift action_34
action_22 (63) = happyShift action_35
action_22 (5) = happyGoto action_48
action_22 (9) = happyGoto action_6
action_22 (10) = happyGoto action_7
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (12) = happyShift action_8
action_23 (13) = happyShift action_9
action_23 (14) = happyShift action_10
action_23 (15) = happyShift action_11
action_23 (16) = happyShift action_12
action_23 (17) = happyShift action_13
action_23 (18) = happyShift action_14
action_23 (19) = happyShift action_15
action_23 (20) = happyShift action_16
action_23 (21) = happyShift action_17
action_23 (22) = happyShift action_18
action_23 (23) = happyShift action_19
action_23 (24) = happyShift action_20
action_23 (25) = happyShift action_21
action_23 (26) = happyShift action_22
action_23 (29) = happyShift action_23
action_23 (30) = happyShift action_24
action_23 (31) = happyShift action_25
action_23 (32) = happyShift action_26
action_23 (33) = happyShift action_27
action_23 (34) = happyShift action_28
action_23 (35) = happyShift action_29
action_23 (36) = happyShift action_30
action_23 (53) = happyShift action_31
action_23 (55) = happyShift action_32
action_23 (61) = happyShift action_33
action_23 (62) = happyShift action_34
action_23 (63) = happyShift action_35
action_23 (5) = happyGoto action_47
action_23 (9) = happyGoto action_6
action_23 (10) = happyGoto action_7
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (12) = happyShift action_8
action_24 (13) = happyShift action_9
action_24 (14) = happyShift action_10
action_24 (15) = happyShift action_11
action_24 (16) = happyShift action_12
action_24 (17) = happyShift action_13
action_24 (18) = happyShift action_14
action_24 (19) = happyShift action_15
action_24 (20) = happyShift action_16
action_24 (21) = happyShift action_17
action_24 (22) = happyShift action_18
action_24 (23) = happyShift action_19
action_24 (24) = happyShift action_20
action_24 (25) = happyShift action_21
action_24 (26) = happyShift action_22
action_24 (29) = happyShift action_23
action_24 (30) = happyShift action_24
action_24 (31) = happyShift action_25
action_24 (32) = happyShift action_26
action_24 (33) = happyShift action_27
action_24 (34) = happyShift action_28
action_24 (35) = happyShift action_29
action_24 (36) = happyShift action_30
action_24 (53) = happyShift action_31
action_24 (55) = happyShift action_32
action_24 (61) = happyShift action_33
action_24 (62) = happyShift action_34
action_24 (63) = happyShift action_35
action_24 (5) = happyGoto action_46
action_24 (9) = happyGoto action_6
action_24 (10) = happyGoto action_7
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (12) = happyShift action_8
action_25 (13) = happyShift action_9
action_25 (14) = happyShift action_10
action_25 (15) = happyShift action_11
action_25 (16) = happyShift action_12
action_25 (17) = happyShift action_13
action_25 (18) = happyShift action_14
action_25 (19) = happyShift action_15
action_25 (20) = happyShift action_16
action_25 (21) = happyShift action_17
action_25 (22) = happyShift action_18
action_25 (23) = happyShift action_19
action_25 (24) = happyShift action_20
action_25 (25) = happyShift action_21
action_25 (26) = happyShift action_22
action_25 (29) = happyShift action_23
action_25 (30) = happyShift action_24
action_25 (31) = happyShift action_25
action_25 (32) = happyShift action_26
action_25 (33) = happyShift action_27
action_25 (34) = happyShift action_28
action_25 (35) = happyShift action_29
action_25 (36) = happyShift action_30
action_25 (53) = happyShift action_31
action_25 (55) = happyShift action_32
action_25 (61) = happyShift action_33
action_25 (62) = happyShift action_34
action_25 (63) = happyShift action_35
action_25 (5) = happyGoto action_45
action_25 (9) = happyGoto action_6
action_25 (10) = happyGoto action_7
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (12) = happyShift action_8
action_26 (13) = happyShift action_9
action_26 (14) = happyShift action_10
action_26 (15) = happyShift action_11
action_26 (16) = happyShift action_12
action_26 (17) = happyShift action_13
action_26 (18) = happyShift action_14
action_26 (19) = happyShift action_15
action_26 (20) = happyShift action_16
action_26 (21) = happyShift action_17
action_26 (22) = happyShift action_18
action_26 (23) = happyShift action_19
action_26 (24) = happyShift action_20
action_26 (25) = happyShift action_21
action_26 (26) = happyShift action_22
action_26 (29) = happyShift action_23
action_26 (30) = happyShift action_24
action_26 (31) = happyShift action_25
action_26 (32) = happyShift action_26
action_26 (33) = happyShift action_27
action_26 (34) = happyShift action_28
action_26 (35) = happyShift action_29
action_26 (36) = happyShift action_30
action_26 (53) = happyShift action_31
action_26 (55) = happyShift action_32
action_26 (61) = happyShift action_33
action_26 (62) = happyShift action_34
action_26 (63) = happyShift action_35
action_26 (5) = happyGoto action_44
action_26 (9) = happyGoto action_6
action_26 (10) = happyGoto action_7
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_3

action_28 _ = happyReduce_49

action_29 _ = happyReduce_50

action_30 (12) = happyShift action_8
action_30 (13) = happyShift action_9
action_30 (14) = happyShift action_10
action_30 (15) = happyShift action_11
action_30 (16) = happyShift action_12
action_30 (17) = happyShift action_13
action_30 (18) = happyShift action_14
action_30 (19) = happyShift action_15
action_30 (20) = happyShift action_16
action_30 (21) = happyShift action_17
action_30 (22) = happyShift action_18
action_30 (23) = happyShift action_19
action_30 (24) = happyShift action_20
action_30 (25) = happyShift action_21
action_30 (26) = happyShift action_22
action_30 (29) = happyShift action_23
action_30 (30) = happyShift action_24
action_30 (31) = happyShift action_25
action_30 (32) = happyShift action_26
action_30 (33) = happyShift action_27
action_30 (34) = happyShift action_28
action_30 (35) = happyShift action_29
action_30 (36) = happyShift action_30
action_30 (53) = happyShift action_31
action_30 (55) = happyShift action_32
action_30 (61) = happyShift action_33
action_30 (62) = happyShift action_34
action_30 (63) = happyShift action_35
action_30 (5) = happyGoto action_43
action_30 (9) = happyGoto action_6
action_30 (10) = happyGoto action_7
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (12) = happyShift action_8
action_31 (13) = happyShift action_9
action_31 (14) = happyShift action_10
action_31 (15) = happyShift action_11
action_31 (16) = happyShift action_12
action_31 (17) = happyShift action_13
action_31 (18) = happyShift action_14
action_31 (19) = happyShift action_15
action_31 (20) = happyShift action_16
action_31 (21) = happyShift action_17
action_31 (22) = happyShift action_18
action_31 (23) = happyShift action_19
action_31 (24) = happyShift action_20
action_31 (25) = happyShift action_21
action_31 (26) = happyShift action_22
action_31 (29) = happyShift action_23
action_31 (30) = happyShift action_24
action_31 (31) = happyShift action_25
action_31 (32) = happyShift action_26
action_31 (33) = happyShift action_27
action_31 (34) = happyShift action_28
action_31 (35) = happyShift action_29
action_31 (36) = happyShift action_30
action_31 (53) = happyShift action_31
action_31 (55) = happyShift action_32
action_31 (61) = happyShift action_33
action_31 (62) = happyShift action_34
action_31 (63) = happyShift action_35
action_31 (5) = happyGoto action_42
action_31 (9) = happyGoto action_6
action_31 (10) = happyGoto action_7
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (33) = happyShift action_41
action_32 (6) = happyGoto action_38
action_32 (7) = happyGoto action_39
action_32 (8) = happyGoto action_40
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (12) = happyShift action_8
action_33 (13) = happyShift action_9
action_33 (14) = happyShift action_10
action_33 (15) = happyShift action_11
action_33 (16) = happyShift action_12
action_33 (17) = happyShift action_13
action_33 (18) = happyShift action_14
action_33 (19) = happyShift action_15
action_33 (20) = happyShift action_16
action_33 (21) = happyShift action_17
action_33 (22) = happyShift action_18
action_33 (23) = happyShift action_19
action_33 (24) = happyShift action_20
action_33 (25) = happyShift action_21
action_33 (26) = happyShift action_22
action_33 (29) = happyShift action_23
action_33 (30) = happyShift action_24
action_33 (31) = happyShift action_25
action_33 (32) = happyShift action_26
action_33 (33) = happyShift action_27
action_33 (34) = happyShift action_28
action_33 (35) = happyShift action_29
action_33 (36) = happyShift action_30
action_33 (53) = happyShift action_31
action_33 (55) = happyShift action_32
action_33 (61) = happyShift action_33
action_33 (62) = happyShift action_34
action_33 (63) = happyShift action_35
action_33 (5) = happyGoto action_37
action_33 (9) = happyGoto action_6
action_33 (10) = happyGoto action_7
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (12) = happyShift action_8
action_34 (13) = happyShift action_9
action_34 (14) = happyShift action_10
action_34 (15) = happyShift action_11
action_34 (16) = happyShift action_12
action_34 (17) = happyShift action_13
action_34 (18) = happyShift action_14
action_34 (19) = happyShift action_15
action_34 (20) = happyShift action_16
action_34 (21) = happyShift action_17
action_34 (22) = happyShift action_18
action_34 (23) = happyShift action_19
action_34 (24) = happyShift action_20
action_34 (25) = happyShift action_21
action_34 (26) = happyShift action_22
action_34 (29) = happyShift action_23
action_34 (30) = happyShift action_24
action_34 (31) = happyShift action_25
action_34 (32) = happyShift action_26
action_34 (33) = happyShift action_27
action_34 (34) = happyShift action_28
action_34 (35) = happyShift action_29
action_34 (36) = happyShift action_30
action_34 (53) = happyShift action_31
action_34 (55) = happyShift action_32
action_34 (61) = happyShift action_33
action_34 (62) = happyShift action_34
action_34 (63) = happyShift action_35
action_34 (5) = happyGoto action_36
action_34 (9) = happyGoto action_6
action_34 (10) = happyGoto action_7
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_9

action_36 _ = happyReduce_39

action_37 _ = happyReduce_38

action_38 (33) = happyShift action_41
action_38 (6) = happyGoto action_38
action_38 (7) = happyGoto action_104
action_38 _ = happyReduce_11

action_39 (38) = happyShift action_103
action_39 _ = happyReduce_13

action_40 (56) = happyShift action_102
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_10

action_42 (38) = happyShift action_101
action_42 (40) = happyShift action_63
action_42 (41) = happyShift action_64
action_42 (42) = happyShift action_65
action_42 (43) = happyShift action_66
action_42 (45) = happyShift action_67
action_42 (46) = happyShift action_68
action_42 (47) = happyShift action_69
action_42 (48) = happyShift action_70
action_42 (49) = happyShift action_71
action_42 (50) = happyShift action_72
action_42 (51) = happyShift action_73
action_42 (52) = happyShift action_74
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_40

action_44 (12) = happyShift action_8
action_44 (13) = happyShift action_9
action_44 (14) = happyShift action_10
action_44 (15) = happyShift action_11
action_44 (16) = happyShift action_12
action_44 (17) = happyShift action_13
action_44 (18) = happyShift action_14
action_44 (19) = happyShift action_15
action_44 (20) = happyShift action_16
action_44 (21) = happyShift action_17
action_44 (22) = happyShift action_18
action_44 (23) = happyShift action_19
action_44 (24) = happyShift action_20
action_44 (25) = happyShift action_21
action_44 (26) = happyShift action_22
action_44 (29) = happyShift action_23
action_44 (30) = happyShift action_24
action_44 (31) = happyShift action_25
action_44 (32) = happyShift action_26
action_44 (33) = happyShift action_27
action_44 (34) = happyShift action_28
action_44 (35) = happyShift action_29
action_44 (36) = happyShift action_30
action_44 (40) = happyShift action_63
action_44 (41) = happyShift action_64
action_44 (42) = happyShift action_65
action_44 (43) = happyShift action_66
action_44 (45) = happyShift action_67
action_44 (46) = happyShift action_68
action_44 (47) = happyShift action_69
action_44 (48) = happyShift action_70
action_44 (49) = happyShift action_71
action_44 (50) = happyShift action_72
action_44 (51) = happyShift action_73
action_44 (52) = happyShift action_74
action_44 (53) = happyShift action_31
action_44 (55) = happyShift action_32
action_44 (61) = happyShift action_33
action_44 (62) = happyShift action_34
action_44 (63) = happyShift action_35
action_44 (5) = happyGoto action_100
action_44 (9) = happyGoto action_6
action_44 (10) = happyGoto action_7
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (12) = happyShift action_8
action_45 (13) = happyShift action_9
action_45 (14) = happyShift action_10
action_45 (15) = happyShift action_11
action_45 (16) = happyShift action_12
action_45 (17) = happyShift action_13
action_45 (18) = happyShift action_14
action_45 (19) = happyShift action_15
action_45 (20) = happyShift action_16
action_45 (21) = happyShift action_17
action_45 (22) = happyShift action_18
action_45 (23) = happyShift action_19
action_45 (24) = happyShift action_20
action_45 (25) = happyShift action_21
action_45 (26) = happyShift action_22
action_45 (29) = happyShift action_23
action_45 (30) = happyShift action_24
action_45 (31) = happyShift action_25
action_45 (32) = happyShift action_26
action_45 (33) = happyShift action_27
action_45 (34) = happyShift action_28
action_45 (35) = happyShift action_29
action_45 (36) = happyShift action_30
action_45 (40) = happyShift action_63
action_45 (41) = happyShift action_64
action_45 (42) = happyShift action_65
action_45 (43) = happyShift action_66
action_45 (45) = happyShift action_67
action_45 (46) = happyShift action_68
action_45 (47) = happyShift action_69
action_45 (48) = happyShift action_70
action_45 (49) = happyShift action_71
action_45 (50) = happyShift action_72
action_45 (51) = happyShift action_73
action_45 (52) = happyShift action_74
action_45 (53) = happyShift action_31
action_45 (55) = happyShift action_32
action_45 (61) = happyShift action_33
action_45 (62) = happyShift action_34
action_45 (63) = happyShift action_35
action_45 (5) = happyGoto action_99
action_45 (9) = happyGoto action_6
action_45 (10) = happyGoto action_7
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_30

action_47 (12) = happyShift action_8
action_47 (13) = happyShift action_9
action_47 (14) = happyShift action_10
action_47 (15) = happyShift action_11
action_47 (16) = happyShift action_12
action_47 (17) = happyShift action_13
action_47 (18) = happyShift action_14
action_47 (19) = happyShift action_15
action_47 (20) = happyShift action_16
action_47 (21) = happyShift action_17
action_47 (22) = happyShift action_18
action_47 (23) = happyShift action_19
action_47 (24) = happyShift action_20
action_47 (25) = happyShift action_21
action_47 (26) = happyShift action_22
action_47 (29) = happyShift action_23
action_47 (30) = happyShift action_24
action_47 (31) = happyShift action_25
action_47 (32) = happyShift action_26
action_47 (33) = happyShift action_27
action_47 (34) = happyShift action_28
action_47 (35) = happyShift action_29
action_47 (36) = happyShift action_30
action_47 (40) = happyShift action_63
action_47 (41) = happyShift action_64
action_47 (42) = happyShift action_65
action_47 (43) = happyShift action_66
action_47 (45) = happyShift action_67
action_47 (46) = happyShift action_68
action_47 (47) = happyShift action_69
action_47 (48) = happyShift action_70
action_47 (49) = happyShift action_71
action_47 (50) = happyShift action_72
action_47 (51) = happyShift action_73
action_47 (52) = happyShift action_74
action_47 (53) = happyShift action_31
action_47 (55) = happyShift action_32
action_47 (61) = happyShift action_33
action_47 (62) = happyShift action_34
action_47 (63) = happyShift action_35
action_47 (5) = happyGoto action_98
action_47 (9) = happyGoto action_6
action_47 (10) = happyGoto action_7
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (27) = happyShift action_97
action_48 (40) = happyShift action_63
action_48 (41) = happyShift action_64
action_48 (42) = happyShift action_65
action_48 (43) = happyShift action_66
action_48 (45) = happyShift action_67
action_48 (46) = happyShift action_68
action_48 (47) = happyShift action_69
action_48 (48) = happyShift action_70
action_48 (49) = happyShift action_71
action_48 (50) = happyShift action_72
action_48 (51) = happyShift action_73
action_48 (52) = happyShift action_74
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_27

action_50 (12) = happyShift action_8
action_50 (13) = happyShift action_9
action_50 (14) = happyShift action_10
action_50 (15) = happyShift action_11
action_50 (16) = happyShift action_12
action_50 (17) = happyShift action_13
action_50 (18) = happyShift action_14
action_50 (19) = happyShift action_15
action_50 (20) = happyShift action_16
action_50 (21) = happyShift action_17
action_50 (22) = happyShift action_18
action_50 (23) = happyShift action_19
action_50 (24) = happyShift action_20
action_50 (25) = happyShift action_21
action_50 (26) = happyShift action_22
action_50 (29) = happyShift action_23
action_50 (30) = happyShift action_24
action_50 (31) = happyShift action_25
action_50 (32) = happyShift action_26
action_50 (33) = happyShift action_27
action_50 (34) = happyShift action_28
action_50 (35) = happyShift action_29
action_50 (36) = happyShift action_30
action_50 (40) = happyShift action_63
action_50 (41) = happyShift action_64
action_50 (42) = happyShift action_65
action_50 (43) = happyShift action_66
action_50 (45) = happyShift action_67
action_50 (46) = happyShift action_68
action_50 (47) = happyShift action_69
action_50 (48) = happyShift action_70
action_50 (49) = happyShift action_71
action_50 (50) = happyShift action_72
action_50 (51) = happyShift action_73
action_50 (52) = happyShift action_74
action_50 (53) = happyShift action_31
action_50 (55) = happyShift action_32
action_50 (61) = happyShift action_33
action_50 (62) = happyShift action_34
action_50 (63) = happyShift action_35
action_50 (5) = happyGoto action_96
action_50 (9) = happyGoto action_6
action_50 (10) = happyGoto action_7
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_25

action_52 (12) = happyShift action_8
action_52 (13) = happyShift action_9
action_52 (14) = happyShift action_10
action_52 (15) = happyShift action_11
action_52 (16) = happyShift action_12
action_52 (17) = happyShift action_13
action_52 (18) = happyShift action_14
action_52 (19) = happyShift action_15
action_52 (20) = happyShift action_16
action_52 (21) = happyShift action_17
action_52 (22) = happyShift action_18
action_52 (23) = happyShift action_19
action_52 (24) = happyShift action_20
action_52 (25) = happyShift action_21
action_52 (26) = happyShift action_22
action_52 (29) = happyShift action_23
action_52 (30) = happyShift action_24
action_52 (31) = happyShift action_25
action_52 (32) = happyShift action_26
action_52 (33) = happyShift action_27
action_52 (34) = happyShift action_28
action_52 (35) = happyShift action_29
action_52 (36) = happyShift action_30
action_52 (40) = happyShift action_63
action_52 (41) = happyShift action_64
action_52 (42) = happyShift action_65
action_52 (43) = happyShift action_66
action_52 (45) = happyShift action_67
action_52 (46) = happyShift action_68
action_52 (47) = happyShift action_69
action_52 (48) = happyShift action_70
action_52 (49) = happyShift action_71
action_52 (50) = happyShift action_72
action_52 (51) = happyShift action_73
action_52 (52) = happyShift action_74
action_52 (53) = happyShift action_31
action_52 (55) = happyShift action_32
action_52 (61) = happyShift action_33
action_52 (62) = happyShift action_34
action_52 (63) = happyShift action_35
action_52 (5) = happyGoto action_95
action_52 (9) = happyGoto action_6
action_52 (10) = happyGoto action_7
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (12) = happyShift action_8
action_53 (13) = happyShift action_9
action_53 (14) = happyShift action_10
action_53 (15) = happyShift action_11
action_53 (16) = happyShift action_12
action_53 (17) = happyShift action_13
action_53 (18) = happyShift action_14
action_53 (19) = happyShift action_15
action_53 (20) = happyShift action_16
action_53 (21) = happyShift action_17
action_53 (22) = happyShift action_18
action_53 (23) = happyShift action_19
action_53 (24) = happyShift action_20
action_53 (25) = happyShift action_21
action_53 (26) = happyShift action_22
action_53 (29) = happyShift action_23
action_53 (30) = happyShift action_24
action_53 (31) = happyShift action_25
action_53 (32) = happyShift action_26
action_53 (33) = happyShift action_27
action_53 (34) = happyShift action_28
action_53 (35) = happyShift action_29
action_53 (36) = happyShift action_30
action_53 (40) = happyShift action_63
action_53 (41) = happyShift action_64
action_53 (42) = happyShift action_65
action_53 (43) = happyShift action_66
action_53 (45) = happyShift action_67
action_53 (46) = happyShift action_68
action_53 (47) = happyShift action_69
action_53 (48) = happyShift action_70
action_53 (49) = happyShift action_71
action_53 (50) = happyShift action_72
action_53 (51) = happyShift action_73
action_53 (52) = happyShift action_74
action_53 (53) = happyShift action_31
action_53 (55) = happyShift action_32
action_53 (61) = happyShift action_33
action_53 (62) = happyShift action_34
action_53 (63) = happyShift action_35
action_53 (5) = happyGoto action_94
action_53 (9) = happyGoto action_6
action_53 (10) = happyGoto action_7
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (12) = happyShift action_8
action_54 (13) = happyShift action_9
action_54 (14) = happyShift action_10
action_54 (15) = happyShift action_11
action_54 (16) = happyShift action_12
action_54 (17) = happyShift action_13
action_54 (18) = happyShift action_14
action_54 (19) = happyShift action_15
action_54 (20) = happyShift action_16
action_54 (21) = happyShift action_17
action_54 (22) = happyShift action_18
action_54 (23) = happyShift action_19
action_54 (24) = happyShift action_20
action_54 (25) = happyShift action_21
action_54 (26) = happyShift action_22
action_54 (29) = happyShift action_23
action_54 (30) = happyShift action_24
action_54 (31) = happyShift action_25
action_54 (32) = happyShift action_26
action_54 (33) = happyShift action_27
action_54 (34) = happyShift action_28
action_54 (35) = happyShift action_29
action_54 (36) = happyShift action_30
action_54 (40) = happyShift action_63
action_54 (41) = happyShift action_64
action_54 (42) = happyShift action_65
action_54 (43) = happyShift action_66
action_54 (45) = happyShift action_67
action_54 (46) = happyShift action_68
action_54 (47) = happyShift action_69
action_54 (48) = happyShift action_70
action_54 (49) = happyShift action_71
action_54 (50) = happyShift action_72
action_54 (51) = happyShift action_73
action_54 (52) = happyShift action_74
action_54 (53) = happyShift action_31
action_54 (55) = happyShift action_32
action_54 (61) = happyShift action_33
action_54 (62) = happyShift action_34
action_54 (63) = happyShift action_35
action_54 (5) = happyGoto action_93
action_54 (9) = happyGoto action_6
action_54 (10) = happyGoto action_7
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (12) = happyShift action_8
action_55 (13) = happyShift action_9
action_55 (14) = happyShift action_10
action_55 (15) = happyShift action_11
action_55 (16) = happyShift action_12
action_55 (17) = happyShift action_13
action_55 (18) = happyShift action_14
action_55 (19) = happyShift action_15
action_55 (20) = happyShift action_16
action_55 (21) = happyShift action_17
action_55 (22) = happyShift action_18
action_55 (23) = happyShift action_19
action_55 (24) = happyShift action_20
action_55 (25) = happyShift action_21
action_55 (26) = happyShift action_22
action_55 (29) = happyShift action_23
action_55 (30) = happyShift action_24
action_55 (31) = happyShift action_25
action_55 (32) = happyShift action_26
action_55 (33) = happyShift action_27
action_55 (34) = happyShift action_28
action_55 (35) = happyShift action_29
action_55 (36) = happyShift action_30
action_55 (40) = happyShift action_63
action_55 (41) = happyShift action_64
action_55 (42) = happyShift action_65
action_55 (43) = happyShift action_66
action_55 (45) = happyShift action_67
action_55 (46) = happyShift action_68
action_55 (47) = happyShift action_69
action_55 (48) = happyShift action_70
action_55 (49) = happyShift action_71
action_55 (50) = happyShift action_72
action_55 (51) = happyShift action_73
action_55 (52) = happyShift action_74
action_55 (53) = happyShift action_31
action_55 (55) = happyShift action_32
action_55 (61) = happyShift action_33
action_55 (62) = happyShift action_34
action_55 (63) = happyShift action_35
action_55 (5) = happyGoto action_92
action_55 (9) = happyGoto action_6
action_55 (10) = happyGoto action_7
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (12) = happyShift action_8
action_56 (13) = happyShift action_9
action_56 (14) = happyShift action_10
action_56 (15) = happyShift action_11
action_56 (16) = happyShift action_12
action_56 (17) = happyShift action_13
action_56 (18) = happyShift action_14
action_56 (19) = happyShift action_15
action_56 (20) = happyShift action_16
action_56 (21) = happyShift action_17
action_56 (22) = happyShift action_18
action_56 (23) = happyShift action_19
action_56 (24) = happyShift action_20
action_56 (25) = happyShift action_21
action_56 (26) = happyShift action_22
action_56 (29) = happyShift action_23
action_56 (30) = happyShift action_24
action_56 (31) = happyShift action_25
action_56 (32) = happyShift action_26
action_56 (33) = happyShift action_27
action_56 (34) = happyShift action_28
action_56 (35) = happyShift action_29
action_56 (36) = happyShift action_30
action_56 (40) = happyShift action_63
action_56 (41) = happyShift action_64
action_56 (42) = happyShift action_65
action_56 (43) = happyShift action_66
action_56 (45) = happyShift action_67
action_56 (46) = happyShift action_68
action_56 (47) = happyShift action_69
action_56 (48) = happyShift action_70
action_56 (49) = happyShift action_71
action_56 (50) = happyShift action_72
action_56 (51) = happyShift action_73
action_56 (52) = happyShift action_74
action_56 (53) = happyShift action_31
action_56 (55) = happyShift action_32
action_56 (61) = happyShift action_33
action_56 (62) = happyShift action_34
action_56 (63) = happyShift action_35
action_56 (5) = happyGoto action_91
action_56 (9) = happyGoto action_6
action_56 (10) = happyGoto action_7
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (12) = happyShift action_8
action_57 (13) = happyShift action_9
action_57 (14) = happyShift action_10
action_57 (15) = happyShift action_11
action_57 (16) = happyShift action_12
action_57 (17) = happyShift action_13
action_57 (18) = happyShift action_14
action_57 (19) = happyShift action_15
action_57 (20) = happyShift action_16
action_57 (21) = happyShift action_17
action_57 (22) = happyShift action_18
action_57 (23) = happyShift action_19
action_57 (24) = happyShift action_20
action_57 (25) = happyShift action_21
action_57 (26) = happyShift action_22
action_57 (29) = happyShift action_23
action_57 (30) = happyShift action_24
action_57 (31) = happyShift action_25
action_57 (32) = happyShift action_26
action_57 (33) = happyShift action_27
action_57 (34) = happyShift action_28
action_57 (35) = happyShift action_29
action_57 (36) = happyShift action_30
action_57 (40) = happyShift action_63
action_57 (41) = happyShift action_64
action_57 (42) = happyShift action_65
action_57 (43) = happyShift action_66
action_57 (45) = happyShift action_67
action_57 (46) = happyShift action_68
action_57 (47) = happyShift action_69
action_57 (48) = happyShift action_70
action_57 (49) = happyShift action_71
action_57 (50) = happyShift action_72
action_57 (51) = happyShift action_73
action_57 (52) = happyShift action_74
action_57 (53) = happyShift action_31
action_57 (55) = happyShift action_32
action_57 (61) = happyShift action_33
action_57 (62) = happyShift action_34
action_57 (63) = happyShift action_35
action_57 (5) = happyGoto action_90
action_57 (9) = happyGoto action_6
action_57 (10) = happyGoto action_7
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (12) = happyShift action_8
action_58 (13) = happyShift action_9
action_58 (14) = happyShift action_10
action_58 (15) = happyShift action_11
action_58 (16) = happyShift action_12
action_58 (17) = happyShift action_13
action_58 (18) = happyShift action_14
action_58 (19) = happyShift action_15
action_58 (20) = happyShift action_16
action_58 (21) = happyShift action_17
action_58 (22) = happyShift action_18
action_58 (23) = happyShift action_19
action_58 (24) = happyShift action_20
action_58 (25) = happyShift action_21
action_58 (26) = happyShift action_22
action_58 (29) = happyShift action_23
action_58 (30) = happyShift action_24
action_58 (31) = happyShift action_25
action_58 (32) = happyShift action_26
action_58 (33) = happyShift action_27
action_58 (34) = happyShift action_28
action_58 (35) = happyShift action_29
action_58 (36) = happyShift action_30
action_58 (40) = happyShift action_63
action_58 (41) = happyShift action_64
action_58 (42) = happyShift action_65
action_58 (43) = happyShift action_66
action_58 (45) = happyShift action_67
action_58 (46) = happyShift action_68
action_58 (47) = happyShift action_69
action_58 (48) = happyShift action_70
action_58 (49) = happyShift action_71
action_58 (50) = happyShift action_72
action_58 (51) = happyShift action_73
action_58 (52) = happyShift action_74
action_58 (53) = happyShift action_31
action_58 (55) = happyShift action_32
action_58 (61) = happyShift action_33
action_58 (62) = happyShift action_34
action_58 (63) = happyShift action_35
action_58 (5) = happyGoto action_89
action_58 (9) = happyGoto action_6
action_58 (10) = happyGoto action_7
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_17

action_60 _ = happyReduce_16

action_61 (12) = happyShift action_8
action_61 (13) = happyShift action_9
action_61 (14) = happyShift action_10
action_61 (15) = happyShift action_11
action_61 (16) = happyShift action_12
action_61 (17) = happyShift action_13
action_61 (18) = happyShift action_14
action_61 (19) = happyShift action_15
action_61 (20) = happyShift action_16
action_61 (21) = happyShift action_17
action_61 (22) = happyShift action_18
action_61 (23) = happyShift action_19
action_61 (24) = happyShift action_20
action_61 (25) = happyShift action_21
action_61 (26) = happyShift action_22
action_61 (29) = happyShift action_23
action_61 (30) = happyShift action_24
action_61 (31) = happyShift action_25
action_61 (32) = happyShift action_26
action_61 (33) = happyShift action_27
action_61 (34) = happyShift action_28
action_61 (35) = happyShift action_29
action_61 (36) = happyShift action_30
action_61 (40) = happyShift action_63
action_61 (41) = happyShift action_64
action_61 (42) = happyShift action_65
action_61 (43) = happyShift action_66
action_61 (45) = happyShift action_67
action_61 (46) = happyShift action_68
action_61 (47) = happyShift action_69
action_61 (48) = happyShift action_70
action_61 (49) = happyShift action_71
action_61 (50) = happyShift action_72
action_61 (51) = happyShift action_73
action_61 (52) = happyShift action_74
action_61 (53) = happyShift action_31
action_61 (55) = happyShift action_32
action_61 (61) = happyShift action_33
action_61 (62) = happyShift action_34
action_61 (63) = happyShift action_35
action_61 (5) = happyGoto action_88
action_61 (9) = happyGoto action_6
action_61 (10) = happyGoto action_7
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (12) = happyShift action_8
action_62 (13) = happyShift action_9
action_62 (14) = happyShift action_10
action_62 (15) = happyShift action_11
action_62 (16) = happyShift action_12
action_62 (17) = happyShift action_13
action_62 (18) = happyShift action_14
action_62 (19) = happyShift action_15
action_62 (20) = happyShift action_16
action_62 (21) = happyShift action_17
action_62 (22) = happyShift action_18
action_62 (23) = happyShift action_19
action_62 (24) = happyShift action_20
action_62 (25) = happyShift action_21
action_62 (26) = happyShift action_22
action_62 (29) = happyShift action_23
action_62 (30) = happyShift action_24
action_62 (31) = happyShift action_25
action_62 (32) = happyShift action_26
action_62 (33) = happyShift action_27
action_62 (34) = happyShift action_28
action_62 (35) = happyShift action_29
action_62 (36) = happyShift action_30
action_62 (53) = happyShift action_31
action_62 (55) = happyShift action_32
action_62 (61) = happyShift action_33
action_62 (62) = happyShift action_34
action_62 (63) = happyShift action_35
action_62 (5) = happyGoto action_87
action_62 (9) = happyGoto action_6
action_62 (10) = happyGoto action_7
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (12) = happyShift action_8
action_63 (13) = happyShift action_9
action_63 (14) = happyShift action_10
action_63 (15) = happyShift action_11
action_63 (16) = happyShift action_12
action_63 (17) = happyShift action_13
action_63 (18) = happyShift action_14
action_63 (19) = happyShift action_15
action_63 (20) = happyShift action_16
action_63 (21) = happyShift action_17
action_63 (22) = happyShift action_18
action_63 (23) = happyShift action_19
action_63 (24) = happyShift action_20
action_63 (25) = happyShift action_21
action_63 (26) = happyShift action_22
action_63 (29) = happyShift action_23
action_63 (30) = happyShift action_24
action_63 (31) = happyShift action_25
action_63 (32) = happyShift action_26
action_63 (33) = happyShift action_27
action_63 (34) = happyShift action_28
action_63 (35) = happyShift action_29
action_63 (36) = happyShift action_30
action_63 (53) = happyShift action_31
action_63 (55) = happyShift action_32
action_63 (61) = happyShift action_33
action_63 (62) = happyShift action_34
action_63 (63) = happyShift action_35
action_63 (5) = happyGoto action_86
action_63 (9) = happyGoto action_6
action_63 (10) = happyGoto action_7
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (12) = happyShift action_8
action_64 (13) = happyShift action_9
action_64 (14) = happyShift action_10
action_64 (15) = happyShift action_11
action_64 (16) = happyShift action_12
action_64 (17) = happyShift action_13
action_64 (18) = happyShift action_14
action_64 (19) = happyShift action_15
action_64 (20) = happyShift action_16
action_64 (21) = happyShift action_17
action_64 (22) = happyShift action_18
action_64 (23) = happyShift action_19
action_64 (24) = happyShift action_20
action_64 (25) = happyShift action_21
action_64 (26) = happyShift action_22
action_64 (29) = happyShift action_23
action_64 (30) = happyShift action_24
action_64 (31) = happyShift action_25
action_64 (32) = happyShift action_26
action_64 (33) = happyShift action_27
action_64 (34) = happyShift action_28
action_64 (35) = happyShift action_29
action_64 (36) = happyShift action_30
action_64 (53) = happyShift action_31
action_64 (55) = happyShift action_32
action_64 (61) = happyShift action_33
action_64 (62) = happyShift action_34
action_64 (63) = happyShift action_35
action_64 (5) = happyGoto action_85
action_64 (9) = happyGoto action_6
action_64 (10) = happyGoto action_7
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (12) = happyShift action_8
action_65 (13) = happyShift action_9
action_65 (14) = happyShift action_10
action_65 (15) = happyShift action_11
action_65 (16) = happyShift action_12
action_65 (17) = happyShift action_13
action_65 (18) = happyShift action_14
action_65 (19) = happyShift action_15
action_65 (20) = happyShift action_16
action_65 (21) = happyShift action_17
action_65 (22) = happyShift action_18
action_65 (23) = happyShift action_19
action_65 (24) = happyShift action_20
action_65 (25) = happyShift action_21
action_65 (26) = happyShift action_22
action_65 (29) = happyShift action_23
action_65 (30) = happyShift action_24
action_65 (31) = happyShift action_25
action_65 (32) = happyShift action_26
action_65 (33) = happyShift action_27
action_65 (34) = happyShift action_28
action_65 (35) = happyShift action_29
action_65 (36) = happyShift action_30
action_65 (53) = happyShift action_31
action_65 (55) = happyShift action_32
action_65 (61) = happyShift action_33
action_65 (62) = happyShift action_34
action_65 (63) = happyShift action_35
action_65 (5) = happyGoto action_84
action_65 (9) = happyGoto action_6
action_65 (10) = happyGoto action_7
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (12) = happyShift action_8
action_66 (13) = happyShift action_9
action_66 (14) = happyShift action_10
action_66 (15) = happyShift action_11
action_66 (16) = happyShift action_12
action_66 (17) = happyShift action_13
action_66 (18) = happyShift action_14
action_66 (19) = happyShift action_15
action_66 (20) = happyShift action_16
action_66 (21) = happyShift action_17
action_66 (22) = happyShift action_18
action_66 (23) = happyShift action_19
action_66 (24) = happyShift action_20
action_66 (25) = happyShift action_21
action_66 (26) = happyShift action_22
action_66 (29) = happyShift action_23
action_66 (30) = happyShift action_24
action_66 (31) = happyShift action_25
action_66 (32) = happyShift action_26
action_66 (33) = happyShift action_27
action_66 (34) = happyShift action_28
action_66 (35) = happyShift action_29
action_66 (36) = happyShift action_30
action_66 (53) = happyShift action_31
action_66 (55) = happyShift action_32
action_66 (61) = happyShift action_33
action_66 (62) = happyShift action_34
action_66 (63) = happyShift action_35
action_66 (5) = happyGoto action_83
action_66 (9) = happyGoto action_6
action_66 (10) = happyGoto action_7
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (12) = happyShift action_8
action_67 (13) = happyShift action_9
action_67 (14) = happyShift action_10
action_67 (15) = happyShift action_11
action_67 (16) = happyShift action_12
action_67 (17) = happyShift action_13
action_67 (18) = happyShift action_14
action_67 (19) = happyShift action_15
action_67 (20) = happyShift action_16
action_67 (21) = happyShift action_17
action_67 (22) = happyShift action_18
action_67 (23) = happyShift action_19
action_67 (24) = happyShift action_20
action_67 (25) = happyShift action_21
action_67 (26) = happyShift action_22
action_67 (29) = happyShift action_23
action_67 (30) = happyShift action_24
action_67 (31) = happyShift action_25
action_67 (32) = happyShift action_26
action_67 (33) = happyShift action_27
action_67 (34) = happyShift action_28
action_67 (35) = happyShift action_29
action_67 (36) = happyShift action_30
action_67 (53) = happyShift action_31
action_67 (55) = happyShift action_32
action_67 (61) = happyShift action_33
action_67 (62) = happyShift action_34
action_67 (63) = happyShift action_35
action_67 (5) = happyGoto action_82
action_67 (9) = happyGoto action_6
action_67 (10) = happyGoto action_7
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (12) = happyShift action_8
action_68 (13) = happyShift action_9
action_68 (14) = happyShift action_10
action_68 (15) = happyShift action_11
action_68 (16) = happyShift action_12
action_68 (17) = happyShift action_13
action_68 (18) = happyShift action_14
action_68 (19) = happyShift action_15
action_68 (20) = happyShift action_16
action_68 (21) = happyShift action_17
action_68 (22) = happyShift action_18
action_68 (23) = happyShift action_19
action_68 (24) = happyShift action_20
action_68 (25) = happyShift action_21
action_68 (26) = happyShift action_22
action_68 (29) = happyShift action_23
action_68 (30) = happyShift action_24
action_68 (31) = happyShift action_25
action_68 (32) = happyShift action_26
action_68 (33) = happyShift action_27
action_68 (34) = happyShift action_28
action_68 (35) = happyShift action_29
action_68 (36) = happyShift action_30
action_68 (53) = happyShift action_31
action_68 (55) = happyShift action_32
action_68 (61) = happyShift action_33
action_68 (62) = happyShift action_34
action_68 (63) = happyShift action_35
action_68 (5) = happyGoto action_81
action_68 (9) = happyGoto action_6
action_68 (10) = happyGoto action_7
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (12) = happyShift action_8
action_69 (13) = happyShift action_9
action_69 (14) = happyShift action_10
action_69 (15) = happyShift action_11
action_69 (16) = happyShift action_12
action_69 (17) = happyShift action_13
action_69 (18) = happyShift action_14
action_69 (19) = happyShift action_15
action_69 (20) = happyShift action_16
action_69 (21) = happyShift action_17
action_69 (22) = happyShift action_18
action_69 (23) = happyShift action_19
action_69 (24) = happyShift action_20
action_69 (25) = happyShift action_21
action_69 (26) = happyShift action_22
action_69 (29) = happyShift action_23
action_69 (30) = happyShift action_24
action_69 (31) = happyShift action_25
action_69 (32) = happyShift action_26
action_69 (33) = happyShift action_27
action_69 (34) = happyShift action_28
action_69 (35) = happyShift action_29
action_69 (36) = happyShift action_30
action_69 (53) = happyShift action_31
action_69 (55) = happyShift action_32
action_69 (61) = happyShift action_33
action_69 (62) = happyShift action_34
action_69 (63) = happyShift action_35
action_69 (5) = happyGoto action_80
action_69 (9) = happyGoto action_6
action_69 (10) = happyGoto action_7
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (12) = happyShift action_8
action_70 (13) = happyShift action_9
action_70 (14) = happyShift action_10
action_70 (15) = happyShift action_11
action_70 (16) = happyShift action_12
action_70 (17) = happyShift action_13
action_70 (18) = happyShift action_14
action_70 (19) = happyShift action_15
action_70 (20) = happyShift action_16
action_70 (21) = happyShift action_17
action_70 (22) = happyShift action_18
action_70 (23) = happyShift action_19
action_70 (24) = happyShift action_20
action_70 (25) = happyShift action_21
action_70 (26) = happyShift action_22
action_70 (29) = happyShift action_23
action_70 (30) = happyShift action_24
action_70 (31) = happyShift action_25
action_70 (32) = happyShift action_26
action_70 (33) = happyShift action_27
action_70 (34) = happyShift action_28
action_70 (35) = happyShift action_29
action_70 (36) = happyShift action_30
action_70 (53) = happyShift action_31
action_70 (55) = happyShift action_32
action_70 (61) = happyShift action_33
action_70 (62) = happyShift action_34
action_70 (63) = happyShift action_35
action_70 (5) = happyGoto action_79
action_70 (9) = happyGoto action_6
action_70 (10) = happyGoto action_7
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (12) = happyShift action_8
action_71 (13) = happyShift action_9
action_71 (14) = happyShift action_10
action_71 (15) = happyShift action_11
action_71 (16) = happyShift action_12
action_71 (17) = happyShift action_13
action_71 (18) = happyShift action_14
action_71 (19) = happyShift action_15
action_71 (20) = happyShift action_16
action_71 (21) = happyShift action_17
action_71 (22) = happyShift action_18
action_71 (23) = happyShift action_19
action_71 (24) = happyShift action_20
action_71 (25) = happyShift action_21
action_71 (26) = happyShift action_22
action_71 (29) = happyShift action_23
action_71 (30) = happyShift action_24
action_71 (31) = happyShift action_25
action_71 (32) = happyShift action_26
action_71 (33) = happyShift action_27
action_71 (34) = happyShift action_28
action_71 (35) = happyShift action_29
action_71 (36) = happyShift action_30
action_71 (53) = happyShift action_31
action_71 (55) = happyShift action_32
action_71 (61) = happyShift action_33
action_71 (62) = happyShift action_34
action_71 (63) = happyShift action_35
action_71 (5) = happyGoto action_78
action_71 (9) = happyGoto action_6
action_71 (10) = happyGoto action_7
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (12) = happyShift action_8
action_72 (13) = happyShift action_9
action_72 (14) = happyShift action_10
action_72 (15) = happyShift action_11
action_72 (16) = happyShift action_12
action_72 (17) = happyShift action_13
action_72 (18) = happyShift action_14
action_72 (19) = happyShift action_15
action_72 (20) = happyShift action_16
action_72 (21) = happyShift action_17
action_72 (22) = happyShift action_18
action_72 (23) = happyShift action_19
action_72 (24) = happyShift action_20
action_72 (25) = happyShift action_21
action_72 (26) = happyShift action_22
action_72 (29) = happyShift action_23
action_72 (30) = happyShift action_24
action_72 (31) = happyShift action_25
action_72 (32) = happyShift action_26
action_72 (33) = happyShift action_27
action_72 (34) = happyShift action_28
action_72 (35) = happyShift action_29
action_72 (36) = happyShift action_30
action_72 (53) = happyShift action_31
action_72 (55) = happyShift action_32
action_72 (61) = happyShift action_33
action_72 (62) = happyShift action_34
action_72 (63) = happyShift action_35
action_72 (5) = happyGoto action_77
action_72 (9) = happyGoto action_6
action_72 (10) = happyGoto action_7
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (12) = happyShift action_8
action_73 (13) = happyShift action_9
action_73 (14) = happyShift action_10
action_73 (15) = happyShift action_11
action_73 (16) = happyShift action_12
action_73 (17) = happyShift action_13
action_73 (18) = happyShift action_14
action_73 (19) = happyShift action_15
action_73 (20) = happyShift action_16
action_73 (21) = happyShift action_17
action_73 (22) = happyShift action_18
action_73 (23) = happyShift action_19
action_73 (24) = happyShift action_20
action_73 (25) = happyShift action_21
action_73 (26) = happyShift action_22
action_73 (29) = happyShift action_23
action_73 (30) = happyShift action_24
action_73 (31) = happyShift action_25
action_73 (32) = happyShift action_26
action_73 (33) = happyShift action_27
action_73 (34) = happyShift action_28
action_73 (35) = happyShift action_29
action_73 (36) = happyShift action_30
action_73 (53) = happyShift action_31
action_73 (55) = happyShift action_32
action_73 (61) = happyShift action_33
action_73 (62) = happyShift action_34
action_73 (63) = happyShift action_35
action_73 (5) = happyGoto action_76
action_73 (9) = happyGoto action_6
action_73 (10) = happyGoto action_7
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (12) = happyShift action_8
action_74 (13) = happyShift action_9
action_74 (14) = happyShift action_10
action_74 (15) = happyShift action_11
action_74 (16) = happyShift action_12
action_74 (17) = happyShift action_13
action_74 (18) = happyShift action_14
action_74 (19) = happyShift action_15
action_74 (20) = happyShift action_16
action_74 (21) = happyShift action_17
action_74 (22) = happyShift action_18
action_74 (23) = happyShift action_19
action_74 (24) = happyShift action_20
action_74 (25) = happyShift action_21
action_74 (26) = happyShift action_22
action_74 (29) = happyShift action_23
action_74 (30) = happyShift action_24
action_74 (31) = happyShift action_25
action_74 (32) = happyShift action_26
action_74 (33) = happyShift action_27
action_74 (34) = happyShift action_28
action_74 (35) = happyShift action_29
action_74 (36) = happyShift action_30
action_74 (53) = happyShift action_31
action_74 (55) = happyShift action_32
action_74 (61) = happyShift action_33
action_74 (62) = happyShift action_34
action_74 (63) = happyShift action_35
action_74 (5) = happyGoto action_75
action_74 (9) = happyGoto action_6
action_74 (10) = happyGoto action_7
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_36

action_76 (52) = happyShift action_74
action_76 _ = happyReduce_35

action_77 (40) = happyShift action_63
action_77 (41) = happyShift action_64
action_77 (42) = happyShift action_65
action_77 (43) = happyShift action_66
action_77 (45) = happyShift action_67
action_77 (46) = happyShift action_68
action_77 (47) = happyShift action_69
action_77 (48) = happyShift action_70
action_77 (51) = happyShift action_73
action_77 (52) = happyShift action_74
action_77 _ = happyReduce_34

action_78 (40) = happyShift action_63
action_78 (41) = happyShift action_64
action_78 (42) = happyShift action_65
action_78 (43) = happyShift action_66
action_78 (45) = happyShift action_67
action_78 (46) = happyShift action_68
action_78 (47) = happyShift action_69
action_78 (48) = happyShift action_70
action_78 (51) = happyShift action_73
action_78 (52) = happyShift action_74
action_78 _ = happyReduce_33

action_79 (40) = happyShift action_63
action_79 (41) = happyShift action_64
action_79 (42) = happyShift action_65
action_79 (43) = happyShift action_66
action_79 (45) = happyShift action_67
action_79 (46) = happyShift action_68
action_79 (47) = happyShift action_69
action_79 (51) = happyShift action_73
action_79 (52) = happyShift action_74
action_79 _ = happyReduce_48

action_80 (40) = happyShift action_63
action_80 (41) = happyShift action_64
action_80 (42) = happyShift action_65
action_80 (43) = happyShift action_66
action_80 (45) = happyShift action_67
action_80 (46) = happyShift action_68
action_80 (51) = happyShift action_73
action_80 (52) = happyShift action_74
action_80 _ = happyReduce_47

action_81 (51) = happyShift action_73
action_81 (52) = happyShift action_74
action_81 _ = happyReduce_46

action_82 (51) = happyShift action_73
action_82 (52) = happyShift action_74
action_82 _ = happyReduce_45

action_83 (51) = happyShift action_73
action_83 (52) = happyShift action_74
action_83 _ = happyReduce_44

action_84 (51) = happyShift action_73
action_84 (52) = happyShift action_74
action_84 _ = happyReduce_43

action_85 (51) = happyShift action_73
action_85 (52) = happyShift action_74
action_85 _ = happyReduce_42

action_86 (51) = happyShift action_73
action_86 (52) = happyShift action_74
action_86 _ = happyReduce_41

action_87 _ = happyReduce_37

action_88 _ = happyReduce_15

action_89 _ = happyReduce_18

action_90 _ = happyReduce_19

action_91 _ = happyReduce_20

action_92 _ = happyReduce_21

action_93 _ = happyReduce_22

action_94 _ = happyReduce_23

action_95 _ = happyReduce_24

action_96 _ = happyReduce_26

action_97 (12) = happyShift action_8
action_97 (13) = happyShift action_9
action_97 (14) = happyShift action_10
action_97 (15) = happyShift action_11
action_97 (16) = happyShift action_12
action_97 (17) = happyShift action_13
action_97 (18) = happyShift action_14
action_97 (19) = happyShift action_15
action_97 (20) = happyShift action_16
action_97 (21) = happyShift action_17
action_97 (22) = happyShift action_18
action_97 (23) = happyShift action_19
action_97 (24) = happyShift action_20
action_97 (25) = happyShift action_21
action_97 (26) = happyShift action_22
action_97 (29) = happyShift action_23
action_97 (30) = happyShift action_24
action_97 (31) = happyShift action_25
action_97 (32) = happyShift action_26
action_97 (33) = happyShift action_27
action_97 (34) = happyShift action_28
action_97 (35) = happyShift action_29
action_97 (36) = happyShift action_30
action_97 (53) = happyShift action_31
action_97 (55) = happyShift action_32
action_97 (61) = happyShift action_33
action_97 (62) = happyShift action_34
action_97 (63) = happyShift action_35
action_97 (5) = happyGoto action_109
action_97 (9) = happyGoto action_6
action_97 (10) = happyGoto action_7
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_29

action_99 (12) = happyShift action_8
action_99 (13) = happyShift action_9
action_99 (14) = happyShift action_10
action_99 (15) = happyShift action_11
action_99 (16) = happyShift action_12
action_99 (17) = happyShift action_13
action_99 (18) = happyShift action_14
action_99 (19) = happyShift action_15
action_99 (20) = happyShift action_16
action_99 (21) = happyShift action_17
action_99 (22) = happyShift action_18
action_99 (23) = happyShift action_19
action_99 (24) = happyShift action_20
action_99 (25) = happyShift action_21
action_99 (26) = happyShift action_22
action_99 (29) = happyShift action_23
action_99 (30) = happyShift action_24
action_99 (31) = happyShift action_25
action_99 (32) = happyShift action_26
action_99 (33) = happyShift action_27
action_99 (34) = happyShift action_28
action_99 (35) = happyShift action_29
action_99 (36) = happyShift action_30
action_99 (40) = happyShift action_63
action_99 (41) = happyShift action_64
action_99 (42) = happyShift action_65
action_99 (43) = happyShift action_66
action_99 (45) = happyShift action_67
action_99 (46) = happyShift action_68
action_99 (47) = happyShift action_69
action_99 (48) = happyShift action_70
action_99 (49) = happyShift action_71
action_99 (50) = happyShift action_72
action_99 (51) = happyShift action_73
action_99 (52) = happyShift action_74
action_99 (53) = happyShift action_31
action_99 (55) = happyShift action_32
action_99 (61) = happyShift action_33
action_99 (62) = happyShift action_34
action_99 (63) = happyShift action_35
action_99 (5) = happyGoto action_108
action_99 (9) = happyGoto action_6
action_99 (10) = happyGoto action_7
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (12) = happyShift action_8
action_100 (13) = happyShift action_9
action_100 (14) = happyShift action_10
action_100 (15) = happyShift action_11
action_100 (16) = happyShift action_12
action_100 (17) = happyShift action_13
action_100 (18) = happyShift action_14
action_100 (19) = happyShift action_15
action_100 (20) = happyShift action_16
action_100 (21) = happyShift action_17
action_100 (22) = happyShift action_18
action_100 (23) = happyShift action_19
action_100 (24) = happyShift action_20
action_100 (25) = happyShift action_21
action_100 (26) = happyShift action_22
action_100 (29) = happyShift action_23
action_100 (30) = happyShift action_24
action_100 (31) = happyShift action_25
action_100 (32) = happyShift action_26
action_100 (33) = happyShift action_27
action_100 (34) = happyShift action_28
action_100 (35) = happyShift action_29
action_100 (36) = happyShift action_30
action_100 (40) = happyShift action_63
action_100 (41) = happyShift action_64
action_100 (42) = happyShift action_65
action_100 (43) = happyShift action_66
action_100 (45) = happyShift action_67
action_100 (46) = happyShift action_68
action_100 (47) = happyShift action_69
action_100 (48) = happyShift action_70
action_100 (49) = happyShift action_71
action_100 (50) = happyShift action_72
action_100 (51) = happyShift action_73
action_100 (52) = happyShift action_74
action_100 (53) = happyShift action_31
action_100 (55) = happyShift action_32
action_100 (61) = happyShift action_33
action_100 (62) = happyShift action_34
action_100 (63) = happyShift action_35
action_100 (5) = happyGoto action_107
action_100 (9) = happyGoto action_6
action_100 (10) = happyGoto action_7
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (12) = happyShift action_8
action_101 (13) = happyShift action_9
action_101 (14) = happyShift action_10
action_101 (15) = happyShift action_11
action_101 (16) = happyShift action_12
action_101 (17) = happyShift action_13
action_101 (18) = happyShift action_14
action_101 (19) = happyShift action_15
action_101 (20) = happyShift action_16
action_101 (21) = happyShift action_17
action_101 (22) = happyShift action_18
action_101 (23) = happyShift action_19
action_101 (24) = happyShift action_20
action_101 (25) = happyShift action_21
action_101 (26) = happyShift action_22
action_101 (29) = happyShift action_23
action_101 (30) = happyShift action_24
action_101 (31) = happyShift action_25
action_101 (32) = happyShift action_26
action_101 (33) = happyShift action_27
action_101 (34) = happyShift action_28
action_101 (35) = happyShift action_29
action_101 (36) = happyShift action_30
action_101 (53) = happyShift action_31
action_101 (55) = happyShift action_32
action_101 (61) = happyShift action_33
action_101 (62) = happyShift action_34
action_101 (63) = happyShift action_35
action_101 (5) = happyGoto action_106
action_101 (9) = happyGoto action_6
action_101 (10) = happyGoto action_7
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_8

action_103 (33) = happyShift action_41
action_103 (6) = happyGoto action_38
action_103 (7) = happyGoto action_39
action_103 (8) = happyGoto action_105
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_12

action_105 _ = happyReduce_14

action_106 (40) = happyShift action_63
action_106 (41) = happyShift action_64
action_106 (42) = happyShift action_65
action_106 (43) = happyShift action_66
action_106 (45) = happyShift action_67
action_106 (46) = happyShift action_68
action_106 (47) = happyShift action_69
action_106 (48) = happyShift action_70
action_106 (49) = happyShift action_71
action_106 (50) = happyShift action_72
action_106 (51) = happyShift action_73
action_106 (52) = happyShift action_74
action_106 (54) = happyShift action_112
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_32

action_108 (12) = happyShift action_8
action_108 (13) = happyShift action_9
action_108 (14) = happyShift action_10
action_108 (15) = happyShift action_11
action_108 (16) = happyShift action_12
action_108 (17) = happyShift action_13
action_108 (18) = happyShift action_14
action_108 (19) = happyShift action_15
action_108 (20) = happyShift action_16
action_108 (21) = happyShift action_17
action_108 (22) = happyShift action_18
action_108 (23) = happyShift action_19
action_108 (24) = happyShift action_20
action_108 (25) = happyShift action_21
action_108 (26) = happyShift action_22
action_108 (29) = happyShift action_23
action_108 (30) = happyShift action_24
action_108 (31) = happyShift action_25
action_108 (32) = happyShift action_26
action_108 (33) = happyShift action_27
action_108 (34) = happyShift action_28
action_108 (35) = happyShift action_29
action_108 (36) = happyShift action_30
action_108 (40) = happyShift action_63
action_108 (41) = happyShift action_64
action_108 (42) = happyShift action_65
action_108 (43) = happyShift action_66
action_108 (45) = happyShift action_67
action_108 (46) = happyShift action_68
action_108 (47) = happyShift action_69
action_108 (48) = happyShift action_70
action_108 (49) = happyShift action_71
action_108 (50) = happyShift action_72
action_108 (51) = happyShift action_73
action_108 (52) = happyShift action_74
action_108 (53) = happyShift action_31
action_108 (55) = happyShift action_32
action_108 (61) = happyShift action_33
action_108 (62) = happyShift action_34
action_108 (63) = happyShift action_35
action_108 (5) = happyGoto action_111
action_108 (9) = happyGoto action_6
action_108 (10) = happyGoto action_7
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (28) = happyShift action_110
action_109 (40) = happyShift action_63
action_109 (41) = happyShift action_64
action_109 (42) = happyShift action_65
action_109 (43) = happyShift action_66
action_109 (45) = happyShift action_67
action_109 (46) = happyShift action_68
action_109 (47) = happyShift action_69
action_109 (48) = happyShift action_70
action_109 (49) = happyShift action_71
action_109 (50) = happyShift action_72
action_109 (51) = happyShift action_73
action_109 (52) = happyShift action_74
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (12) = happyShift action_8
action_110 (13) = happyShift action_9
action_110 (14) = happyShift action_10
action_110 (15) = happyShift action_11
action_110 (16) = happyShift action_12
action_110 (17) = happyShift action_13
action_110 (18) = happyShift action_14
action_110 (19) = happyShift action_15
action_110 (20) = happyShift action_16
action_110 (21) = happyShift action_17
action_110 (22) = happyShift action_18
action_110 (23) = happyShift action_19
action_110 (24) = happyShift action_20
action_110 (25) = happyShift action_21
action_110 (26) = happyShift action_22
action_110 (29) = happyShift action_23
action_110 (30) = happyShift action_24
action_110 (31) = happyShift action_25
action_110 (32) = happyShift action_26
action_110 (33) = happyShift action_27
action_110 (34) = happyShift action_28
action_110 (35) = happyShift action_29
action_110 (36) = happyShift action_30
action_110 (53) = happyShift action_31
action_110 (55) = happyShift action_32
action_110 (61) = happyShift action_33
action_110 (62) = happyShift action_34
action_110 (63) = happyShift action_35
action_110 (5) = happyGoto action_113
action_110 (9) = happyGoto action_6
action_110 (10) = happyGoto action_7
action_110 _ = happyFail (happyExpListPerState 110)

action_111 _ = happyReduce_31

action_112 _ = happyReduce_5

action_113 (40) = happyShift action_63
action_113 (41) = happyShift action_64
action_113 (42) = happyShift action_65
action_113 (43) = happyShift action_66
action_113 (45) = happyShift action_67
action_113 (46) = happyShift action_68
action_113 (47) = happyShift action_69
action_113 (48) = happyShift action_70
action_113 (49) = happyShift action_71
action_113 (50) = happyShift action_72
action_113 (51) = happyShift action_73
action_113 (52) = happyShift action_74
action_113 _ = happyReduce_28

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Start happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Comp happy_var_1 happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (Int happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyTerminal (TokenTileVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (TileVar happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happyReduce 5 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Pos happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn5
		 (Operators happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  5 happyReduction_7
happyReduction_7 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn5
		 (Booleans happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Tile happy_var_2
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 (HappyTerminal (TokenFileName _ happy_var_1))
	 =  HappyAbsSyn5
		 (FileName happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Var happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  7 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (Element happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  7 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (Row happy_var_1 happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (Chain happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (Grid happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  9 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Rotate happy_var_2 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  9 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (ReflectX happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  9 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (ReflectY happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  9 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (RepeatX happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  9 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (RepeatY happy_var_2 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  9 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (HJoin happy_var_2 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (VJoin happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  9 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Scale happy_var_2 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  9 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Iterate happy_var_2 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  9 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Fill happy_var_2 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  9 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Blank happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  9 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (PAnd happy_var_2 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  9 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (PNot happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 6 9 happyReduction_28
happyReduction_28 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_3  9 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Mask happy_var_2 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  9 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Print happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 5 9 happyReduction_31
happyReduction_31 ((HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Cut happy_var_2 happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 9 happyReduction_32
happyReduction_32 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Paste happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_3  9 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn9
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  9 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn9
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  9 happyReduction_35
happyReduction_35 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn9
		 (Divide happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  9 happyReduction_36
happyReduction_36 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn9
		 (Multiply happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  9 happyReduction_37
happyReduction_37 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenTileVar _ happy_var_1))
	 =  HappyAbsSyn9
		 (AEquals happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_2  9 happyReduction_38
happyReduction_38 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Fst happy_var_2
	)
happyReduction_38 _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  9 happyReduction_39
happyReduction_39 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Snd happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_2  9 happyReduction_40
happyReduction_40 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Read happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  10 happyReduction_41
happyReduction_41 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  10 happyReduction_42
happyReduction_42 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  10 happyReduction_43
happyReduction_43 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (LtEquals happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  10 happyReduction_44
happyReduction_44 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (GtEquals happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  10 happyReduction_45
happyReduction_45 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (CompareEquals happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  10 happyReduction_46
happyReduction_46 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  10 happyReduction_47
happyReduction_47 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (And happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  10 happyReduction_48
happyReduction_48 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (Or happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  10 happyReduction_49
happyReduction_49 _
	 =  HappyAbsSyn10
		 (PTrue
	)

happyReduce_50 = happySpecReduce_1  10 happyReduction_50
happyReduction_50 _
	 =  HappyAbsSyn10
		 (PFalse
	)

happyReduce_51 = happySpecReduce_1  11 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn11
		 (PInt
	)

happyReduce_52 = happySpecReduce_1  11 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn11
		 (PBool
	)

happyReduce_53 = happySpecReduce_1  11 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn11
		 (PTile
	)

happyReduce_54 = happyReduce 5 11 happyReduction_54
happyReduction_54 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (TPos happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 64 64 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTileVar _ happy_dollar_dollar -> cont 12;
	TokenRotate _ -> cont 13;
	TokenReflectX _ -> cont 14;
	TokenReflectY _ -> cont 15;
	TokenRepeatX _ -> cont 16;
	TokenRepeatY _ -> cont 17;
	TokenHJoin _ -> cont 18;
	TokenVJoin _ -> cont 19;
	TokenScale _ -> cont 20;
	TokenIterate _ -> cont 21;
	TokenFill _ -> cont 22;
	TokenBlank _ -> cont 23;
	TokenPAnd _ -> cont 24;
	TokenPNot _ -> cont 25;
	TokenIf _ -> cont 26;
	TokenThen _ -> cont 27;
	TokenElse _ -> cont 28;
	TokenMask _ -> cont 29;
	TokenPrint _ -> cont 30;
	TokenCut _ -> cont 31;
	TokenPaste _ -> cont 32;
	TokenInt _ happy_dollar_dollar -> cont 33;
	TokenTrue _ -> cont 34;
	TokenFalse _ -> cont 35;
	TokenRead _ -> cont 36;
	TokenAbs _ -> cont 37;
	TokenComma _ -> cont 38;
	TokenStart _ -> cont 39;
	TokenGT _ -> cont 40;
	TokenLT _ -> cont 41;
	TokenLE _ -> cont 42;
	TokenGE _ -> cont 43;
	TokenAEquals _ -> cont 44;
	TokenCEquals _ -> cont 45;
	TokenNotEqual _ -> cont 46;
	TokenAnd _ -> cont 47;
	TokenOR _ -> cont 48;
	TokenPlus _ -> cont 49;
	TokenMinus _ -> cont 50;
	TokenDivide _ -> cont 51;
	TokenMul _ -> cont 52;
	TokenLParen _ -> cont 53;
	TokenRParen _ -> cont 54;
	TokenLSParen _ -> cont 55;
	TokenRSParen _ -> cont 56;
	TokenNewLine _ -> cont 57;
	TokenTInt _ -> cont 58;
	TokenTBool _ -> cont 59;
	TokenPTile _ -> cont 60;
	TokenFst _ -> cont 61;
	TokenSnd _ -> cont 62;
	TokenFileName _ happy_dollar_dollar -> cont 63;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 64 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Pixels)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parsePixels tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Pixels] -> a
parseError _ = error "Parse error"

data Program = Start Exp | Comp Program Program deriving (Eq,Show)

data Elem = Var Int
              deriving (Eq,Show)

data Row = Element Elem
          | Row Elem Row
              deriving (Eq,Show)

data Grid = Chain Row
           | Grid Row Grid
              deriving (Eq,Show)
           
type Environment = [ (String,Exp) ]

data Exp =   Int Int
            | TileVar String
            | Pos Exp Exp
            | Operators Operators
            | Booleans Booleans
            | Tile Grid
            | MTile (Matrix Int)
            | FileName String
            deriving (Eq,Show)

data Operators = Rotate Exp Exp 
                | ReflectX Exp 
                | ReflectY Exp 
                | RepeatX Exp Exp
                | RepeatY Exp Exp
                | HJoin Exp Exp
                | VJoin Exp Exp
                | Scale Exp Exp
                | Iterate Exp Exp
                | Fill Exp Exp
                | Blank Exp
                | PAnd Exp Exp
                | PNot Exp
                | If Exp Exp Exp
                | Mask Exp Exp
                | Print Exp
                | Cut Exp Exp Exp Exp
                | Paste Exp Exp Exp
                | Plus Exp Exp
                | Minus Exp Exp
                | Divide Exp Exp
                | Multiply Exp Exp
                | AEquals String Exp
                | Fst Exp
                | Snd Exp
                | Read Exp
                
              deriving (Eq, Show)
              
data Booleans =   Gt Exp Exp
                | Lt Exp Exp
                | LtEquals Exp Exp
                | GtEquals Exp Exp
                | CompareEquals Exp Exp
                | NotEqual Exp Exp
                | And Exp Exp
                | Or Exp Exp
                | PTrue 
                | PFalse 
             deriving (Eq, Show)


data PixelType = PInt | PBool | Fun PixelType  PixelType | TPos PixelType PixelType | PTile
        deriving (Eq, Show)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
