create or replace PACKAGE PKG_MENU_MNG AS
/******************************************************************************
   NAME:        PKG_MENU_MNG
   PURPOSE:     메뉴 관련 FUNCTION, PROCEDURE
******************************************************************************/

    /***************************************************************************
      * PR_MENU_CRD                              -메뉴 생성
    ***************************************************************************/
    
    
    /**************************************************************************
    NAME:      PR_MENU_CRD
    PURPOSE:   메뉴 생성    
    REVISIONS:
    Ver        Date        Coder            Description
    ---------  ----------  ---------------  -----------------------------------
    1.0        2023-07-14  한상우           1. Created
    ***************************************************************************/
    PROCEDURE PR_MENU_CRD (
        vi_SysFg            IN VARCHAR2            -- 시스템 구분코드
      , vi_LclsId           IN VARCHAR2            -- 대분류ID(메뉴)
      , vi_LclsNm           IN VARCHAR2            -- 대분류명(메뉴)
      , vi_MclsId           IN VARCHAR2            -- 중분류ID(메뉴)
      , vi_MclsNm           IN VARCHAR2            -- 중분류명(메뉴)
      , vi_MenuId           IN VARCHAR2            -- 메뉴ID(메뉴)
      , vi_MenuNm           IN VARCHAR2            -- 메뉴명(메뉴)
      , vi_SortOrd          IN NUMBER              -- 정렬분선
      , vi_PgmId            IN VARCHAR2            -- 프로그램ID(프로그램)
      , vi_PgmNm            IN VARCHAR2            -- 프로그램명(프로그램)
      , vi_PgmUrl           IN VARCHAR2            -- 프로그램파일경로(프로그램)
      , vi_UserId           IN VARCHAR2            -- 메뉴 권한부여 사용자(메뉴)
    );  


    

END PKG_BU_MNG;