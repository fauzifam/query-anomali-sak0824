SELECT 
       art.level_1_code                                                                    AS KODE_PROV,
       art.level_1_name                                                                    AS PROV,
       art.level_2_code                                                                    AS KODE_KAB,
       art.level_2_name                                                                    AS KAB,
       art.level_3_code                                                                    AS KODE_KEC,
       art.level_3_name                                                                    AS KEC,
       art.level_4_code                                                                    AS KODE_DESA,
       art.level_4_name                                                                    AS DESA,
       art.level_5_code                                                                    AS BS,
       art.level_6_code                                                                    AS NKS,
       r_root.no_dsrt                                                                      AS DSRT,
       art.index1                                                                          AS NO_ART,
       art.b4k2                                                                            AS NAMA_ART,
       CONCAT(
        --A1
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value = 59111 OR b5r15a_value = 59121 OR b5r15a_value = 59131 OR b5r15a_value = 60101 OR
               b5r15a_value = 60201 OR b5r15a_value = 63911 OR b5r15a_value = 78411 OR b5r15a_value = 78419 OR
               (b5r15a_value >= 84111 AND b5r15a_value <= 84300) OR b5r15a_value = 85111 OR b5r15a_value = 85112 OR
               b5r15a_value = 85131 OR b5r15a_value = 85210 OR b5r15a_value = 85230 OR b5r15a_value = 85311 OR
               b5r15a_value = 85312 OR b5r15a_value = 85331 OR b5r15a_value = 85430 OR b5r15a_value = 86101 OR
               b5r15a_value = 86102 OR b5r15a_value = 86104 OR b5r15a_value = 87301 OR b5r15a_value = 87901 OR
               b5r15a_value = 88101 OR b5r15a_value = 88991 OR b5r15a_value = 91011 OR b5r15a_value = 91021 OR
               b5r15a_value = 91023)
          AND b5r14a_value IS NOT NULL
          AND b5r21_value IS NOT NULL
          AND b5r26a_value IS NOT NULL
          AND (b5r14a_value <> 4 OR b5r21_value <> 1 OR b5r26a_value > 2)
        ) THEN 'A1;' END,
        
        --A2
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r14a_value = 4
          AND b5r21_value = 1
          AND b5r26a_value = 1
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value >= 84111 AND b5r15a_value <= 84300)
          AND (b5r15b_value = 1111 OR b5r15b_value = 1112 OR b5r15b_value = 2612)
          AND b5r6a_value IS NOT NULL
          AND b5r6a_value < 8
        ) THEN 'A2;' END,
        
        --A3
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r15b_value = 2211 OR b5r15b_value = 2212 OR b5r15b_value = 2250 OR b5r15b_value = 2261 OR
               b5r15b_value = 2262 OR b5r15b_value = 2310 OR b5r15b_value = 2330 OR b5r15b_value = 2341 OR
               b5r15b_value = 2411 OR b5r15b_value = 2611 OR b5r15b_value = 2631 OR b5r15b_value = 2632 OR b5r15b_value = 2634)
          AND b5r6a_value IS NOT NULL
          AND b5r6a_value < 8
        ) THEN 'A3;' END,
        
        --A4
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r15b_value = 3351 OR b5r15b_value = 3352 OR b5r15b_value = 3353 OR b5r15b_value = 3354 OR
               b5r15b_value = 3359 OR b5r15b_value = 5411 OR b5r15b_value = 5413 OR b5r15b_value = 8311)
          AND ((b5r14a_value IS NOT NULL AND b5r14a_value <> 4) OR (b5r21_value IS NOT NULL AND b5r21_value <> 1) OR
               (b5r15a_value IS NOT NULL AND (b5r15a_value < 84111 OR b5r15a_value > 84300)) OR
               (b5r6a_value IS NOT NULL AND b5r6a_value < 4))
        ) THEN 'A4;' END,
        
        --A5
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND b5r15a_value >= 05100
          AND b5r17a_value IS NOT NULL
          AND b5r17a_value < 5
        ) THEN 'A5;' END,
        
        --A6
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value >= 01111 AND b5r15a_value <= 03279)
          AND b5r17a_value = 5
        ) THEN 'A6;' END,
        
        --A7
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value >= 01111 AND b5r15a_value <= 01302)
          AND b5r17a_value IS NOT NULL
          AND b5r17a_value > 2
        ) THEN 'A7;' END,
        
        --A8
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r15a_value = 1111 OR b5r15a_value = 1112 OR b5r15a_value = 1113 OR b5r15a_value = 1121 OR
               b5r15a_value = 1122 OR b5r15a_value = 1135)
          AND b5r17a_value IS NOT NULL
          AND b5r17a_value <> 1
        ) THEN 'A8;' END,
        
        --A9
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value >= 02111 AND b5r15a_value <= 02409)
          AND b5r17a_value IS NOT NULL
          AND b5r17a_value <> 2
        ) THEN 'A9;' END,
        
        --A10
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value >= 01411 AND b5r15a_value <= 01499)
          AND b5r17a_value IS NOT NULL
          AND b5r17a_value <> 3
        ) THEN 'A10;' END,
        
        --A11
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value >= 03111 AND b5r15a_value <= 03279)
          AND b5r17a_value IS NOT NULL
          AND b5r17a_value <> 4
        ) THEN 'A11;' END,
        
        --A12
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6a_value = 4
          AND b5r6b_j_kd_value IS NOT NULL
          AND (b5r6b_j_kd_value > 4 AND b5r6b_j_kd_value < 998)
        ) THEN 'A12;' END,
        
        --A13
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r6a_value = 5 OR b5r6a_value = 6)
          AND b5r6b_j_kd_value IS NOT NULL
          AND b5r6b_j_kd_value > 52
          AND b5r6b_j_kd_value < 998
        ) THEN 'A13;' END,
        
        --A14
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6a_value = 7
          AND b5r6b_p_value = 4
          AND b5r6b_j_kd_value IS NOT NULL
          AND (b5r6b_j_kd_value <> 999)
        ) THEN 'A14;' END,
        
        --A15
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6a_value = 8
          AND b5r6b_p_value = 4
          AND b5r6b_j_kd_value IS NOT NULL
          AND (b5r6b_j_kd_value <> 999)
        ) THEN 'A15;' END,
        
        --A16
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r6a_value >= 9 AND b5r6a_value <= 12)
          AND b5r6b_p_value = 4
          AND b5r6b_j_kd_value IS NOT NULL
          AND (b5r6b_j_kd_value <> 999)
        ) THEN 'A16;' END,
        
        --A17
        CASE WHEN (
          art.b4k10 >= 5
          AND ((b5r15a_value >= 64110 AND b5r15a_value <= 64132) OR (b5r15a_value >= 84111 AND b5r15a_value <= 84234) OR
               b5r15a_value = 99000)
          AND b5r6a_value = 1
        ) THEN 'A17;' END,
        
        --A18
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r15b_value = 111 OR b5r15b_value = 112 OR b5r15b_value = 113 OR b5r15b_value = 114 OR b5r15b_value = 115)
          AND b5r6a_value < 4
        ) THEN 'A18;' END,
        
        --A19
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r15b_value = 211 OR b5r15b_value = 212 OR b5r15b_value = 213 OR b5r15b_value = 214 OR b5r15b_value = 215 OR
               b5r15b_value = 311 OR b5r15b_value = 312 OR b5r15b_value = 313 OR b5r15b_value = 314 OR b5r15b_value = 315)
          AND b5r6a_value < 3
        ) THEN 'A19;' END,
        
        --A20
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15b_value IS NOT NULL
          AND ((b5r15b_value >= 1111 AND b5r15b_value <= 1112) OR (b5r15b_value >= 2111 AND b5r15b_value <= 2356) OR
               (b5r15b_value >= 2411 AND b5r15b_value <= 2643))
          AND b5r6a_value < 4
        ) THEN 'A20;' END,
        
        --A21
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15b_value IS NOT NULL
          AND (b5r15b_value >= 1113 AND b5r15b_value <= 1431)
          AND b5r6a_value < 2
        ) THEN 'A21;' END,
        
        --A22
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r15b_value = 111 OR b5r15b_value = 112 OR b5r15b_value = 113 OR b5r15b_value = 114 OR b5r15b_value = 115)
          AND art.b4k10 < 18
        ) THEN 'A22;' END,
        
        --A23
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r15b_value = 211 OR b5r15b_value = 212 OR b5r15b_value = 213 OR b5r15b_value = 214 OR b5r15b_value = 215 OR
               b5r15b_value = 311 OR b5r15b_value = 312 OR b5r15b_value = 313 OR b5r15b_value = 314 OR b5r15b_value = 315)
          AND art.b4k10 < 16
        ) THEN 'A23;' END,
        
        --A24
        CASE WHEN (
          art.b4k10 >= 5
          AND ((b5r15b_value >= 1111 AND b5r15b_value <= 1431) OR (b5r15b_value >= 2111 AND b5r15b_value <= 2356) OR
               (b5r15b_value >= 2411 AND b5r15b_value <= 2643) OR (b5r15b_value >= 3111 AND b5r15b_value <= 3413))
          AND art.b4k10 < 15
        ) THEN 'A24;' END,
        
        --A25
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15b_value IS NOT NULL
          AND (b5r15b_value = 1311 OR b5r15b_value = 1312 OR b5r15b_value = 3142 OR b5r15b_value = 3143 OR
               (b5r15b_value >= 6111 AND b5r15b_value <= 6340) OR (b5r15b_value >= 9211 AND b5r15b_value <= 9216))
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value < 01111 OR b5r15a_value > 03279)
        ) THEN 'A25;' END,
        
        --A26
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND ((b5r15b_value >= 111 AND b5r15b_value <= 315) AND (b5r15a_value < 84221 OR b5r15a_value > 84233))
        ) THEN 'A26;' END,
        
        --A27
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND b5r15b_value = 2320
          AND (b5r15a_value < 85230 OR (b5r15a_value > 85230 AND b5r15a_value < 85240) OR
               (b5r15a_value > 85240 AND b5r15a_value < 85311) OR (b5r15a_value > 85312 AND b5r15a_value < 85321) OR
               b5r15a_value > 85322)
        ) THEN 'A27;' END,
        
        --A28
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15b_value IS NOT NULL
          AND b5r15b_value = 2330
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value < 85112 OR (b5r15a_value > 85112 AND b5r15a_value < 85122) OR
               (b5r15a_value > 85122 AND b5r15a_value < 85210) OR (b5r15a_value > 85210 AND b5r15a_value < 85220) OR
               (b5r15a_value > 85220 AND b5r15a_value < 85230) OR (b5r15a_value > 85230 AND b5r15a_value < 85240) OR
               (b5r15a_value > 85240 AND b5r15a_value < 85251) OR (b5r15a_value > 85251 AND b5r15a_value < 85252) OR
               (b5r15a_value > 85252 AND b5r15a_value < 85270) OR b5r15a_value > 85270)
        ) THEN 'A28;' END,
        
        --A29
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r14a_value IS NOT NULL
          AND b5r14a_value = 5
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value < 01111 OR b5r15a_value > 03279)
        ) THEN 'A29;' END,
        
        --A30
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r14a_value IS NOT NULL
          AND b5r14a_value = 6
          AND b5r15a_value IS NOT NULL
          AND ((b5r15a_value >= 01111 AND b5r15a_value <= 03279) OR (b5r15a_value >= 84111 AND b5r15a_value <= 84300))
        ) THEN 'A30;' END,
        
        --A31
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value >= 84111 AND b5r15a_value <= 84300)
          AND b5r14a_value IS NOT NULL
          AND b5r14a_value <> 4
        ) THEN 'A31;' END,
        
        --A32
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15b_value = 2612
          AND b5r15a_value IS NOT NULL
          AND b5r15a_value <> 84233
        ) THEN 'A32;' END,
        
        --A33
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value >= 84111 AND b5r15a_value <= 84300)
          AND b5r14a_value IS NOT NULL
          AND b5r14a_value = 4
          AND art.b4k5_value IS NOT NULL
          AND art.b4k5_value = 2
        ) THEN 'A33;' END,
        
        --A34
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r14a_value = 4
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value >= 84111 AND b5r15a_value <= 84300)
          AND b5r24a1_value <> 1
        ) THEN 'A34;' END,
        
        --A35
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r15a_value IS NOT NULL
          AND (b5r15a_value >= 84111 AND b5r15a_value <= 84300)
          AND b5r14a_value IS NOT NULL
          AND b5r14a_value = 4
          AND b5r24b_value IS NOT NULL
          AND b5r24b_value <> 1
        ) THEN 'A35;' END,
        
        --A36
        --CASE WHEN (
          
        --) THEN 'A36;' END,
        
        --A37
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r33b_value = 111 OR b5r33b_value = 112 OR b5r33b_value = 113 OR b5r33b_value = 114 OR b5r33b_value = 115)
          AND b5r6a_value < 4
        ) THEN 'A37;' END,
        
        --A38
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r33b_value = 211 OR b5r33b_value = 212 OR b5r33b_value = 213 OR b5r33b_value = 214 OR b5r33b_value = 215 OR
               b5r33b_value = 311 OR b5r33b_value = 312 OR b5r33b_value = 313 OR b5r33b_value = 314 OR b5r33b_value = 315)
          AND b5r6a_value < 3
        ) THEN 'A38;' END,
        
        --A39
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r33b_value IS NOT NULL
          AND ((b5r33b_value >= 1111 AND b5r33b_value <= 1112) OR (b5r33b_value >= 2111 AND b5r33b_value <= 2356) OR
               (b5r33b_value >= 2411 AND b5r33b_value <= 2643))
          AND b5r6a_value < 4
        ) THEN 'A39;' END,
        
        --A40
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r33b_value IS NOT NULL
          AND (b5r33b_value >= 1113 AND b5r33b_value <= 1431)
          AND b5r6a_value < 2
        ) THEN 'A40;' END,
        
        --A41
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r33b_value = 111 OR b5r33b_value = 112 OR b5r33b_value = 113 OR b5r33b_value = 114 OR b5r33b_value = 115)
          AND art.b4k10 < 18
        ) THEN 'A41;' END,
        
        --A42
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r33b_value = 211 OR b5r33b_value = 212 OR b5r33b_value = 213 OR b5r33b_value = 214 OR b5r33b_value = 215 OR
               b5r33b_value = 311 OR b5r33b_value = 312 OR b5r33b_value = 313 OR b5r33b_value = 314 OR b5r33b_value = 315)
          AND art.b4k10 < 16
        ) THEN 'A42;' END,
        
        --A43
        CASE WHEN (
          art.b4k10 >= 5
          AND ((b5r33b_value >= 1111 AND b5r33b_value <= 1431) OR (b5r33b_value >= 2111 AND b5r33b_value <= 2356) OR
               (b5r33b_value >= 2411 AND b5r33b_value <= 2643) OR (b5r33b_value >= 3111 AND b5r33b_value <= 3413))
          AND art.b4k10 < 15
        ) THEN 'A43;' END,
        
        --A44
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r33b_value IS NOT NULL
          AND (b5r33b_value = 1311 OR b5r33b_value = 1312 OR b5r33b_value = 3142 OR b5r33b_value = 3143 OR
               (b5r33b_value >= 6111 AND b5r33b_value <= 6340) OR (b5r33b_value >= 9211 AND b5r33b_value <= 9216))
          AND b5r33a_value IS NOT NULL
          AND (b5r33a_value < 1111 OR b5r33a_value > 3279)
        ) THEN 'A44;' END,
        
        --A45
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r33a_value IS NOT NULL
          AND ((b5r33b_value >= 111 AND b5r33b_value <= 315) AND (b5r33a_value < 84220 OR b5r33a_value > 84233))
        ) THEN 'A45;' END,
        
        --A46
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r33a_value IS NOT NULL
          AND b5r33b_value = 2320
          AND (b5r33a_value < 85230 OR (b5r33a_value > 85230 AND b5r33a_value < 85240) OR
               (b5r33a_value > 85240 AND b5r33a_value < 85311) OR (b5r33a_value > 85312 AND b5r33a_value < 85321) OR
               b5r33a_value > 85322)
        ) THEN 'A46;' END,
        
        --A47
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r33b_value IS NOT NULL
          AND b5r33b_value = 2330
          AND b5r33a_value IS NOT NULL
          AND (b5r33a_value < 85112 OR (b5r33a_value > 85112 AND b5r33a_value < 85122) OR
               (b5r33a_value > 85122 AND b5r33a_value < 85210) OR (b5r33a_value > 85210 AND b5r33a_value < 85220) OR
               (b5r33a_value > 85220 AND b5r33a_value < 85230) OR (b5r33a_value > 85230 AND b5r33a_value < 85240) OR
               (b5r33a_value > 85240 AND b5r33a_value < 85251) OR (b5r33a_value > 85251 AND b5r33a_value < 85252) OR
               (b5r33a_value > 85252 AND b5r33a_value < 85270) OR b5r33a_value > 85270)
        ) THEN 'A47;' END,
        
        --A48
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r33a_value IS NOT NULL
          AND b5r33a_value = 5
          AND b5r33a_value IS NOT NULL
          AND (b5r33a_value < 01111 OR b5r33a_value > 03279)
        ) THEN 'A48;' END,
        
        --A49
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r33a_value IS NOT NULL
          AND b5r33a_value = 6
          AND b5r33a_value IS NOT NULL
          AND ((b5r33a_value >= 1111 AND b5r33a_value <= 3279) OR (b5r33a_value >= 84111 AND b5r33a_value <= 84300))
        ) THEN 'A49;' END,
        
        --A50
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r33a_value IS NOT NULL
          AND (b5r33a_value >= 84111 AND b5r33a_value <= 84300)
          AND b5r32a_value IS NOT NULL
          AND b5r32a_value <> 4
        ) THEN 'A50;' END,
        
        --A51
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r33b_value = 2612
          AND b5r33a_value IS NOT NULL
          AND b5r33a_value <> 84233
        ) THEN 'A51;' END,
        
        --A52
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r33a_value IS NOT NULL
          AND (b5r33a_value >= 84111 AND b5r33a_value <= 84300)
          AND b5r32a_value IS NOT NULL
          AND b5r32a_value = 4
          AND art.b4k5_value IS NOT NULL
          AND art.b4k5_value = 2
        ) THEN 'A52;' END,
        
        --A53
        CASE WHEN (
          art.b4k10 >= 5
          AND ((b5r48a_value >= 64110 AND b5r48a_value <= 64132) OR (b5r48a_value >= 84111 AND b5r48a_value <= 84234) OR
               b5r48a_value = 99000)
          AND b5r6a_value = 1
        ) THEN 'A53;' END,
        
        --A54
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r48b_value = 111 OR b5r48b_value = 112 OR b5r48b_value = 113 OR b5r48b_value = 114 OR b5r48b_value = 115)
          AND b5r6a_value < 4
        ) THEN 'A54;' END,
        
        --A55
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r48b_value = 211 OR b5r48b_value = 212 OR b5r48b_value = 213 OR b5r48b_value = 214 OR b5r48b_value = 215 OR
               b5r48b_value = 311 OR b5r48b_value = 312 OR b5r48b_value = 313 OR b5r48b_value = 314 OR b5r48b_value = 315)
          AND b5r6a_value < 3
        ) THEN 'A55;' END,
        
        --A56
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r48b_value IS NOT NULL
          AND ((b5r48b_value >= 1111 AND b5r48b_value <= 1112) OR (b5r48b_value >= 2111 AND b5r48b_value <= 2356) OR
               (b5r48b_value >= 2411 AND b5r48b_value <= 2643))
          AND b5r6a_value < 4
        ) THEN 'A56;' END,
        
        --A57
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r48b_value IS NOT NULL
          AND (b5r48b_value >= 1113 AND b5r48b_value <= 1431)
          AND b5r6a_value < 2
        ) THEN 'A57;' END,
        
        --A58
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r48b_value = 111 OR b5r48b_value = 112 OR b5r48b_value = 113 OR b5r48b_value = 114 OR b5r48b_value = 115)
          AND art.b4k10 < 18
        ) THEN 'A58;' END,
        
        --A59
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r48b_value = 211 OR b5r48b_value = 212 OR b5r48b_value = 213 OR b5r48b_value = 214 OR b5r48b_value = 215 OR
               b5r48b_value = 311 OR b5r48b_value = 312 OR b5r48b_value = 313 OR b5r48b_value = 314 OR b5r48b_value = 315)
          AND art.b4k10 < 16
        ) THEN 'A59;' END,
        
        --A60
        CASE WHEN (
          art.b4k10 >= 5
          AND ((b5r48b_value >= 1111 AND b5r48b_value <= 1431) OR (b5r48b_value >= 2111 AND b5r48b_value <= 2356) OR
               (b5r48b_value >= 2411 AND b5r48b_value <= 2643) OR (b5r48b_value >= 3111 AND b5r48b_value <= 3413))
          AND art.b4k10 < 15
        ) THEN 'A60;' END,
        
        --A61
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r48b_value IS NOT NULL
          AND (b5r48b_value = 1311 OR b5r48b_value = 1312 OR b5r48b_value = 3142 OR b5r48b_value = 3143 OR
               (b5r48b_value >= 6111 AND b5r48b_value <= 6340) OR (b5r48b_value >= 9211 AND b5r48b_value <= 9216))
          AND b5r48a_value IS NOT NULL
          AND (b5r48a_value < 1111 OR b5r48a_value > 3279)
        ) THEN 'A61;' END,
        
        --A62
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r48b_value IS NOT NULL
          AND ((b5r48b_value >= 111 AND b5r48b_value <= 315) AND b5r48a_value IS NOT NULL AND
               (b5r48a_value < 84220 OR b5r48a_value > 84233))
        ) THEN 'A62;' END,
        
        --A63
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r48a_value IS NOT NULL
          AND b5r48b_value = 2320
          AND (b5r48a_value < 85230 OR (b5r48a_value > 85230 AND b5r48a_value < 85240) OR
               (b5r48a_value > 85240 AND b5r48a_value < 85311) OR (b5r48a_value > 85312 AND b5r48a_value < 85321) OR
               b5r48a_value > 85322)
        ) THEN 'A63;' END,
        
        --A64
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r48b_value IS NOT NULL
          AND b5r48b_value = 2330
          AND b5r48a_value IS NOT NULL
          AND (b5r48a_value < 85112 OR (b5r48a_value > 85112 AND b5r48a_value < 85122) OR
               (b5r48a_value > 85122 AND b5r48a_value < 85210) OR (b5r48a_value > 85210 AND b5r48a_value < 85220) OR
               (b5r48a_value > 85220 AND b5r48a_value < 85230) OR (b5r48a_value > 85230 AND b5r48a_value < 85240) OR
               (b5r48a_value > 85240 AND b5r48a_value < 85251) OR (b5r48a_value > 85251 AND b5r48a_value < 85252) OR
               (b5r48a_value > 85252 AND b5r48a_value < 85270) OR b5r48a_value > 85270)
        ) THEN 'A64;' END,
        
        --A65
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r47d_value IS NOT NULL
          AND b5r47d_value = 5
          AND b5r48a_value IS NOT NULL
          AND (b5r48a_value < 1111 OR b5r48a_value > 3279)
        ) THEN 'A65;' END,
        
        --A66
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r47d_value IS NOT NULL
          AND b5r47d_value = 6
          AND b5r48a_value IS NOT NULL
          AND ((b5r48a_value >= 1111 AND b5r48a_value <= 3279) OR (b5r48a_value >= 84111 AND b5r48a_value <= 84300))
        ) THEN 'A66;' END,
        
        --A67
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r48a_value IS NOT NULL
          AND (b5r48a_value >= 84111 AND b5r48a_value <= 84300)
          AND b5r47d_value IS NOT NULL
          AND b5r47d_value <> 4
        ) THEN 'A67;' END,
        
        --A68
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r48b_value = 2612
          AND b5r48a_value IS NOT NULL
          AND b5r48a_value <> 84233
        ) THEN 'A68;' END,
        
        --A69
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r6a_value >= 4 AND b5r6a_value <= 12)
          AND b5r6b_j_kd_value IS NULL
        ) THEN 'A69;' END,
        
        --A70
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6g_jml = 1
          AND b5r6g1_kd IS NULL
        ) THEN 'A70;' END,
        
        --A71
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6g_jml = 2
          AND (b5r6g1_kd IS NULL)
        ) THEN 'A71;' END,
        
        --A72
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6g_jml = 2
          AND (b5r6g2_kd_value IS NULL)
        ) THEN 'A72;' END,
        
        --A73
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6g_jml = 3
          AND (b5r6g1_kd IS NULL)
        ) THEN 'A73;' END,
        
        --A74
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6g_jml = 3
          AND (b5r6g2_kd_value IS NULL)
        ) THEN 'A74;' END,
        
        --A75
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6g_jml = 3
          AND (b5r6g3_kd_value IS NULL)
        ) THEN 'A75;' END
        
       ) AS 'Anomali',
       
       CONCAT('<a href="https://fasih-sm.bps.go.id/survey-collection/assignment-detail/',
              art.assignment_id
           , '/105803db-5aed-4817-893a-e7d7e56cea5b" target="_blank">Link Assignment</a>') AS 'Link'
           
FROM tln_cf698a83.art_roster art
         LEFT JOIN tln_cf698a83.root_table r_root
                   ON r_root.assignment_id = art.assignment_id
         LEFT JOIN tln_cf698a83.art_5th_1_roster r51
                   ON r51.assignment_id = art.assignment_id
                       AND r51.index1 = art.index1
         LEFT JOIN tln_cf698a83.art_5th_2_roster r52
                   ON r52.assignment_id = art.assignment_id
                       AND r52.index1 = art.index1
         LEFT JOIN tln_cf698a83.art_5th_3_roster r53
                   ON r53.assignment_id = art.assignment_id
                       AND r53.index1 = art.index1
WHERE art.level_3_code = '010' OR 
      art.level_3_code = '020' 
ORDER BY art.level_3_code,art.level_4_code,art.level_5_code,r_root.no_dsrt,art.index1
