create or replace PROCEDURE PR_MENU_CREATE ( V_SYS_FG          IN VARCHAR2  -- 시스템구분
                                           , V_LCLS_ID         IN VARCHAR2  -- 대분류ID(메뉴)
                                           , V_LCLS_NM         IN VARCHAR2  -- 대분류명(메뉴)
                                           , V_MCLS_ID         IN VARCHAR2  -- 중분류ID(메뉴)
                                           , V_MCLS_NM         IN VARCHAR2  -- 중분류명(메뉴)
                                           , V_MENU_ID         IN VARCHAR2  -- 메뉴ID(메뉴)
                                           , V_MENU_NM         IN VARCHAR2  -- 메뉴명(메뉴)
                                           , V_SORT_ORD        IN NUMBER    -- 정렬순번
                                           , V_PGM_ID          IN VARCHAR2  -- 프로그램ID(프로그램)
                                           , V_PGM_NM          IN VARCHAR2  -- 프로그램명(프로그램)
                                           , V_PGM_URL         IN VARCHAR2  -- 프로그램파일경로(프로그램)
                                           , V_USER_ID         IN VARCHAR2  -- 메뉴 권한부여 사용자(메뉴)
                                           )
AS
    C_LCLS_ID     TB_SY_MENU.MENU_ID%TYPE;     -- 대분류 메뉴ID
    C_MCLS_ID     TB_SY_MENU.MENU_ID%TYPE;     -- 중분류 메뉴ID
    C_MENU_ID     TB_SY_MENU.MENU_ID%TYPE;     -- 메뉴ID
    C_PGM_ID      TB_SY_MENU.PGM_ID%TYPE;      -- 프로그램ID
    C_UP_MENU_ID  TB_SY_MENU.UP_MENU_ID%TYPE;  -- 상위프로그램ID

    C_ERR_CD  VARCHAR2(4);
    C_ERR_MSG VARCHAR2(4000);

BEGIN

    C_LCLS_ID    := '';
    C_MCLS_ID    := '';
    C_MENU_ID    := '';
    C_PGM_ID     := '';
    C_UP_MENU_ID := '';

    DBMS_OUTPUT.PUT_LINE('>>>>>START>>>>>');

    C_ERR_CD  := '0010';
    C_ERR_MSG := 'V_LCLS_NM::[' || V_LCLS_NM || ']';
    
    -- 대분류        
    IF V_LCLS_NM IS NOT NULL THEN 

        DBMS_OUTPUT.PUT_LINE('>>>>>대분류 생성 시작 >>>>>');

        BEGIN
    
            C_ERR_CD  := '0011';

            -- 대분류 중에서 해당 분류명이 존재하는지 판단해야 함.
            -- 대분류의 상위코드는 'MN00000' 고정
            SELECT A.MENU_ID
              INTO C_LCLS_ID
              FROM TB_SY_MENU A
             WHERE 1=1
               AND A.SYS_FG     = V_SYS_FG
               AND A.MENU_NM    = V_LCLS_NM
               AND A.UP_MENU_ID = 'MN00000'
            ;

            C_ERR_MSG := 'C_LCLS_ID::[' || C_LCLS_ID || ']';

            EXCEPTION 
                 WHEN NO_DATA_FOUND THEN
                    C_LCLS_ID := NULL;

        END;

        BEGIN

            IF C_LCLS_ID IS NOT NULL THEN 

                IF V_LCLS_ID IS NULL THEN 
                    SELECT 'MN'||LPAD(SQ_TB_SY_MENU_MENU_ID.NEXTVAL,5,'0')
                      INTO C_LCLS_ID
                      FROM DUAL
                    ;
                ELSE
                    
                    C_LCLS_ID := V_LCLS_ID;

                END IF;

                C_ERR_CD  := '0012';
                C_ERR_MSG := 'C_LCLS_ID::[' || C_LCLS_ID || ']';
                
                INSERT INTO TB_SY_MENU
                ( SYS_FG
                , MENU_ID
                , MENU_NM
                , UP_MENU_ID
                , USE_YN
                , REGI_ID
                , REGI_DTIME
                , UPDT_ID
                , UPDT_DTIME
                )
                VALUES
                ( V_SYS_FG
                , C_LCLS_ID
                , V_LCLS_NM
                , 'MN00000'
                , 'Y'
                , 'SYSTEM'
                , SYSDATE
                , 'SYSTEM'
                , SYSDATE
                );

            END IF;

        END;

        DBMS_OUTPUT.PUT_LINE('>>>>>대분류 생성 종료 >>>>>');

    END IF;


    C_ERR_CD  := '0020';
    C_ERR_MSG := 'V_MCLS_NM::[' || V_MCLS_NM || ']';

    -- 중분류
    IF V_MCLS_NM IS NOT NULL THEN

        DBMS_OUTPUT.PUT_LINE('>>>>>중분류 생성 시작 >>>>>');

        BEGIN

            C_ERR_CD  := '0021';        
    
            -- 중분류 중에서 해당 중분류명이 존재하는지 조건을 걸어야 함.
            -- 1. 상위코드가 'MN00000'가 아닌 메뉴. 대분류 해당
            -- 2. 중분류와 메뉴를 구분해야 함.
            -- 3. 프로그램 ID가 있는 경우는 메뉴에 해당 됨.
            -- 4. 상위분류는 다르지만, 중분류가 같은 경우가 존재. 상위분류코드를 조건에 추가.
            SELECT A.MENU_ID
                 , A.UP_MENU_ID
              INTO C_MCLS_ID
                 , C_UP_MENU_ID
              FROM TB_SY_MENU A
             WHERE 1=1
               AND A.SYS_FG      = V_SYS_FG
               AND A.MENU_NM     = V_MCLS_NM
               AND A.UP_MENU_ID != 'MN00000'             
               AND A.PGM_ID     IS NULL
               AND A.UP_MENU_ID  = V_LCLS_ID            
            ;

            EXCEPTION 
                 WHEN NO_DATA_FOUND THEN

                    IF V_MENU_ID IS NULL THEN 

                        SELECT 'MN'||LPAD(SQ_TB_SY_MENU_MENU_ID.NEXTVAL,5,'0')
                          INTO C_MCLS_ID
                          FROM DUAL
                        ;
                        
                    ELSE
                        
                        C_MCLS_ID := V_MCLS_ID;

                    END IF;

                    C_ERR_CD  := '0022';
                    C_ERR_MSG := 'C_MCLS_ID::[' || C_MCLS_ID || ']';                    
    
    
                    INSERT INTO TB_SY_MENU
                    ( SYS_FG
                    , MENU_ID
                    , MENU_NM
                    , UP_MENU_ID
                    , USE_YN
                    , REGI_ID
                    , REGI_DTIME
                    , UPDT_ID
                    , UPDT_DTIME
                    )
                    VALUES
                    ( V_SYS_FG
                    , C_MCLS_ID
                    , V_MCLS_NM
                    , C_LCLS_ID
                    , 'Y'
                    , 'SYSTEM'
                    , SYSDATE
                    , 'SYSTEM'
                    , SYSDATE
                    );
    
        END;

        DBMS_OUTPUT.PUT_LINE('>>>>>중분류 생성 종료 >>>>>');

    END IF;


    C_ERR_CD  := '0030';
    C_ERR_MSG := 'V_MENU_NM::[' || V_MENU_NM || ']';

    -- 메뉴
    IF V_MENU_NM IS NOT NULL THEN

        DBMS_OUTPUT.PUT_LINE('>>>>>메뉴 생성 시작 >>>>>');

        BEGIN

            C_ERR_CD  := '0031';
    
            SELECT A.MENU_ID
              INTO C_MENU_ID
              FROM TB_SY_MENU A
             WHERE 1=1
               AND A.SYS_FG    = V_SYS_FG
               AND A.MENU_NM   = V_MENU_NM
               AND A.PGM_ID    = V_PGM_ID
            ;
    
            EXCEPTION 
                 WHEN NO_DATA_FOUND THEN
    
                    IF V_MENU_ID IS NULL THEN 

                        SELECT 'MN'||LPAD(SQ_TB_SY_MENU_MENU_ID.NEXTVAL,5,'0')
                          INTO C_MENU_ID
                          FROM DUAL
                        ;
                        
                    ELSE
                        
                        C_MENU_ID := V_MENU_ID;

                    END IF;

                    C_ERR_CD  := '0022';
                    C_ERR_MSG := 'C_MENU_ID::[' || C_MENU_ID || ']';  
    
    
                    INSERT INTO TB_SY_MENU
                    ( SYS_FG
                    , MENU_ID
                    , MENU_NM
                    , PGM_ID
                    , UP_MENU_ID
                    , SORT_ORD
                    , USE_YN
                    , REGI_ID
                    , REGI_DTIME
                    , UPDT_ID
                    , UPDT_DTIME
                    )
                    VALUES
                    ( V_SYS_FG
                    , C_MENU_ID
                    , V_MENU_NM
                    , V_PGM_ID
                    , C_MCLS_ID
                    , V_SORT_ORD
                    , 'Y'
                    , 'SYSTEM'
                    , SYSDATE
                    , 'SYSTEM'
                    , SYSDATE
                    );
    
        END;

        DBMS_OUTPUT.PUT_LINE('>>>>>메뉴 생성 종료 >>>>>');

    END IF;    


    C_ERR_CD  := '0040';
    C_ERR_MSG := 'V_PGM_ID::[' || V_PGM_ID || ']';

    -- 프로그램 생성
    IF V_PGM_ID IS NOT NULL THEN

        DBMS_OUTPUT.PUT_LINE('>>>>>프로그램 생성 시작 >>>>>');    

        BEGIN
    
            MERGE INTO TB_SY_PGM A
            USING DUAL 
               ON (     A.SYS_FG = V_SYS_FG
                    AND A.PGM_ID = V_PGM_ID )
             WHEN MATCHED THEN
           UPDATE 
              SET A.PGM_NM          = V_PGM_NM
                , A.PGM_URL         = CASE WHEN V_PGM_URL IS NULL THEN SUBSTR(V_PGM_ID,1,4) || '::' || V_PGM_ID
                                      ELSE V_PGM_URL END
                , SAVE_AUTH_USE_YN  = 'Y'
                , DEL_AUTH_USE_YN   = 'Y'
                , PRNT_AUTH_USE_YN  = 'Y'
                , CLOS_AUTH_USE_YN  = 'Y'
                , EXCEL_AUTH_USE_YN = 'Y'
                , USE_YN            = 'Y'
                , UPDT_DTIME        = SYSDATE
                , UPDT_ID           = 'SYSTEM'
             WHEN NOT MATCHED THEN
           INSERT 
                ( SYS_FG
                , PGM_ID
                , PGM_NM
                , PGM_URL
                , SAVE_AUTH_USE_YN
                , DEL_AUTH_USE_YN
                , PRNT_AUTH_USE_YN
                , CLOS_AUTH_USE_YN
                , EXCEL_AUTH_USE_YN
                , USE_YN
                , REGI_ID
                , REGI_DTIME
                , UPDT_ID
                , UPDT_DTIME
                )
           VALUES
                ( V_SYS_FG
                , V_PGM_ID
                , V_PGM_NM
                , CASE WHEN V_PGM_URL IS NULL THEN SUBSTR(V_PGM_ID,1,4) || '::' || V_PGM_ID
                  ELSE V_PGM_URL END
                , 'Y'
                , 'Y'
                , 'Y'
                , 'Y'
                , 'Y'
                , 'Y'
                , 'SYSTEM'  -- REGI_ID
                , SYSDATE   -- REGI_DTIME
                , 'SYSTEM'  -- UPDT_ID
                , SYSDATE   -- UPDT_DTIME
                );

        END;

        DBMS_OUTPUT.PUT_LINE('>>>>>프로그램 생성 종료 >>>>>');    

    END IF;    


    C_ERR_CD  := '0050';
    C_ERR_MSG := 'V_USER_ID::[' || V_USER_ID || ']';

    -- 사용자 프로그램 권한 생성
    IF V_USER_ID IS NOT NULL THEN

        DBMS_OUTPUT.PUT_LINE('>>>>>사용자 메뉴 권한 생성 시작 >>>>>');    

        BEGIN
    
            MERGE INTO TB_SY_USER_PGM A
            USING DUAL 
               ON (     A.USER_ID = V_USER_ID
                    AND A.SYS_FG  = V_SYS_FG
                    AND A.PGM_ID  = V_PGM_ID )
             WHEN MATCHED THEN
           UPDATE 
              SET SAVE_AUTH_YN  = 'Y'
                , DEL_AUTH_YN   = 'Y'
                , PRNT_AUTH_YN  = 'Y'
                , CLOS_AUTH_YN  = 'Y'
                , EXCEL_AUTH_YN = 'Y'
                , UPDT_DTIME    = SYSDATE
                , UPDT_ID       = 'SYSTEM'
             WHEN NOT MATCHED THEN
           INSERT 
                ( USER_ID
                , SYS_FG
                , PGM_ID
                , SAVE_AUTH_YN
                , DEL_AUTH_YN
                , PRNT_AUTH_YN
                , CLOS_AUTH_YN
                , EXCEL_AUTH_YN
                , REGI_ID
                , REGI_DTIME
                , UPDT_ID
                , UPDT_DTIME
                )
           VALUES
                ( V_USER_ID
                , V_SYS_FG
                , V_PGM_ID
                , 'Y'
                , 'Y'
                , 'Y'
                , 'Y'
                , 'Y'
                , 'SYSTEM'  -- REGI_ID
                , SYSDATE   -- REGI_DTIME
                , 'SYSTEM'  -- UPDT_ID
                , SYSDATE   -- UPDT_DTIME
                );
    
        END; 

        DBMS_OUTPUT.PUT_LINE('>>>>>사용자 메뉴 권한 생성 종료 >>>>>');    

    END IF;   

    COMMIT;    

    DBMS_OUTPUT.PUT_LINE('>>>>>END>>>>>');




EXCEPTION
     WHEN OTHERS THEN
        
        DBMS_OUTPUT.PUT_LINE('>>ERROR>>['||C_ERR_CD||'] ['||C_ERR_MSG||'] ['||SQLCODE||'] '|| SQLERRM || '@@@@@@@@@@@@@@@@@@@@@@@@@@@@');

        ROLLBACK;  
        RETURN;

END PR_MENU_CREATE;