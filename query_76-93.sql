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
        --A36
        --CASE WHEN (
          
        --) THEN 'A36;' END,
        
        --A76
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6g1_s_l = 'A'
          AND b5r6g1_s_kd_value IS NULL
        ) THEN 'A76;' END,
        
        --A77
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6g2_s_l = 'A'
          AND b5r6g2_s_kd_value IS NULL
        ) THEN 'A77;' END,
        
        --A78
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r6g3_s_l = 'A'
          AND b5r6g3_s_kd_value IS NULL
        ) THEN 'A78;' END,
        
        --A79
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r10a_value = 1 OR b5r10b_value = 1 OR b5r10c_value = 1 OR b5r11_value = 1)
          AND b5r15a_value IS NULL
        ) THEN 'A79;' END,
        
        --A80
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r10a_value = 1 OR b5r10b_value = 1 OR b5r10c_value = 1 OR b5r11_value = 1)
          AND b5r15b_value IS NULL
        ) THEN 'A80;' END,
        
        --A81
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r29_value = 1
          AND b5r33a_value IS NULL
        ) THEN 'A81;' END,
        
        --A82
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r29_value = 1
          AND b5r33b_value IS NULL
        ) THEN 'A82;' END,
        
        --A83
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r46a_value = 1
          AND b5r48a_value IS NULL
        ) THEN 'A83;' END,
        
        --A84
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r46a_value = 1
          AND b5r48b_value IS NULL
        ) THEN 'A84;' END,
        
        --A85
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r52b_value = 1
          AND b5r56a_value IS NULL
        ) THEN 'A85;' END,
        
        --A86
        CASE WHEN (
          art.b4k10 >= 5
          AND b5r52b_value = 1
          AND b5r56b_value IS NULL
        ) THEN 'A86;' END,
        
        --A87
        --CASE WHEN (
          
        --) THEN 'A87;' END,
        
        --A88
        CASE WHEN (
          b5r2a_value = b5r1a
          AND (b5r22_value = 4 OR b5r25a_value = 3 OR b5r25b_value = 6 OR b5r25c_value = 3 OR b5r25d_value = 6 OR
               b5r25e_value = 3 OR b5r25f_value = 6 OR b5r25g_value = 3 OR b5r25h_value = 6 OR b5r25i_value = 3)
        ) THEN 'A88;' END,
        
        --A89
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r15b_value = 2310 OR b5r15b_value = 2320 OR b5r15b_value = 2330 OR b5r15b_value = 2341 OR
               b5r15b_value = 2612 OR b5r15b_value = 3152 OR b5r15b_value = 3153 OR b5r15b_value = 3154 OR
               b5r15b_value = 3118 OR b5r15b_value = 3155 OR b5r15b_value = 3315 OR b5r15b_value = 3323 OR
               b5r15b_value = 3351 OR b5r15b_value = 3352 OR b5r15b_value = 3353 OR b5r15b_value = 3359 OR
               b5r15b_value = 4131 OR b5r15b_value = 4211 OR b5r15b_value = 4213 OR b5r15b_value = 4223 OR
               b5r15b_value = 4224 OR (b5r15b_value >= 4311 AND b5r15b_value <= 4419) OR b5r15b_value = 5120 OR
               b5r15b_value = 5411 OR b5r15b_value = 5413 OR b5r15b_value = 5414 OR b5r15b_value = 8311 OR b5r15b_value = 8312)
          AND b5r14a_value IS NOT NULL
          AND b5r14a_value <> 4
        ) THEN 'A89;' END,
        
        --A90
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r33b_value = 2310 OR b5r33b_value = 2320 OR b5r33b_value = 2330 OR b5r33b_value = 2341 OR
               b5r33b_value = 2612 OR b5r33b_value = 3152 OR b5r33b_value = 3153 OR b5r33b_value = 3154 OR
               b5r33b_value = 3118 OR b5r33b_value = 3155 OR b5r33b_value = 3315 OR b5r33b_value = 3323 OR
               b5r33b_value = 3351 OR b5r33b_value = 3352 OR b5r33b_value = 3353 OR b5r33b_value = 3359 OR
               b5r33b_value = 4131 OR b5r33b_value = 4211 OR b5r33b_value = 4213 OR b5r33b_value = 4223 OR
               b5r33b_value = 4224 OR (b5r33b_value >= 4311 AND b5r33b_value <= 4419) OR b5r33b_value = 5120 OR
               b5r33b_value = 5411 OR b5r33b_value = 5413 OR b5r33b_value = 5414 OR b5r33b_value = 8311 OR b5r33b_value = 8312)
          AND b5r32a_value IS NOT NULL
          AND b5r32a_value <> 4
        ) THEN 'A90;' END,
        
        --A91
        CASE WHEN (
          art.b4k10 >= 5
          AND (b5r48b_value = 2310 OR b5r48b_value = 2320 OR b5r48b_value = 2330 OR b5r48b_value = 2341 OR
               b5r48b_value = 2612 OR b5r48b_value = 3152 OR b5r48b_value = 3153 OR b5r48b_value = 3154 OR
               b5r48b_value = 3118 OR b5r48b_value = 3155 OR b5r48b_value = 3315 OR b5r48b_value = 3323 OR
               b5r48b_value = 3351 OR b5r48b_value = 3352 OR b5r48b_value = 3353 OR b5r48b_value = 3359 OR
               b5r48b_value = 4131 OR b5r48b_value = 4211 OR b5r48b_value = 4213 OR b5r48b_value = 4223 OR
               b5r48b_value = 4224 OR (b5r48b_value >= 4311 AND b5r48b_value <= 4419) OR b5r48b_value = 5120 OR
               b5r48b_value = 5411 OR b5r48b_value = 5413 OR b5r48b_value = 5414 OR b5r48b_value = 8311 OR b5r48b_value = 8312)
          AND b5r47d_value IS NOT NULL
          AND b5r47d_value <> 4
        ) THEN 'A91;' END,
        
        --A92
        CASE WHEN (
          art.b4k10 >= 5
          AND b4k3_value IS NOT NULL
          AND b4k3_value = 9
          AND (b5r15b_value <> 5120 OR b5r15b_value <> 5131 OR b5r15b_value <> 5151 OR b5r15b_value <> 5152 OR
               b5r15b_value <> 5153 OR b5r15b_value <> 5162 OR b5r15b_value <> 5311 OR b5r15b_value <> 5321 OR
               b5r15b_value <> 5322 OR b5r15b_value <> 5414 OR b5r15b_value <> 9111 OR b5r15b_value <> 9112 OR
               b5r15b_value <> 9121 OR b5r15b_value <> 9122 OR b5r15b_value <> 9123 OR b5r15b_value <> 9129 OR
               b5r15b_value <> 9411 OR b5r15b_value <> 9412 OR b5r15b_value <> 9613 OR b5r15b_value <> 9629)
        ) THEN 'A92;' END,
        
        --A93
        CASE WHEN (
          art.b4k10 >= 5
          AND b4k3_value IS NOT NULL
          AND b4k3_value = 10
          AND (b5r15b_value <> 8321 OR b5r15b_value <> 8322 OR b5r15b_value <> 8331 OR b5r15b_value <> 8341 OR
               b5r15b_value <> 9211 OR b5r15b_value <> 9212 OR b5r15b_value <> 9213 OR b5r15b_value <> 9214 OR
               b5r15b_value <> 9215 OR b5r15b_value <> 9216 OR b5r15b_value <> 9631 OR b5r15b_value <> 9629)
        ) THEN 'A93;' END
        
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
