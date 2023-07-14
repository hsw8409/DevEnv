

DECLARE 
    V_SYS_FG   VARCHAR2(100) := 'BOS';
    V_MENU_ID  VARCHAR2(100) := 'MN00001';
    V_LCLS_NM  VARCHAR2(100) := '기준정보';
    V_MCLS_NM  VARCHAR2(100) := '상품관리';
    V_MENU_NM  VARCHAR2(100) := '상품등록';
    V_PGM_ID   VARCHAR2(100) := 'BAVD0030';
    V_PGM_NM   VARCHAR2(100) := '상품등록';
    V_PGM_URL  VARCHAR2(100) := 'BAVD::BAVD0030';
    V_USER_ID  VARCHAR2(100) := 'astems';

BEGIN
    PR_MENU_CREATE ( V_SYS_FG 
                   , V_MENU_ID         
                   , V_LCLS_NM         
			       , V_MCLS_NM         
                   , V_MENU_NM         
                   , V_PGM_ID          
			       , V_PGM_NM          
			       , V_PGM_URL         
			       , V_USER_ID         
                   );


END;


DELETE FROM TB_SY_MENU;
DELETE FROM TB_SY_PGM;
DELETE FROM TB_SY_USER_PGM;


-- 메시지 생성
INSERT INTO TB_SY_MSG VALUES( 'M1000', '{0}', 'ERROR', 'Y', NULL, 'SYSTEM', SYSDATE, 'SYSTEM', SYSDATE);


-- 메뉴 생성, 프로그램 생성, 사용자 권한 부여.
EXEC PR_MENU_CREATE ('BOS',NULL,'시스템관리',NULL,'사용자',NULL,'점포사용자관리','2','SYUR0020','점포사용자등록',NULL,'astems');




UPDATE TB_SY_MENU SET MENU_IMG = 'INFO' WHERE MENU_NM = '기준정보'AND UP_MENU_ID = 'MN00000';
UPDATE TB_SY_MENU SET MENU_IMG = 'STORE' WHERE MENU_NM = '점포영업'AND UP_MENU_ID = 'MN00000';
UPDATE TB_SY_MENU SET MENU_IMG = 'BUSINESS' WHERE MENU_NM = '영업관리'AND UP_MENU_ID = 'MN00000';
UPDATE TB_SY_MENU SET MENU_IMG = 'CUSTOMER' WHERE MENU_NM = '고객/마케팅'AND UP_MENU_ID = 'MN00000';
UPDATE TB_SY_MENU SET MENU_IMG = 'SALES' WHERE MENU_NM = '매출관리'AND UP_MENU_ID = 'MN00000';
UPDATE TB_SY_MENU SET MENU_IMG = 'POSADMIN' WHERE MENU_NM = 'POS Admin'AND UP_MENU_ID = 'MN00000';
UPDATE TB_SY_MENU SET MENU_IMG = 'SYSTEM' WHERE MENU_NM = '시스템관리'AND UP_MENU_ID = 'MN00000';