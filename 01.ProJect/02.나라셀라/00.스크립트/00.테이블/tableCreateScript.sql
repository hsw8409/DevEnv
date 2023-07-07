 /* ASIS_CUR_SALE_MENU */

DROP TABLE ASIS_CUR_SALE_MENU PURGE;

CREATE TABLE ASIS_CUR_SALE_MENU
(
  MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, MENU_NM                        VARCHAR2(500)                                NULL           
, GRT_CD                         VARCHAR2(3)                                  NULL           
, GRT_NM                         VARCHAR2(100)                                NULL           
, MID_CD                         VARCHAR2(6)                                  NULL           
, MID_NM                         VARCHAR2(100)                                NULL           
, SML_CD                         VARCHAR2(9)                                  NULL           
, SML_NM                         VARCHAR2(100)                                NULL           
, CUR_SALE_YN                    VARCHAR2(1)                                  NULL           
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  ASIS_CUR_SALE_MENU                                           IS 'ASIS 현재 판매중인 상품 목록(오픈준비';
COMMENT ON COLUMN ASIS_CUR_SALE_MENU.MENU_CD                                   IS '자재코드';
COMMENT ON COLUMN ASIS_CUR_SALE_MENU.MENU_NM                                   IS '자재명';
COMMENT ON COLUMN ASIS_CUR_SALE_MENU.GRT_CD                                    IS '대분류코드';
COMMENT ON COLUMN ASIS_CUR_SALE_MENU.GRT_NM                                    IS '대분류명';
COMMENT ON COLUMN ASIS_CUR_SALE_MENU.MID_CD                                    IS '중분류코드';
COMMENT ON COLUMN ASIS_CUR_SALE_MENU.MID_NM                                    IS '중분류명';
COMMENT ON COLUMN ASIS_CUR_SALE_MENU.SML_CD                                    IS '소분류코드';
COMMENT ON COLUMN ASIS_CUR_SALE_MENU.SML_NM                                    IS '소분류명';
COMMENT ON COLUMN ASIS_CUR_SALE_MENU.CUR_SALE_YN                               IS '현재판매여부';


 /* ASIS_HCD_PRODM_T */

DROP TABLE ASIS_HCD_PRODM_T PURGE;

CREATE TABLE ASIS_HCD_PRODM_T
(
  PROD_CD                        VARCHAR2(26)                                 NOT NULL       
, LCLS_CD                        VARCHAR2(4)                                  NOT NULL       
, MCLS_CD                        VARCHAR2(6)                                  NOT NULL       
, SCLS_CD                        VARCHAR2(8)                                  NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  ASIS_HCD_PRODM_T                                             IS '';
COMMENT ON COLUMN ASIS_HCD_PRODM_T.PROD_CD                                     IS '';
COMMENT ON COLUMN ASIS_HCD_PRODM_T.LCLS_CD                                     IS '';
COMMENT ON COLUMN ASIS_HCD_PRODM_T.MCLS_CD                                     IS '';
COMMENT ON COLUMN ASIS_HCD_PRODM_T.SCLS_CD                                     IS '';


 /* IF_OMCUSA_INCS_PUR_PRFR_AGG_S */

DROP TABLE IF_OMCUSA_INCS_PUR_PRFR_AGG_S PURGE;

CREATE TABLE IF_OMCUSA_INCS_PUR_PRFR_AGG_S
(
  EAIF_DT                        VARCHAR2(8)                                  NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, PRFR_AGG_STND_YRMN             VARCHAR2(6)                                  NOT NULL       
, CH_CD                          VARCHAR2(3)                                  NULL           
, OSLM_CUST_GRD_CHG_TP_CD        VARCHAR2(2)                                  NULL           
, OSLM_PRFR_GRP_NO               NUMBER(22,0)                                 NOT NULL       
, EAIF_TRMS_UNIT_CNT             NUMBER(7,0)                                  NULL           
, EAI_IF_CRE_DTTM                DATE                                         NULL           
, EAIF_RSLT_CD                   VARCHAR2(1)                                  NULL           
, EAIF_RSLT_MSG                  VARCHAR2(2000)                               NULL           
, FSCR_ID                        VARCHAR2(20)   DEFAULT 'OPT'                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(20)   DEFAULT 'OPT'                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_F_OMCUSA_INCS_PUR_PRFR_AGG_ PRIMARY KEY (
    EAIF_DT, EAIF_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_OMCUSA_INCS_PUR_PRFR_AGG_S                                IS '오설록 고객구매실적집계 송신';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.EAIF_DT                        IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.EAIF_SN                        IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.PRFR_AGG_STND_YRMN             IS '실적집계기준년월';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.CH_CD                          IS '경로구분코드';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.OSLM_CUST_GRD_CHG_TP_CD        IS '통합고객등급변경유형코드';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.OSLM_PRFR_GRP_NO               IS '오설록몰실적그룹번호 ( 경로별 송신 UNIQUE KEY )';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.EAIF_TRMS_UNIT_CNT             IS 'EAI인터페이스전송단위수';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.EAI_IF_CRE_DTTM                IS 'EAI인터페이스생성일시';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.EAIF_RSLT_CD                   IS 'EAI인터페이스결과코드';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.EAIF_RSLT_MSG                  IS 'EAI인터페이스결과메시지';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.FSCR_ID                        IS '최초생성ID';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.FSCR_TSP                       IS '최초생성시각';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.LSCH_ID                        IS '최종변경ID';
COMMENT ON COLUMN IF_OMCUSA_INCS_PUR_PRFR_AGG_S.LSCH_TSP                       IS '최종변경시각';


 /* IF_OMCUSI_INCS_GRD_SND_R */

DROP TABLE IF_OMCUSI_INCS_GRD_SND_R PURGE;

CREATE TABLE IF_OMCUSI_INCS_GRD_SND_R
(
  EAIF_DT                        VARCHAR2(8)                                  NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, INCS_NO                        NUMBER(9,0)                                  NULL           
, INCS_GRD_CD                    VARCHAR2(20)                                 NULL           
, INCS_GRD_NM                    VARCHAR2(300)                                NULL           
, OSLM_CUST_GRD_CHG_TP_CD        VARCHAR2(2)                                  NULL           
, FSCR_ID                        VARCHAR2(20)   DEFAULT 'EAI_INCS_GRD_SND'    NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(20)   DEFAULT 'EAI_INCS_GRD_SND'    NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_IF_OMCUSI_INCS_GRD_SND_R PRIMARY KEY (
    EAIF_DT, EAIF_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_OMCUSI_INCS_GRD_SND_R                                     IS '오설록몰 고객등급 수신';
COMMENT ON COLUMN IF_OMCUSI_INCS_GRD_SND_R.EAIF_DT                             IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_OMCUSI_INCS_GRD_SND_R.EAIF_SN                             IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_OMCUSI_INCS_GRD_SND_R.INCS_NO                             IS '통합고객번호';
COMMENT ON COLUMN IF_OMCUSI_INCS_GRD_SND_R.INCS_GRD_CD                         IS '통합고객등급코드';
COMMENT ON COLUMN IF_OMCUSI_INCS_GRD_SND_R.INCS_GRD_NM                         IS '통합고객등급명';
COMMENT ON COLUMN IF_OMCUSI_INCS_GRD_SND_R.OSLM_CUST_GRD_CHG_TP_CD             IS '오설록몰고객등급변경유형코드';
COMMENT ON COLUMN IF_OMCUSI_INCS_GRD_SND_R.FSCR_ID                             IS '최초생성ID';
COMMENT ON COLUMN IF_OMCUSI_INCS_GRD_SND_R.FSCR_TSP                            IS '최초생성시각';
COMMENT ON COLUMN IF_OMCUSI_INCS_GRD_SND_R.LSCH_ID                             IS '최종변경ID';
COMMENT ON COLUMN IF_OMCUSI_INCS_GRD_SND_R.LSCH_TSP                            IS '최종변경시각';


 /* IF_OMCUSI_INCS_PUR_PRFR_S */

DROP TABLE IF_OMCUSI_INCS_PUR_PRFR_S PURGE;

CREATE TABLE IF_OMCUSI_INCS_PUR_PRFR_S
(
  EAIF_DT                        VARCHAR2(8)                                  NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, PRFR_AGG_STND_YRMN             VARCHAR2(6)                                  NULL           
, CH_CD                          VARCHAR2(3)                                  NULL           
, INCS_NO                        NUMBER(9,0)                                  NULL           
, CUST_STLM_AMT                  NUMBER(22,0)                                 NULL           
, USG_BT_PT                      NUMBER(22,0)                                 NULL           
, OSLM_CUST_GRD_CHG_TP_CD        VARCHAR2(2)                                  NULL           
, OSLM_PRFR_GRP_NO               NUMBER(22,0)                                 NULL           
, EAI_IF_CRE_DTTM                DATE                                         NULL           
, EAIF_RSLT_CD                   VARCHAR2(1)                                  NULL           
, EAIF_RSLT_MSG                  VARCHAR2(2000)                               NULL           
, FSCR_ID                        VARCHAR2(20)   DEFAULT 'OPT'                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(20)   DEFAULT 'OPT'                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_IF_OMCUSI_INCS_PUR_PRFR_S PRIMARY KEY (
    EAIF_DT, EAIF_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_OMCUSI_INCS_PUR_PRFR_S                                    IS '오설록몰 구매실적 송신';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.EAIF_DT                            IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.EAIF_SN                            IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.PRFR_AGG_STND_YRMN                 IS '실적집계기준년월';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.CH_CD                              IS '경로구분코드';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.INCS_NO                            IS '통합고객번호';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.CUST_STLM_AMT                      IS '고객결제금액(현금성구매금액)';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.USG_BT_PT                          IS '사용뷰티포인트';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.OSLM_CUST_GRD_CHG_TP_CD            IS '오설록몰고객등급변경유형코드';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.OSLM_PRFR_GRP_NO                   IS '오설록몰실적그룹번호 ( 경로별 송신 UNIQUE KEY )';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.EAI_IF_CRE_DTTM                    IS 'EAI인터페이스생성일시';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.EAIF_RSLT_CD                       IS 'EAI인터페이스결과코드';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.EAIF_RSLT_MSG                      IS 'EAI인터페이스결과메시지';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.FSCR_ID                            IS '최초생성ID';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.FSCR_TSP                           IS '최초생성시각';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.LSCH_ID                            IS '최종변경ID';
COMMENT ON COLUMN IF_OMCUSI_INCS_PUR_PRFR_S.LSCH_TSP                           IS '최종변경시각';


 /* IF_OMCUSI_INCS_SND_R */

DROP TABLE IF_OMCUSI_INCS_SND_R PURGE;

CREATE TABLE IF_OMCUSI_INCS_SND_R
(
  EAIF_DT                        VARCHAR2(8)                                  NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, INCS_NO                        NUMBER(9,0)                                  NULL           
, OSLM_CUST_GRD_CHG_TP_CD        VARCHAR2(2)                                  NULL           
, OSLM_CUST_GRD_CD               VARCHAR2(20)                                 NULL           
, CUST_GRD_NM                    VARCHAR2(300)                                NULL           
, CUST_JOIN_DT                   VARCHAR2(8)                                  NULL           
, CUST_WT_DT                     VARCHAR2(8)                                  NULL           
, FSCR_ID                        VARCHAR2(20)   DEFAULT 'EAI_INCS_SND'        NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(20)   DEFAULT 'EAI_INCS_SND'        NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_IF_OMCUSI_INCS_SND_R PRIMARY KEY (
    EAIF_DT, EAIF_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_OMCUSI_INCS_SND_R                                         IS '오설록몰 회원정보변경 수신';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.EAIF_DT                                 IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.EAIF_SN                                 IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.INCS_NO                                 IS '통합고객번호';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.OSLM_CUST_GRD_CHG_TP_CD                 IS '오설록몰고객등급변경유형코드';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.OSLM_CUST_GRD_CD                        IS '고객변경등급코드 (변경유형코드: 03관리자 등급변경일경우)';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.CUST_GRD_NM                             IS '고객변경등급명 (변경유형코드: 03관리자 등급변경일경우)';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.CUST_JOIN_DT                            IS '회원가입일자(02:회원가입 일때 )';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.CUST_WT_DT                              IS '회원탈퇴일자(04:회원탈퇴 일때)';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.FSCR_ID                                 IS '최초생성ID';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.FSCR_TSP                                IS '최초생성시각';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.LSCH_ID                                 IS '최종변경ID';
COMMENT ON COLUMN IF_OMCUSI_INCS_SND_R.LSCH_TSP                                IS '최종변경시각';


 /* IF_OMCUSI_INTG_RSVT_SAL_SND */

DROP TABLE IF_OMCUSI_INTG_RSVT_SAL_SND PURGE;

CREATE TABLE IF_OMCUSI_INTG_RSVT_SAL_SND
(
  RSVT_NO                        VARCHAR2(15)                                 NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, SALE_FG                        VARCHAR2(2)                                  NOT NULL       
, SALE_FG_NM                     VARCHAR2(30)                                 NOT NULL       
, OSLM_RSVT_PUR_TYPE_CD          VARCHAR2(20)                                 NOT NULL       
, OSLM_RSVT_PUR_TYPE_NM          VARCHAR2(20)                                 NOT NULL       
, RSVT_DT                        VARCHAR2(8)                                  NOT NULL       
, SHOP_CD                        VARCHAR2(10)                                 NOT NULL       
, SHOP_NM                        VARCHAR2(100)                                NOT NULL       
, VST_DTTM                       VARCHAR2(14)                                 NOT NULL       
, OSLM_STMT_CD                   VARCHAR2(60)                                 NOT NULL       
, OSLM_STMT_NM                   VARCHAR2(100)                                NOT NULL       
, APVL_DT                        VARCHAR2(8)                                  NOT NULL       
, APVL_NO                        VARCHAR2(10)                                 NOT NULL       
, APVL_AMT                       NUMBER(22,0)                                 NOT NULL       
, ITM_CD                         VARCHAR2(12)                                 NOT NULL       
, ITM_NM                         VARCHAR2(500)                                NOT NULL       
, SALE_PRC                       NUMBER(22,0)                                 NOT NULL       
, SALE_QTY                       NUMBER(22,0)                                 NOT NULL       
, TOT_AMT                        NUMBER(22,0)                                 NOT NULL       
, DC_AMT                         NUMBER(22,0)                                 NOT NULL       
, SALE_AMT                       NUMBER(22,0)                                 NOT NULL       
, VAT_AMT                        NUMBER(22,0)                                 NOT NULL       
, PENALTY_AMT                    NUMBER(22,0)                                 NOT NULL       
, FSCR_ID                        VARCHAR2(50)                                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(50)                                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_OMCUSI_INTG_RSVT_SAL_SND PRIMARY KEY (
    RSVT_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_OMCUSI_INTG_RSVT_SAL_SND                                  IS '통합예약매출 송신';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.RSVT_NO                          IS '예약번호(직영몰PK)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.SALE_DATE                        IS '매출발생일자(SAP매출발생일) YYYYMMDD';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.SALE_FG                          IS '매출구분(10-확정(매출), 30-위약매출, 20-취소(전체), 11-확정(부분취소))';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.SALE_FG_NM                       IS '매출구분명(SAP 매출발생된 건 기준)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.OSLM_RSVT_PUR_TYPE_CD            IS '오설록몰예약구매종류코드(ON-온라인예약, ADM-관리자예약)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.OSLM_RSVT_PUR_TYPE_NM            IS '오설록몰예약구매종류명';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.RSVT_DT                          IS '예약일자 YYYYMMDD';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.SHOP_CD                          IS '매장코드 (SAP 거래처코드)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.SHOP_NM                          IS '매장명';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.VST_DTTM                         IS '방문일시 YYYYMMDDHH24MISS';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.OSLM_STMT_CD                     IS '오설록몰결제방법코드';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.OSLM_STMT_NM                     IS '오설록몰결제방법명';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.APVL_DT                          IS '승인일자 YYYYMMDD';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.APVL_NO                          IS '승인번호';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.APVL_AMT                         IS '승인금액';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.ITM_CD                           IS '상품코드';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.ITM_NM                           IS '상품명';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.SALE_PRC                         IS '단가';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.SALE_QTY                         IS '상품수량 (매출확정인원)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.TOT_AMT                          IS '판매금액';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.DC_AMT                           IS '할인금액';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.SALE_AMT                         IS '매출금액';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.VAT_AMT                          IS '부가세금액 (매출금액에 포함된 부가세액)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.PENALTY_AMT                      IS '위약금액';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.FSCR_ID                          IS '최초생성ID';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.FSCR_TSP                         IS '최초생성시각';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.LSCH_ID                          IS '최종변경ID';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND.LSCH_TSP                         IS '최종변경시각';


 /* IF_OMCUSI_INTG_RSVT_SAL_SND_R */

DROP TABLE IF_OMCUSI_INTG_RSVT_SAL_SND_R PURGE;

CREATE TABLE IF_OMCUSI_INTG_RSVT_SAL_SND_R
(
  EAIF_DT                        VARCHAR2(8)                                  NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, EAIF_RSLT_CD                   VARCHAR2(1)                                  NOT NULL       
, EAIF_RSLT_MSG                  VARCHAR2(2000)                               NOT NULL       
, SALE_FG                        VARCHAR2(2)                                  NOT NULL       
, SALE_FG_NM                     VARCHAR2(30)                                 NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, RSVT_NO                        VARCHAR2(15)                                 NOT NULL       
, OSLM_RSVT_PUR_TYPE_CD          VARCHAR2(20)                                 NOT NULL       
, OSLM_RSVT_PUR_TYPE_NM          VARCHAR2(20)                                 NOT NULL       
, RSVT_DT                        VARCHAR2(8)                                  NOT NULL       
, SHOP_CD                        VARCHAR2(10)                                 NOT NULL       
, SHOP_NM                        VARCHAR2(100)                                NOT NULL       
, VST_DTTM                       VARCHAR2(14)                                 NOT NULL       
, OSLM_STMT_CD                   VARCHAR2(60)                                 NOT NULL       
, OSLM_STMT_NM                   VARCHAR2(100)                                NOT NULL       
, APVL_DT                        VARCHAR2(8)                                  NOT NULL       
, APVL_NO                        VARCHAR2(10)                                 NOT NULL       
, APVL_AMT                       NUMBER(22,0)                                 NOT NULL       
, ITM_CD                         VARCHAR2(12)                                 NOT NULL       
, ITM_NM                         VARCHAR2(500)                                NOT NULL       
, SALE_PRC                       NUMBER(22,0)                                 NOT NULL       
, SALE_QTY                       NUMBER(22,0)                                 NOT NULL       
, TOT_AMT                        NUMBER(22,0)                                 NOT NULL       
, DC_AMT                         NUMBER(22,0)                                 NOT NULL       
, SALE_AMT                       NUMBER(22,0)                                 NOT NULL       
, VAT_AMT                        NUMBER(22,0)                                 NOT NULL       
, PENALTY_AMT                    NUMBER(22,0)                                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
, REGI_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_F_OMCUSI_INTG_RSVT_SAL_SND_ PRIMARY KEY (
    EAIF_DT, EAIF_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_OMCUSI_INTG_RSVT_SAL_SND_R                                IS '통합예약매출 송신';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.EAIF_DT                        IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.EAIF_SN                        IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.EAIF_RSLT_CD                   IS 'EAI인터페이스결과코드';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.EAIF_RSLT_MSG                  IS 'EAI인터페이스결과메시지';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.SALE_FG                        IS '매출구분(10-확정(매출), 30-위약매출, 20-취소(전체), 11-확정(부분취소))';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.SALE_FG_NM                     IS '매출구분명(SAP 매출발생된 건 기준)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.SALE_DATE                      IS '매출발생일자(SAP매출발생일) YYYYMMDD';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.RSVT_NO                        IS '예약번호(직영몰PK)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.OSLM_RSVT_PUR_TYPE_CD          IS '오설록몰예약구매종류코드(ON-온라인예약, ADM-관리자예약)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.OSLM_RSVT_PUR_TYPE_NM          IS '오설록몰예약구매종류명';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.RSVT_DT                        IS '예약일자 YYYYMMDD';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.SHOP_CD                        IS '매장코드 (SAP 거래처코드)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.SHOP_NM                        IS '매장명';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.VST_DTTM                       IS '방문일시 YYYYMMDDHH24MISS';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.OSLM_STMT_CD                   IS '오설록몰결제방법코드';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.OSLM_STMT_NM                   IS '오설록몰결제방법명';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.APVL_DT                        IS '승인일자 YYYYMMDD';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.APVL_NO                        IS '승인번호';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.APVL_AMT                       IS '승인금액';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.ITM_CD                         IS '상품코드';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.ITM_NM                         IS '상품명';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.SALE_PRC                       IS '단가';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.SALE_QTY                       IS '상품수량 (매출확정인원)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.TOT_AMT                        IS '판매금액';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.DC_AMT                         IS '할인금액';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.SALE_AMT                       IS '매출금액';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.VAT_AMT                        IS '부가세금액 (매출금액에 포함된 부가세액)';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.PENALTY_AMT                    IS '위약금액';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.LSCH_TSP                       IS '최종변경시각';
COMMENT ON COLUMN IF_OMCUSI_INTG_RSVT_SAL_SND_R.REGI_DTIME                     IS '데이터 생성시간(기본값:SYSTIMESTAMP로 입력해주세요.)';


 /* IF_OPPDSH_PROD_PRICE */

DROP TABLE IF_OPPDSH_PROD_PRICE PURGE;

CREATE TABLE IF_OPPDSH_PROD_PRICE
(
  PRD_CD                         VARCHAR2(36)                                 NOT NULL       
, PRC_TP_CD                      VARCHAR2(6)                                  NOT NULL       
, CURR_CD                        VARCHAR2(9)                                  NOT NULL       
, MGNT_SORG_CD                   VARCHAR2(24)                                 NOT NULL       
, HIST_END_DT                    VARCHAR2(24)                                 NOT NULL       
, HIST_BGN_DT                    VARCHAR2(24)                                 NULL           
, MGNT_SLS_ORG_LVL_CD            VARCHAR2(6)                                  NULL           
, STD_AMT                        NUMBER(22,2)                                 NOT NULL       
, SUPP_AMT                       NUMBER(22,2)                                 NOT NULL       
, VAT_AMT                        NUMBER(22,2)                                 NOT NULL       
, SPTX_AMT                       NUMBER(22,2)                                 NOT NULL       
, SCTX_AMT                       NUMBER(22,2)                                 NOT NULL       
, EDTX_AMT                       NUMBER(22,2)                                 NOT NULL       
, FSTX_AMT                       NUMBER(22,2)                                 NOT NULL       
, DEL_YN                         VARCHAR2(3)                                  NULL           
, EAIF_DT                        VARCHAR2(24)                                 NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, FSCR_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_IF_OPPDSH_PROD_PRICE PRIMARY KEY (
    PRD_CD, PRC_TP_CD, CURR_CD, MGNT_SORG_CD, HIST_END_DT
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_OPPDSH_PROD_PRICE                                         IS '오설록 EAI 판매가이력 수신마스터';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.PRD_CD                                  IS '상품코드';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.PRC_TP_CD                               IS '가격유형코드';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.CURR_CD                                 IS '통화코드';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.MGNT_SORG_CD                            IS '관리영업조직코드';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.HIST_END_DT                             IS '이력종료일자';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.HIST_BGN_DT                             IS '이력시작일자';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.MGNT_SLS_ORG_LVL_CD                     IS '관리영업조직레벨코드';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.STD_AMT                                 IS '표준금액';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.SUPP_AMT                                IS '공급금액';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.VAT_AMT                                 IS '부가세금액';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.SPTX_AMT                                IS '특별소비세금액';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.SCTX_AMT                                IS '개별소비세금액';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.EDTX_AMT                                IS '교육세금액';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.FSTX_AMT                                IS '농어촌특별세금액';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.DEL_YN                                  IS '삭제여부';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.EAIF_DT                                 IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.EAIF_SN                                 IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.FSCR_ID                                 IS '최초생성ID';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.FSCR_TSP                                IS '최초생성시각';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.LSCH_ID                                 IS '최종변경ID';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE.LSCH_TSP                                IS '최종변경시각';


 /* IF_OPPDSH_PROD_PRICE_L */

DROP TABLE IF_OPPDSH_PROD_PRICE_L PURGE;

CREATE TABLE IF_OPPDSH_PROD_PRICE_L
(
  EAIF_DT                        VARCHAR2(24)                                 NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, PROC_YN                        VARCHAR2(3)                                  NOT NULL       
, ERR_YN                         VARCHAR2(3)                                  NOT NULL       
, ERR_MSG                        CLOB                                         NULL           
, FSCR_ID                        VARCHAR2(150)                                NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(150)                                NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_OPPDSH_PROD_PRICE_L                                       IS '오설록 EAI 판매가이력 수신마스터 처리로그';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE_L.EAIF_DT                               IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE_L.EAIF_SN                               IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE_L.PROC_YN                               IS '처리여부';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE_L.ERR_YN                                IS '오류여부';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE_L.ERR_MSG                               IS '오류내용';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE_L.FSCR_ID                               IS '최초생성ID';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE_L.FSCR_TSP                              IS '최초생성시각';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE_L.LSCH_ID                               IS '최종변경ID';
COMMENT ON COLUMN IF_OPPDSH_PROD_PRICE_L.LSCH_TSP                              IS '최종변경시각';


 /* IF_OPPDSM_SET_PROD */

DROP TABLE IF_OPPDSM_SET_PROD PURGE;

CREATE TABLE IF_OPPDSM_SET_PROD
(
  SET_PRD_CD                     VARCHAR2(36)                                 NOT NULL       
, SET_PRD_COMP_NO                VARCHAR2(12)                                 NOT NULL       
, PLNT_CD                        VARCHAR2(12)                                 NOT NULL       
, COMP_PRD_CD                    VARCHAR2(36)                                 NULL           
, CP_PRD_YN                      VARCHAR2(3)                                  NULL           
, SET_COMP_QTY                   NUMBER(10,0)                                 NOT NULL       
, GF_YN                          VARCHAR2(3)                                  NULL           
, EAIF_DT                        VARCHAR2(24)                                 NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, FSCR_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_IF_OPPDSM_SET_PROD PRIMARY KEY (
    SET_PRD_CD, SET_PRD_COMP_NO, PLNT_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_OPPDSM_SET_PROD                                           IS '오설록 EAI 세트상품 구성상품 수신마스터';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.SET_PRD_CD                                IS '세트상품코드';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.SET_PRD_COMP_NO                           IS '세트상품구성번호';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.PLNT_CD                                   IS '플랜트코드';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.COMP_PRD_CD                               IS '구성상품코드';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.CP_PRD_YN                                 IS '자사상품여부';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.SET_COMP_QTY                              IS '세트구성수량';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.GF_YN                                     IS '증정품여부';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.EAIF_DT                                   IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.EAIF_SN                                   IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.FSCR_ID                                   IS '최초생성ID';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.FSCR_TSP                                  IS '최초생성시각';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.LSCH_ID                                   IS '최종변경ID';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD.LSCH_TSP                                  IS '최종변경시각';


 /* IF_OPPDSM_SET_PROD_L */

DROP TABLE IF_OPPDSM_SET_PROD_L PURGE;

CREATE TABLE IF_OPPDSM_SET_PROD_L
(
  EAIF_DT                        VARCHAR2(24)                                 NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, PROC_YN                        VARCHAR2(3)                                  NOT NULL       
, ERR_YN                         VARCHAR2(3)                                  NOT NULL       
, ERR_MSG                        CLOB                                         NULL           
, FSCR_ID                        VARCHAR2(150)                                NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(150)                                NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_OPPDSM_SET_PROD_L                                         IS '오설록 EAI 세트메뉴 구성 수신마스터 처리로그';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD_L.EAIF_DT                                 IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD_L.EAIF_SN                                 IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD_L.PROC_YN                                 IS '처리여부';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD_L.ERR_YN                                  IS '오류여부';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD_L.ERR_MSG                                 IS '오류내용';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD_L.FSCR_ID                                 IS '최초생성ID';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD_L.FSCR_TSP                                IS '최초생성시각';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD_L.LSCH_ID                                 IS '최종변경ID';
COMMENT ON COLUMN IF_OPPDSM_SET_PROD_L.LSCH_TSP                                IS '최종변경시각';


 /* IF_SMSDB_KKO_MSG_S */

DROP TABLE IF_SMSDB_KKO_MSG_S PURGE;

CREATE TABLE IF_SMSDB_KKO_MSG_S
(
  REQDATE                        TIMESTAMP(7)                                 NOT NULL       
, SERIALNUM                      NUMBER(4,0)                                  NOT NULL       
, STATUS                         VARCHAR2(2)                                  NOT NULL       
, ID                             VARCHAR2(16)                                 NULL           
, PHONE                          VARCHAR2(16)                                 NOT NULL       
, CALLBACK                       VARCHAR2(16)                                 NOT NULL       
, MSG                            VARCHAR2(4000)                               NULL           
, TEMPLATE_CODE                  VARCHAR2(10)                                 NOT NULL       
, FAILED_TYPE                    VARCHAR2(3)                                  NULL           
, FAILED_SUBJECT                 VARCHAR2(160)                                NULL           
, FAILED_MSG                     VARCHAR2(4000)                               NULL           
, PROFILE_KEY                    VARCHAR2(100)                                NOT NULL       
, URL                            VARCHAR2(1000)                               NULL           
, URL_BUTTON_TXT                 VARCHAR2(160)                                NULL           
, APPL_CL_CD                     VARCHAR2(3)                                  NULL           
, EAI_CD                         VARCHAR2(1)                                  NULL           
, EAI_IF_MSG                     VARCHAR2(2000)                               NULL           
, CONSTRAINT PK_IF_SMSDB_KKO_MSG_S PRIMARY KEY (
    REQDATE, SERIALNUM
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_SMSDB_KKO_MSG_S                                           IS '오설록POS 알림톡발송';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.REQDATE                                   IS '메시지를 전송할 시간';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.SERIALNUM                                 IS '메시지발송 순번(Null이여도 됨)';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.STATUS                                    IS '발송상태(1: 발송대기, 2: 전송완료, 3:결과수신완료, 6 : 메시지 큐에 입력 4:Failback 결과 수신완료)';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.ID                                        IS '고객이 발급한 SubID(정산아이디)';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.PHONE                                     IS '수신할 핸드폰 번호';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.CALLBACK                                  IS '송신자 전화번호';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.MSG                                       IS '전송할 메시지';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.TEMPLATE_CODE                             IS '카카오 알림톡 템플릿 코드';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.FAILED_TYPE                               IS '전송실패 메시지 타입(SMS: SMS재전송, LMS: LMS재전송, MMS: MMS재전송, NO  재전송 없음)';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.FAILED_SUBJECT                            IS '전송실패 제목(SMS는 불필요)';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.FAILED_MSG                                IS '전송실패 메시지 (SMS: SMS재전송, LMS: LMS재전송, MMS: MMS재전송, NO  재전송 없음)';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.PROFILE_KEY                               IS '프로파일키(CJ 측으로 부터 발급)';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.URL                                       IS '카카오알림톡 버튼 타입 URL';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.URL_BUTTON_TXT                            IS '카카오알림톡 버튼 타입 버튼 TEXT';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.APPL_CL_CD                                IS '어플리케이션구분코드 (예-CST) Null 이여도 됨';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.EAI_CD                                    IS 'EAI인터페이스처리구분코드:(COM_CAT_CD:10167)';
COMMENT ON COLUMN IF_SMSDB_KKO_MSG_S.EAI_IF_MSG                                IS 'EAI인터페이스메시지';


 /* IF_SMSDB_MMS_MSG_S */

DROP TABLE IF_SMSDB_MMS_MSG_S PURGE;

CREATE TABLE IF_SMSDB_MMS_MSG_S
(
  REQDATE                        TIMESTAMP(7)                                 NOT NULL       
, SERIALNUM                      NUMBER(4,0)                                  NOT NULL       
, STATUS                         VARCHAR2(2)                                  NOT NULL       
, ID                             VARCHAR2(16)                                 NULL           
, TYPE                           VARCHAR2(1)                                  NOT NULL       
, PHONE                          VARCHAR2(16)                                 NOT NULL       
, CALLBACK                       VARCHAR2(16)                                 NOT NULL       
, SUBJECT                        VARCHAR2(50)                                 NULL           
, MSG                            VARCHAR2(4000)                               NULL           
, FILE_CNT                       NUMBER(4,0)                                  NOT NULL       
, APPL_CL_CD                     VARCHAR2(3)                                  NULL           
, EAI_CD                         VARCHAR2(1)                                  NULL           
, EAI_IF_MSG                     VARCHAR2(2000)                               NULL           
, CONSTRAINT PK_IF_SMSDB_MMS_MSG_S PRIMARY KEY (
    REQDATE, SERIALNUM
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_SMSDB_MMS_MSG_S                                           IS '오설록POS MMS발송';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.REQDATE                                   IS '메시지를 전송할 시간';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.SERIALNUM                                 IS '메시지발송 순번(Null이여도 됨)';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.STATUS                                    IS '발송상태(1: 발송대기, 2: 전송완료, 3:결과수신완료, 6 : 메시지 큐에 입력 4:Failback 결과 수신완료)';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.ID                                        IS '고객이 발급한 SubID(정산아이디)';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.TYPE                                      IS '문자전송형태(0: 일반메시지, 1 : 콜백 URL 메시지, 2:동보 일반메시지, 3: 동보 콜백 URL 메시지)';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.PHONE                                     IS '수신할 핸드폰 번호';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.CALLBACK                                  IS '송신자 전화번호';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.SUBJECT                                   IS '제목';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.MSG                                       IS '전송할 메시지';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.FILE_CNT                                  IS '전송파일 개수 (메시지도 1개의 파일로 포함)';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.APPL_CL_CD                                IS '어플리케이션구분코드 (예-CST) Null 이여도 됨';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.EAI_CD                                    IS 'EAI인터페이스처리구분코드:(COM_CAT_CD:10167)';
COMMENT ON COLUMN IF_SMSDB_MMS_MSG_S.EAI_IF_MSG                                IS 'EAI인터페이스메시지';


 /* IF_SMSDB_SMS_MSG_S */

DROP TABLE IF_SMSDB_SMS_MSG_S PURGE;

CREATE TABLE IF_SMSDB_SMS_MSG_S
(
  REQDATE                        TIMESTAMP(7)                                 NOT NULL       
, SERIALNUM                      NUMBER(4,0)                                  NOT NULL       
, STATUS                         VARCHAR2(1)                                  NOT NULL       
, ID                             VARCHAR2(16)                                 NULL           
, TYPE                           VARCHAR2(1)                                  NOT NULL       
, PHONE                          VARCHAR2(16)                                 NOT NULL       
, CALLBACK                       VARCHAR2(16)                                 NOT NULL       
, MSG                            VARCHAR2(160)                                NOT NULL       
, APPL_CL_CD                     VARCHAR2(3)                                  NOT NULL       
, EAI_CD                         VARCHAR2(1)                                  NULL           
, EAI_IF_MSG                     VARCHAR2(2000)                               NULL           
, CONSTRAINT PK_IF_SMSDB_SMS_MSG_S PRIMARY KEY (
    REQDATE, SERIALNUM
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_SMSDB_SMS_MSG_S                                           IS '오설록POS SMS발송';
COMMENT ON COLUMN IF_SMSDB_SMS_MSG_S.REQDATE                                   IS '메시지를 전송할 시간, 미래 시간을 넣으면 예약 발송됨';
COMMENT ON COLUMN IF_SMSDB_SMS_MSG_S.SERIALNUM                                 IS '메시지발송 순번(Null이 여도 됨)';
COMMENT ON COLUMN IF_SMSDB_SMS_MSG_S.STATUS                                    IS '발송상태(1: 발송대기, 2: 전송완료, 3:결과수신완료)';
COMMENT ON COLUMN IF_SMSDB_SMS_MSG_S.ID                                        IS '고객이 발급한 SubID';
COMMENT ON COLUMN IF_SMSDB_SMS_MSG_S.TYPE                                      IS '문자전송형태(0: 일반메시지, 1 : 콜백 URL 메시지, 2:동보 일반메시지, 3: 동보 콜백 URL 메시지)';
COMMENT ON COLUMN IF_SMSDB_SMS_MSG_S.PHONE                                     IS '수신할 핸드폰 번호';
COMMENT ON COLUMN IF_SMSDB_SMS_MSG_S.CALLBACK                                  IS '송신자 전화번호';
COMMENT ON COLUMN IF_SMSDB_SMS_MSG_S.MSG                                       IS '전송할 메시지';
COMMENT ON COLUMN IF_SMSDB_SMS_MSG_S.APPL_CL_CD                                IS '어플리케이션구분코드 (예-CST ) Null 이여도 됨';
COMMENT ON COLUMN IF_SMSDB_SMS_MSG_S.EAI_CD                                    IS 'EAI인터페이스처리구분코드:(COM_CAT_CD:10167)';
COMMENT ON COLUMN IF_SMSDB_SMS_MSG_S.EAI_IF_MSG                                IS 'EAI인터페이스메시지';


 /* IF_TB_BM_MENU */

DROP TABLE IF_TB_BM_MENU PURGE;

CREATE TABLE IF_TB_BM_MENU
(
  PRD_CD                         VARCHAR2(36)                                 NOT NULL       
, KOR_PRD_NM                     VARCHAR2(300)                                NULL           
, PRD_BRCD_CD                    VARCHAR2(39)                                 NULL           
, BRND_CD                        VARCHAR2(27)                                 NULL           
, KOR_BRND_NM                    VARCHAR2(150)                                NULL           
, CP_PRD_YN                      VARCHAR2(3)                                  NULL           
, REG_PRTN_ID                    VARCHAR2(30)                                 NULL           
, PRD_SUPP_PRTN_ID               VARCHAR2(30)                                 NULL           
, SET_PRD_YN                     VARCHAR2(3)                                  NULL           
, EC_PRD_YN                      VARCHAR2(3)                                  NULL           
, SHPM_SSPN_CD                   VARCHAR2(6)                                  NULL           
, SHPM_SSPN_BGN_DT               VARCHAR2(24)                                 NULL           
, RSNB_USG_DAYS                  NUMBER(5,0)                                  NOT NULL       
, RSNB_USPD_UNIT_NM              VARCHAR2(60)                                 NULL           
, PRD_HRZN_LEN                   NUMBER(9,0)                                  NOT NULL       
, PRD_HGHT                       NUMBER(9,0)                                  NOT NULL       
, PRD_VRTC_LEN                   NUMBER(9,0)                                  NOT NULL       
, BOX_QTY                        NUMBER(10,0)                                 NOT NULL       
, BNBX_QTY                       NUMBER(10,0)                                 NOT NULL       
, PRD_USE_CD                     VARCHAR2(9)                                  NULL           
, PRD_CAT_CD                     VARCHAR2(30)                                 NULL           
, RPLC_PRD_CD                    VARCHAR2(36)                                 NULL           
, BRND_LN_CD                     VARCHAR2(12)                                 NULL           
, USER_TP_CD                     VARCHAR2(3)                                  NULL           
, FRSH_CSMT_YN                   VARCHAR2(3)                                  NULL           
, SET_DSMN_YN                    VARCHAR2(3)                                  NULL           
, VSL_FORM_CD                    VARCHAR2(6)                                  NULL           
, TT_WGT                         NUMBER(9,0)                                  NOT NULL       
, TT_WGT_UNIT_CD                 VARCHAR2(9)                                  NULL           
, PRD_CPT                        NUMBER(9,0)                                  NOT NULL       
, PRD_CPT_UNIT_CD                VARCHAR2(9)                                  NULL           
, PRD_CL_CD                      VARCHAR2(6)                                  NULL           
, MFG_PLNT_CD                    VARCHAR2(12)                                 NULL           
, MAIN_FUNC_CD                   VARCHAR2(12)                                 NULL           
, LST_MFG_DT                     VARCHAR2(24)                                 NULL           
, INIT_MFG_DT                    VARCHAR2(24)                                 NULL           
, RFL_YN                         VARCHAR2(3)                                  NULL           
, SLS_TP_CD                      VARCHAR2(9)                                  NULL           
, ALCT_DPRC_CD                   VARCHAR2(54)                                 NULL           
, MTRL_GRP_CD                    VARCHAR2(27)                                 NULL           
, BRND_GRP_CD                    VARCHAR2(30)                                 NULL           
, SAP_PRD_LN_CD                  VARCHAR2(12)                                 NULL           
, PRD_CLR_CD                     VARCHAR2(12)                                 NULL           
, PRD_SKTP_CD                    VARCHAR2(12)                                 NULL           
, RPRS_PRD_CD                    VARCHAR2(36)                                 NULL           
, RPRS_PRD_NM                    VARCHAR2(300)                                NULL           
, SAP_MGNT_PRD_YN                VARCHAR2(3)                                  NULL           
, PRE_PRD_CD                     VARCHAR2(36)                                 NULL           
, NPRD_CL_CD                     VARCHAR2(3)                                  NULL           
, SPRD_YN                        VARCHAR2(3)                                  NULL           
, IPRD_YN                        VARCHAR2(3)                                  NULL           
, CPRD_YN                        VARCHAR2(3)                                  NULL           
, ENGL_PRD_NM                    VARCHAR2(150)                                NULL           
, JPN_PRD_NM                     VARCHAR2(150)                                NULL           
, CHNS_PRD_NM                    VARCHAR2(150)                                NULL           
, FRN_PRD_NM                     VARCHAR2(150)                                NULL           
, TNS_PRD_NM                     VARCHAR2(150)                                NULL           
, MGNT_SORG_CD                   VARCHAR2(24)                                 NULL           
, MGNT_SLS_ORG_LVL_CD            VARCHAR2(6)                                  NULL           
, TAX_CL_CD                      VARCHAR2(6)                                  NULL           
, PRD_GRD_CD                     VARCHAR2(9)                                  NULL           
, PRD_PMGR_CD                    VARCHAR2(12)                                 NULL           
, PRD_ST_CD                      VARCHAR2(6)                                  NULL           
, PRD_ST_BGN_DT                  VARCHAR2(24)                                 NULL           
, MAIN_SAL_CHN_CD                VARCHAR2(6)                                  NULL           
, PRD_TP_CD                      VARCHAR2(9)                                  NULL           
, FST_SAL_DT                     VARCHAR2(24)                                 NULL           
, LST_SAL_DT                     VARCHAR2(24)                                 NULL           
, MFG_PLNT_MRP_CAT_VL            VARCHAR2(90)                                 NULL           
, PLLT_QTY                       NUMBER(10,0)                                 NULL           
, SAP_MTRL_TP_CD                 VARCHAR2(12)                                 NULL           
, SAP_MTRL_BSCS_UNIT_CD          VARCHAR2(9)                                  NULL           
, TREA_SAL_CL_CD                 VARCHAR2(6)                                  NULL           
, AMOS_PRD_TP_CD                 VARCHAR2(6)                                  NULL           
, EAIF_MSTR_DT                   VARCHAR2(24)                                 NULL           
, EAIF_MSTR_SN                   NUMBER(19,0)                                 NULL           
, EAIF_DETL_DT                   VARCHAR2(24)                                 NULL           
, EAIF_DETL_SN                   NUMBER(19,0)                                 NULL           
, EAIF_MSTR_PROC_YN              VARCHAR2(3)                                  NULL           
, EAIF_DETL_PROC_YN              VARCHAR2(3)                                  NULL           
, FSCR_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_IF_TB_BM_MENU PRIMARY KEY (
    PRD_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_BM_MENU                                                IS '오설록 EAI 상품 수신마스터';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_CD                                         IS '상품코드';
COMMENT ON COLUMN IF_TB_BM_MENU.KOR_PRD_NM                                     IS '한글상품명';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_BRCD_CD                                    IS '상품바코드코드';
COMMENT ON COLUMN IF_TB_BM_MENU.BRND_CD                                        IS '브랜드코드';
COMMENT ON COLUMN IF_TB_BM_MENU.KOR_BRND_NM                                    IS '한글브랜드명';
COMMENT ON COLUMN IF_TB_BM_MENU.CP_PRD_YN                                      IS '자사상품여부';
COMMENT ON COLUMN IF_TB_BM_MENU.REG_PRTN_ID                                    IS '등록거래처ID';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_SUPP_PRTN_ID                               IS '상품공급거래처ID';
COMMENT ON COLUMN IF_TB_BM_MENU.SET_PRD_YN                                     IS '세트상품여부';
COMMENT ON COLUMN IF_TB_BM_MENU.EC_PRD_YN                                      IS '암호상품여부';
COMMENT ON COLUMN IF_TB_BM_MENU.SHPM_SSPN_CD                                   IS '출하중지코드';
COMMENT ON COLUMN IF_TB_BM_MENU.SHPM_SSPN_BGN_DT                               IS '출하중지시작일자';
COMMENT ON COLUMN IF_TB_BM_MENU.RSNB_USG_DAYS                                  IS '적정사용일수';
COMMENT ON COLUMN IF_TB_BM_MENU.RSNB_USPD_UNIT_NM                              IS '적정사용기간단위명';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_HRZN_LEN                                   IS '상품가로길이';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_HGHT                                       IS '상품높이';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_VRTC_LEN                                   IS '상품세로길이';
COMMENT ON COLUMN IF_TB_BM_MENU.BOX_QTY                                        IS '박스수량';
COMMENT ON COLUMN IF_TB_BM_MENU.BNBX_QTY                                       IS '타박스수량';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_USE_CD                                     IS '상품용도코드';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_CAT_CD                                     IS '상품분류코드';
COMMENT ON COLUMN IF_TB_BM_MENU.RPLC_PRD_CD                                    IS '대체상품코드';
COMMENT ON COLUMN IF_TB_BM_MENU.BRND_LN_CD                                     IS '브랜드라인코드';
COMMENT ON COLUMN IF_TB_BM_MENU.USER_TP_CD                                     IS '사용자유형코드';
COMMENT ON COLUMN IF_TB_BM_MENU.FRSH_CSMT_YN                                   IS '신선화장품여부';
COMMENT ON COLUMN IF_TB_BM_MENU.SET_DSMN_YN                                    IS '세트해체여부';
COMMENT ON COLUMN IF_TB_BM_MENU.VSL_FORM_CD                                    IS '용기형태코드';
COMMENT ON COLUMN IF_TB_BM_MENU.TT_WGT                                         IS '총중량';
COMMENT ON COLUMN IF_TB_BM_MENU.TT_WGT_UNIT_CD                                 IS '총중량단위코드';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_CPT                                        IS '상품용량';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_CPT_UNIT_CD                                IS '상품용량단위코드';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_CL_CD                                      IS '상품구분코드';
COMMENT ON COLUMN IF_TB_BM_MENU.MFG_PLNT_CD                                    IS '생산플랜트코드';
COMMENT ON COLUMN IF_TB_BM_MENU.MAIN_FUNC_CD                                   IS '주요기능코드';
COMMENT ON COLUMN IF_TB_BM_MENU.LST_MFG_DT                                     IS '최종생산일자';
COMMENT ON COLUMN IF_TB_BM_MENU.INIT_MFG_DT                                    IS '초도생산일자';
COMMENT ON COLUMN IF_TB_BM_MENU.RFL_YN                                         IS '리필여부';
COMMENT ON COLUMN IF_TB_BM_MENU.SLS_TP_CD                                      IS '영업유형코드';
COMMENT ON COLUMN IF_TB_BM_MENU.ALCT_DPRC_CD                                   IS '할당결정절차코드';
COMMENT ON COLUMN IF_TB_BM_MENU.MTRL_GRP_CD                                    IS '자재그룹코드';
COMMENT ON COLUMN IF_TB_BM_MENU.BRND_GRP_CD                                    IS '브랜드그룹코드';
COMMENT ON COLUMN IF_TB_BM_MENU.SAP_PRD_LN_CD                                  IS 'SAP상품라인코드';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_CLR_CD                                     IS '상품색상코드';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_SKTP_CD                                    IS '상품피부유형코드';
COMMENT ON COLUMN IF_TB_BM_MENU.RPRS_PRD_CD                                    IS '대표상품코드';
COMMENT ON COLUMN IF_TB_BM_MENU.RPRS_PRD_NM                                    IS '대표상품명';
COMMENT ON COLUMN IF_TB_BM_MENU.SAP_MGNT_PRD_YN                                IS 'SAP관리상품여부';
COMMENT ON COLUMN IF_TB_BM_MENU.PRE_PRD_CD                                     IS '이전상품코드';
COMMENT ON COLUMN IF_TB_BM_MENU.NPRD_CL_CD                                     IS '신상품구분코드';
COMMENT ON COLUMN IF_TB_BM_MENU.SPRD_YN                                        IS '강한상품여부';
COMMENT ON COLUMN IF_TB_BM_MENU.IPRD_YN                                        IS '혁신상품여부';
COMMENT ON COLUMN IF_TB_BM_MENU.CPRD_YN                                        IS '쿠션상품여부';
COMMENT ON COLUMN IF_TB_BM_MENU.ENGL_PRD_NM                                    IS '영어상품명';
COMMENT ON COLUMN IF_TB_BM_MENU.JPN_PRD_NM                                     IS '일본어상품명';
COMMENT ON COLUMN IF_TB_BM_MENU.CHNS_PRD_NM                                    IS '중국어상품명';
COMMENT ON COLUMN IF_TB_BM_MENU.FRN_PRD_NM                                     IS '프랑스어상품명';
COMMENT ON COLUMN IF_TB_BM_MENU.TNS_PRD_NM                                     IS '대만어상품명';
COMMENT ON COLUMN IF_TB_BM_MENU.MGNT_SORG_CD                                   IS '관리영업조직코드';
COMMENT ON COLUMN IF_TB_BM_MENU.MGNT_SLS_ORG_LVL_CD                            IS '관리영업조직레벨코드';
COMMENT ON COLUMN IF_TB_BM_MENU.TAX_CL_CD                                      IS '세금구분코드';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_GRD_CD                                     IS '상품등급코드';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_PMGR_CD                                    IS '상품허용그룹코드';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_ST_CD                                      IS '상품상태코드';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_ST_BGN_DT                                  IS '상품상태시작일자';
COMMENT ON COLUMN IF_TB_BM_MENU.MAIN_SAL_CHN_CD                                IS '주요판매경로코드';
COMMENT ON COLUMN IF_TB_BM_MENU.PRD_TP_CD                                      IS '상품유형코드';
COMMENT ON COLUMN IF_TB_BM_MENU.FST_SAL_DT                                     IS '최초판매일자';
COMMENT ON COLUMN IF_TB_BM_MENU.LST_SAL_DT                                     IS '최종판매일자';
COMMENT ON COLUMN IF_TB_BM_MENU.MFG_PLNT_MRP_CAT_VL                            IS '생산플랜트MRP분류값';
COMMENT ON COLUMN IF_TB_BM_MENU.PLLT_QTY                                       IS '파렛트단위상품수량';
COMMENT ON COLUMN IF_TB_BM_MENU.SAP_MTRL_TP_CD                                 IS 'SAP자재유형코드 (10871)';
COMMENT ON COLUMN IF_TB_BM_MENU.SAP_MTRL_BSCS_UNIT_CD                          IS 'SAP자재기본단위코드 (EC210)';
COMMENT ON COLUMN IF_TB_BM_MENU.TREA_SAL_CL_CD                                 IS '시술판매구분코드 (EC240)';
COMMENT ON COLUMN IF_TB_BM_MENU.AMOS_PRD_TP_CD                                 IS '아모스상품유형코드 (10872)';
COMMENT ON COLUMN IF_TB_BM_MENU.EAIF_MSTR_DT                                   IS 'EAI인터페이스마스터일자';
COMMENT ON COLUMN IF_TB_BM_MENU.EAIF_MSTR_SN                                   IS 'EAI인터페이스마스터순번';
COMMENT ON COLUMN IF_TB_BM_MENU.EAIF_DETL_DT                                   IS 'EAI인터페이스디테일일자';
COMMENT ON COLUMN IF_TB_BM_MENU.EAIF_DETL_SN                                   IS 'EAI인터페이스디테일순번';
COMMENT ON COLUMN IF_TB_BM_MENU.EAIF_MSTR_PROC_YN                              IS 'EAI인터페이스마스터처리여부';
COMMENT ON COLUMN IF_TB_BM_MENU.EAIF_DETL_PROC_YN                              IS 'EAI인터페이스디테일처리여부';
COMMENT ON COLUMN IF_TB_BM_MENU.FSCR_ID                                        IS '최초생성ID';
COMMENT ON COLUMN IF_TB_BM_MENU.FSCR_TSP                                       IS '최초생성시각';
COMMENT ON COLUMN IF_TB_BM_MENU.LSCH_ID                                        IS '최종변경ID';
COMMENT ON COLUMN IF_TB_BM_MENU.LSCH_TSP                                       IS '최종변경시각';


 /* IF_TB_BM_MENU_L */

DROP TABLE IF_TB_BM_MENU_L PURGE;

CREATE TABLE IF_TB_BM_MENU_L
(
  EAIF_DT                        VARCHAR2(24)                                 NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, PROC_YN                        VARCHAR2(3)                                  NOT NULL       
, ERR_YN                         VARCHAR2(3)                                  NOT NULL       
, ERR_MSG                        CLOB                                         NULL           
, FSCR_ID                        VARCHAR2(150)                                NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(150)                                NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_BM_MENU_L                                              IS '오설록 EAI 메뉴 수신마스터 처리로그';
COMMENT ON COLUMN IF_TB_BM_MENU_L.EAIF_DT                                      IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_TB_BM_MENU_L.EAIF_SN                                      IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_TB_BM_MENU_L.PROC_YN                                      IS '처리여부';
COMMENT ON COLUMN IF_TB_BM_MENU_L.ERR_YN                                       IS '오류여부';
COMMENT ON COLUMN IF_TB_BM_MENU_L.ERR_MSG                                      IS '오류내용';
COMMENT ON COLUMN IF_TB_BM_MENU_L.FSCR_ID                                      IS '최초생성ID';
COMMENT ON COLUMN IF_TB_BM_MENU_L.FSCR_TSP                                     IS '최초생성시각';
COMMENT ON COLUMN IF_TB_BM_MENU_L.LSCH_ID                                      IS '최종변경ID';
COMMENT ON COLUMN IF_TB_BM_MENU_L.LSCH_TSP                                     IS '최종변경시각';


 /* IF_TB_BM_STORE */

DROP TABLE IF_TB_BM_STORE PURGE;

CREATE TABLE IF_TB_BM_STORE
(
  PRTN_ID                        VARCHAR2(30)                                 NOT NULL       
, PRTN_NM                        VARCHAR2(150)                                NULL           
, PRTN_ENG_NM                    VARCHAR2(150)                                NULL           
, BSPR_NO                        VARCHAR2(39)                                 NULL           
, PRTN_RPRV_NM                   VARCHAR2(150)                                NULL           
, PRTN_ST_CD                     VARCHAR2(6)                                  NULL           
, PRTN_TYPE_CD                   VARCHAR2(3)                                  NULL           
, PRTN_GRP_CD                    VARCHAR2(6)                                  NULL           
, PRTN_FORM_CD                   VARCHAR2(12)                                 NULL           
, PRTN_BSKN_NM                   VARCHAR2(150)                                NULL           
, PRTN_TPBS_NM                   VARCHAR2(150)                                NULL           
, TR_BGN_DT                      VARCHAR2(24)                                 NULL           
, TR_END_DT                      VARCHAR2(24)                                 NULL           
, DRFC_CD                        VARCHAR2(3)                                  NULL           
, CMPY_CD                        VARCHAR2(12)                                 NULL           
, SORG_CD                        VARCHAR2(24)                                 NULL           
, SLS_ORG_LVL_CD                 VARCHAR2(6)                                  NULL           
, SLS_RSPN_EMP_ID                VARCHAR2(36)                                 NULL           
, UPP_SAL_CHN_CD                 VARCHAR2(12)                                 NULL           
, LR_SAL_CHN_CD                  VARCHAR2(12)                                 NULL           
, COL_BANK_CD                    VARCHAR2(9)                                  NULL           
, COL_BNAC_NO_EC                 VARCHAR2(768)                                NULL           
, COL_BNAC_OWN_NM                VARCHAR2(60)                                 NULL           
, CNTC_TPHN                      VARCHAR2(60)                                 NULL           
, CELL_TPHN                      VARCHAR2(60)                                 NULL           
, PRTN_FXNO                      VARCHAR2(60)                                 NULL           
, PRTN_EMAD                      VARCHAR2(300)                                NULL           
, LCL_SN                         NUMBER(5,0)                                  NOT NULL       
, PRTN_INTN_ZIP                  VARCHAR2(30)                                 NULL           
, PRTN_RGN_CD                    VARCHAR2(9)                                  NULL           
, PRTN_CITY_NM                   VARCHAR2(300)                                NULL           
, PRTN_DTL_ADDR1                 VARCHAR2(600)                                NULL           
, PRTN_DTL_ADDR2                 VARCHAR2(600)                                NULL           
, PRTN_DTL_ADDR3                 VARCHAR2(600)                                NULL           
, PRTN_DTL_ADDR4                 VARCHAR2(600)                                NULL           
, PRLS_CTR_CD                    VARCHAR2(30)                                 NULL           
, TRNS_RGN_CD                    VARCHAR2(30)                                 NULL           
, CUST_ACGR_CD                   VARCHAR2(12)                                 NULL           
, SLS_RGN_CD                     VARCHAR2(18)                                 NULL           
, MGNT_SORG_CD                   VARCHAR2(24)                                 NULL           
, MGNT_SLS_ORG_LVL_CD            VARCHAR2(6)                                  NULL           
, SLS_GRP_CD                     VARCHAR2(9)                                  NULL           
, FRGD_GRP_CD                    VARCHAR2(9)                                  NULL           
, PRTN_PMGR_CD                   VARCHAR2(12)                                 NULL           
, BU_ORG_CD                      VARCHAR2(12)                                 NULL           
, BSUN_CD                        VARCHAR2(12)                                 NULL           
, PRC_TP_CD                      VARCHAR2(6)                                  NULL           
, SUPP_RT                        NUMBER(11,4)                                 NOT NULL       
, SHOP_CNCP_CD                   VARCHAR2(12)                                 NULL           
, MAIN_BRND_CD                   VARCHAR2(27)                                 NULL           
, DLGD_PRTN_ID                   VARCHAR2(30)                                 NULL           
, RPRS_PRTN_ID                   VARCHAR2(30)                                 NULL           
, CLGT_PRTN_ID                   VARCHAR2(30)                                 NULL           
, PYMT_PRTN_ID                   VARCHAR2(30)                                 NULL           
, DLGD_PLNT_CD                   VARCHAR2(12)                                 NULL           
, DLGD_PRNK_CD                   VARCHAR2(6)                                  NULL           
, SLS_PLNT_CD                    VARCHAR2(12)                                 NULL           
, SLS_SLOC_CD                    VARCHAR2(12)                                 NULL           
, DSTR_CD                        VARCHAR2(12)                                 NULL           
, DDL_CL_CD                      VARCHAR2(6)                                  NULL           
, PYMT_COND_CL_CD                VARCHAR2(12)                                 NULL           
, TAX_CAT_CD                     VARCHAR2(6)                                  NULL           
, SAL_TP_CD                      VARCHAR2(6)                                  NULL           
, EAIF_DT                        VARCHAR2(24)                                 NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, FSCR_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_IF_TB_BM_STORE PRIMARY KEY (
    PRTN_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_BM_STORE                                               IS '오설록 EAI 거래처 수신마스터';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_ID                                       IS '거래처ID';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_NM                                       IS '거래처명';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_ENG_NM                                   IS '거래처영문명';
COMMENT ON COLUMN IF_TB_BM_STORE.BSPR_NO                                       IS '사업자등록번호';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_RPRV_NM                                  IS '거래처대표자명';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_ST_CD                                    IS '거래처상태코드';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_TYPE_CD                                  IS '거래처종류코드';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_GRP_CD                                   IS '거래처그룹코드';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_FORM_CD                                  IS '거래처형태코드';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_BSKN_NM                                  IS '거래처업종명';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_TPBS_NM                                  IS '거래처업태명';
COMMENT ON COLUMN IF_TB_BM_STORE.TR_BGN_DT                                     IS '거래시작일자';
COMMENT ON COLUMN IF_TB_BM_STORE.TR_END_DT                                     IS '거래종료일자';
COMMENT ON COLUMN IF_TB_BM_STORE.DRFC_CD                                       IS '직가맹구분코드';
COMMENT ON COLUMN IF_TB_BM_STORE.CMPY_CD                                       IS '회사코드';
COMMENT ON COLUMN IF_TB_BM_STORE.SORG_CD                                       IS '영업조직코드';
COMMENT ON COLUMN IF_TB_BM_STORE.SLS_ORG_LVL_CD                                IS '영업조직레벨코드';
COMMENT ON COLUMN IF_TB_BM_STORE.SLS_RSPN_EMP_ID                               IS '영업담당직원ID';
COMMENT ON COLUMN IF_TB_BM_STORE.UPP_SAL_CHN_CD                                IS '상위판매경로코드';
COMMENT ON COLUMN IF_TB_BM_STORE.LR_SAL_CHN_CD                                 IS '하위판매경로코드';
COMMENT ON COLUMN IF_TB_BM_STORE.COL_BANK_CD                                   IS '수금은행코드';
COMMENT ON COLUMN IF_TB_BM_STORE.COL_BNAC_NO_EC                                IS '수금계좌번호암호';
COMMENT ON COLUMN IF_TB_BM_STORE.COL_BNAC_OWN_NM                               IS '수금계좌소유자명';
COMMENT ON COLUMN IF_TB_BM_STORE.CNTC_TPHN                                     IS '연락통합전화번호';
COMMENT ON COLUMN IF_TB_BM_STORE.CELL_TPHN                                     IS '휴대폰통합전화번호';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_FXNO                                     IS '거래처팩스번호';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_EMAD                                     IS '거래처이메일주소';
COMMENT ON COLUMN IF_TB_BM_STORE.LCL_SN                                        IS '로케일순번';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_INTN_ZIP                                 IS '거래처국제우편번호';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_RGN_CD                                   IS '거래처지역코드';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_CITY_NM                                  IS '거래처도시명';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_DTL_ADDR1                                IS '거래처상세주소1';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_DTL_ADDR2                                IS '거래처상세주소2';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_DTL_ADDR3                                IS '거래처상세주소3';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_DTL_ADDR4                                IS '거래처상세주소4';
COMMENT ON COLUMN IF_TB_BM_STORE.PRLS_CTR_CD                                   IS '손익센터코드';
COMMENT ON COLUMN IF_TB_BM_STORE.TRNS_RGN_CD                                   IS '운송지역코드';
COMMENT ON COLUMN IF_TB_BM_STORE.CUST_ACGR_CD                                  IS '고객계정그룹코드';
COMMENT ON COLUMN IF_TB_BM_STORE.SLS_RGN_CD                                    IS '영업지역코드';
COMMENT ON COLUMN IF_TB_BM_STORE.MGNT_SORG_CD                                  IS '관리영업조직코드';
COMMENT ON COLUMN IF_TB_BM_STORE.MGNT_SLS_ORG_LVL_CD                           IS '관리영업조직레벨코드';
COMMENT ON COLUMN IF_TB_BM_STORE.SLS_GRP_CD                                    IS '영업그룹코드';
COMMENT ON COLUMN IF_TB_BM_STORE.FRGD_GRP_CD                                   IS '무상품그룹코드';
COMMENT ON COLUMN IF_TB_BM_STORE.PRTN_PMGR_CD                                  IS '거래처허용그룹코드';
COMMENT ON COLUMN IF_TB_BM_STORE.BU_ORG_CD                                     IS '부문조직코드';
COMMENT ON COLUMN IF_TB_BM_STORE.BSUN_CD                                       IS '사업부코드';
COMMENT ON COLUMN IF_TB_BM_STORE.PRC_TP_CD                                     IS '가격유형코드';
COMMENT ON COLUMN IF_TB_BM_STORE.SUPP_RT                                       IS '공급율';
COMMENT ON COLUMN IF_TB_BM_STORE.SHOP_CNCP_CD                                  IS '매장컨셉코드';
COMMENT ON COLUMN IF_TB_BM_STORE.MAIN_BRND_CD                                  IS '주요브랜드코드';
COMMENT ON COLUMN IF_TB_BM_STORE.DLGD_PRTN_ID                                  IS '납품거래처ID';
COMMENT ON COLUMN IF_TB_BM_STORE.RPRS_PRTN_ID                                  IS '대표거래처ID';
COMMENT ON COLUMN IF_TB_BM_STORE.CLGT_PRTN_ID                                  IS '총괄거래처ID';
COMMENT ON COLUMN IF_TB_BM_STORE.PYMT_PRTN_ID                                  IS '지급거래처ID';
COMMENT ON COLUMN IF_TB_BM_STORE.DLGD_PLNT_CD                                  IS '납품플랜트코드';
COMMENT ON COLUMN IF_TB_BM_STORE.DLGD_PRNK_CD                                  IS '납품우선순위코드';
COMMENT ON COLUMN IF_TB_BM_STORE.SLS_PLNT_CD                                   IS '영업플랜트코드';
COMMENT ON COLUMN IF_TB_BM_STORE.SLS_SLOC_CD                                   IS '영업저장위치코드';
COMMENT ON COLUMN IF_TB_BM_STORE.DSTR_CD                                       IS '유통사코드';
COMMENT ON COLUMN IF_TB_BM_STORE.DDL_CL_CD                                     IS '배송일구분코드';
COMMENT ON COLUMN IF_TB_BM_STORE.PYMT_COND_CL_CD                               IS '지급조건구분코드';
COMMENT ON COLUMN IF_TB_BM_STORE.TAX_CAT_CD                                    IS '세금분류코드';
COMMENT ON COLUMN IF_TB_BM_STORE.SAL_TP_CD                                     IS '판매유형코드';
COMMENT ON COLUMN IF_TB_BM_STORE.EAIF_DT                                       IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_TB_BM_STORE.EAIF_SN                                       IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_TB_BM_STORE.FSCR_ID                                       IS '최초생성ID';
COMMENT ON COLUMN IF_TB_BM_STORE.FSCR_TSP                                      IS '최초생성시각';
COMMENT ON COLUMN IF_TB_BM_STORE.LSCH_ID                                       IS '최종변경ID';
COMMENT ON COLUMN IF_TB_BM_STORE.LSCH_TSP                                      IS '최종변경시각';


 /* IF_TB_BM_STORE_L */

DROP TABLE IF_TB_BM_STORE_L PURGE;

CREATE TABLE IF_TB_BM_STORE_L
(
  EAIF_DT                        VARCHAR2(24)                                 NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, PROC_YN                        VARCHAR2(3)                                  NOT NULL       
, ERR_YN                         VARCHAR2(3)                                  NOT NULL       
, ERR_MSG                        CLOB                                         NULL           
, FSCR_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_IF_TB_BM_STORE_L PRIMARY KEY (
    EAIF_DT, EAIF_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_BM_STORE_L                                             IS '오설록 EAI 거래처 수신마스터 처리로그';
COMMENT ON COLUMN IF_TB_BM_STORE_L.EAIF_DT                                     IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_TB_BM_STORE_L.EAIF_SN                                     IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_TB_BM_STORE_L.PROC_YN                                     IS '처리여부';
COMMENT ON COLUMN IF_TB_BM_STORE_L.ERR_YN                                      IS '오류여부';
COMMENT ON COLUMN IF_TB_BM_STORE_L.ERR_MSG                                     IS '오류내용';
COMMENT ON COLUMN IF_TB_BM_STORE_L.FSCR_ID                                     IS '최초생성ID';
COMMENT ON COLUMN IF_TB_BM_STORE_L.FSCR_TSP                                    IS '최초생성시각';
COMMENT ON COLUMN IF_TB_BM_STORE_L.LSCH_ID                                     IS '최종변경ID';
COMMENT ON COLUMN IF_TB_BM_STORE_L.LSCH_TSP                                    IS '최종변경시각';


 /* IF_TB_BM_USER */

DROP TABLE IF_TB_BM_USER PURGE;

CREATE TABLE IF_TB_BM_USER
(
  USER_ID                        VARCHAR2(36)                                 NOT NULL       
, USER_CL_CD                     VARCHAR2(3)                                  NULL           
, USER_NM                        VARCHAR2(60)                                 NULL           
, LIN_PWD_EC                     VARCHAR2(384)                                NULL           
, CMPY_CD                        VARCHAR2(12)                                 NULL           
, BLNG_ORG_CD                    VARCHAR2(24)                                 NULL           
, ORG_LVL_CD                     VARCHAR2(6)                                  NULL           
, ORG_NM                         VARCHAR2(150)                                NULL           
, INTG_POSI_CL_CD                VARCHAR2(15)                                 NULL           
, INTG_PSTN_CL_CD                VARCHAR2(15)                                 NULL           
, INTG_ODUT_CD                   VARCHAR2(12)                                 NULL           
, CELL_TPHN                      VARCHAR2(60)                                 NULL           
, WIRE_TPHN                      VARCHAR2(60)                                 NULL           
, USER_EMAD                      VARCHAR2(300)                                NULL           
, JNCM_DT                        VARCHAR2(24)                                 NULL           
, USER_WORK_ST_CD                VARCHAR2(3)                                  NULL           
, LCL_SN                         NUMBER(5,0)                                  NOT NULL       
, USER_REF_TXT                   VARCHAR2(900)                                NULL           
, LST_PWD_CHG_DTTM               TIMESTAMP(6)                                 NULL           
, DATA_TRMS_YN                   VARCHAR2(3)                                  NULL           
, APPL_CL_CD                     VARCHAR2(30)                                 NULL           
, AUTH_GRP_ID                    VARCHAR2(30)                                 NULL           
, MNG_CL_CD                      VARCHAR2(3)                                  NULL           
, ACCT_USG_YN                    VARCHAR2(3)                                  NULL           
, ACCT_USG_ORG_CD                VARCHAR2(24)                                 NULL           
, ACCT_USG_ORG_LVL_CD            VARCHAR2(6)                                  NULL           
, ACCT_USG_ORG_NM                VARCHAR2(150)                                NULL           
, EAIF_MSTR_DT                   VARCHAR2(24)                                 NULL           
, EAIF_DETL_DT                   VARCHAR2(24)                                 NULL           
, EAIF_MSTR_SN                   NUMBER(19,0)                                 NULL           
, EAIF_DETL_SN                   NUMBER(19,0)                                 NULL           
, DML_PROC_CL_CD                 VARCHAR2(3)                                  NULL           
, EAIF_MSTR_PROC_YN              VARCHAR2(3)                                  NULL           
, EAIF_DETL_PROC_YN              VARCHAR2(3)                                  NULL           
, FSCR_ID                        VARCHAR2(50)   DEFAULT 'EAI'                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(50)   DEFAULT 'EAI'                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_IF_TB_BM_USER PRIMARY KEY (
    USER_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_BM_USER                                                IS '';
COMMENT ON COLUMN IF_TB_BM_USER.USER_ID                                        IS '사용자ID';
COMMENT ON COLUMN IF_TB_BM_USER.USER_CL_CD                                     IS '사용자구분코드';
COMMENT ON COLUMN IF_TB_BM_USER.USER_NM                                        IS '사용자명';
COMMENT ON COLUMN IF_TB_BM_USER.LIN_PWD_EC                                     IS '로그인비밀번호암호';
COMMENT ON COLUMN IF_TB_BM_USER.CMPY_CD                                        IS '회사코드';
COMMENT ON COLUMN IF_TB_BM_USER.BLNG_ORG_CD                                    IS '소속조직코드';
COMMENT ON COLUMN IF_TB_BM_USER.ORG_LVL_CD                                     IS '조직레벨코드';
COMMENT ON COLUMN IF_TB_BM_USER.ORG_NM                                         IS '조직명';
COMMENT ON COLUMN IF_TB_BM_USER.INTG_POSI_CL_CD                                IS '통합직위구분코드';
COMMENT ON COLUMN IF_TB_BM_USER.INTG_PSTN_CL_CD                                IS '통합직급구분코드';
COMMENT ON COLUMN IF_TB_BM_USER.INTG_ODUT_CD                                   IS '통합직책구분코드';
COMMENT ON COLUMN IF_TB_BM_USER.CELL_TPHN                                      IS '휴대폰통합전화번호';
COMMENT ON COLUMN IF_TB_BM_USER.WIRE_TPHN                                      IS '유선통합전화번호';
COMMENT ON COLUMN IF_TB_BM_USER.USER_EMAD                                      IS '사용자이메일주소';
COMMENT ON COLUMN IF_TB_BM_USER.JNCM_DT                                        IS '입사일자';
COMMENT ON COLUMN IF_TB_BM_USER.USER_WORK_ST_CD                                IS '사용자근무상태코드';
COMMENT ON COLUMN IF_TB_BM_USER.LCL_SN                                         IS '로케일순번';
COMMENT ON COLUMN IF_TB_BM_USER.USER_REF_TXT                                   IS '사용자참조내용';
COMMENT ON COLUMN IF_TB_BM_USER.LST_PWD_CHG_DTTM                               IS '최종비밀번호변경일시';
COMMENT ON COLUMN IF_TB_BM_USER.DATA_TRMS_YN                                   IS '데이터전송여부';
COMMENT ON COLUMN IF_TB_BM_USER.APPL_CL_CD                                     IS '어플리케이션구분코드';
COMMENT ON COLUMN IF_TB_BM_USER.AUTH_GRP_ID                                    IS '권한그룹ID';
COMMENT ON COLUMN IF_TB_BM_USER.MNG_CL_CD                                      IS '관리자구분코드';
COMMENT ON COLUMN IF_TB_BM_USER.ACCT_USG_YN                                    IS '계정사용여부';
COMMENT ON COLUMN IF_TB_BM_USER.ACCT_USG_ORG_CD                                IS '계정사용조직코드';
COMMENT ON COLUMN IF_TB_BM_USER.ACCT_USG_ORG_LVL_CD                            IS '계정사용조직레벨코드';
COMMENT ON COLUMN IF_TB_BM_USER.ACCT_USG_ORG_NM                                IS '계정사용조직명';
COMMENT ON COLUMN IF_TB_BM_USER.EAIF_MSTR_DT                                   IS 'EAI인터페이스마스터일자';
COMMENT ON COLUMN IF_TB_BM_USER.EAIF_DETL_DT                                   IS 'EAI인터페이스디테일일자';
COMMENT ON COLUMN IF_TB_BM_USER.EAIF_MSTR_SN                                   IS 'EAI인터페이스마스터순번';
COMMENT ON COLUMN IF_TB_BM_USER.EAIF_DETL_SN                                   IS 'EAI인터페이스디테일순번';
COMMENT ON COLUMN IF_TB_BM_USER.DML_PROC_CL_CD                                 IS '데이터조작구분';
COMMENT ON COLUMN IF_TB_BM_USER.EAIF_MSTR_PROC_YN                              IS 'EAI인터페이스마스터처리여부';
COMMENT ON COLUMN IF_TB_BM_USER.EAIF_DETL_PROC_YN                              IS 'EAI인터페이스디테일처리여부';
COMMENT ON COLUMN IF_TB_BM_USER.FSCR_ID                                        IS '최초생성ID';
COMMENT ON COLUMN IF_TB_BM_USER.FSCR_TSP                                       IS '최초생성시각';
COMMENT ON COLUMN IF_TB_BM_USER.LSCH_ID                                        IS '최종변경ID';
COMMENT ON COLUMN IF_TB_BM_USER.LSCH_TSP                                       IS '최종변경시각';


 /* IF_TB_BM_USER_L */

DROP TABLE IF_TB_BM_USER_L PURGE;

CREATE TABLE IF_TB_BM_USER_L
(
  EAIF_DT                        VARCHAR2(24)                                 NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, PROC_YN                        VARCHAR2(3)                                  NOT NULL       
, ERR_YN                         VARCHAR2(3)                                  NOT NULL       
, ERR_MSG                        CLOB                                         NULL           
, FSCR_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_BM_USER_L                                              IS 'EAI인터페이스수신로그';
COMMENT ON COLUMN IF_TB_BM_USER_L.EAIF_DT                                      IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_TB_BM_USER_L.EAIF_SN                                      IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_TB_BM_USER_L.PROC_YN                                      IS '처리여부(Y성공N실패P진행중)';
COMMENT ON COLUMN IF_TB_BM_USER_L.ERR_YN                                       IS '에러여부';
COMMENT ON COLUMN IF_TB_BM_USER_L.ERR_MSG                                      IS '에러메세지';
COMMENT ON COLUMN IF_TB_BM_USER_L.FSCR_ID                                      IS '최초생성ID';
COMMENT ON COLUMN IF_TB_BM_USER_L.FSCR_TSP                                     IS '최초생성시각';
COMMENT ON COLUMN IF_TB_BM_USER_L.LSCH_ID                                      IS '최종변경ID';
COMMENT ON COLUMN IF_TB_BM_USER_L.LSCH_TSP                                     IS '최종변경시각';


 /* IF_TB_CU_AGREE_HIS */

DROP TABLE IF_TB_CU_AGREE_HIS PURGE;

CREATE TABLE IF_TB_CU_AGREE_HIS
(
  LOG_SEQ                        VARCHAR2(20)                                 NOT NULL       
, INCS_NO                        NUMBER(9,0)                                  NOT NULL       
, AGREE_FG                       VARCHAR2(2)                                  NOT NULL       
, AGREE_YN                       VARCHAR2(1)                                  NOT NULL       
, REQ_STORE_CD                   VARCHAR2(10)                                 NOT NULL       
, REQ_POS_NO                     VARCHAR2(2)                                  NOT NULL       
, REQ_USER_ID                    VARCHAR2(20)                                 NOT NULL       
, REQ_DTTM                       DATE                                         NOT NULL       
, FSCR_ID                        VARCHAR2(20)                                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_CU_AGREE_HIS PRIMARY KEY (
    LOG_SEQ
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_CU_AGREE_HIS                                           IS '마케팅동의내역';
COMMENT ON COLUMN IF_TB_CU_AGREE_HIS.LOG_SEQ                                   IS '로그번호';
COMMENT ON COLUMN IF_TB_CU_AGREE_HIS.INCS_NO                                   IS '통합고객번호';
COMMENT ON COLUMN IF_TB_CU_AGREE_HIS.AGREE_FG                                  IS '서비스구분(CJ:경로가입,SA:SMS,IA:제3자)';
COMMENT ON COLUMN IF_TB_CU_AGREE_HIS.AGREE_YN                                  IS '동의여부';
COMMENT ON COLUMN IF_TB_CU_AGREE_HIS.REQ_STORE_CD                              IS '요청점포코드';
COMMENT ON COLUMN IF_TB_CU_AGREE_HIS.REQ_POS_NO                                IS '요청포스번호';
COMMENT ON COLUMN IF_TB_CU_AGREE_HIS.REQ_USER_ID                               IS '요청사용자ID';
COMMENT ON COLUMN IF_TB_CU_AGREE_HIS.REQ_DTTM                                  IS '요청일시(POS)';
COMMENT ON COLUMN IF_TB_CU_AGREE_HIS.FSCR_ID                                   IS '최초생성ID';
COMMENT ON COLUMN IF_TB_CU_AGREE_HIS.FSCR_TSP                                  IS '최초생성시각';


 /* IF_TB_CU_CHN_JOIN */

DROP TABLE IF_TB_CU_CHN_JOIN PURGE;

CREATE TABLE IF_TB_CU_CHN_JOIN
(
  INCS_NO                        NUMBER(9,0)                                  NOT NULL       
, CH_CD                          VARCHAR2(3)                                  NOT NULL       
, REQ_STORE_CD                   VARCHAR2(10)                                 NOT NULL       
, REQ_POS_NO                     VARCHAR2(2)                                  NOT NULL       
, REQ_USER_ID                    VARCHAR2(20)                                 NOT NULL       
, REQ_DTTM                       DATE                                         NOT NULL       
, JOIN_YN                        VARCHAR2(1)                                  NOT NULL       
, RSLT_CD                        VARCHAR2(100)                                NULL           
, RSLT_MSG                       VARCHAR2(2000)                               NULL           
, RSLT_DTTM                      DATE                                         NULL           
, FSCR_ID                        VARCHAR2(20)                                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(20)                                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_CU_CHN_JOIN PRIMARY KEY (
    INCS_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_CU_CHN_JOIN                                            IS '고객경로가입내역';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.INCS_NO                                    IS '통합고객번호';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.CH_CD                                      IS '경로구분코드';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.REQ_STORE_CD                               IS '요청점포코드';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.REQ_POS_NO                                 IS '요청포스번호';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.REQ_USER_ID                                IS '요청사용자ID';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.REQ_DTTM                                   IS '요청일시(POS)';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.JOIN_YN                                    IS '가입완료여부(P:진행중,Y:완료,N:실패)';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.RSLT_CD                                    IS '가입완료결과코드';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.RSLT_MSG                                   IS '가입완료결과메세지';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.RSLT_DTTM                                  IS '가입완료일시';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.FSCR_ID                                    IS '최초생성ID';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.FSCR_TSP                                   IS '최초생성시각';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.LSCH_ID                                    IS '최종변경ID';
COMMENT ON COLUMN IF_TB_CU_CHN_JOIN.LSCH_TSP                                   IS '최종변경시각';


 /* IF_TB_CU_SAVE_PT */

DROP TABLE IF_TB_CU_SAVE_PT PURGE;

CREATE TABLE IF_TB_CU_SAVE_PT
(
  ID_NO                          VARCHAR2(100)                                NOT NULL       
, XTTR_NO                        VARCHAR2(30)                                 NOT NULL       
, TLMC_CD                        VARCHAR2(2)                                  NOT NULL       
, TLMT_CD                        VARCHAR2(2)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, RECEIPT_NO                     VARCHAR2(5)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, STORE_NM                       VARCHAR2(100)                                NOT NULL       
, REQ_CH_CD                      VARCHAR2(3)                                  NOT NULL       
, REQ_PRTN_ID                    VARCHAR2(10)                                 NOT NULL       
, SAVE_POS_SALE_ITEM_SN          NUMBER(5,0)                                  NOT NULL       
, APPR_POS_SALE_ITEM_SN          NUMBER(5,0)                                  NOT NULL       
, MEMB_POS_SALE_ITEM_SN          NUMBER(5,0)                                  NOT NULL       
, INCS_NO                        NUMBER(9,0)                                  NOT NULL       
, CUST_TR_DT                     DATE                                         NOT NULL       
, TR_TIME                        VARCHAR2(6)                                  NOT NULL       
, TT_SALE_AMT                    NUMBER(22,2)                                 NOT NULL       
, ACML_APLY_PT                   NUMBER(22,2)                                 NOT NULL       
, RES_RSLT_CD                    VARCHAR2(100)                                NULL           
, RES_RSLT_MSG                   VARCHAR2(2000)                               NULL           
, RES_APPR_DT                    DATE                                         NULL           
, RES_APPR_NO                    VARCHAR2(20)                                 NULL           
, RES_RQ_PT                      NUMBER(22,2)                                 NULL           
, RES_PROC_PT                    NUMBER(22,2)                                 NULL           
, RES_RMN_PT                     NUMBER(22,2)                                 NULL           
, FSCR_ID                        VARCHAR2(20)                                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(20)                                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_CU_SAVE_PT PRIMARY KEY (
    ID_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_CU_SAVE_PT                                             IS '뷰티포인트추후적립';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.ID_NO                                       IS '포인트적립번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.XTTR_NO                                     IS '거래번호(추적번호)';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.TLMC_CD                                     IS '업무구분코드(10:적립,20:사용)';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.TLMT_CD                                     IS '전문유형코드(01:정상,02:취소,03:망취소,04:부분취소,05:부분망취소)';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.SALE_DATE                                   IS '매출일자';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.STORE_CD                                    IS '점포코드';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.POS_NO                                      IS '포스번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.RECEIPT_NO                                  IS '영수증번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.POS_SALE_NO                                 IS 'POS 판매번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.STORE_NM                                    IS '점포명';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.REQ_CH_CD                                   IS '요청경로코드';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.REQ_PRTN_ID                                 IS '요청거래처코드';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.SAVE_POS_SALE_ITEM_SN                       IS '적립전표순번';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.APPR_POS_SALE_ITEM_SN                       IS '승인전표순번';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.MEMB_POS_SALE_ITEM_SN                       IS '멤버십전표순번';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.INCS_NO                                     IS '통합회원번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.CUST_TR_DT                                  IS '발생일자';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.TR_TIME                                     IS '발생시간';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.TT_SALE_AMT                                 IS '매출금액';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.ACML_APLY_PT                                IS '적립적용포인트';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.RES_RSLT_CD                                 IS '응답코드';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.RES_RSLT_MSG                                IS '응답메세지';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.RES_APPR_DT                                 IS '승인일자';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.RES_APPR_NO                                 IS '승인번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.RES_RQ_PT                                   IS '요청포인트';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.RES_PROC_PT                                 IS '처리포인트';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.RES_RMN_PT                                  IS '잔여포인트';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.FSCR_ID                                     IS '최초생성ID';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.FSCR_TSP                                    IS '최초생성시각';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.LSCH_ID                                     IS '최종변경ID';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT.LSCH_TSP                                    IS '최종변경시각';


 /* IF_TB_CU_SAVE_PT_HIS */

DROP TABLE IF_TB_CU_SAVE_PT_HIS PURGE;

CREATE TABLE IF_TB_CU_SAVE_PT_HIS
(
  LOG_SEQ                        VARCHAR2(20)                                 NOT NULL       
, ID_NO                          VARCHAR2(100)                                NOT NULL       
, XTTR_NO                        VARCHAR2(30)                                 NULL           
, TLMC_CD                        VARCHAR2(2)                                  NULL           
, TLMT_CD                        VARCHAR2(2)                                  NULL           
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, POS_SALE_NO                    VARCHAR2(30)                                 NULL           
, STORE_NM                       VARCHAR2(100)                                NULL           
, REQ_CH_CD                      VARCHAR2(3)                                  NULL           
, REQ_PRTN_ID                    VARCHAR2(10)                                 NULL           
, REQ_JSON_DATA                  VARCHAR2(1000)                               NULL           
, SAVE_POS_SALE_ITEM_SN          NUMBER(5,0)                                  NULL           
, APPR_POS_SALE_ITEM_SN          NUMBER(5,0)                                  NULL           
, MEMB_POS_SALE_ITEM_SN          NUMBER(5,0)                                  NULL           
, INCS_NO                        NUMBER(9,0)                                  NULL           
, CUST_TR_DT                     DATE                                         NULL           
, TR_TIME                        VARCHAR2(6)                                  NULL           
, TT_SALE_AMT                    NUMBER(22,2)                                 NULL           
, ACML_APLY_PT                   NUMBER(22,2)                                 NULL           
, RES_RSLT_CD                    VARCHAR2(100)                                NULL           
, RES_RSLT_MSG                   VARCHAR2(2000)                               NULL           
, RES_APPR_DT                    DATE                                         NULL           
, RES_APPR_NO                    VARCHAR2(20)                                 NULL           
, RES_RQ_PT                      NUMBER(22,2)                                 NULL           
, RES_PROC_PT                    NUMBER(22,2)                                 NULL           
, RES_RMN_PT                     NUMBER(22,2)                                 NULL           
, FSCR_ID                        VARCHAR2(20)                                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_CU_SAVE_PT_HIS PRIMARY KEY (
    LOG_SEQ, ID_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_CU_SAVE_PT_HIS                                         IS '뷰티포인트추후적립내역';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.LOG_SEQ                                 IS '로그번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.ID_NO                                   IS '포인트적립번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.XTTR_NO                                 IS '거래번호(추적번호)';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.TLMC_CD                                 IS '업무구분코드(10:적립,20:사용)';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.TLMT_CD                                 IS '전문유형코드(01:정상,02:취소,03:망취소,04:부분취소,05:부분망취소)';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.SALE_DATE                               IS '매출일자';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.STORE_CD                                IS '점포코드';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.POS_NO                                  IS '포스번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.RECEIPT_NO                              IS '영수증번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.POS_SALE_NO                             IS 'POS 판매번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.STORE_NM                                IS '점포명';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.REQ_CH_CD                               IS '요청경로코드';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.REQ_PRTN_ID                             IS '요청거래처코드';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.REQ_JSON_DATA                           IS '요청전문데이터';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.SAVE_POS_SALE_ITEM_SN                   IS '적립전표순번';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.APPR_POS_SALE_ITEM_SN                   IS '승인전표순번';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.MEMB_POS_SALE_ITEM_SN                   IS '멤버십전표순번';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.INCS_NO                                 IS '통합회원번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.CUST_TR_DT                              IS '발생일자';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.TR_TIME                                 IS '발생시간';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.TT_SALE_AMT                             IS '매출금액';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.ACML_APLY_PT                            IS '적립적용포인트';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.RES_RSLT_CD                             IS '응답코드';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.RES_RSLT_MSG                            IS '응답메세지';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.RES_APPR_DT                             IS '승인일자';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.RES_APPR_NO                             IS '승인번호';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.RES_RQ_PT                               IS '요청포인트';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.RES_PROC_PT                             IS '처리포인트';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.RES_RMN_PT                              IS '잔여포인트';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.FSCR_ID                                 IS '최초생성ID';
COMMENT ON COLUMN IF_TB_CU_SAVE_PT_HIS.FSCR_TSP                                IS '최초생성시각';


 /* IF_TB_CU_SMS_AGREE */

DROP TABLE IF_TB_CU_SMS_AGREE PURGE;

CREATE TABLE IF_TB_CU_SMS_AGREE
(
  INCS_NO                        NUMBER(9,0)                                  NOT NULL       
, CH_CD                          VARCHAR2(3)                                  NOT NULL       
, SMS_OPTI_YN                    VARCHAR2(1)                                  NOT NULL       
, SMS_OPTI_DT                    DATE                                         NOT NULL       
, REQ_STORE_CD                   VARCHAR2(10)                                 NOT NULL       
, REQ_POS_NO                     VARCHAR2(2)                                  NOT NULL       
, REQ_USER_ID                    VARCHAR2(20)                                 NOT NULL       
, REQ_DTTM                       DATE                                         NOT NULL       
, RSLT_YN                        VARCHAR2(1)                                  NOT NULL       
, RSLT_CD                        VARCHAR2(100)                                NULL           
, RSLT_MSG                       VARCHAR2(2000)                               NULL           
, RSLT_DTTM                      DATE                                         NULL           
, FSCR_ID                        VARCHAR2(20)                                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(20)                                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_CU_SMS_AGREE PRIMARY KEY (
    INCS_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_CU_SMS_AGREE                                           IS 'SMS수신동의내역';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.INCS_NO                                   IS '통합고객번호';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.CH_CD                                     IS '경로구분코드';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.SMS_OPTI_YN                               IS 'SMS동의여부';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.SMS_OPTI_DT                               IS 'SMS동의일자';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.REQ_STORE_CD                              IS '요청점포코드';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.REQ_POS_NO                                IS '요청포스번호';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.REQ_USER_ID                               IS '요청사용자ID';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.REQ_DTTM                                  IS '요청일시(POS)';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.RSLT_YN                                   IS '가입완료여부(P:진행중,Y:완료,N:실패)';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.RSLT_CD                                   IS '처리완료결과코드';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.RSLT_MSG                                  IS '처리완료결과메세지';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.RSLT_DTTM                                 IS '가입완료일시';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.FSCR_ID                                   IS '최초생성ID';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.FSCR_TSP                                  IS '최초생성시각';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.LSCH_ID                                   IS '최종변경ID';
COMMENT ON COLUMN IF_TB_CU_SMS_AGREE.LSCH_TSP                                  IS '최종변경시각';


 /* IF_TB_SA_CIP_CTNT */

DROP TABLE IF_TB_SA_CIP_CTNT PURGE;

CREATE TABLE IF_TB_SA_CIP_CTNT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, RECEIPT_NO                     VARCHAR2(5)                                  NOT NULL       
, PROC_FG                        VARCHAR2(1)                                  NOT NULL       
, ERR_YN                         VARCHAR2(1)                                  NOT NULL       
, SEND_RSLT_CD                   VARCHAR2(4)                                  NULL           
, SEND_RSLT_MSG                  VARCHAR2(4000)                               NULL           
, SEND_LAST_DTTM                 TIMESTAMP(6)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_SA_CIP_CTNT PRIMARY KEY (
    BRND_CD, POS_SALE_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SA_CIP_CTNT                                            IS '고객실적전송목록(고객통합플랫폼)';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.BRND_CD                                    IS '브랜드코드';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.POS_SALE_NO                                IS 'POS판매번호';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.SALE_DATE                                  IS '매출일자';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.STORE_CD                                   IS '점포코드';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.POS_NO                                     IS '포스번호';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.RECEIPT_NO                                 IS '영수증번호';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.PROC_FG                                    IS '처리구분코드';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.ERR_YN                                     IS '에러구분코드';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.SEND_RSLT_CD                               IS '전송결과코드';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.SEND_RSLT_MSG                              IS '전송결과메세지';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.SEND_LAST_DTTM                             IS '최종전송일시';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.REGI_ID                                    IS '등록자ID';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.REGI_DTIME                                 IS '등록일시';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.UPDT_ID                                    IS '수정자ID';
COMMENT ON COLUMN IF_TB_SA_CIP_CTNT.UPDT_DTIME                                 IS '수정일시';


 /* IF_TB_SA_CIP_DETAIL */

DROP TABLE IF_TB_SA_CIP_DETAIL PURGE;

CREATE TABLE IF_TB_SA_CIP_DETAIL
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, INCS_NO                        NUMBER(9,0)                                  NOT NULL       
, CH_CD                          VARCHAR2(3)                                  NOT NULL       
, CHCS_NO                        NUMBER(9,0)                                  NOT NULL       
, SAL_SN                         NUMBER(5,0)                                  NOT NULL       
, SAL_ITEM_SN                    NUMBER(5,0)                                  NOT NULL       
, XTCL_CD                        VARCHAR2(3)                                  NOT NULL       
, PRD_CD                         VARCHAR2(12)                                 NOT NULL       
, PRD_NM                         VARCHAR2(500)                                NOT NULL       
, SAL_QTY                        NUMBER(10,0)                                 NOT NULL       
, SAL_AMT                        NUMBER(22,2)                                 NOT NULL       
, OCCR_PT                        NUMBER(22,2)                                 NOT NULL       
, USG_PT                         NUMBER(22,2)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_SA_CIP_DETAIL PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SA_CIP_DETAIL                                          IS '고객실적전송상세';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.BRND_CD                                  IS '브랜드코드';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.POS_SALE_NO                              IS '포스판매번호';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.POS_SALE_ITEM_SN                         IS '포스판매품목순번';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.SALE_DATE                                IS '판매일자';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.INCS_NO                                  IS '통합고객번호';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.CH_CD                                    IS '경로구분코드';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.CHCS_NO                                  IS '경로고객번호';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.SAL_SN                                   IS '판매순번';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.SAL_ITEM_SN                              IS '판매항목순번';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.XTCL_CD                                  IS '거래구분코드';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.PRD_CD                                   IS '상품코드';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.PRD_NM                                   IS '상품명';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.SAL_QTY                                  IS '판매수량';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.SAL_AMT                                  IS '판매금액';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.OCCR_PT                                  IS '발생포인트';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.USG_PT                                   IS '사용포인트';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN IF_TB_SA_CIP_DETAIL.UPDT_DTIME                               IS '수정일시';


 /* IF_TB_SA_CIP_HEADER */

DROP TABLE IF_TB_SA_CIP_HEADER PURGE;

CREATE TABLE IF_TB_SA_CIP_HEADER
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, CARD_STLM_AMT                  NUMBER(22,2)                                 NOT NULL       
, CASH_STLM_AMT                  NUMBER(22,2)                                 NOT NULL       
, ORN_CHN_ORD_NO_IDNT_VL         VARCHAR2(30)                                 NULL           
, CHN_ORD_NO_IDNT_VL             VARCHAR2(30)                                 NOT NULL       
, SAL_DT                         VARCHAR2(8)                                  NOT NULL       
, INCS_NO                        NUMBER(9,0)                                  NOT NULL       
, CH_CD                          VARCHAR2(3)                                  NOT NULL       
, CHCS_NO                        NUMBER(9,0)                                  NOT NULL       
, SAL_SN                         NUMBER(5,0)                                  NOT NULL       
, SAL_AMT                        NUMBER(22,2)                                 NOT NULL       
, SAL_PRTN_ID                    VARCHAR2(10)                                 NOT NULL       
, PRTN_NM                        VARCHAR2(50)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_SA_CIP_HEADER PRIMARY KEY (
    BRND_CD, POS_SALE_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SA_CIP_HEADER                                          IS '고객실적전송헤더';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.BRND_CD                                  IS '브랜드코드';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.POS_SALE_NO                              IS '포스판매번호';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.CARD_STLM_AMT                            IS '카드결제금액';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.CASH_STLM_AMT                            IS '현금결제금액';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.ORN_CHN_ORD_NO_IDNT_VL                   IS '원거래 경로 주문번호 식별값';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.CHN_ORD_NO_IDNT_VL                       IS '경로 주문번호 식별값';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.SAL_DT                                   IS '판매일자';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.INCS_NO                                  IS '통합고객번호';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.CH_CD                                    IS '경로구분코드';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.CHCS_NO                                  IS '경로고객번호';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.SAL_SN                                   IS '판매순번';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.SAL_AMT                                  IS '판매금액';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.SAL_PRTN_ID                              IS '판매거래처ID';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.PRTN_NM                                  IS '거래처명';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN IF_TB_SA_CIP_HEADER.UPDT_DTIME                               IS '수정일시';


 /* IF_TB_SA_OIP_CHARGE */

DROP TABLE IF_TB_SA_OIP_CHARGE PURGE;

CREATE TABLE IF_TB_SA_OIP_CHARGE
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, CHARGE_SN                      NUMBER(3,0)                                  NOT NULL       
, ITEM_UID                       VARCHAR2(30)                                 NOT NULL       
, CHARGE_CATEGORY                VARCHAR2(50)                                 NOT NULL       
, CHARGE_NAME                    VARCHAR2(50)                                 NOT NULL       
, CHARGE_PER_LINE                NUMBER(22,2)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_SA_OIP_CHARGE PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN, CHARGE_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SA_OIP_CHARGE                                          IS '매출실적전송할인정보';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.BRND_CD                                  IS '브랜드코드';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.POS_SALE_NO                              IS '포스판매번호';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.POS_SALE_ITEM_SN                         IS '포스판매항목순번';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.CHARGE_SN                                IS '할인순번';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.ITEM_UID                                 IS '포스품목별UID';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.CHARGE_CATEGORY                          IS '할인카테고리(고정값:Discount)';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.CHARGE_NAME                              IS '할인항목명';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.CHARGE_PER_LINE                          IS '할인금액';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN IF_TB_SA_OIP_CHARGE.UPDT_DTIME                               IS '수정일시';


 /* IF_TB_SA_OIP_CTNT */

DROP TABLE IF_TB_SA_OIP_CTNT PURGE;

CREATE TABLE IF_TB_SA_OIP_CTNT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, RECEIPT_NO                     VARCHAR2(5)                                  NOT NULL       
, PROC_FG                        VARCHAR2(1)                                  NOT NULL       
, ERR_YN                         VARCHAR2(1)                                  NOT NULL       
, OCCU_LOG_YN                    VARCHAR2(1)                                  NULL           
, SEND_RSLT_CD                   VARCHAR2(4)                                  NULL           
, SEND_RSLT_MSG                  VARCHAR2(100)                                NULL           
, SEND_LAST_DTTM                 TIMESTAMP(6)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_SA_OIP_CTNT PRIMARY KEY (
    BRND_CD, POS_SALE_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SA_OIP_CTNT                                            IS '매출실적전송목록(주문재고플랫폼)';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.BRND_CD                                    IS '브랜드코드';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.POS_SALE_NO                                IS 'POS판매번호';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.SALE_DATE                                  IS '매출일자';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.STORE_CD                                   IS '점포코드';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.POS_NO                                     IS '포스번호';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.RECEIPT_NO                                 IS '영수증번호';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.PROC_FG                                    IS '처리구분코드';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.ERR_YN                                     IS '에러구분코드';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.OCCU_LOG_YN                                IS '베이커리재고발생여부';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.SEND_RSLT_CD                               IS '전송결과코드';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.SEND_RSLT_MSG                              IS '전송결과주문번호';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.SEND_LAST_DTTM                             IS '최종전송일시';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.REGI_ID                                    IS '등록자ID';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.REGI_DTIME                                 IS '등록일시';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.UPDT_ID                                    IS '수정자ID';
COMMENT ON COLUMN IF_TB_SA_OIP_CTNT.UPDT_DTIME                                 IS '수정일시';


 /* IF_TB_SA_OIP_DETAIL */

DROP TABLE IF_TB_SA_OIP_DETAIL PURGE;

CREATE TABLE IF_TB_SA_OIP_DETAIL
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, POS_ITEM_UID                   VARCHAR2(30)                                 NOT NULL       
, SHIP_NODE                      VARCHAR2(10)                                 NOT NULL       
, ORDERED_QTY                    NUMBER(10,0)                                 NOT NULL       
, LINE_TYPE                      VARCHAR2(10)                                 NOT NULL       
, PRIME_LINE_NO                  VARCHAR2(5)                                  NOT NULL       
, ITEM_ID                        VARCHAR2(12)                                 NOT NULL       
, UNIT_OF_MEASURE                VARCHAR2(2)                                  NOT NULL       
, CURRENCY                       VARCHAR2(3)                                  NOT NULL       
, GF_GIVE_YN                     VARCHAR2(1)                                  NOT NULL       
, EXTN_ORDER_REASON              VARCHAR2(100)                                NULL           
, EXTN_USG_IND                   VARCHAR2(100)                                NULL           
, EXTN_TOTAL_AMOUNT              NUMBER(22,2)                                 NOT NULL       
, EXTN_LINE_TOTAL                NUMBER(22,2)                                 NOT NULL       
, EXTN_SALES_TYPE                VARCHAR2(1)                                  NOT NULL       
, EXTN_MILEAGE_SPENT_FLAG        VARCHAR2(1)                                  NULL           
, EXTN_FREE_OF_CHARGE_GIFT_FLAG  VARCHAR2(1)                                  NOT NULL       
, EXTN_POS_SALES_DATE            VARCHAR2(8)                                  NOT NULL       
, EXTN_POS_SALES_TIME            VARCHAR2(6)                                  NOT NULL       
, EXTN_POS_USER_ID               VARCHAR2(20)                                 NOT NULL       
, EXTN_POS_USER_NAME             VARCHAR2(200)                                NULL           
, EXTN_ORIGINAL_CUSTOMER_CODE    VARCHAR2(10)                                 NULL           
, EXTN_ORIGINAL_SALE_DATE        VARCHAR2(8)                                  NULL           
, EXTN_ORIGINAL_POS_NO           VARCHAR2(2)                                  NULL           
, EXTN_ORIGINAL_RECEIPT_NO       VARCHAR2(5)                                  NULL           
, EXTN_ORIGINAL_RECEIPT_SEQ      VARCHAR2(5)                                  NULL           
, EXTN_MILEAGE_COMPLE_FLAG       VARCHAR2(1)                                  NULL           
, EXTN_MILEAGE_DATE              VARCHAR2(1)                                  NULL           
, EXTN_MILEAGE_NUM               VARCHAR2(8)                                  NULL           
, UNIT_PRICE                     NUMBER(22,2)                                 NOT NULL       
, IS_PRICE_LOCKED                VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_SA_OIP_DETAIL PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SA_OIP_DETAIL                                          IS '매출실적전송디테일';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.BRND_CD                                  IS '브랜드코드';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.POS_SALE_NO                              IS '포스판매번호';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.POS_SALE_ITEM_SN                         IS '포스판매항목순번';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.POS_ITEM_UID                             IS '포스품목별UID';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.SHIP_NODE                                IS '판매처코드';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.ORDERED_QTY                              IS '판매수량';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.LINE_TYPE                                IS '주문유형코드';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.PRIME_LINE_NO                            IS '영수증순번';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.ITEM_ID                                  IS '상품코드';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.UNIT_OF_MEASURE                          IS '판매단위(고정값:EA)';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.CURRENCY                                 IS '통화(고정값:KRW)';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.GF_GIVE_YN                               IS '증정품증정여부(서비스상품-Y,무상품-N)';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_ORDER_REASON                        IS '주문사유';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_USG_IND                             IS '주문용도';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_TOTAL_AMOUNT                        IS '정상판매금액(VAT포함)';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_LINE_TOTAL                          IS '판매금액(VAT포함)';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_SALES_TYPE                          IS '판매구분(일반판매-1,예약판매-2,이용권사용-3)';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_MILEAGE_SPENT_FLAG                  IS '전체마일리지사용여부';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_FREE_OF_CHARGE_GIFT_FLAG            IS '무상증정여부(Y-무상품,N-무상품외)';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_POS_SALES_DATE                      IS 'POS 판매일자';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_POS_SALES_TIME                      IS 'POS 판매시간';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_POS_USER_ID                         IS 'POS 사용자ID';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_POS_USER_NAME                       IS 'POS 사용자명';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_ORIGINAL_CUSTOMER_CODE              IS '원판매 매장코드';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_ORIGINAL_SALE_DATE                  IS '원판매 판매일자';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_ORIGINAL_POS_NO                     IS '원판매 POS번호';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_ORIGINAL_RECEIPT_NO                 IS '원판매 영수증번호';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_ORIGINAL_RECEIPT_SEQ                IS '원판매 영수증순번';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_MILEAGE_COMPLE_FLAG                 IS '마일리지 플래그';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_MILEAGE_DATE                        IS '마일리지 사용여부';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.EXTN_MILEAGE_NUM                         IS '마일리지일자';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.UNIT_PRICE                               IS '정상판매단가(VAT포함)';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.IS_PRICE_LOCKED                          IS '가격변동여부(고정값:Y)';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN IF_TB_SA_OIP_DETAIL.UPDT_DTIME                               IS '수정일시';


 /* IF_TB_SA_OIP_HEADER */

DROP TABLE IF_TB_SA_OIP_HEADER PURGE;

CREATE TABLE IF_TB_SA_OIP_HEADER
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, DOCUMENT_TYPE                  VARCHAR2(4)                                  NOT NULL       
, ENTERPRISE_CODE                VARCHAR2(10)                                 NOT NULL       
, ORDER_TYPE                     VARCHAR2(10)                                 NOT NULL       
, ORDER_DATE                     VARCHAR2(10)                                 NOT NULL       
, EXTN_APPLICATION_CODE          VARCHAR2(3)                                  NOT NULL       
, EXTN_CUSTOMER_NO               VARCHAR2(10)                                 NOT NULL       
, EXTN_SALES_ORG                 VARCHAR2(4)                                  NOT NULL       
, EXTN_POS_NUMBER                VARCHAR2(2)                                  NOT NULL       
, EXTN_RECEIPT_NUMBER            VARCHAR2(5)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_IF_TB_SA_OIP_HEADER PRIMARY KEY (
    BRND_CD, POS_SALE_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SA_OIP_HEADER                                          IS '매출실적전송헤더';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.BRND_CD                                  IS '브랜드코드';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.POS_SALE_NO                              IS '포스판매번호';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.DOCUMENT_TYPE                            IS '문서구분(판매-0001,반품-0003)';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.ENTERPRISE_CODE                          IS 'EnterpriseCode(고정값:AP_KOREA)';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.ORDER_TYPE                               IS '주문유형(판매-ZA05,반품-ZR05)';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.ORDER_DATE                               IS '판매일자(YYYY-MM-DD)';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.EXTN_APPLICATION_CODE                    IS '어플리케이션구분(OPT)';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.EXTN_CUSTOMER_NO                         IS '매장코드';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.EXTN_SALES_ORG                           IS '영업조직코드(오설록티하우스-1700)';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.EXTN_POS_NUMBER                          IS '포스번호';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.EXTN_RECEIPT_NUMBER                      IS '영수증번호';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN IF_TB_SA_OIP_HEADER.UPDT_DTIME                               IS '수정일시';


 /* IF_TB_SA_POS_ACC_CTNT */

DROP TABLE IF_TB_SA_POS_ACC_CTNT PURGE;

CREATE TABLE IF_TB_SA_POS_ACC_CTNT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, STTL_SN                        VARCHAR2(10)                                 NOT NULL       
, PROC_SN                        NUMBER(5,0)                                  NOT NULL       
, PROC_FG                        VARCHAR2(1)                                  NULL           
, PROC_MSG                       VARCHAR2(4000)                               NULL           
, JOURNAL_CTNT                   CLOB                                         NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SA_POS_ACC_CTNT                                        IS '[IF수신]?TB?POS?정산?내역';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.BRND_CD                                IS '브랜드코드';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.SALE_DATE                              IS '영업일자';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.STORE_CD                               IS '점포코드';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.POS_NO                                 IS 'POS번호';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.STTL_SN                                IS '정산차수';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.PROC_SN                                IS '처리순번';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.PROC_FG                                IS '처리구분';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.PROC_MSG                               IS '처리내역';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.JOURNAL_CTNT                           IS '영수증내용';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.REGI_ID                                IS '등록자ID';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.REGI_DTIME                             IS '등록일시';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.UPDT_ID                                IS '수정자ID';
COMMENT ON COLUMN IF_TB_SA_POS_ACC_CTNT.UPDT_DTIME                             IS '수정일시';


 /* IF_TB_SA_POS_ODS_CTNT */

DROP TABLE IF_TB_SA_POS_ODS_CTNT PURGE;

CREATE TABLE IF_TB_SA_POS_ODS_CTNT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, PROC_SN                        NUMBER(5,0)                                  NOT NULL       
, PROC_FG                        VARCHAR2(1)                                  NULL           
, PROC_MSG                       VARCHAR2(4000)                               NULL           
, JOURNAL_CTNT                   CLOB                                         NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SA_POS_ODS_CTNT                                        IS '[IF수신]?TB?POS?ODS?내역';
COMMENT ON COLUMN IF_TB_SA_POS_ODS_CTNT.BRND_CD                                IS '브랜드코드';
COMMENT ON COLUMN IF_TB_SA_POS_ODS_CTNT.SALE_DATE                              IS '영업일자';
COMMENT ON COLUMN IF_TB_SA_POS_ODS_CTNT.STORE_CD                               IS '점포코드';
COMMENT ON COLUMN IF_TB_SA_POS_ODS_CTNT.PROC_SN                                IS '처리순번';
COMMENT ON COLUMN IF_TB_SA_POS_ODS_CTNT.PROC_FG                                IS '처리구분 N:미처리 Y:처리완료 D:중복(스킵) E:에러';
COMMENT ON COLUMN IF_TB_SA_POS_ODS_CTNT.PROC_MSG                               IS '처리내역';
COMMENT ON COLUMN IF_TB_SA_POS_ODS_CTNT.JOURNAL_CTNT                           IS '영수증내용';
COMMENT ON COLUMN IF_TB_SA_POS_ODS_CTNT.REGI_ID                                IS '등록자ID';
COMMENT ON COLUMN IF_TB_SA_POS_ODS_CTNT.REGI_DTIME                             IS '등록일시';
COMMENT ON COLUMN IF_TB_SA_POS_ODS_CTNT.UPDT_ID                                IS '수정자ID';
COMMENT ON COLUMN IF_TB_SA_POS_ODS_CTNT.UPDT_DTIME                             IS '수정일시';


 /* IF_TB_SA_POS_SALE_CTNT */

DROP TABLE IF_TB_SA_POS_SALE_CTNT PURGE;

CREATE TABLE IF_TB_SA_POS_SALE_CTNT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, PROC_SN                        NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, PROC_FG                        VARCHAR2(1)                                  NULL           
, PROC_MSG                       VARCHAR2(4000)                               NULL           
, JOURNAL_CTNT                   CLOB                                         NULL           
, SALE_FG                        VARCHAR2(1)                                  NULL           
, RECEIPT_BARCODE                VARCHAR2(30)                                 NULL           
, ORG_SALE_DATE                  VARCHAR2(8)                                  NULL           
, ORG_STORE_CD                   VARCHAR2(10)                                 NULL           
, ORG_POS_NO                     VARCHAR2(2)                                  NULL           
, ORG_RECEIPT_NO                 VARCHAR2(5)                                  NULL           
, ORG_RECEIPT_BARCODE            VARCHAR2(30)                                 NULL           
, SALE_MANAGE_TYPE_FG            VARCHAR2(1)                                  NULL           
, SALE_MANAGE_TYPE_DETAIL_FG     VARCHAR2(4)                                  NULL           
, SALE_VOID_TYPE_FG              VARCHAR2(2)                                  NULL           
, TR_VERSION                     VARCHAR2(20)                                 NULL           
, SALE_TYPE_FG                   VARCHAR2(2)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SA_POS_SALE_CTNT                                       IS '[IF수신]?TB?POS?매출?내역';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.BRND_CD                               IS '브랜드코드';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.POS_SALE_NO                           IS 'POS판매번호';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.PROC_SN                               IS '처리순번';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.SALE_DATE                             IS '영업일자';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.STORE_CD                              IS '매장코드';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.POS_NO                                IS 'POS번호';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.RECEIPT_NO                            IS '영수증번호';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.PROC_FG                               IS '처리구분 N:미처리 Y:처리완료 D:중복(스킵) E:에러';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.PROC_MSG                              IS '처리내역';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.JOURNAL_CTNT                          IS '영수증내용';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.SALE_FG                               IS '매출구분';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.RECEIPT_BARCODE                       IS '영수증바코드';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.ORG_SALE_DATE                         IS '원거래영업일자';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.ORG_STORE_CD                          IS '원거래매장코드';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.ORG_POS_NO                            IS '원거래포스번호';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.ORG_RECEIPT_NO                        IS '원거래영수증번호';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.ORG_RECEIPT_BARCODE                   IS '원거래영수증바코드';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.SALE_MANAGE_TYPE_FG                   IS '매출관리유형구분';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.SALE_MANAGE_TYPE_DETAIL_FG            IS '매출관리유형상세구분';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.SALE_VOID_TYPE_FG                     IS '매출반품유형구분';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.TR_VERSION                            IS 'TR버전';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.SALE_TYPE_FG                          IS '매출유형구분';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.REGI_ID                               IS '등록자ID';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.REGI_DTIME                            IS '등록일시';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.UPDT_ID                               IS '수정자ID';
COMMENT ON COLUMN IF_TB_SA_POS_SALE_CTNT.UPDT_DTIME                            IS '수정일시';


 /* IF_TB_SY_CMCD */

DROP TABLE IF_TB_SY_CMCD PURGE;

CREATE TABLE IF_TB_SY_CMCD
(
  COM_CAT_CD                     VARCHAR2(15)                                 NOT NULL       
, UPP_COM_CAT_CD                 VARCHAR2(15)                                 NULL           
, COM_CAT_CD_NM                  VARCHAR2(150)                                NULL           
, COM_CAT_CD_REF_TXT             VARCHAR2(900)                                NULL           
, DTL_CD_NFTP_NM                 VARCHAR2(60)                                 NULL           
, DTL_CD_DATA_LEN                NUMBER(9,0)                                  NOT NULL       
, ENGL_COM_CAT_CD_NM             VARCHAR2(150)                                NULL           
, JPN_COM_CAT_CD_NM              VARCHAR2(150)                                NULL           
, CHNS_COM_CAT_CD_NM             VARCHAR2(150)                                NULL           
, FRN_COM_CAT_CD_NM              VARCHAR2(150)                                NULL           
, TNS_COM_CAT_CD_NM              VARCHAR2(150)                                NULL           
, DTL_CD                         VARCHAR2(48)                                 NOT NULL       
, DTL_CD_NM                      VARCHAR2(300)                                NULL           
, UPP_DTL_CD                     VARCHAR2(48)                                 NULL           
, DTL_CD_REF_TXT                 VARCHAR2(900)                                NULL           
, CD_AGRV_PRT                    NUMBER(5,2)                                  NOT NULL       
, MK_SN                          NUMBER(5,0)                                  NOT NULL       
, IIWC_COM_YN                    VARCHAR2(3)                                  NULL           
, USG_YN                         VARCHAR2(3)                                  NULL           
, ENGL_DTL_CD_NM                 VARCHAR2(150)                                NULL           
, JPN_DTL_CD_NM                  VARCHAR2(150)                                NULL           
, CHNS_DTL_CD_NM                 VARCHAR2(150)                                NULL           
, FRN_DTL_CD_NM                  VARCHAR2(150)                                NULL           
, TNS_DTL_CD_NM                  VARCHAR2(150)                                NULL           
, EAIF_DT                        VARCHAR2(24)                                 NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, FSCR_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_IF_TB_SY_CMCD PRIMARY KEY (
    COM_CAT_CD, DTL_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SY_CMCD                                                IS '오설록 EAI 공통코드상세 수신마스터';
COMMENT ON COLUMN IF_TB_SY_CMCD.COM_CAT_CD                                     IS '공통분류코드';
COMMENT ON COLUMN IF_TB_SY_CMCD.UPP_COM_CAT_CD                                 IS '상위공통분류코드';
COMMENT ON COLUMN IF_TB_SY_CMCD.COM_CAT_CD_NM                                  IS '공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.COM_CAT_CD_REF_TXT                             IS '공통분류코드참조내용';
COMMENT ON COLUMN IF_TB_SY_CMCD.DTL_CD_NFTP_NM                                 IS '상세코드인포타입명';
COMMENT ON COLUMN IF_TB_SY_CMCD.DTL_CD_DATA_LEN                                IS '상세코드데이터길이';
COMMENT ON COLUMN IF_TB_SY_CMCD.ENGL_COM_CAT_CD_NM                             IS '영어공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.JPN_COM_CAT_CD_NM                              IS '일본어공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.CHNS_COM_CAT_CD_NM                             IS '중국어공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.FRN_COM_CAT_CD_NM                              IS '프랑스어공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.TNS_COM_CAT_CD_NM                              IS '대만어공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.DTL_CD                                         IS '상세코드';
COMMENT ON COLUMN IF_TB_SY_CMCD.DTL_CD_NM                                      IS '상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.UPP_DTL_CD                                     IS '상위상세코드';
COMMENT ON COLUMN IF_TB_SY_CMCD.DTL_CD_REF_TXT                                 IS '상세코드참조내용';
COMMENT ON COLUMN IF_TB_SY_CMCD.CD_AGRV_PRT                                    IS '코드가중비율';
COMMENT ON COLUMN IF_TB_SY_CMCD.MK_SN                                          IS '표시순번';
COMMENT ON COLUMN IF_TB_SY_CMCD.IIWC_COM_YN                                    IS '전사공통여부';
COMMENT ON COLUMN IF_TB_SY_CMCD.USG_YN                                         IS '사용여부';
COMMENT ON COLUMN IF_TB_SY_CMCD.ENGL_DTL_CD_NM                                 IS '영어상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.JPN_DTL_CD_NM                                  IS '일본어상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.CHNS_DTL_CD_NM                                 IS '중국어상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.FRN_DTL_CD_NM                                  IS '프랑스어상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.TNS_DTL_CD_NM                                  IS '대만어상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD.EAIF_DT                                        IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_TB_SY_CMCD.EAIF_SN                                        IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_TB_SY_CMCD.FSCR_ID                                        IS '최초생성ID';
COMMENT ON COLUMN IF_TB_SY_CMCD.FSCR_TSP                                       IS '최초생성시각';
COMMENT ON COLUMN IF_TB_SY_CMCD.LSCH_ID                                        IS '최종변경ID';
COMMENT ON COLUMN IF_TB_SY_CMCD.LSCH_TSP                                       IS '최종변경시각';


 /* IF_TB_SY_CMCD_GRP */

DROP TABLE IF_TB_SY_CMCD_GRP PURGE;

CREATE TABLE IF_TB_SY_CMCD_GRP
(
  COM_CAT_CD                     VARCHAR2(15)                                 NOT NULL       
, UPP_COM_CAT_CD                 VARCHAR2(15)                                 NULL           
, COM_CAT_CD_NM                  VARCHAR2(150)                                NULL           
, COM_CAT_CD_REF_TXT             VARCHAR2(900)                                NULL           
, DTL_CD_NFTP_NM                 VARCHAR2(60)                                 NULL           
, DTL_CD_DATA_LEN                NUMBER(9,0)                                  NOT NULL       
, ENGL_COM_CAT_CD_NM             VARCHAR2(150)                                NULL           
, JPN_COM_CAT_CD_NM              VARCHAR2(150)                                NULL           
, CHNS_COM_CAT_CD_NM             VARCHAR2(150)                                NULL           
, FRN_COM_CAT_CD_NM              VARCHAR2(150)                                NULL           
, TNS_COM_CAT_CD_NM              VARCHAR2(150)                                NULL           
, DTL_CD                         VARCHAR2(48)                                 NULL           
, DTL_CD_NM                      VARCHAR2(300)                                NULL           
, UPP_DTL_CD                     VARCHAR2(48)                                 NULL           
, DTL_CD_REF_TXT                 VARCHAR2(900)                                NULL           
, CD_AGRV_PRT                    NUMBER(5,2)                                  NOT NULL       
, MK_SN                          NUMBER(5,0)                                  NOT NULL       
, IIWC_COM_YN                    VARCHAR2(3)                                  NULL           
, USG_YN                         VARCHAR2(3)                                  NULL           
, ENGL_DTL_CD_NM                 VARCHAR2(150)                                NULL           
, JPN_DTL_CD_NM                  VARCHAR2(150)                                NULL           
, CHNS_DTL_CD_NM                 VARCHAR2(150)                                NULL           
, FRN_DTL_CD_NM                  VARCHAR2(150)                                NULL           
, TNS_DTL_CD_NM                  VARCHAR2(150)                                NULL           
, EAIF_DT                        VARCHAR2(24)                                 NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, FSCR_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, LSCH_ID                        VARCHAR2(150)  DEFAULT 'OPT'                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_IF_TB_SY_CMCD_GRP PRIMARY KEY (
    COM_CAT_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SY_CMCD_GRP                                            IS '오설록 EAI 공통코드그룹 수신마스터';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.COM_CAT_CD                                 IS '공통분류코드';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.UPP_COM_CAT_CD                             IS '상위공통분류코드';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.COM_CAT_CD_NM                              IS '공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.COM_CAT_CD_REF_TXT                         IS '공통분류코드참조내용';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.DTL_CD_NFTP_NM                             IS '상세코드인포타입명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.DTL_CD_DATA_LEN                            IS '상세코드데이터길이';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.ENGL_COM_CAT_CD_NM                         IS '영어공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.JPN_COM_CAT_CD_NM                          IS '일본어공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.CHNS_COM_CAT_CD_NM                         IS '중국어공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.FRN_COM_CAT_CD_NM                          IS '프랑스어공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.TNS_COM_CAT_CD_NM                          IS '대만어공통분류코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.DTL_CD                                     IS '상세코드';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.DTL_CD_NM                                  IS '상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.UPP_DTL_CD                                 IS '상위상세코드';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.DTL_CD_REF_TXT                             IS '상세코드참조내용';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.CD_AGRV_PRT                                IS '코드가중비율';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.MK_SN                                      IS '표시순번';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.IIWC_COM_YN                                IS '전사공통여부';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.USG_YN                                     IS '사용여부';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.ENGL_DTL_CD_NM                             IS '영어상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.JPN_DTL_CD_NM                              IS '일본어상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.CHNS_DTL_CD_NM                             IS '중국어상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.FRN_DTL_CD_NM                              IS '프랑스어상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.TNS_DTL_CD_NM                              IS '대만어상세코드명';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.EAIF_DT                                    IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.EAIF_SN                                    IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.FSCR_ID                                    IS '최초생성ID';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.FSCR_TSP                                   IS '최초생성시각';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.LSCH_ID                                    IS '최종변경ID';
COMMENT ON COLUMN IF_TB_SY_CMCD_GRP.LSCH_TSP                                   IS '최종변경시각';


 /* IF_TB_SY_CMCD_L */

DROP TABLE IF_TB_SY_CMCD_L PURGE;

CREATE TABLE IF_TB_SY_CMCD_L
(
  EAIF_DT                        VARCHAR2(24)                                 NOT NULL       
, EAIF_SN                        NUMBER(19,0)                                 NOT NULL       
, PROC_YN                        VARCHAR2(3)                                  NOT NULL       
, ERR_YN                         VARCHAR2(3)                                  NOT NULL       
, ERR_MSG                        CLOB                                         NULL           
, FSCR_ID                        VARCHAR2(150)                                NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(150)                                NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  IF_TB_SY_CMCD_L                                              IS '오설록 EAI 공통코드 수신마스터 처리로그';
COMMENT ON COLUMN IF_TB_SY_CMCD_L.EAIF_DT                                      IS 'EAI인터페이스일자';
COMMENT ON COLUMN IF_TB_SY_CMCD_L.EAIF_SN                                      IS 'EAI인터페이스순번';
COMMENT ON COLUMN IF_TB_SY_CMCD_L.PROC_YN                                      IS '처리여부';
COMMENT ON COLUMN IF_TB_SY_CMCD_L.ERR_YN                                       IS '오류여부';
COMMENT ON COLUMN IF_TB_SY_CMCD_L.ERR_MSG                                      IS '오류내용';
COMMENT ON COLUMN IF_TB_SY_CMCD_L.FSCR_ID                                      IS '최초생성ID';
COMMENT ON COLUMN IF_TB_SY_CMCD_L.FSCR_TSP                                     IS '최초생성시각';
COMMENT ON COLUMN IF_TB_SY_CMCD_L.LSCH_ID                                      IS '최종변경ID';
COMMENT ON COLUMN IF_TB_SY_CMCD_L.LSCH_TSP                                     IS '최종변경시각';


 /* OPPASM_PARTNER */

DROP TABLE OPPASM_PARTNER PURGE;

CREATE TABLE OPPASM_PARTNER
(
  PRTN_ID                        VARCHAR2(30)                                 NOT NULL       
, PRTN_NM                        VARCHAR2(150)                                NULL           
, PRTN_ENG_NM                    VARCHAR2(150)                                NULL           
, BSPR_NO                        VARCHAR2(39)                                 NULL           
, PRTN_RPRV_NM                   VARCHAR2(150)                                NULL           
, PRTN_ST_CD                     VARCHAR2(6)                                  NULL           
, PRTN_TYPE_CD                   VARCHAR2(3)                                  NULL           
, PRTN_GRP_CD                    VARCHAR2(6)                                  NULL           
, PRTN_FORM_CD                   VARCHAR2(12)                                 NULL           
, PRTN_BSKN_NM                   VARCHAR2(150)                                NULL           
, PRTN_TPBS_NM                   VARCHAR2(150)                                NULL           
, TR_BGN_DT                      VARCHAR2(24)                                 NULL           
, TR_END_DT                      VARCHAR2(24)                                 NULL           
, DRFC_CD                        VARCHAR2(3)                                  NULL           
, CMPY_CD                        VARCHAR2(12)                                 NULL           
, SORG_CD                        VARCHAR2(24)                                 NULL           
, UPP_SAL_CHN_CD                 VARCHAR2(12)                                 NULL           
, LR_SAL_CHN_CD                  VARCHAR2(12)                                 NULL           
, SLS_RSPN_EMP_ID                VARCHAR2(36)                                 NULL           
, COL_BNAC_NO_EC                 VARCHAR2(768)                                NULL           
, COL_BNAC_OWN_NM                VARCHAR2(60)                                 NULL           
, CNTC_TPHN                      VARCHAR2(60)                                 NULL           
, CELL_TPHN                      VARCHAR2(60)                                 NULL           
, PRTN_FXNO                      VARCHAR2(60)                                 NULL           
, PRTN_EMAD                      VARCHAR2(300)                                NULL           
, LCL_SN                         NUMBER(5,0)                                  NOT NULL       
, PRTN_INTN_ZIP                  VARCHAR2(30)                                 NULL           
, PRTN_RGN_CD                    VARCHAR2(9)                                  NULL           
, PRTN_CITY_NM                   VARCHAR2(300)                                NULL           
, PRTN_DTL_ADDR1                 VARCHAR2(600)                                NULL           
, PRTN_DTL_ADDR2                 VARCHAR2(600)                                NULL           
, PRTN_DTL_ADDR3                 VARCHAR2(600)                                NULL           
, PRTN_DTL_ADDR4                 VARCHAR2(600)                                NULL           
, PRLS_CTR_CD                    VARCHAR2(30)                                 NULL           
, TRNS_RGN_CD                    VARCHAR2(30)                                 NULL           
, CUST_ACGR_CD                   VARCHAR2(12)                                 NULL           
, SLS_RGN_CD                     VARCHAR2(18)                                 NULL           
, SLS_GRP_CD                     VARCHAR2(9)                                  NULL           
, FRGD_GRP_CD                    VARCHAR2(9)                                  NULL           
, PRTN_PMGR_CD                   VARCHAR2(12)                                 NULL           
, MGNT_SORG_CD                   VARCHAR2(24)                                 NULL           
, MGNT_SLS_ORG_LVL_CD            VARCHAR2(6)                                  NULL           
, PRC_TP_CD                      VARCHAR2(6)                                  NULL           
, SUPP_RT                        NUMBER(11,4)                                 NOT NULL       
, SHOP_CNCP_CD                   VARCHAR2(12)                                 NULL           
, MAIN_BRND_CD                   VARCHAR2(27)                                 NULL           
, DLGD_PRTN_ID                   VARCHAR2(30)                                 NULL           
, RPRS_PRTN_ID                   VARCHAR2(30)                                 NULL           
, CLGT_PRTN_ID                   VARCHAR2(30)                                 NULL           
, PYMT_PRTN_ID                   VARCHAR2(30)                                 NULL           
, DLGD_PLNT_CD                   VARCHAR2(12)                                 NULL           
, DLGD_PRNK_CD                   VARCHAR2(6)                                  NULL           
, SLS_PLNT_CD                    VARCHAR2(12)                                 NULL           
, SLS_SLOC_CD                    VARCHAR2(12)                                 NULL           
, DSTR_CD                        VARCHAR2(12)                                 NULL           
, DDL_CL_CD                      VARCHAR2(6)                                  NULL           
, PYMT_COND_CL_CD                VARCHAR2(12)                                 NULL           
, TAX_CAT_CD                     VARCHAR2(6)                                  NULL           
, SAL_TP_CD                      VARCHAR2(6)                                  NULL           
, SDTP_CD                        VARCHAR2(9)                                  NOT NULL       
, REG_APPL_CL_CD                 VARCHAR2(30)                                 NOT NULL       
, BSUN_CD                        VARCHAR2(12)                                 NULL           
, BU_ORG_CD                      VARCHAR2(12)                                 NULL           
, COL_BANK_CD                    VARCHAR2(9)                                  NULL           
, SLS_ORG_LVL_CD                 VARCHAR2(6)                                  NULL           
, FSCR_ID                        VARCHAR2(150)                                NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(150)                                NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  OPPASM_PARTNER                                               IS 'EAI 거래처 마스터';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_ID                                       IS '거래처ID';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_NM                                       IS '거래처명';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_ENG_NM                                   IS '거래처영문명';
COMMENT ON COLUMN OPPASM_PARTNER.BSPR_NO                                       IS '사업자등록번호';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_RPRV_NM                                  IS '거래처대표자명';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_ST_CD                                    IS '거래처상태코드 (C1140)';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_TYPE_CD                                  IS '거래처종류코드 (10002)';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_GRP_CD                                   IS '거래처그룹코드 (C1120)';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_FORM_CD                                  IS '거래처형태코드 (C1010)';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_BSKN_NM                                  IS '거래처업종명';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_TPBS_NM                                  IS '거래처업태명';
COMMENT ON COLUMN OPPASM_PARTNER.TR_BGN_DT                                     IS '거래시작일자';
COMMENT ON COLUMN OPPASM_PARTNER.TR_END_DT                                     IS '거래종료일자';
COMMENT ON COLUMN OPPASM_PARTNER.DRFC_CD                                       IS '직가맹구분코드 (10003)';
COMMENT ON COLUMN OPPASM_PARTNER.CMPY_CD                                       IS '회사코드 (10015)';
COMMENT ON COLUMN OPPASM_PARTNER.SORG_CD                                       IS '영업조직코드';
COMMENT ON COLUMN OPPASM_PARTNER.UPP_SAL_CHN_CD                                IS '상위판매경로코드 (C1080)';
COMMENT ON COLUMN OPPASM_PARTNER.LR_SAL_CHN_CD                                 IS '하위판매경로코드 (C1090)';
COMMENT ON COLUMN OPPASM_PARTNER.SLS_RSPN_EMP_ID                               IS '영업담당직원ID';
COMMENT ON COLUMN OPPASM_PARTNER.COL_BNAC_NO_EC                                IS '수금계좌번호암호';
COMMENT ON COLUMN OPPASM_PARTNER.COL_BNAC_OWN_NM                               IS '수금계좌소유자명';
COMMENT ON COLUMN OPPASM_PARTNER.CNTC_TPHN                                     IS '연락통합전화번호';
COMMENT ON COLUMN OPPASM_PARTNER.CELL_TPHN                                     IS '휴대폰통합전화번호';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_FXNO                                     IS '거래처팩스번호';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_EMAD                                     IS '거래처이메일주소';
COMMENT ON COLUMN OPPASM_PARTNER.LCL_SN                                        IS '로케일순번';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_INTN_ZIP                                 IS '거래처국제우편번호';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_RGN_CD                                   IS '거래처지역코드 (C1135, C1130)';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_CITY_NM                                  IS '거래처도시명';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_DTL_ADDR1                                IS '거래처상세주소1';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_DTL_ADDR2                                IS '거래처상세주소2';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_DTL_ADDR3                                IS '거래처상세주소3';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_DTL_ADDR4                                IS '거래처상세주소4';
COMMENT ON COLUMN OPPASM_PARTNER.PRLS_CTR_CD                                   IS '손익센터코드 (B1030)';
COMMENT ON COLUMN OPPASM_PARTNER.TRNS_RGN_CD                                   IS '운송지역코드 (B1040)';
COMMENT ON COLUMN OPPASM_PARTNER.CUST_ACGR_CD                                  IS '고객계정그룹코드 (C1190)';
COMMENT ON COLUMN OPPASM_PARTNER.SLS_RGN_CD                                    IS '영업지역코드 (C1136)';
COMMENT ON COLUMN OPPASM_PARTNER.SLS_GRP_CD                                    IS '영업그룹코드 (A1070)';
COMMENT ON COLUMN OPPASM_PARTNER.FRGD_GRP_CD                                   IS '무상품그룹코드 (C1100)';
COMMENT ON COLUMN OPPASM_PARTNER.PRTN_PMGR_CD                                  IS '거래처허용그룹코드 (C1110)';
COMMENT ON COLUMN OPPASM_PARTNER.MGNT_SORG_CD                                  IS '관리영업조직코드';
COMMENT ON COLUMN OPPASM_PARTNER.MGNT_SLS_ORG_LVL_CD                           IS '관리영업조직레벨코드 (10302)';
COMMENT ON COLUMN OPPASM_PARTNER.PRC_TP_CD                                     IS '가격유형코드 (C1150)';
COMMENT ON COLUMN OPPASM_PARTNER.SUPP_RT                                       IS '공급율';
COMMENT ON COLUMN OPPASM_PARTNER.SHOP_CNCP_CD                                  IS '매장컨셉코드 (C1180)';
COMMENT ON COLUMN OPPASM_PARTNER.MAIN_BRND_CD                                  IS '주요브랜드코드 (E1050)';
COMMENT ON COLUMN OPPASM_PARTNER.DLGD_PRTN_ID                                  IS '납품거래처ID';
COMMENT ON COLUMN OPPASM_PARTNER.RPRS_PRTN_ID                                  IS '대표거래처ID';
COMMENT ON COLUMN OPPASM_PARTNER.CLGT_PRTN_ID                                  IS '총괄거래처ID';
COMMENT ON COLUMN OPPASM_PARTNER.PYMT_PRTN_ID                                  IS '지급거래처ID';
COMMENT ON COLUMN OPPASM_PARTNER.DLGD_PLNT_CD                                  IS '납품플랜트코드 (B1010)';
COMMENT ON COLUMN OPPASM_PARTNER.DLGD_PRNK_CD                                  IS '납품우선순위코드 (10082)';
COMMENT ON COLUMN OPPASM_PARTNER.SLS_PLNT_CD                                   IS '영업플랜트코드 (B1010)';
COMMENT ON COLUMN OPPASM_PARTNER.SLS_SLOC_CD                                   IS '영업저장위치코드 (B1020)';
COMMENT ON COLUMN OPPASM_PARTNER.DSTR_CD                                       IS '유통사코드 (F1040)';
COMMENT ON COLUMN OPPASM_PARTNER.DDL_CL_CD                                     IS '배송일구분코드. 납품우선순위코드 (10082)와 동일';
COMMENT ON COLUMN OPPASM_PARTNER.PYMT_COND_CL_CD                               IS '지급조건구분코드 (C1020)';
COMMENT ON COLUMN OPPASM_PARTNER.TAX_CAT_CD                                    IS '세금분류코드 (D1060)';
COMMENT ON COLUMN OPPASM_PARTNER.SAL_TP_CD                                     IS '판매유형코드 (F1020)';
COMMENT ON COLUMN OPPASM_PARTNER.SDTP_CD                                       IS '표준시간대코드 (10013)';
COMMENT ON COLUMN OPPASM_PARTNER.REG_APPL_CL_CD                                IS '등록어플리케이션구분코드 (10001)';
COMMENT ON COLUMN OPPASM_PARTNER.BSUN_CD                                       IS '사업부코드 (A1040)';
COMMENT ON COLUMN OPPASM_PARTNER.BU_ORG_CD                                     IS '부문조직코드 (A1030)';
COMMENT ON COLUMN OPPASM_PARTNER.COL_BANK_CD                                   IS '수금은행코드 (10016)';
COMMENT ON COLUMN OPPASM_PARTNER.SLS_ORG_LVL_CD                                IS '영업조직레벨코드 (10302)';
COMMENT ON COLUMN OPPASM_PARTNER.FSCR_ID                                       IS '최초생성ID';
COMMENT ON COLUMN OPPASM_PARTNER.FSCR_TSP                                      IS '최초생성시각';
COMMENT ON COLUMN OPPASM_PARTNER.LSCH_ID                                       IS '최종변경ID';
COMMENT ON COLUMN OPPASM_PARTNER.LSCH_TSP                                      IS '최종변경시각';


 /* OPPDSH_PROD_PRICE */

DROP TABLE OPPDSH_PROD_PRICE PURGE;

CREATE TABLE OPPDSH_PROD_PRICE
(
  PRD_CD                         VARCHAR2(36)                                 NOT NULL       
, PRC_TP_CD                      VARCHAR2(6)                                  NOT NULL       
, CURR_CD                        VARCHAR2(9)                                  NOT NULL       
, HIST_END_DT                    VARCHAR2(24)                                 NOT NULL       
, MGNT_SORG_CD                   VARCHAR2(24)                                 NOT NULL       
, HIST_BGN_DT                    VARCHAR2(24)                                 NOT NULL       
, STD_AMT                        NUMBER(22,2)                                 NOT NULL       
, SUPP_AMT                       NUMBER(22,2)                                 NOT NULL       
, VAT_AMT                        NUMBER(22,2)                                 NOT NULL       
, SPTX_AMT                       NUMBER(22,2)                                 NOT NULL       
, SCTX_AMT                       NUMBER(22,2)                                 NOT NULL       
, EDTX_AMT                       NUMBER(22,2)                                 NOT NULL       
, FSTX_AMT                       NUMBER(22,2)                                 NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, IF_UPDT_TSP                    TIMESTAMP(6)                                 NULL           
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  OPPDSH_PROD_PRICE                                            IS 'EAI 메뉴 판매가 변경 이력';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.PRD_CD                                     IS '상품코드';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.PRC_TP_CD                                  IS '가격유형코드 (C1150)';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.CURR_CD                                    IS '통화코드 (10024)';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.HIST_END_DT                                IS '이력종료일자';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.MGNT_SORG_CD                               IS '관리영업조직코드';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.HIST_BGN_DT                                IS '이력시작일자';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.STD_AMT                                    IS '표준금액';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.SUPP_AMT                                   IS '공급금액';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.VAT_AMT                                    IS '부가세금액';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.SPTX_AMT                                   IS '특별소비세금액';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.SCTX_AMT                                   IS '개별소비세금액';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.EDTX_AMT                                   IS '교육세금액';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.FSTX_AMT                                   IS '농어촌특별세금액';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.USE_YN                                     IS '사용여부';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.REGI_ID                                    IS '등록자ID';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.REGI_DTIME                                 IS '등록일시';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.UPDT_ID                                    IS '수정자ID';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.UPDT_DTIME                                 IS '수정일시';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.IF_UPDT_TSP                                IS 'EAI수정타임스템프';
COMMENT ON COLUMN OPPDSH_PROD_PRICE.POS_UPDT_TSP                               IS 'POS수정타임스템프';


 /* OPPDSM_SET_PROD */

DROP TABLE OPPDSM_SET_PROD PURGE;

CREATE TABLE OPPDSM_SET_PROD
(
  SET_PRD_CD                     VARCHAR2(36)                                 NOT NULL       
, SET_PRD_COMP_NO                VARCHAR2(12)                                 NOT NULL       
, PLNT_CD                        VARCHAR2(12)                                 NOT NULL       
, COMP_PRD_CD                    VARCHAR2(36)                                 NULL           
, CP_PRD_YN                      VARCHAR2(3)                                  NULL           
, SET_COMP_QTY                   NUMBER(10,0)                                 NOT NULL       
, GF_YN                          VARCHAR2(3)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, IF_UPDT_TSP                    TIMESTAMP(6)                                 NULL           
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  OPPDSM_SET_PROD                                              IS 'EAI 세트상품 구성상품 마스터';
COMMENT ON COLUMN OPPDSM_SET_PROD.SET_PRD_CD                                   IS '세트상품코드';
COMMENT ON COLUMN OPPDSM_SET_PROD.SET_PRD_COMP_NO                              IS '세트상품구성번호';
COMMENT ON COLUMN OPPDSM_SET_PROD.PLNT_CD                                      IS '플랜트코드 (B1010)';
COMMENT ON COLUMN OPPDSM_SET_PROD.COMP_PRD_CD                                  IS '구성상품코드';
COMMENT ON COLUMN OPPDSM_SET_PROD.CP_PRD_YN                                    IS '자사상품여부';
COMMENT ON COLUMN OPPDSM_SET_PROD.SET_COMP_QTY                                 IS '세트구성수량';
COMMENT ON COLUMN OPPDSM_SET_PROD.GF_YN                                        IS '증정품여부';
COMMENT ON COLUMN OPPDSM_SET_PROD.USE_YN                                       IS '사용여부';
COMMENT ON COLUMN OPPDSM_SET_PROD.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN OPPDSM_SET_PROD.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN OPPDSM_SET_PROD.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN OPPDSM_SET_PROD.UPDT_DTIME                                   IS '수정일시';
COMMENT ON COLUMN OPPDSM_SET_PROD.IF_UPDT_TSP                                  IS 'EAI수정타임스템프';
COMMENT ON COLUMN OPPDSM_SET_PROD.POS_UPDT_TSP                                 IS 'POS수정타임스템프';


 /* TB_BA_IV_DISUSE_DTL */

DROP TABLE TB_BA_IV_DISUSE_DTL PURGE;

CREATE TABLE TB_BA_IV_DISUSE_DTL
(
  STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, STOCK_DATE                     VARCHAR2(8)                                  NOT NULL       
, SEQ_NO                         NUMBER(3,0)                                  NOT NULL       
, MENU_CD                        VARCHAR2(26)                                 NOT NULL       
, COST_UPRC                      NUMBER(10,2)                                 NOT NULL       
, CUR_QTY                        NUMBER(9,0)                                  NOT NULL       
, DISUSE_QTY                     NUMBER(9,0)                                  NOT NULL       
, DISUSE_AMT                     NUMBER(12,2)                                 NOT NULL       
, ORD_UNIT_QTY                   NUMBER(8,0)                                  NOT NULL       
, REMARK                         VARCHAR2(200)                                NULL           
, REGI_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, REGI_ID                        VARCHAR2(12)                                 NOT NULL       
, UPDT_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, UPDT_ID                        VARCHAR2(12)                                 NOT NULL       
, CONSTRAINT PK_TB_BA_IV_DISUSE_DTL PRIMARY KEY (
    STORE_CD, STOCK_DATE, SEQ_NO, MENU_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BA_IV_DISUSE_DTL                                          IS '베이커리 - 재고 폐기 상세';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.STORE_CD                                 IS '매장코드';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.STOCK_DATE                               IS '폐기일자';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.SEQ_NO                                   IS '헤드 인덱스(DAY SEQUENCE)';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.MENU_CD                                  IS '상품코드';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.COST_UPRC                                IS '원가';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.CUR_QTY                                  IS '전산 재고수량';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.DISUSE_QTY                               IS '폐기 반영수량';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.DISUSE_AMT                               IS '폐기금액';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.ORD_UNIT_QTY                             IS '주문단위';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.REMARK                                   IS '폐기비고';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.REGI_DTIME                               IS '등록일자';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.REGI_ID                                  IS '등록자';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.UPDT_DTIME                               IS '수정일자';
COMMENT ON COLUMN TB_BA_IV_DISUSE_DTL.UPDT_ID                                  IS '수정자';


 /* TB_BA_IV_DISUSE_HD */

DROP TABLE TB_BA_IV_DISUSE_HD PURGE;

CREATE TABLE TB_BA_IV_DISUSE_HD
(
  STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, STOCK_DATE                     VARCHAR2(8)                                  NOT NULL       
, SEQ_NO                         NUMBER(3,0)                                  NOT NULL       
, IOD_TITLE                      VARCHAR2(100)                                NOT NULL       
, PROC_FG                        VARCHAR2(1)                                  NOT NULL       
, DTL_CNT                        NUMBER(8,0)                                  NOT NULL       
, TOT_DISUSE_AMT                 NUMBER(12,2)                                 NOT NULL       
, DCS_DATE                       VARCHAR2(8)                                  NULL           
, REGI_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, REGI_ID                        VARCHAR2(12)                                 NOT NULL       
, UPDT_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, UPDT_ID                        VARCHAR2(12)                                 NOT NULL       
, CONSTRAINT PK_TB_BA_IV_DISUSE_HD PRIMARY KEY (
    STORE_CD, STOCK_DATE, SEQ_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BA_IV_DISUSE_HD                                           IS '베이커리 - 재고 폐기 헤더';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.STORE_CD                                  IS '매장코드';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.STOCK_DATE                                IS '폐기일자';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.SEQ_NO                                    IS '헤드 인덱스(DAY SEQUENCE)';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.IOD_TITLE                                 IS '제목';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.PROC_FG                                   IS '처리구분 (0:입력, 1:확정)';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.DTL_CNT                                   IS '폐기등록건수';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.TOT_DISUSE_AMT                            IS '총폐기금액';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.DCS_DATE                                  IS '확정일자';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.REGI_DTIME                                IS '등록일자';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.REGI_ID                                   IS '등록자';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.UPDT_DTIME                                IS '수정일자';
COMMENT ON COLUMN TB_BA_IV_DISUSE_HD.UPDT_ID                                   IS '수정자';


 /* TB_BA_ORA_DTL */

DROP TABLE TB_BA_ORA_DTL PURGE;

CREATE TABLE TB_BA_ORA_DTL
(
  ORD_OGN_CD                     VARCHAR2(10)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, TYPE_FG                        VARCHAR2(1)    DEFAULT '0'                   NOT NULL       
, VEND_FG                        VARCHAR2(1)    DEFAULT '0'                   NOT NULL       
, SLIP_NO                        VARCHAR2(10)                                 NOT NULL       
, MENU_CD                        VARCHAR2(26)                                 NOT NULL       
, SLIP_FG                        NUMBER(1,0)                                  NOT NULL       
, OUT_EX_DATE                    VARCHAR2(8)                                  NOT NULL       
, ORD_UNIT_FG                    VARCHAR2(1)                                  NOT NULL       
, ORD_UNIT_QTY                   NUMBER(10,0)   DEFAULT 1                     NOT NULL       
, REG_SPLY_UPRC                  NUMBER(12,2)                                 NULL           
, REG_QTY                        NUMBER(8,0)                                  NOT NULL       
, REG_AMT                        NUMBER(12,2)                                 NULL           
, REG_VAT                        NUMBER(12,2)                                 NULL           
, REG_TOT                        NUMBER(12,2)                                 NULL           
, REMARK                         VARCHAR2(1000)                               NULL           
, SYS_ORDER_QTY                  NUMBER(8,0)                                  NULL           
, REGI_DTIME                     DATE                                         NOT NULL       
, REGI_ID                        VARCHAR2(12)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(12)                                 NOT NULL       
, CONSTRAINT PK_TB_BA_ORA_DTL PRIMARY KEY (
    ORD_OGN_CD, STORE_CD, SLIP_NO, MENU_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BA_ORA_DTL                                                IS '베이커리 - 주문용 상세';
COMMENT ON COLUMN TB_BA_ORA_DTL.ORD_OGN_CD                                     IS '본사/공장코드';
COMMENT ON COLUMN TB_BA_ORA_DTL.STORE_CD                                       IS '매장/매출거래처코드';
COMMENT ON COLUMN TB_BA_ORA_DTL.TYPE_FG                                        IS '주문형태구분(0:본사주문 1:공장주문)';
COMMENT ON COLUMN TB_BA_ORA_DTL.VEND_FG                                        IS '거래처주문여부(0:매장주문 1:거래처주문)';
COMMENT ON COLUMN TB_BA_ORA_DTL.SLIP_NO                                        IS '전표번호(YYMM(4)+SEQ(6))';
COMMENT ON COLUMN TB_BA_ORA_DTL.MENU_CD                                        IS '상품코드';
COMMENT ON COLUMN TB_BA_ORA_DTL.SLIP_FG                                        IS '전표구분(1:주문)';
COMMENT ON COLUMN TB_BA_ORA_DTL.OUT_EX_DATE                                    IS '주문일자';
COMMENT ON COLUMN TB_BA_ORA_DTL.ORD_UNIT_FG                                    IS '주문단위';
COMMENT ON COLUMN TB_BA_ORA_DTL.ORD_UNIT_QTY                                   IS '입수';
COMMENT ON COLUMN TB_BA_ORA_DTL.REG_SPLY_UPRC                                  IS '주문공급단가';
COMMENT ON COLUMN TB_BA_ORA_DTL.REG_QTY                                        IS '주문수량';
COMMENT ON COLUMN TB_BA_ORA_DTL.REG_AMT                                        IS '주문금액';
COMMENT ON COLUMN TB_BA_ORA_DTL.REG_VAT                                        IS '주문금액VAT';
COMMENT ON COLUMN TB_BA_ORA_DTL.REG_TOT                                        IS '주문금액합계';
COMMENT ON COLUMN TB_BA_ORA_DTL.REMARK                                         IS '비고';
COMMENT ON COLUMN TB_BA_ORA_DTL.SYS_ORDER_QTY                                  IS '최소주문수량';
COMMENT ON COLUMN TB_BA_ORA_DTL.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_BA_ORA_DTL.REGI_ID                                        IS '등록자';
COMMENT ON COLUMN TB_BA_ORA_DTL.UPDT_DTIME                                     IS '수정일시';
COMMENT ON COLUMN TB_BA_ORA_DTL.UPDT_ID                                        IS '수정자';


 /* TB_BA_ORA_HD */

DROP TABLE TB_BA_ORA_HD PURGE;

CREATE TABLE TB_BA_ORA_HD
(
  ORD_OGN_CD                     VARCHAR2(10)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, TYPE_FG                        VARCHAR2(1)    DEFAULT '0'                   NOT NULL       
, VEND_FG                        VARCHAR2(1)    DEFAULT '0'                   NOT NULL       
, SLIP_NO                        VARCHAR2(10)                                 NOT NULL       
, SLIP_FG                        VARCHAR2(2)    DEFAULT '1'                   NOT NULL       
, PROC_FG                        VARCHAR2(1)    DEFAULT '0'                   NOT NULL       
, OUT_EX_DATE                    VARCHAR2(8)                                  NOT NULL       
, DT_CNT                         NUMBER(8,0)                                  NOT NULL       
, REG_QTY                        NUMBER(8,0)                                  NOT NULL       
, REG_AMT                        NUMBER(12,2)                                 NULL           
, REG_VAT                        NUMBER(12,2)                                 NULL           
, REG_TOT                        NUMBER(12,2)                                 NULL           
, REMARK                         VARCHAR2(1000)                               NULL           
, ORD_SLIP_NO                    VARCHAR2(10)                                 NULL           
, REGI_DTIME                     DATE                                         NOT NULL       
, REGI_ID                        VARCHAR2(12)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(12)                                 NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BA_ORA_HD                                                 IS '베이커리 - 주문용 헤더';
COMMENT ON COLUMN TB_BA_ORA_HD.ORD_OGN_CD                                      IS '본사/공장코드';
COMMENT ON COLUMN TB_BA_ORA_HD.STORE_CD                                        IS '매장/매출거래처코드';
COMMENT ON COLUMN TB_BA_ORA_HD.TYPE_FG                                         IS '주문형태구분(0:본사주문 1:공장주문)';
COMMENT ON COLUMN TB_BA_ORA_HD.VEND_FG                                         IS '거래처주문여부(0:매장주문 1:거래처주문)';
COMMENT ON COLUMN TB_BA_ORA_HD.SLIP_NO                                         IS '전표번호(YYMM(4)+SEQ(6))';
COMMENT ON COLUMN TB_BA_ORA_HD.SLIP_FG                                         IS '전표구분(1:주문)';
COMMENT ON COLUMN TB_BA_ORA_HD.PROC_FG                                         IS '진행구분(0:주문등록, 1:주문확정, 2:분배저장, 3:분배완료, 4:출고확정, 5:입고확정)';
COMMENT ON COLUMN TB_BA_ORA_HD.OUT_EX_DATE                                     IS '주문일자';
COMMENT ON COLUMN TB_BA_ORA_HD.DT_CNT                                          IS '상세건수';
COMMENT ON COLUMN TB_BA_ORA_HD.REG_QTY                                         IS '주문수량';
COMMENT ON COLUMN TB_BA_ORA_HD.REG_AMT                                         IS '주문금액';
COMMENT ON COLUMN TB_BA_ORA_HD.REG_VAT                                         IS '주문금액VAT';
COMMENT ON COLUMN TB_BA_ORA_HD.REG_TOT                                         IS '주문금액합계';
COMMENT ON COLUMN TB_BA_ORA_HD.REMARK                                          IS '비고';
COMMENT ON COLUMN TB_BA_ORA_HD.ORD_SLIP_NO                                     IS '출고전표번호';
COMMENT ON COLUMN TB_BA_ORA_HD.REGI_DTIME                                      IS '등록일시';
COMMENT ON COLUMN TB_BA_ORA_HD.REGI_ID                                         IS '등록자';
COMMENT ON COLUMN TB_BA_ORA_HD.UPDT_DTIME                                      IS '수정일시';
COMMENT ON COLUMN TB_BA_ORA_HD.UPDT_ID                                         IS '수정자';


 /* TB_BA_ORD_DIV_DTL */

DROP TABLE TB_BA_ORD_DIV_DTL PURGE;

CREATE TABLE TB_BA_ORD_DIV_DTL
(
  ORD_OGN_CD                     VARCHAR2(10)                                 NOT NULL       
, OUT_EX_DATE                    VARCHAR2(8)                                  NOT NULL       
, SEQ                            NUMBER(10,0)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, TYPE_FG                        VARCHAR2(1)                                  NOT NULL       
, VEND_FG                        VARCHAR2(1)                                  NOT NULL       
, SLIP_FG                        NUMBER(1,0)                                  NOT NULL       
, MENU_CD                        VARCHAR2(26)                                 NOT NULL       
, ORD_UNIT_FG                    VARCHAR2(1)                                  NOT NULL       
, ORD_UNIT_QTY                   NUMBER(10,0)                                 NOT NULL       
, REG_SPLY_UPRC                  NUMBER(12,2)                                 NOT NULL       
, SYS_ORDER_QTY                  NUMBER(8,0)                                  NULL           
, REG_QTY                        NUMBER(8,0)                                  NOT NULL       
, REG_AMT                        NUMBER(12,2)                                 NOT NULL       
, REG_VAT                        NUMBER(12,2)                                 NOT NULL       
, REG_TOT                        NUMBER(12,2)                                 NOT NULL       
, MNG_SPLY_UPRC                  NUMBER(12,2)                                 NOT NULL       
, MNG_QTY                        NUMBER(8,0)                                  NOT NULL       
, MNG_AMT                        NUMBER(12,2)                                 NULL           
, MNG_VAT                        NUMBER(12,2)                                 NULL           
, MNG_TOT                        NUMBER(12,2)                                 NULL           
, PROC_FG                        VARCHAR2(1)                                  NOT NULL       
, SLIP_NO                        VARCHAR2(10)                                 NULL           
, ORD_SLIP_NO                    VARCHAR2(10)                                 NULL           
, REMARK                         VARCHAR2(1000)                               NULL           
, REGI_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, REGI_ID                        VARCHAR2(12)                                 NOT NULL       
, UPDT_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, UPDT_ID                        VARCHAR2(12)                                 NOT NULL       
, CONSTRAINT PK_TB_BA_ORD_DIV_DTL PRIMARY KEY (
    ORD_OGN_CD, OUT_EX_DATE, SEQ
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BA_ORD_DIV_DTL                                            IS '베이커리 - 주문 분배 상세';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.ORD_OGN_CD                                 IS '공장코드';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.OUT_EX_DATE                                IS '주문일자';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.SEQ                                        IS '본사코드-출고예약일자에 따른 순번';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.STORE_CD                                   IS '매장/매출거래처코드';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.TYPE_FG                                    IS '주문형태구분 ( 0:본사주문 1:공장주문 )';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.VEND_FG                                    IS '거래처주문여부 ( 0:매장주문 1:거래처주문 )';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.SLIP_FG                                    IS '전표구분 ( 1:주문, -1:반품 )';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.MENU_CD                                    IS '상품코드';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.ORD_UNIT_FG                                IS '주문단위';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.ORD_UNIT_QTY                               IS '입수';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.REG_SPLY_UPRC                              IS '주문공급단가';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.SYS_ORDER_QTY                              IS '권고발주수량(주문단위)';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.REG_QTY                                    IS '주문수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.REG_AMT                                    IS '주문금액(REG_SPLY_UPRC * REG_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.REG_VAT                                    IS '주문금액VAT';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.REG_TOT                                    IS '주문금액합계';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.MNG_SPLY_UPRC                              IS '분배공급단가';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.MNG_QTY                                    IS '분배수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.MNG_AMT                                    IS '분배금액(MNG_SPLY_UPRC * MNG_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.MNG_VAT                                    IS '분배금액VAT';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.MNG_TOT                                    IS '분배금액합계';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.PROC_FG                                    IS '진행구분 ( 0:등록, 1:분배완료, 2:출고확정 )';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.SLIP_NO                                    IS '주문전표번호 ( YYMM(4)+SEQ(6) )';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.ORD_SLIP_NO                                IS '출고전표번호 ( YYMM(4)+SEQ(6) )';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.REMARK                                     IS '비고';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.REGI_DTIME                                 IS '등록일시';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.REGI_ID                                    IS '등록자';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.UPDT_DTIME                                 IS '수정일시';
COMMENT ON COLUMN TB_BA_ORD_DIV_DTL.UPDT_ID                                    IS '수정자';


 /* TB_BA_ORD_DTL */

DROP TABLE TB_BA_ORD_DTL PURGE;

CREATE TABLE TB_BA_ORD_DTL
(
  ORD_OGN_CD                     VARCHAR2(10)                                 NOT NULL       
, TYPE_FG                        VARCHAR2(1)                                  NOT NULL       
, VEND_FG                        VARCHAR2(1)                                  NOT NULL       
, SLIP_NO                        VARCHAR2(10)                                 NOT NULL       
, SEQ                            NUMBER(10,0)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, SLIP_FG                        NUMBER(1,0)                                  NOT NULL       
, PROC_FG                        VARCHAR2(1)                                  NOT NULL       
, MENU_CD                        VARCHAR2(26)                                 NOT NULL       
, ORD_UNIT_FG                    VARCHAR2(1)                                  NOT NULL       
, ORD_UNIT_QTY                   NUMBER(10,0)                                 NOT NULL       
, OUT_EX_DATE                    VARCHAR2(8)                                  NOT NULL       
, ORA_SLIP_NO                    VARCHAR2(10)                                 NULL           
, REG_SPLY_UPRC                  NUMBER(12,2)                                 NULL           
, SYS_ORDER_QTY                  NUMBER(8,0)                                  NULL           
, REG_QTY                        NUMBER(8,0)                                  NOT NULL       
, REG_AMT                        NUMBER(12,2)                                 NULL           
, REG_VAT                        NUMBER(12,2)                                 NULL           
, REG_TOT                        NUMBER(12,2)                                 NULL           
, MNG_SPLY_UPRC                  NUMBER(12,2)                                 NULL           
, MNG_QTY                        NUMBER(8,0)                                  NOT NULL       
, MNG_AMT                        NUMBER(12,2)                                 NULL           
, MNG_VAT                        NUMBER(12,2)                                 NULL           
, MNG_TOT                        NUMBER(12,2)                                 NULL           
, OUT_SPLY_UPRC                  NUMBER(12,2)                                 NULL           
, OUT_QTY                        NUMBER(8,0)                                  NOT NULL       
, OUT_AMT                        NUMBER(12,2)                                 NULL           
, OUT_VAT                        NUMBER(12,2)                                 NULL           
, OUT_TOT                        NUMBER(12,2)                                 NULL           
, IN_SPLY_UPRC                   NUMBER(12,2)                                 NULL           
, IN_QTY                         NUMBER(8,0)                                  NOT NULL       
, IN_AMT                         NUMBER(12,2)                                 NULL           
, IN_VAT                         NUMBER(12,2)                                 NULL           
, IN_TOT                         NUMBER(12,2)                                 NULL           
, REMARK                         VARCHAR2(1000)                               NULL           
, REGI_DTIME                     DATE                                         NOT NULL       
, REGI_ID                        VARCHAR2(12)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(12)                                 NOT NULL       
, CONSTRAINT PK_TB_BA_ORD_DTL PRIMARY KEY (
    ORD_OGN_CD, TYPE_FG, SLIP_NO, SEQ
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BA_ORD_DTL                                                IS '베이커리 - 주문 상세';
COMMENT ON COLUMN TB_BA_ORD_DTL.ORD_OGN_CD                                     IS '본사/공장코드';
COMMENT ON COLUMN TB_BA_ORD_DTL.TYPE_FG                                        IS '주문형태구분 ( 0:본사주문 1:공장주문 )';
COMMENT ON COLUMN TB_BA_ORD_DTL.VEND_FG                                        IS '거래처주문여부 ( 0:매장주문 1:거래처주문 )';
COMMENT ON COLUMN TB_BA_ORD_DTL.SLIP_NO                                        IS '전표번호 ( YYMM(4)+SEQ(6) )';
COMMENT ON COLUMN TB_BA_ORD_DTL.SEQ                                            IS '본사코드-전표번호에 따른 순번';
COMMENT ON COLUMN TB_BA_ORD_DTL.STORE_CD                                       IS '매장/매출거래처코드';
COMMENT ON COLUMN TB_BA_ORD_DTL.SLIP_FG                                        IS '전표구분 ( 1:주문, -1:반품 )';
COMMENT ON COLUMN TB_BA_ORD_DTL.PROC_FG                                        IS '진행구분 ( CCD_CODEM_T : 113 ) 0:SAP수신대기 1:수주확정 2:출고확정 3:입고확정';
COMMENT ON COLUMN TB_BA_ORD_DTL.MENU_CD                                        IS '상품코드';
COMMENT ON COLUMN TB_BA_ORD_DTL.ORD_UNIT_FG                                    IS '주문단위';
COMMENT ON COLUMN TB_BA_ORD_DTL.ORD_UNIT_QTY                                   IS '입수';
COMMENT ON COLUMN TB_BA_ORD_DTL.OUT_EX_DATE                                    IS '주문일자';
COMMENT ON COLUMN TB_BA_ORD_DTL.ORA_SLIP_NO                                    IS '주문전표번호 ( YYMM(4)+SEQ(6) )';
COMMENT ON COLUMN TB_BA_ORD_DTL.REG_SPLY_UPRC                                  IS '주문공급단가';
COMMENT ON COLUMN TB_BA_ORD_DTL.SYS_ORDER_QTY                                  IS '최소주문수량';
COMMENT ON COLUMN TB_BA_ORD_DTL.REG_QTY                                        IS '주문수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_DTL.REG_AMT                                        IS '주문금액(REG_SPLY_UPRC * REG_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_DTL.REG_VAT                                        IS '주문금액VAT';
COMMENT ON COLUMN TB_BA_ORD_DTL.REG_TOT                                        IS '주문금액합계';
COMMENT ON COLUMN TB_BA_ORD_DTL.MNG_SPLY_UPRC                                  IS '분배공급단가';
COMMENT ON COLUMN TB_BA_ORD_DTL.MNG_QTY                                        IS '분배수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_DTL.MNG_AMT                                        IS '분배금액(MNG_SPLY_UPRC * MNG_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_DTL.MNG_VAT                                        IS '분배금액VAT';
COMMENT ON COLUMN TB_BA_ORD_DTL.MNG_TOT                                        IS '분배금액합계';
COMMENT ON COLUMN TB_BA_ORD_DTL.OUT_SPLY_UPRC                                  IS '출고공급단가';
COMMENT ON COLUMN TB_BA_ORD_DTL.OUT_QTY                                        IS '출고수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_DTL.OUT_AMT                                        IS '출고금액(OUT_SPLY_UPRC * OUT_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_DTL.OUT_VAT                                        IS '출고금액VAT';
COMMENT ON COLUMN TB_BA_ORD_DTL.OUT_TOT                                        IS '출고금액합계';
COMMENT ON COLUMN TB_BA_ORD_DTL.IN_SPLY_UPRC                                   IS '입고공급단가';
COMMENT ON COLUMN TB_BA_ORD_DTL.IN_QTY                                         IS '입고수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_DTL.IN_AMT                                         IS '입고금액(IN_SPLY_UPRC * IN_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_DTL.IN_VAT                                         IS '입고금액VAT';
COMMENT ON COLUMN TB_BA_ORD_DTL.IN_TOT                                         IS '입고금액합계';
COMMENT ON COLUMN TB_BA_ORD_DTL.REMARK                                         IS '비고';
COMMENT ON COLUMN TB_BA_ORD_DTL.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_BA_ORD_DTL.REGI_ID                                        IS '등록자';
COMMENT ON COLUMN TB_BA_ORD_DTL.UPDT_DTIME                                     IS '수정일시';
COMMENT ON COLUMN TB_BA_ORD_DTL.UPDT_ID                                        IS '수정자';


 /* TB_BA_ORD_DTL_MIG */

DROP TABLE TB_BA_ORD_DTL_MIG PURGE;

CREATE TABLE TB_BA_ORD_DTL_MIG
(
  ORD_OGN_CD                     VARCHAR2(10)                                 NOT NULL       
, TYPE_FG                        VARCHAR2(1)                                  NOT NULL       
, VEND_FG                        VARCHAR2(1)                                  NOT NULL       
, SLIP_NO                        VARCHAR2(10)                                 NOT NULL       
, SEQ                            NUMBER(10,0)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, SLIP_FG                        NUMBER(1,0)                                  NOT NULL       
, PROC_FG                        VARCHAR2(1)                                  NOT NULL       
, MENU_CD                        VARCHAR2(26)                                 NOT NULL       
, ORD_UNIT_FG                    VARCHAR2(1)                                  NOT NULL       
, ORD_UNIT_QTY                   NUMBER(10,0)                                 NOT NULL       
, OUT_EX_DATE                    VARCHAR2(8)                                  NOT NULL       
, ORA_SLIP_NO                    VARCHAR2(10)                                 NULL           
, REG_SPLY_UPRC                  NUMBER(12,2)                                 NULL           
, SYS_ORDER_QTY                  NUMBER(8,0)                                  NULL           
, REG_QTY                        NUMBER(8,0)                                  NOT NULL       
, REG_AMT                        NUMBER(12,2)                                 NULL           
, REG_VAT                        NUMBER(12,2)                                 NULL           
, REG_TOT                        NUMBER(12,2)                                 NULL           
, MNG_SPLY_UPRC                  NUMBER(12,2)                                 NULL           
, MNG_QTY                        NUMBER(8,0)                                  NOT NULL       
, MNG_AMT                        NUMBER(12,2)                                 NULL           
, MNG_VAT                        NUMBER(12,2)                                 NULL           
, MNG_TOT                        NUMBER(12,2)                                 NULL           
, OUT_SPLY_UPRC                  NUMBER(12,2)                                 NULL           
, OUT_QTY                        NUMBER(8,0)                                  NOT NULL       
, OUT_AMT                        NUMBER(12,2)                                 NULL           
, OUT_VAT                        NUMBER(12,2)                                 NULL           
, OUT_TOT                        NUMBER(12,2)                                 NULL           
, IN_SPLY_UPRC                   NUMBER(12,2)                                 NULL           
, IN_QTY                         NUMBER(8,0)                                  NOT NULL       
, IN_AMT                         NUMBER(12,2)                                 NULL           
, IN_VAT                         NUMBER(12,2)                                 NULL           
, IN_TOT                         NUMBER(12,2)                                 NULL           
, REMARK                         VARCHAR2(1000)                               NULL           
, REGI_DTIME                     DATE                                         NOT NULL       
, REGI_ID                        VARCHAR2(12)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(12)                                 NOT NULL       
, CONSTRAINT PK_TB_BA_ORD_DTL_MIG PRIMARY KEY (
    ORD_OGN_CD, TYPE_FG, SLIP_NO, SEQ
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BA_ORD_DTL_MIG                                            IS '베이커리 - 주문 상세';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.ORD_OGN_CD                                 IS '본사/공장코드';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.TYPE_FG                                    IS '주문형태구분 ( 0:본사주문 1:공장주문 )';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.VEND_FG                                    IS '거래처주문여부 ( 0:매장주문 1:거래처주문 )';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.SLIP_NO                                    IS '전표번호 ( YYMM(4)+SEQ(6) )';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.SEQ                                        IS '본사코드-전표번호에 따른 순번';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.STORE_CD                                   IS '매장/매출거래처코드';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.SLIP_FG                                    IS '전표구분 ( 1:주문, -1:반품 )';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.PROC_FG                                    IS '진행구분 ( CCD_CODEM_T : 113 ) 0:SAP수신대기 1:수주확정 2:출고확정 3:입고확정';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.MENU_CD                                    IS '상품코드';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.ORD_UNIT_FG                                IS '주문단위';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.ORD_UNIT_QTY                               IS '입수';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.OUT_EX_DATE                                IS '주문일자';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.ORA_SLIP_NO                                IS '주문전표번호 ( YYMM(4)+SEQ(6) )';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.REG_SPLY_UPRC                              IS '주문공급단가';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.SYS_ORDER_QTY                              IS '최소주문수량';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.REG_QTY                                    IS '주문수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.REG_AMT                                    IS '주문금액(REG_SPLY_UPRC * REG_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.REG_VAT                                    IS '주문금액VAT';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.REG_TOT                                    IS '주문금액합계';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.MNG_SPLY_UPRC                              IS '분배공급단가';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.MNG_QTY                                    IS '분배수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.MNG_AMT                                    IS '분배금액(MNG_SPLY_UPRC * MNG_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.MNG_VAT                                    IS '분배금액VAT';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.MNG_TOT                                    IS '분배금액합계';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.OUT_SPLY_UPRC                              IS '출고공급단가';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.OUT_QTY                                    IS '출고수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.OUT_AMT                                    IS '출고금액(OUT_SPLY_UPRC * OUT_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.OUT_VAT                                    IS '출고금액VAT';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.OUT_TOT                                    IS '출고금액합계';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.IN_SPLY_UPRC                               IS '입고공급단가';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.IN_QTY                                     IS '입고수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.IN_AMT                                     IS '입고금액(IN_SPLY_UPRC * IN_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.IN_VAT                                     IS '입고금액VAT';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.IN_TOT                                     IS '입고금액합계';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.REMARK                                     IS '비고';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.REGI_DTIME                                 IS '등록일시';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.REGI_ID                                    IS '등록자';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.UPDT_DTIME                                 IS '수정일시';
COMMENT ON COLUMN TB_BA_ORD_DTL_MIG.UPDT_ID                                    IS '수정자';


 /* TB_BA_ORD_ERR_DTL */

DROP TABLE TB_BA_ORD_ERR_DTL PURGE;

CREATE TABLE TB_BA_ORD_ERR_DTL
(
  ORD_OGN_CD                     VARCHAR2(10)                                 NOT NULL       
, TYPE_FG                        VARCHAR2(1)                                  NOT NULL       
, SLIP_NO                        VARCHAR2(10)                                 NOT NULL       
, SEQ                            NUMBER(10,0)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, SLIP_FG                        NUMBER(1,0)                                  NOT NULL       
, ERR_FG                         VARCHAR2(2)                                  NULL           
, MENU_CD                        VARCHAR2(26)                                 NOT NULL       
, ORD_UNIT_FG                    VARCHAR2(1)                                  NOT NULL       
, ORD_UNIT_QTY                   NUMBER(10,0)                                 NOT NULL       
, OUT_SPLY_UPRC                  NUMBER(12,2)                                 NOT NULL       
, OUT_QTY                        NUMBER(8,0)                                  NULL           
, OUT_AMT                        NUMBER(12,2)                                 NULL           
, OUT_VAT                        NUMBER(12,2)                                 NULL           
, OUT_TOT                        NUMBER(12,2)                                 NULL           
, IN_SPLY_UPRC                   NUMBER(12,2)                                 NOT NULL       
, IN_QTY                         NUMBER(8,0)                                  NULL           
, IN_AMT                         NUMBER(12,2)                                 NULL           
, IN_VAT                         NUMBER(12,2)                                 NULL           
, IN_TOT                         NUMBER(12,2)                                 NULL           
, REMARK                         VARCHAR2(1000)                               NULL           
, REGI_DTIME                     DATE           DEFAULT systimestamp          NULL           
, REGI_ID                        VARCHAR2(12)                                 NOT NULL       
, UPDT_DTIME                     DATE           DEFAULT systimestamp          NULL           
, UPDT_ID                        VARCHAR2(12)                                 NOT NULL       
, CONSTRAINT PK_TB_BA_ORD_ERR_DTL PRIMARY KEY (
    ORD_OGN_CD, TYPE_FG, SLIP_NO, SEQ
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BA_ORD_ERR_DTL                                            IS '베이커리 - 물량 오류 상세';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.ORD_OGN_CD                                 IS '본사/공장코드';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.TYPE_FG                                    IS '주문형태구분 ( 0:본사주문 1:공장주문 )';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.SLIP_NO                                    IS '전표번호 ( YYMM(4)+SEQ(6) )';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.SEQ                                        IS '본사코드-전표번호에 따른 순번';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.STORE_CD                                   IS '매장/매출거래처코드';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.SLIP_FG                                    IS '전표구분 ( 1:주문, -1:반품 )';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.ERR_FG                                     IS '물량오류사유구분 ( CCD_CODEM_T : 115 )';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.MENU_CD                                    IS '상품코드';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.ORD_UNIT_FG                                IS '주문단위';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.ORD_UNIT_QTY                               IS '입수';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.OUT_SPLY_UPRC                              IS '출고공급단가';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.OUT_QTY                                    IS '출고수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.OUT_AMT                                    IS '출고금액(OUT_SPLY_UPRC * OUT_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.OUT_VAT                                    IS '출고금액VAT';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.OUT_TOT                                    IS '출고금액합계';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.IN_SPLY_UPRC                               IS '입고공급단가';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.IN_QTY                                     IS '입고수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.IN_AMT                                     IS '입고금액(IN_SPLY_UPRC * IN_QTY / ORD_UNIT_QTY)';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.IN_VAT                                     IS '입고금액VAT';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.IN_TOT                                     IS '입고금액합계';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.REMARK                                     IS '비고';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.REGI_DTIME                                 IS '등록일시';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.REGI_ID                                    IS '등록자';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.UPDT_DTIME                                 IS '수정일시';
COMMENT ON COLUMN TB_BA_ORD_ERR_DTL.UPDT_ID                                    IS '수정자';


 /* TB_BA_ORD_ERR_HD */

DROP TABLE TB_BA_ORD_ERR_HD PURGE;

CREATE TABLE TB_BA_ORD_ERR_HD
(
  ORD_OGN_CD                     VARCHAR2(10)                                 NOT NULL       
, TYPE_FG                        VARCHAR2(1)                                  NOT NULL       
, VEND_FG                        VARCHAR2(1)                                  NOT NULL       
, SLIP_NO                        VARCHAR2(10)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, SLIP_FG                        NUMBER(1,0)                                  NOT NULL       
, PROC_FG                        VARCHAR2(1)                                  NOT NULL       
, DT_CNT                         NUMBER(8,0)                                  NOT NULL       
, OUT_DATE                       VARCHAR2(8)                                  NULL           
, OUT_QTY                        NUMBER(8,0)                                  NULL           
, OUT_AMT                        NUMBER(12,2)                                 NULL           
, OUT_VAT                        NUMBER(12,2)                                 NULL           
, OUT_TOT                        NUMBER(12,2)                                 NULL           
, OUT_DT                         VARCHAR2(20)                                 NULL           
, OUT_ID                         VARCHAR2(12)                                 NULL           
, IN_DATE                        VARCHAR2(8)                                  NULL           
, IN_QTY                         NUMBER(8,0)                                  NULL           
, IN_AMT                         NUMBER(12,2)                                 NULL           
, IN_VAT                         NUMBER(12,2)                                 NULL           
, IN_TOT                         NUMBER(12,2)                                 NULL           
, IN_DT                          VARCHAR2(20)                                 NULL           
, IN_ID                          VARCHAR2(12)                                 NULL           
, REMARK                         VARCHAR2(1000)                               NULL           
, SAP_FG                         VARCHAR2(1)                                  NULL           
, REGI_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, REGI_ID                        VARCHAR2(12)                                 NOT NULL       
, UPDT_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, UPDT_ID                        VARCHAR2(12)                                 NOT NULL       
, CONSTRAINT PK_TB_BA_ORD_ERR_HD PRIMARY KEY (
    ORD_OGN_CD, SLIP_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BA_ORD_ERR_HD                                             IS '베이커리 - 물량 오류 헤더';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.ORD_OGN_CD                                  IS '본사/공장코드';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.TYPE_FG                                     IS '주문형태구분 ( 0:본사주문 1:공장주문 )';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.VEND_FG                                     IS '거래처주문여부 ( 0:매장주문 1:거래처주문 )';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.SLIP_NO                                     IS '전표번호 ( YYMM(4)+SEQ(6) )';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.STORE_CD                                    IS '매장/매출거래처코드';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.SLIP_FG                                     IS '전표구분 ( 1:주문, -1:반품 )';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.PROC_FG                                     IS '진행구분 ( 0:입력, 1:확정  2:SAP 취소 )';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.DT_CNT                                      IS '상세건수';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.OUT_DATE                                    IS '출고일자(수불기준일자)';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.OUT_QTY                                     IS '출고수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.OUT_AMT                                     IS '출고금액';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.OUT_VAT                                     IS '출고금액VAT';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.OUT_TOT                                     IS '출고금액합계';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.OUT_DT                                      IS '출고일시';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.OUT_ID                                      IS '출고자';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.IN_DATE                                     IS '입고일자(수불기준일자)';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.IN_QTY                                      IS '입고수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.IN_AMT                                      IS '입고금액';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.IN_VAT                                      IS '입고금액VAT';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.IN_TOT                                      IS '입고금액합계';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.IN_DT                                       IS '입고일시';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.IN_ID                                       IS '입고자';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.REMARK                                      IS '비고';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.SAP_FG                                      IS '물량오류구분 ( 0:물량오류, 1:SAP환입 )';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.REGI_ID                                     IS '등록자';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.UPDT_DTIME                                  IS '수정일시';
COMMENT ON COLUMN TB_BA_ORD_ERR_HD.UPDT_ID                                     IS '수정자';


 /* TB_BA_ORD_HD */

DROP TABLE TB_BA_ORD_HD PURGE;

CREATE TABLE TB_BA_ORD_HD
(
  ORD_OGN_CD                     VARCHAR2(10)                                 NOT NULL       
, TYPE_FG                        VARCHAR2(1)                                  NOT NULL       
, VEND_FG                        VARCHAR2(1)                                  NOT NULL       
, SLIP_NO                        VARCHAR2(10)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, SLIP_FG                        NUMBER(1,0)                                  NOT NULL       
, SLIP_KIND                      VARCHAR2(1)                                  NOT NULL       
, PROC_FG                        VARCHAR2(1)                                  NOT NULL       
, OUT_EX_DATE                    VARCHAR2(8)                                  NULL           
, DT_CNT                         NUMBER(8,0)                                  NOT NULL       
, REG_QTY                        NUMBER(8,0)                                  NOT NULL       
, REG_AMT                        NUMBER(12,2)                                 NULL           
, REG_VAT                        NUMBER(12,2)                                 NULL           
, REG_TOT                        NUMBER(12,2)                                 NULL           
, MNG_QTY                        NUMBER(8,0)                                  NOT NULL       
, MNG_AMT                        NUMBER(12,2)                                 NULL           
, MNG_VAT                        NUMBER(12,2)                                 NULL           
, MNG_TOT                        NUMBER(12,2)                                 NULL           
, OUT_DATE                       VARCHAR2(8)                                  NULL           
, OUT_QTY                        NUMBER(8,0)                                  NOT NULL       
, OUT_AMT                        NUMBER(12,2)                                 NULL           
, OUT_VAT                        NUMBER(12,2)                                 NULL           
, OUT_TOT                        NUMBER(12,2)                                 NULL           
, OUT_DT                         VARCHAR2(14)                                 NULL           
, OUT_ID                         VARCHAR2(12)                                 NULL           
, IN_DATE                        VARCHAR2(8)                                  NULL           
, IN_QTY                         NUMBER(8,0)                                  NOT NULL       
, IN_AMT                         NUMBER(12,2)                                 NULL           
, IN_VAT                         NUMBER(12,2)                                 NULL           
, IN_TOT                         NUMBER(12,2)                                 NULL           
, IN_DT                          VARCHAR2(14)                                 NULL           
, IN_ID                          VARCHAR2(12)                                 NULL           
, REMARK                         VARCHAR2(1000)                               NULL           
, REGI_DTIME                     DATE                                         NOT NULL       
, REGI_ID                        VARCHAR2(12)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(12)                                 NOT NULL       
, CONSTRAINT PK_TB_BA_ORD_HD PRIMARY KEY (
    ORD_OGN_CD, TYPE_FG, SLIP_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BA_ORD_HD                                                 IS '베이커리 - 주문 헤더';
COMMENT ON COLUMN TB_BA_ORD_HD.ORD_OGN_CD                                      IS '본사/공장코드';
COMMENT ON COLUMN TB_BA_ORD_HD.TYPE_FG                                         IS '주문형태구분 ( 0:본사주문 1:공장주문 )';
COMMENT ON COLUMN TB_BA_ORD_HD.VEND_FG                                         IS '거래처주문여부 ( 0:매장주문 1:거래처주문 )';
COMMENT ON COLUMN TB_BA_ORD_HD.SLIP_NO                                         IS '전표번호 ( YYMM(4)+SEQ(6) )';
COMMENT ON COLUMN TB_BA_ORD_HD.STORE_CD                                        IS '매장/매출거래처코드';
COMMENT ON COLUMN TB_BA_ORD_HD.SLIP_FG                                         IS '전표구분 ( 1:주문, -1:반품 )';
COMMENT ON COLUMN TB_BA_ORD_HD.SLIP_KIND                                       IS '전표종류 ( CCD_CODEM_T : 114 ) 0:일반 1:물량오류 2:이동';
COMMENT ON COLUMN TB_BA_ORD_HD.PROC_FG                                         IS '진행구분 ( CCD_CODEM_T : 113 ) 1:등록 2:출고확정 3:입고확정';
COMMENT ON COLUMN TB_BA_ORD_HD.OUT_EX_DATE                                     IS '주문일자';
COMMENT ON COLUMN TB_BA_ORD_HD.DT_CNT                                          IS '상세건수';
COMMENT ON COLUMN TB_BA_ORD_HD.REG_QTY                                         IS '주문수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_HD.REG_AMT                                         IS '주문금액';
COMMENT ON COLUMN TB_BA_ORD_HD.REG_VAT                                         IS '주문금액VAT';
COMMENT ON COLUMN TB_BA_ORD_HD.REG_TOT                                         IS '주문금액합계';
COMMENT ON COLUMN TB_BA_ORD_HD.MNG_QTY                                         IS '분배수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_HD.MNG_AMT                                         IS '분배금액';
COMMENT ON COLUMN TB_BA_ORD_HD.MNG_VAT                                         IS '분배금액VAT';
COMMENT ON COLUMN TB_BA_ORD_HD.MNG_TOT                                         IS '분배금액합계';
COMMENT ON COLUMN TB_BA_ORD_HD.OUT_DATE                                        IS '출고일자(수불기준일자)';
COMMENT ON COLUMN TB_BA_ORD_HD.OUT_QTY                                         IS '출고수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_HD.OUT_AMT                                         IS '출고금액';
COMMENT ON COLUMN TB_BA_ORD_HD.OUT_VAT                                         IS '출고금액VAT';
COMMENT ON COLUMN TB_BA_ORD_HD.OUT_TOT                                         IS '출고금액합계';
COMMENT ON COLUMN TB_BA_ORD_HD.OUT_DT                                          IS '출고일시';
COMMENT ON COLUMN TB_BA_ORD_HD.OUT_ID                                          IS '출고자';
COMMENT ON COLUMN TB_BA_ORD_HD.IN_DATE                                         IS '입고일자(수불기준일자)';
COMMENT ON COLUMN TB_BA_ORD_HD.IN_QTY                                          IS '입고수량합계(낱개)';
COMMENT ON COLUMN TB_BA_ORD_HD.IN_AMT                                          IS '입고금액';
COMMENT ON COLUMN TB_BA_ORD_HD.IN_VAT                                          IS '입고금액VAT';
COMMENT ON COLUMN TB_BA_ORD_HD.IN_TOT                                          IS '입고금액합계';
COMMENT ON COLUMN TB_BA_ORD_HD.IN_DT                                           IS '입고일시';
COMMENT ON COLUMN TB_BA_ORD_HD.IN_ID                                           IS '입고자';
COMMENT ON COLUMN TB_BA_ORD_HD.REMARK                                          IS '비고';
COMMENT ON COLUMN TB_BA_ORD_HD.REGI_DTIME                                      IS '등록일시';
COMMENT ON COLUMN TB_BA_ORD_HD.REGI_ID                                         IS '등록자';
COMMENT ON COLUMN TB_BA_ORD_HD.UPDT_DTIME                                      IS '수정일시';
COMMENT ON COLUMN TB_BA_ORD_HD.UPDT_ID                                         IS '수정자';


 /* TB_BA_VENDR_MST */

DROP TABLE TB_BA_VENDR_MST PURGE;

CREATE TABLE TB_BA_VENDR_MST
(
  VENDOR_CD                      VARCHAR2(10)                                 NOT NULL       
, VENDOR_NM                      VARCHAR2(30)                                 NOT NULL       
, VENDOR_FG                      VARCHAR2(1)                                  NOT NULL       
, BIZ_NO                         VARCHAR2(10)                                 NULL           
, BIZ_KIND_NM                    VARCHAR2(30)                                 NULL           
, BIZ_SHOP_NM                    VARCHAR2(30)                                 NULL           
, TEL_NO                         VARCHAR2(15)                                 NULL           
, HP_NO                          VARCHAR2(15)                                 NULL           
, FAX_NO                         VARCHAR2(15)                                 NULL           
, EMAIL_ADDR                     VARCHAR2(30)                                 NULL           
, POST_NO                        VARCHAR2(6)                                  NULL           
, ADDR                           VARCHAR2(60)                                 NULL           
, ADDR_DTL                       VARCHAR2(60)                                 NULL           
, OWNER_NM                       VARCHAR2(12)                                 NOT NULL       
, VENDR_REMARK                   VARCHAR2(300)                                NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(12)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(12)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_BA_VENDR_MST PRIMARY KEY (
    VENDOR_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BA_VENDR_MST                                              IS '베이커리 - 거래처 마스터';
COMMENT ON COLUMN TB_BA_VENDR_MST.VENDOR_CD                                    IS '거래처코드';
COMMENT ON COLUMN TB_BA_VENDR_MST.VENDOR_NM                                    IS '거래처명';
COMMENT ON COLUMN TB_BA_VENDR_MST.VENDOR_FG                                    IS '거래처구분 (ASIS - 0:매입 1:매출 |  TOBE - C:매입처 V:매출처)';
COMMENT ON COLUMN TB_BA_VENDR_MST.BIZ_NO                                       IS '사업자번호';
COMMENT ON COLUMN TB_BA_VENDR_MST.BIZ_KIND_NM                                  IS '업종명';
COMMENT ON COLUMN TB_BA_VENDR_MST.BIZ_SHOP_NM                                  IS '업태명';
COMMENT ON COLUMN TB_BA_VENDR_MST.TEL_NO                                       IS '전화번호';
COMMENT ON COLUMN TB_BA_VENDR_MST.HP_NO                                        IS '휴대폰번호';
COMMENT ON COLUMN TB_BA_VENDR_MST.FAX_NO                                       IS '팩스번호';
COMMENT ON COLUMN TB_BA_VENDR_MST.EMAIL_ADDR                                   IS '이메일주소';
COMMENT ON COLUMN TB_BA_VENDR_MST.POST_NO                                      IS '우편번호';
COMMENT ON COLUMN TB_BA_VENDR_MST.ADDR                                         IS '주소';
COMMENT ON COLUMN TB_BA_VENDR_MST.ADDR_DTL                                     IS '주소상세';
COMMENT ON COLUMN TB_BA_VENDR_MST.OWNER_NM                                     IS '대표자명';
COMMENT ON COLUMN TB_BA_VENDR_MST.VENDR_REMARK                                 IS '비고';
COMMENT ON COLUMN TB_BA_VENDR_MST.USE_YN                                       IS '사용여부';
COMMENT ON COLUMN TB_BA_VENDR_MST.REGI_ID                                      IS '등록자';
COMMENT ON COLUMN TB_BA_VENDR_MST.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_BA_VENDR_MST.UPDT_ID                                      IS '수정자';
COMMENT ON COLUMN TB_BA_VENDR_MST.UPDT_DTIME                                   IS '수정일시';


 /* TB_BM_BIZORGN */

DROP TABLE TB_BM_BIZORGN PURGE;

CREATE TABLE TB_BM_BIZORGN
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, BIZ_GRP_CD                     VARCHAR2(4)                                  NOT NULL       
, BIZ_ORGN_CD                    VARCHAR2(4)                                  NOT NULL       
, BIZ_BZPL_CD                    VARCHAR2(4)                                  NOT NULL       
, BIZ_ORGN_NM                    VARCHAR2(100)                                NULL           
, BIZ_BZPL_NM                    VARCHAR2(100)                                NULL           
, BIZ_GRP_NM                     VARCHAR2(100)                                NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_BM_BIZORGN PRIMARY KEY (
    BRND_CD, BIZ_GRP_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BM_BIZORGN                                                IS '영업조직';
COMMENT ON COLUMN TB_BM_BIZORGN.BRND_CD                                        IS '브랜드 코드';
COMMENT ON COLUMN TB_BM_BIZORGN.BIZ_GRP_CD                                     IS '영업 그룹 코드';
COMMENT ON COLUMN TB_BM_BIZORGN.BIZ_ORGN_CD                                    IS '영업 조직 코드';
COMMENT ON COLUMN TB_BM_BIZORGN.BIZ_BZPL_CD                                    IS '영업 사업장 코드';
COMMENT ON COLUMN TB_BM_BIZORGN.BIZ_ORGN_NM                                    IS '영업 조직 명';
COMMENT ON COLUMN TB_BM_BIZORGN.BIZ_BZPL_NM                                    IS '영업 사업장 명';
COMMENT ON COLUMN TB_BM_BIZORGN.BIZ_GRP_NM                                     IS '영업 그룹 명';
COMMENT ON COLUMN TB_BM_BIZORGN.USE_YN                                         IS '사용 여부';
COMMENT ON COLUMN TB_BM_BIZORGN.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_BM_BIZORGN.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_BM_BIZORGN.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_BM_BIZORGN.UPDT_DTIME                                     IS '수정일시';


 /* TB_BM_EMP */

DROP TABLE TB_BM_EMP PURGE;

CREATE TABLE TB_BM_EMP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EMP_NO                         VARCHAR2(80)                                 NOT NULL       
, DEPT_ID                        VARCHAR2(80)                                 NOT NULL       
, USER_NAME                      VARCHAR2(200)                                NOT NULL       
, USER_NAME_EN                   VARCHAR2(100)                                NULL           
, EMP_CL_CD                      VARCHAR2(20)                                 NULL           
, EMP_CL_NM                      VARCHAR2(100)                                NULL           
, INOFC_STATUS_CD                VARCHAR2(20)                                 NULL           
, INOFC_STATUS_NM                VARCHAR2(100)                                NULL           
, CO_ENT_DT                      VARCHAR2(8)                                  NULL           
, GR_ENT_DT                      VARCHAR2(8)                                  NULL           
, RET_DT                         VARCHAR2(8)                                  NULL           
, JIKGUB_CD                      VARCHAR2(20)                                 NULL           
, JIKGUB_NM                      VARCHAR2(100)                                NULL           
, JOB_CD                         VARCHAR2(20)                                 NULL           
, JOB_NM                         VARCHAR2(580)                                NULL           
, ROLE_CD                        VARCHAR2(20)                                 NULL           
, ROLE_NM                        VARCHAR2(120)                                NULL           
, CHIEF_YN                       VARCHAR2(1)                                  NULL           
, SORT_ORDER                     NUMBER(22)                                   NOT NULL       
, EMAIL_ADDRESS                  VARCHAR2(200)                                NULL           
, TITLE                          VARCHAR2(100)                                NULL           
, HOME_PHONE                     VARCHAR2(100)                                NULL           
, MOBILE                         VARCHAR2(100)                                NULL           
, OFFICE_PHONE                   VARCHAR2(100)                                NULL           
, FAX                            VARCHAR2(100)                                NULL           
, UPDATEDT                       DATE                                         NULL           
, PROFILE_IMAGE                  BLOB                                         NULL           
, BIRTHDATE                      VARCHAR2(50)                                 NULL           
, PASSWORD                       VARCHAR2(100)                                NULL           
, DLGLZ_CRD_NO                   VARCHAR2(30)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_BM_EMP PRIMARY KEY (
    BRND_CD, EMP_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BM_EMP                                                    IS '사원';
COMMENT ON COLUMN TB_BM_EMP.BRND_CD                                            IS '브랜드 코드';
COMMENT ON COLUMN TB_BM_EMP.EMP_NO                                             IS '사원 번호';
COMMENT ON COLUMN TB_BM_EMP.DEPT_ID                                            IS '부서 ID';
COMMENT ON COLUMN TB_BM_EMP.USER_NAME                                          IS '사용자이름';
COMMENT ON COLUMN TB_BM_EMP.USER_NAME_EN                                       IS '사용자이름 영문';
COMMENT ON COLUMN TB_BM_EMP.EMP_CL_CD                                          IS '사원구분코드';
COMMENT ON COLUMN TB_BM_EMP.EMP_CL_NM                                          IS '사원구분명';
COMMENT ON COLUMN TB_BM_EMP.INOFC_STATUS_CD                                    IS '재직상태코드';
COMMENT ON COLUMN TB_BM_EMP.INOFC_STATUS_NM                                    IS '재직상태명';
COMMENT ON COLUMN TB_BM_EMP.CO_ENT_DT                                          IS '당사입사일';
COMMENT ON COLUMN TB_BM_EMP.GR_ENT_DT                                          IS '그룹입사일';
COMMENT ON COLUMN TB_BM_EMP.RET_DT                                             IS '퇴사일';
COMMENT ON COLUMN TB_BM_EMP.JIKGUB_CD                                          IS '직급코드';
COMMENT ON COLUMN TB_BM_EMP.JIKGUB_NM                                          IS '직급명';
COMMENT ON COLUMN TB_BM_EMP.JOB_CD                                             IS '직무코드';
COMMENT ON COLUMN TB_BM_EMP.JOB_NM                                             IS '직무명';
COMMENT ON COLUMN TB_BM_EMP.ROLE_CD                                            IS '직책코드';
COMMENT ON COLUMN TB_BM_EMP.ROLE_NM                                            IS '직책명';
COMMENT ON COLUMN TB_BM_EMP.CHIEF_YN                                           IS '부서장여부';
COMMENT ON COLUMN TB_BM_EMP.SORT_ORDER                                         IS '정렬순서';
COMMENT ON COLUMN TB_BM_EMP.EMAIL_ADDRESS                                      IS '사용자 이메일 주소';
COMMENT ON COLUMN TB_BM_EMP.TITLE                                              IS '직위명';
COMMENT ON COLUMN TB_BM_EMP.HOME_PHONE                                         IS '집전화번호';
COMMENT ON COLUMN TB_BM_EMP.MOBILE                                             IS '휴대폰번호';
COMMENT ON COLUMN TB_BM_EMP.OFFICE_PHONE                                       IS '회사전화번호';
COMMENT ON COLUMN TB_BM_EMP.FAX                                                IS '팩스번호';
COMMENT ON COLUMN TB_BM_EMP.UPDATEDT                                           IS '갱신시각';
COMMENT ON COLUMN TB_BM_EMP.PROFILE_IMAGE                                      IS '사용자 사진';
COMMENT ON COLUMN TB_BM_EMP.BIRTHDATE                                          IS '생일';
COMMENT ON COLUMN TB_BM_EMP.PASSWORD                                           IS '초기 로그인 암호';
COMMENT ON COLUMN TB_BM_EMP.DLGLZ_CRD_NO                                       IS '근태 카드 번호';
COMMENT ON COLUMN TB_BM_EMP.REGI_ID                                            IS '등록자ID';
COMMENT ON COLUMN TB_BM_EMP.REGI_DTIME                                         IS '등록일시';
COMMENT ON COLUMN TB_BM_EMP.UPDT_ID                                            IS '수정자ID';
COMMENT ON COLUMN TB_BM_EMP.UPDT_DTIME                                         IS '수정일시';
COMMENT ON COLUMN TB_BM_EMP.POS_UPDT_TSP                                       IS 'POS수정타임스템프';


 /* TB_BM_MENU */

DROP TABLE TB_BM_MENU PURGE;

CREATE TABLE TB_BM_MENU
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, MENU_NM                        VARCHAR2(500)                                NULL           
, EN_MENU_NM                     VARCHAR2(500)                                NULL           
, CH_MENU_NM                     VARCHAR2(500)                                NULL           
, JP_MENU_NM                     VARCHAR2(500)                                NULL           
, KITC_PRT_NM                    VARCHAR2(500)                                NULL           
, MENU_DIV_CD                    VARCHAR2(2)    DEFAULT '90'                  NOT NULL       
, MID_CD                         VARCHAR2(6)                                  NOT NULL       
, SML_CD                         VARCHAR2(9)                                  NOT NULL       
, UP_MENU_CD                     VARCHAR2(12)                                 NOT NULL       
, GOODS_BAR_CD                   VARCHAR2(40)                                 NULL           
, DC_IMPS_YN                     VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, REP_MENU_YN                    VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, POS_KEY_YN                     VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, POS_ORD_ATTR_YN                VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, SET_MENU_YN                    VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, RCPT_PRT_YN                    VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, KITC_SGLITM_PRT_YN             VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, ORD_PRT_RANK                   NUMBER(3,0)    DEFAULT '0'                   NULL           
, TXLV_DIV_CD                    VARCHAR2(1)    DEFAULT '1'                   NULL           
, SALE_UNIT_CD                   VARCHAR2(3)                                  NULL           
, SALE_AMT                       NUMBER(13,0)                                 NOT NULL       
, NEW_SALE_AMT                   NUMBER(13,0)                                 NULL           
, SALE_AMT_APPL_DT               VARCHAR2(8)                                  NULL           
, CUR_SALE_AMT                   NUMBER(22)                                   NULL           
, SALE_YN                        VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, SALE_ST_DT                     VARCHAR2(8)                                  NULL           
, SALE_STP_DT                    VARCHAR2(8)                                  NULL           
, CUR_SALE_YN                    VARCHAR2(4000) DEFAULT 'N'                   NOT NULL       
, NEW_MENU_YN                    VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, NEW_MENU_STP_DT                VARCHAR2(8)                                  NULL           
, NSAL_MENU_YN                   VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, NSAL_MENU_TYPE_CD              VARCHAR2(2)                                  NULL           
, CUR_NEW_MENU_YN                VARCHAR2(4000) DEFAULT 'N'                   NOT NULL       
, CUR_INTERNAL_PRICE             NUMBER(22,2)                                 NULL           
, DISPLAY_NO                     NUMBER(3,0)    DEFAULT '0'                   NULL           
, MENU_TAG_IMG_FG                VARCHAR2(2)    DEFAULT '00'                  NOT NULL       
, GREEN_DEPOSIT_MENU_YN          VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, GREEN_DEPOSIT_MENU_CD          VARCHAR2(12)                                 NULL           
, RMK                            VARCHAR2(500)                                NULL           
, RAW_MATERIALS_YN               VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, BAKERY_MIN_QTY                 NUMBER(8,0)                                  NULL           
, KR_MENU_EXPL                   VARCHAR2(900)                                NULL           
, EN_MENU_EXPL                   VARCHAR2(900)                                NULL           
, STOCK_MENU_YN                  VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, OLD_MENU_CD                    VARCHAR2(24)                                 NULL           
, BOM_CMPST_YN                   VARCHAR2(1)    DEFAULT 'N'                   NULL           
, O2O_MENU_YN                    VARCHAR2(1)    DEFAULT 'N'                   NULL           
, SMO_MENU_YN                    VARCHAR2(1)    DEFAULT 'N'                   NULL           
, RLTY_ADJMT_MENU_EXCL_YN        VARCHAR2(1)    DEFAULT 'N'                   NULL           
, WLF_YN                         VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, WLF_FR_DT                      VARCHAR2(8)                                  NULL           
, FREE_TASTE_YN                  VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, FREE_TASTE_FR_DT               VARCHAR2(8)                                  NULL           
, CTRYORG_CNTNT                  VARCHAR2(2000)                               NULL           
, NTRT_CNTNT                     VARCHAR2(2000)                               NULL           
, ALLERGY_CNTNT                  VARCHAR2(2000)                               NULL           
, CJONE_RT_GUBUN                 VARCHAR2(1)    DEFAULT 'N'                   NULL           
, SAP_PRD_CD                     VARCHAR2(36)                                 NULL           
, SAP_BRND_GRP_CD                VARCHAR2(30)                                 NULL           
, SAP_BRND_CD                    VARCHAR2(27)                                 NULL           
, SAP_SET_PRD_YN                 VARCHAR2(3)                                  NULL           
, SAP_PRD_CAT_CD                 VARCHAR2(30)                                 NULL           
, SAP_BOX_QTY                    NUMBER(10,0)                                 NULL           
, SAP_BNBX_QTY                   NUMBER(10,0)                                 NULL           
, SAP_NPRD_CL_CD                 VARCHAR2(3)                                  NULL           
, SAP_MGNT_SORG_CD               VARCHAR2(24)                                 NULL           
, SAP_PRD_GRD_CD                 VARCHAR2(9)                                  NULL           
, SAP_PRD_ST_CD                  VARCHAR2(6)                                  NULL           
, SAP_KOR_PRD_NM                 VARCHAR2(150)                                NULL           
, SAP_ENGL_PRD_NM                VARCHAR2(150)                                NULL           
, SAP_JPN_PRD_NM                 VARCHAR2(150)                                NULL           
, SAP_CHNS_PRD_NM                VARCHAR2(150)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, IF_UPDT_TSP                    TIMESTAMP(6)                                 NULL           
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_BM_MENU PRIMARY KEY (
    BRND_CD, MENU_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BM_MENU                                                   IS '메뉴';
COMMENT ON COLUMN TB_BM_MENU.BRND_CD                                           IS '브랜드 코드';
COMMENT ON COLUMN TB_BM_MENU.MENU_CD                                           IS '메뉴코드';
COMMENT ON COLUMN TB_BM_MENU.MENU_NM                                           IS '메뉴명';
COMMENT ON COLUMN TB_BM_MENU.EN_MENU_NM                                        IS '영어메뉴명';
COMMENT ON COLUMN TB_BM_MENU.CH_MENU_NM                                        IS '중국어메뉴명';
COMMENT ON COLUMN TB_BM_MENU.JP_MENU_NM                                        IS '일본어메뉴명';
COMMENT ON COLUMN TB_BM_MENU.KITC_PRT_NM                                       IS '주방출력명';
COMMENT ON COLUMN TB_BM_MENU.MENU_DIV_CD                                       IS '메뉴구분코드(POST30)';
COMMENT ON COLUMN TB_BM_MENU.MID_CD                                            IS '중분류코드';
COMMENT ON COLUMN TB_BM_MENU.SML_CD                                            IS '소분류코드';
COMMENT ON COLUMN TB_BM_MENU.UP_MENU_CD                                        IS '상위메뉴코드';
COMMENT ON COLUMN TB_BM_MENU.GOODS_BAR_CD                                      IS '상품바코드';
COMMENT ON COLUMN TB_BM_MENU.DC_IMPS_YN                                        IS '할인불가여부';
COMMENT ON COLUMN TB_BM_MENU.REP_MENU_YN                                       IS '대표메뉴여부';
COMMENT ON COLUMN TB_BM_MENU.POS_KEY_YN                                        IS 'POS키여부';
COMMENT ON COLUMN TB_BM_MENU.POS_ORD_ATTR_YN                                   IS 'POS커스텀여부';
COMMENT ON COLUMN TB_BM_MENU.SET_MENU_YN                                       IS '세트메뉴여부';
COMMENT ON COLUMN TB_BM_MENU.RCPT_PRT_YN                                       IS '영수증출력여부';
COMMENT ON COLUMN TB_BM_MENU.KITC_SGLITM_PRT_YN                                IS '주방출력여부';
COMMENT ON COLUMN TB_BM_MENU.ORD_PRT_RANK                                      IS '주문출력순위';
COMMENT ON COLUMN TB_BM_MENU.TXLV_DIV_CD                                       IS '과세구분코드(BM202 0:면세 1:과세 2:비과세)';
COMMENT ON COLUMN TB_BM_MENU.SALE_UNIT_CD                                      IS '판매단위코드';
COMMENT ON COLUMN TB_BM_MENU.SALE_AMT                                          IS '판매금액';
COMMENT ON COLUMN TB_BM_MENU.NEW_SALE_AMT                                      IS '신판매금액';
COMMENT ON COLUMN TB_BM_MENU.SALE_AMT_APPL_DT                                  IS '판매금액적용일자';
COMMENT ON COLUMN TB_BM_MENU.CUR_SALE_AMT                                      IS '현재 판매금액';
COMMENT ON COLUMN TB_BM_MENU.SALE_YN                                           IS '판매여부';
COMMENT ON COLUMN TB_BM_MENU.SALE_ST_DT                                        IS '판매시작일자';
COMMENT ON COLUMN TB_BM_MENU.SALE_STP_DT                                       IS '판매종료일자';
COMMENT ON COLUMN TB_BM_MENU.CUR_SALE_YN                                       IS '현재 판매여부';
COMMENT ON COLUMN TB_BM_MENU.NEW_MENU_YN                                       IS '신메뉴 여부';
COMMENT ON COLUMN TB_BM_MENU.NEW_MENU_STP_DT                                   IS '신메뉴중지일자';
COMMENT ON COLUMN TB_BM_MENU.NSAL_MENU_YN                                      IS '비정형메뉴여부';
COMMENT ON COLUMN TB_BM_MENU.NSAL_MENU_TYPE_CD                                 IS '비정형유형코드';
COMMENT ON COLUMN TB_BM_MENU.CUR_NEW_MENU_YN                                   IS '현재 신메뉴여부';
COMMENT ON COLUMN TB_BM_MENU.CUR_INTERNAL_PRICE                                IS '현재 Internal Price';
COMMENT ON COLUMN TB_BM_MENU.DISPLAY_NO                                        IS '표시순서';
COMMENT ON COLUMN TB_BM_MENU.MENU_TAG_IMG_FG                                   IS '메뉴태그이미지구분(BM228)';
COMMENT ON COLUMN TB_BM_MENU.GREEN_DEPOSIT_MENU_YN                             IS '컵보증금대상메뉴여부';
COMMENT ON COLUMN TB_BM_MENU.GREEN_DEPOSIT_MENU_CD                             IS '컵보증금메뉴코드';
COMMENT ON COLUMN TB_BM_MENU.RMK                                               IS '비고';
COMMENT ON COLUMN TB_BM_MENU.RAW_MATERIALS_YN                                  IS '원재료재고차감대상여부';
COMMENT ON COLUMN TB_BM_MENU.BAKERY_MIN_QTY                                    IS '베이커리상품최소주문수량';
COMMENT ON COLUMN TB_BM_MENU.KR_MENU_EXPL                                      IS '한국어상품설명';
COMMENT ON COLUMN TB_BM_MENU.EN_MENU_EXPL                                      IS '영어상품설명';
COMMENT ON COLUMN TB_BM_MENU.STOCK_MENU_YN                                     IS '수불대상여부';
COMMENT ON COLUMN TB_BM_MENU.OLD_MENU_CD                                       IS '구메뉴코드';
COMMENT ON COLUMN TB_BM_MENU.BOM_CMPST_YN                                      IS 'BOM구성여부';
COMMENT ON COLUMN TB_BM_MENU.O2O_MENU_YN                                       IS 'O2O메뉴여부';
COMMENT ON COLUMN TB_BM_MENU.SMO_MENU_YN                                       IS '스마트오더 메뉴 여부';
COMMENT ON COLUMN TB_BM_MENU.RLTY_ADJMT_MENU_EXCL_YN                           IS '로열티 정산메뉴예외여부';
COMMENT ON COLUMN TB_BM_MENU.WLF_YN                                            IS '복리후생여부';
COMMENT ON COLUMN TB_BM_MENU.WLF_FR_DT                                         IS '복리후생시작일';
COMMENT ON COLUMN TB_BM_MENU.FREE_TASTE_YN                                     IS '무료시식여부';
COMMENT ON COLUMN TB_BM_MENU.FREE_TASTE_FR_DT                                  IS '무료시식시작일';
COMMENT ON COLUMN TB_BM_MENU.CTRYORG_CNTNT                                     IS '원산지내용';
COMMENT ON COLUMN TB_BM_MENU.NTRT_CNTNT                                        IS '영양성분내용';
COMMENT ON COLUMN TB_BM_MENU.ALLERGY_CNTNT                                     IS '알레르기내용';
COMMENT ON COLUMN TB_BM_MENU.CJONE_RT_GUBUN                                    IS 'CJONE포인트할인적립율적용여부';
COMMENT ON COLUMN TB_BM_MENU.SAP_PRD_CD                                        IS '상품코드';
COMMENT ON COLUMN TB_BM_MENU.SAP_BRND_GRP_CD                                   IS '브랜드그룹코드 (E1040)';
COMMENT ON COLUMN TB_BM_MENU.SAP_BRND_CD                                       IS '브랜드코드 (E1050)';
COMMENT ON COLUMN TB_BM_MENU.SAP_SET_PRD_YN                                    IS '세트상품여부';
COMMENT ON COLUMN TB_BM_MENU.SAP_PRD_CAT_CD                                    IS '상품분류코드';
COMMENT ON COLUMN TB_BM_MENU.SAP_BOX_QTY                                       IS '박스수량';
COMMENT ON COLUMN TB_BM_MENU.SAP_BNBX_QTY                                      IS '타박스수량';
COMMENT ON COLUMN TB_BM_MENU.SAP_NPRD_CL_CD                                    IS '신상품구분코드 (10295)';
COMMENT ON COLUMN TB_BM_MENU.SAP_MGNT_SORG_CD                                  IS '관리영업조직코드';
COMMENT ON COLUMN TB_BM_MENU.SAP_PRD_GRD_CD                                    IS '상품등급코드';
COMMENT ON COLUMN TB_BM_MENU.SAP_PRD_ST_CD                                     IS '상품상태코드';
COMMENT ON COLUMN TB_BM_MENU.SAP_KOR_PRD_NM                                    IS '한글상품명';
COMMENT ON COLUMN TB_BM_MENU.SAP_ENGL_PRD_NM                                   IS '영어상품명';
COMMENT ON COLUMN TB_BM_MENU.SAP_JPN_PRD_NM                                    IS '일본어상품명';
COMMENT ON COLUMN TB_BM_MENU.SAP_CHNS_PRD_NM                                   IS '중국어상품명';
COMMENT ON COLUMN TB_BM_MENU.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_BM_MENU.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_BM_MENU.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_BM_MENU.UPDT_DTIME                                        IS '수정일시';
COMMENT ON COLUMN TB_BM_MENU.IF_UPDT_TSP                                       IS 'EAI수정타임스템프';
COMMENT ON COLUMN TB_BM_MENU.POS_UPDT_TSP                                      IS 'POS수정타임스템프';


 /* TB_BM_SALEPR_HIS */

DROP TABLE TB_BM_SALEPR_HIS PURGE;

CREATE TABLE TB_BM_SALEPR_HIS
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, PR_HIS_SEQ_NO                  NUMBER(5,0)                                  NOT NULL       
, BFCHG_SALE_AMT                 NUMBER(13,0)                                 NULL           
, AFCHG_SALE_AMT                 NUMBER(13,0)                                 NULL           
, PR_CHG_RSN_CNTNT               VARCHAR2(1000)                               NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_BM_SALEPR_HIS PRIMARY KEY (
    BRND_CD, STORE_CD, MENU_CD, PR_HIS_SEQ_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BM_SALEPR_HIS                                             IS '판매가격이력';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.BRND_CD                                     IS '브랜드 코드';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.STORE_CD                                    IS '점포 코드';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.MENU_CD                                     IS '메뉴 코드';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.PR_HIS_SEQ_NO                               IS '가격 이력 일련 번호';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.BFCHG_SALE_AMT                              IS '변경전 판매 금액';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.AFCHG_SALE_AMT                              IS '변경후 판매 금액';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.PR_CHG_RSN_CNTNT                            IS '가격 변경 사유 내용';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.UPDT_DTIME                                  IS '수정일시';
COMMENT ON COLUMN TB_BM_SALEPR_HIS.POS_UPDT_TSP                                IS 'POS수정타임스템프';


 /* TB_BM_STORE */

DROP TABLE TB_BM_STORE PURGE;

CREATE TABLE TB_BM_STORE
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, STORE_TYPE_CD                  VARCHAR2(2)                                  NULL           
, STORE_NM                       VARCHAR2(100)                                NULL           
, REGN_LCLF_CD                   VARCHAR2(3)                                  NULL           
, REGN_SCLF_CD                   VARCHAR2(6)                                  NULL           
, KWTHR_REGN_CD                  VARCHAR2(8)                                  NULL           
, REP_STORE_CD                   VARCHAR2(12)                                 NULL           
, BZOP_RGS_NO                    VARCHAR2(10)                                 NULL           
, BZOP_NM                        VARCHAR2(100)                                NULL           
, PRSDT_FNM                      VARCHAR2(200)                                NULL           
, PRSDT_MBLPH_NO                 VARCHAR2(100)                                NULL           
, PRSDT_EMAIL_AD                 VARCHAR2(200)                                NULL           
, CTGBZ_NM                       VARCHAR2(100)                                NULL           
, BZCN_NM                        VARCHAR2(100)                                NULL           
, STORE_ZIP_CD                   VARCHAR2(20)                                 NULL           
, STORE_BASIC_AD                 VARCHAR2(100)                                NULL           
, STORE_DTL_AD                   VARCHAR2(150)                                NULL           
, STORE_ROADNM_BASIC_AD          VARCHAR2(100)                                NULL           
, STORE_ROADNM_DTL_AD            VARCHAR2(150)                                NULL           
, STORE_TEL_NO                   VARCHAR2(50)                                 NULL           
, SOB_DT                         VARCHAR2(8)                                  NULL           
, EOB_DT                         VARCHAR2(8)                                  NULL           
, BZAR_CD                        VARCHAR2(2)                                  NULL           
, FLR_CNT                        VARCHAR2(20)                                 NULL           
, SEAT_CNT                       NUMBER(5,0)                                  NULL           
, PARK_CNT                       VARCHAR2(50)                                 NULL           
, STORE_PYGC                     NUMBER(10,2)                                 NULL           
, LAT                            VARCHAR2(20)                                 NULL           
, LONGI                          VARCHAR2(20)                                 NULL           
, RMK                            VARCHAR2(250)                                NULL           
, REST_ROOM_YN                   VARCHAR2(1)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, STORE_STAT_STDT                VARCHAR2(8)                                  NULL           
, STORE_STAT_CLDA                VARCHAR2(8)                                  NULL           
, BLMT_FRCS_TRGT_BRND_CD         VARCHAR2(2)                                  NULL           
, BLMT_FRCS_TRGT_STORE_CD        VARCHAR2(10)                                 NULL           
, SMO_USE_YN                     VARCHAR2(1)                                  NOT NULL       
, SALE_START_TM                  VARCHAR2(6)                                  NULL           
, SALE_END_TM                    VARCHAR2(6)                                  NULL           
, BIZ_ORGN_CD                    VARCHAR2(4)                                  NULL           
, BIZ_BZPL_CD                    VARCHAR2(4)                                  NULL           
, BIZ_GRP_CD                     VARCHAR2(3)                                  NULL           
, GNRM_EMP_NO                    VARCHAR2(10)                                 NULL           
, CHRG_EMP_NO                    VARCHAR2(10)                                 NULL           
, TEML_EMP_NO                    VARCHAR2(10)                                 NULL           
, CST_CENTR_CD                   VARCHAR2(10)                                 NULL           
, SALE_PLNT_CD                   VARCHAR2(4)                                  NULL           
, TSS_CNCP_DIV_CD                VARCHAR2(2)                                  NULL           
, CNTRT_DT                       VARCHAR2(8)                                  NULL           
, CNTRT_FR_DT                    VARCHAR2(8)                                  NULL           
, CNTRT_END_DT                   VARCHAR2(8)                                  NULL           
, STORE_STATUS_CD                VARCHAR2(2)                                  NULL           
, POS_SYS_DIV_CD                 VARCHAR2(3)                                  NULL           
, POS_MTNC_QTY_CD                VARCHAR2(1)                                  NULL           
, RLTY_CLAM_YN                   VARCHAR2(1)                                  NOT NULL       
, CJONE_IF_STORE_CD              VARCHAR2(10)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, IF_UPDT_TSP                    TIMESTAMP(6)                                 NULL           
, CONSTRAINT PK_TB_BM_STORE PRIMARY KEY (
    BRND_CD, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BM_STORE                                                  IS '';
COMMENT ON COLUMN TB_BM_STORE.BRND_CD                                          IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_CD                                         IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_TYPE_CD                                    IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_NM                                         IS '';
COMMENT ON COLUMN TB_BM_STORE.REGN_LCLF_CD                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.REGN_SCLF_CD                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.KWTHR_REGN_CD                                    IS '';
COMMENT ON COLUMN TB_BM_STORE.REP_STORE_CD                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.BZOP_RGS_NO                                      IS '';
COMMENT ON COLUMN TB_BM_STORE.BZOP_NM                                          IS '';
COMMENT ON COLUMN TB_BM_STORE.PRSDT_FNM                                        IS '';
COMMENT ON COLUMN TB_BM_STORE.PRSDT_MBLPH_NO                                   IS '';
COMMENT ON COLUMN TB_BM_STORE.PRSDT_EMAIL_AD                                   IS '';
COMMENT ON COLUMN TB_BM_STORE.CTGBZ_NM                                         IS '';
COMMENT ON COLUMN TB_BM_STORE.BZCN_NM                                          IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_ZIP_CD                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_BASIC_AD                                   IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_DTL_AD                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_ROADNM_BASIC_AD                            IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_ROADNM_DTL_AD                              IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_TEL_NO                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.SOB_DT                                           IS '';
COMMENT ON COLUMN TB_BM_STORE.EOB_DT                                           IS '';
COMMENT ON COLUMN TB_BM_STORE.BZAR_CD                                          IS '';
COMMENT ON COLUMN TB_BM_STORE.FLR_CNT                                          IS '';
COMMENT ON COLUMN TB_BM_STORE.SEAT_CNT                                         IS '';
COMMENT ON COLUMN TB_BM_STORE.PARK_CNT                                         IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_PYGC                                       IS '';
COMMENT ON COLUMN TB_BM_STORE.LAT                                              IS '';
COMMENT ON COLUMN TB_BM_STORE.LONGI                                            IS '';
COMMENT ON COLUMN TB_BM_STORE.RMK                                              IS '';
COMMENT ON COLUMN TB_BM_STORE.REST_ROOM_YN                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.USE_YN                                           IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_STAT_STDT                                  IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_STAT_CLDA                                  IS '';
COMMENT ON COLUMN TB_BM_STORE.BLMT_FRCS_TRGT_BRND_CD                           IS '';
COMMENT ON COLUMN TB_BM_STORE.BLMT_FRCS_TRGT_STORE_CD                          IS '';
COMMENT ON COLUMN TB_BM_STORE.SMO_USE_YN                                       IS '';
COMMENT ON COLUMN TB_BM_STORE.SALE_START_TM                                    IS '';
COMMENT ON COLUMN TB_BM_STORE.SALE_END_TM                                      IS '';
COMMENT ON COLUMN TB_BM_STORE.BIZ_ORGN_CD                                      IS '';
COMMENT ON COLUMN TB_BM_STORE.BIZ_BZPL_CD                                      IS '';
COMMENT ON COLUMN TB_BM_STORE.BIZ_GRP_CD                                       IS '';
COMMENT ON COLUMN TB_BM_STORE.GNRM_EMP_NO                                      IS '';
COMMENT ON COLUMN TB_BM_STORE.CHRG_EMP_NO                                      IS '';
COMMENT ON COLUMN TB_BM_STORE.TEML_EMP_NO                                      IS '';
COMMENT ON COLUMN TB_BM_STORE.CST_CENTR_CD                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.SALE_PLNT_CD                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.TSS_CNCP_DIV_CD                                  IS '';
COMMENT ON COLUMN TB_BM_STORE.CNTRT_DT                                         IS '';
COMMENT ON COLUMN TB_BM_STORE.CNTRT_FR_DT                                      IS '';
COMMENT ON COLUMN TB_BM_STORE.CNTRT_END_DT                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.STORE_STATUS_CD                                  IS '';
COMMENT ON COLUMN TB_BM_STORE.POS_SYS_DIV_CD                                   IS '';
COMMENT ON COLUMN TB_BM_STORE.POS_MTNC_QTY_CD                                  IS '';
COMMENT ON COLUMN TB_BM_STORE.RLTY_CLAM_YN                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.CJONE_IF_STORE_CD                                IS '';
COMMENT ON COLUMN TB_BM_STORE.REGI_ID                                          IS '';
COMMENT ON COLUMN TB_BM_STORE.REGI_DTIME                                       IS '';
COMMENT ON COLUMN TB_BM_STORE.UPDT_ID                                          IS '';
COMMENT ON COLUMN TB_BM_STORE.UPDT_DTIME                                       IS '';
COMMENT ON COLUMN TB_BM_STORE.POS_UPDT_TSP                                     IS '';
COMMENT ON COLUMN TB_BM_STORE.IF_UPDT_TSP                                      IS '';


 /* TB_BM_STORE_V01 */

DROP TABLE TB_BM_STORE_V01 PURGE;

CREATE TABLE TB_BM_STORE_V01
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(30)                                 NOT NULL       
, STORE_NM                       VARCHAR2(150)                                NULL           
, BZOP_RGS_NO                    VARCHAR2(39)                                 NULL           
, PRSDT_FNM                      VARCHAR2(150)                                NULL           
, STORE_STATUS_CD                VARCHAR2(6)                                  NULL           
, PRTN_TYPE_CD                   VARCHAR2(3)                                  NULL           
, PRTN_GRP_CD                    VARCHAR2(6)                                  NULL           
, PRTN_FORM_CD                   VARCHAR2(12)                                 NULL           
, CTGBZ_NM                       VARCHAR2(150)                                NULL           
, BZCN_NM                        VARCHAR2(150)                                NULL           
, SOB_DT                         VARCHAR2(24)                                 NULL           
, EOB_DT                         VARCHAR2(24)                                 NULL           
, STORE_TYPE_CD                  VARCHAR2(3)                                  NULL           
, CMPY_CD                        VARCHAR2(12)                                 NULL           
, BIZ_ORGN_CD                    VARCHAR2(24)                                 NULL           
, UPP_SAL_CHN_CD                 VARCHAR2(12)                                 NULL           
, LR_SAL_CHN_CD                  VARCHAR2(12)                                 NULL           
, SLS_RSPN_EMP_ID                VARCHAR2(36)                                 NULL           
, STORE_TEL_NO                   VARCHAR2(60)                                 NULL           
, CELL_TPHN                      VARCHAR2(60)                                 NULL           
, PRTN_FXNO                      VARCHAR2(60)                                 NULL           
, PRTN_EMAD                      VARCHAR2(300)                                NULL           
, STORE_ZIP_CD                   VARCHAR2(30)                                 NULL           
, REGN_LCLF_CD                   VARCHAR2(9)                                  NULL           
, STORE_ROADNM_BASIC_AD          VARCHAR2(300)                                NULL           
, STORE_ROADNM_DTL_AD            VARCHAR2(600)                                NULL           
, PRTN_DTL_ADDR2                 VARCHAR2(600)                                NULL           
, TRNS_RGN_CD                    VARCHAR2(30)                                 NULL           
, BIZ_GRP_CD                     VARCHAR2(9)                                  NULL           
, PRTN_PMGR_CD                   VARCHAR2(12)                                 NULL           
, MGNT_SORG_CD                   VARCHAR2(24)                                 NULL           
, MGNT_SLS_ORG_LVL_CD            VARCHAR2(6)                                  NULL           
, PRC_TP_CD                      VARCHAR2(6)                                  NULL           
, DLGD_PRTN_ID                   VARCHAR2(30)                                 NULL           
, REP_STORE_CD                   VARCHAR2(30)                                 NULL           
, CLGT_PRTN_ID                   VARCHAR2(30)                                 NULL           
, PYMT_PRTN_ID                   VARCHAR2(30)                                 NULL           
, SALE_PLNT_CD                   VARCHAR2(12)                                 NULL           
, DLGD_PRNK_CD                   VARCHAR2(6)                                  NULL           
, DSTR_CD                        VARCHAR2(12)                                 NULL           
, DDL_CL_CD                      VARCHAR2(6)                                  NULL           
, PYMT_COND_CL_CD                VARCHAR2(12)                                 NULL           
, TAX_CAT_CD                     VARCHAR2(6)                                  NULL           
, SAL_TP_CD                      VARCHAR2(6)                                  NULL           
, FSCR_ID                        VARCHAR2(150)                                NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(150)                                NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
, REGN_SCLF_CD                   VARCHAR2(6)                                  NULL           
, KWTHR_REGN_CD                  VARCHAR2(8)                                  NULL           
, BZOP_NM                        VARCHAR2(100)                                NULL           
, PRSDT_MBLPH_NO                 VARCHAR2(100)                                NULL           
, PRSDT_EMAIL_AD                 VARCHAR2(200)                                NULL           
, STORE_BASIC_AD                 VARCHAR2(100)                                NULL           
, STORE_DTL_AD                   VARCHAR2(150)                                NULL           
, BZAR_CD                        VARCHAR2(2)                                  NULL           
, FLR_CNT                        VARCHAR2(20)                                 NULL           
, SEAT_CNT                       NUMBER(5,0)                                  NULL           
, PARK_CNT                       VARCHAR2(50)                                 NULL           
, STORE_PYGC                     NUMBER(10,2)                                 NULL           
, LAT                            VARCHAR2(20)                                 NULL           
, LONGI                          VARCHAR2(20)                                 NULL           
, RMK                            VARCHAR2(250)                                NULL           
, REST_ROOM_YN                   VARCHAR2(1)                                  NULL           
, STORE_STAT_STDT                VARCHAR2(8)                                  NULL           
, STORE_STAT_CLDA                VARCHAR2(8)                                  NULL           
, BLMT_FRCS_TRGT_BRND_CD         VARCHAR2(2)                                  NULL           
, BLMT_FRCS_TRGT_STORE_CD        VARCHAR2(10)                                 NULL           
, SMO_USE_YN                     VARCHAR2(1)                                  NOT NULL       
, SALE_START_TM                  VARCHAR2(6)                                  NULL           
, SALE_END_TM                    VARCHAR2(6)                                  NULL           
, BIZ_BZPL_CD                    VARCHAR2(4)                                  NULL           
, GNRM_EMP_NO                    VARCHAR2(10)                                 NULL           
, CHRG_EMP_NO                    VARCHAR2(10)                                 NULL           
, TEML_EMP_NO                    VARCHAR2(10)                                 NULL           
, CST_CENTR_CD                   VARCHAR2(10)                                 NULL           
, TSS_CNCP_DIV_CD                VARCHAR2(2)                                  NULL           
, CNTRT_DT                       VARCHAR2(8)                                  NULL           
, CNTRT_FR_DT                    VARCHAR2(8)                                  NULL           
, CNTRT_END_DT                   VARCHAR2(8)                                  NULL           
, POS_SYS_DIV_CD                 VARCHAR2(3)                                  NULL           
, POS_MTNC_QTY_CD                VARCHAR2(1)                                  NULL           
, RLTY_CLAM_YN                   VARCHAR2(1)                                  NOT NULL       
, CJONE_IF_STORE_CD              VARCHAR2(10)                                 NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BM_STORE_V01                                              IS '점포 마스터 뷰';
COMMENT ON COLUMN TB_BM_STORE_V01.BRND_CD                                      IS '브랜드코드';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_CD                                     IS '거래처ID | 점포코드';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_NM                                     IS '거래처명 | 점포명';
COMMENT ON COLUMN TB_BM_STORE_V01.BZOP_RGS_NO                                  IS '사업자등록번호 | 사업자등록번호';
COMMENT ON COLUMN TB_BM_STORE_V01.PRSDT_FNM                                    IS '거래처대표자명 | 대표자성명';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_STATUS_CD                              IS '거래처상태코드(C1140) | 점포상태코드';
COMMENT ON COLUMN TB_BM_STORE_V01.PRTN_TYPE_CD                                 IS '거래처종류코드(10002)';
COMMENT ON COLUMN TB_BM_STORE_V01.PRTN_GRP_CD                                  IS '거래처그룹코드(C1120)';
COMMENT ON COLUMN TB_BM_STORE_V01.PRTN_FORM_CD                                 IS '거래처형태코드(C1010)';
COMMENT ON COLUMN TB_BM_STORE_V01.CTGBZ_NM                                     IS '거래처업종명 | 업종명';
COMMENT ON COLUMN TB_BM_STORE_V01.BZCN_NM                                      IS '거래처업태명 | 업태명';
COMMENT ON COLUMN TB_BM_STORE_V01.SOB_DT                                       IS '거래시작일자 | 개업일';
COMMENT ON COLUMN TB_BM_STORE_V01.EOB_DT                                       IS '거래종료일자 | 폐업일';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_TYPE_CD                                IS '직가맹구분코드(10003) | 점포유형코드';
COMMENT ON COLUMN TB_BM_STORE_V01.CMPY_CD                                      IS '회사코드(10015)';
COMMENT ON COLUMN TB_BM_STORE_V01.BIZ_ORGN_CD                                  IS '영업조직코드 | 영업조직코드';
COMMENT ON COLUMN TB_BM_STORE_V01.UPP_SAL_CHN_CD                               IS '상위판매경로코드 (C1080)';
COMMENT ON COLUMN TB_BM_STORE_V01.LR_SAL_CHN_CD                                IS '하위판매경로코드 (C1090)';
COMMENT ON COLUMN TB_BM_STORE_V01.SLS_RSPN_EMP_ID                              IS '영업담당직원ID';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_TEL_NO                                 IS '연락통합전화번호';
COMMENT ON COLUMN TB_BM_STORE_V01.CELL_TPHN                                    IS '휴대폰통합전화번호';
COMMENT ON COLUMN TB_BM_STORE_V01.PRTN_FXNO                                    IS '거래처팩스번호';
COMMENT ON COLUMN TB_BM_STORE_V01.PRTN_EMAD                                    IS '거래처이메일주소';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_ZIP_CD                                 IS '거래처국제우편번호 | 점포 우편번호';
COMMENT ON COLUMN TB_BM_STORE_V01.REGN_LCLF_CD                                 IS '거래처지역코드 (C1135, C1130) | 지역대분류코드';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_ROADNM_BASIC_AD                        IS '거래처도시명 | 점포도로명기본주소';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_ROADNM_DTL_AD                          IS '거래처상세주소1 | 점포도로명상세주소';
COMMENT ON COLUMN TB_BM_STORE_V01.PRTN_DTL_ADDR2                               IS '거래처상세주소2';
COMMENT ON COLUMN TB_BM_STORE_V01.TRNS_RGN_CD                                  IS '운송지역코드 (B1040)';
COMMENT ON COLUMN TB_BM_STORE_V01.BIZ_GRP_CD                                   IS '영업그룹코드 (A1070) | 영업그룹코드';
COMMENT ON COLUMN TB_BM_STORE_V01.PRTN_PMGR_CD                                 IS '거래처허용그룹코드 (C1110)';
COMMENT ON COLUMN TB_BM_STORE_V01.MGNT_SORG_CD                                 IS '관리영업조직코드';
COMMENT ON COLUMN TB_BM_STORE_V01.MGNT_SLS_ORG_LVL_CD                          IS '관리영업조직레벨코드 (10302)';
COMMENT ON COLUMN TB_BM_STORE_V01.PRC_TP_CD                                    IS '가격유형코드 (C1150)';
COMMENT ON COLUMN TB_BM_STORE_V01.DLGD_PRTN_ID                                 IS '납품거래처ID';
COMMENT ON COLUMN TB_BM_STORE_V01.REP_STORE_CD                                 IS '대표거래처ID | 기준점포코드';
COMMENT ON COLUMN TB_BM_STORE_V01.CLGT_PRTN_ID                                 IS '총괄거래처ID';
COMMENT ON COLUMN TB_BM_STORE_V01.PYMT_PRTN_ID                                 IS '지급거래처ID';
COMMENT ON COLUMN TB_BM_STORE_V01.SALE_PLNT_CD                                 IS '납품플랜트코드 (B1010)';
COMMENT ON COLUMN TB_BM_STORE_V01.DLGD_PRNK_CD                                 IS '납품우선순위코드 (10082)';
COMMENT ON COLUMN TB_BM_STORE_V01.DSTR_CD                                      IS '유통사코드 (F1040)';
COMMENT ON COLUMN TB_BM_STORE_V01.DDL_CL_CD                                    IS '배송일구분코드. 납품우선순위코드 (10082)와 동일';
COMMENT ON COLUMN TB_BM_STORE_V01.PYMT_COND_CL_CD                              IS '지급조건구분코드 (C1020)';
COMMENT ON COLUMN TB_BM_STORE_V01.TAX_CAT_CD                                   IS '세금분류코드 (D1060)';
COMMENT ON COLUMN TB_BM_STORE_V01.SAL_TP_CD                                    IS '판매유형코드 (F1020)';
COMMENT ON COLUMN TB_BM_STORE_V01.FSCR_ID                                      IS '최초생성ID';
COMMENT ON COLUMN TB_BM_STORE_V01.FSCR_TSP                                     IS '최초생성시각';
COMMENT ON COLUMN TB_BM_STORE_V01.LSCH_ID                                      IS '최종변경ID';
COMMENT ON COLUMN TB_BM_STORE_V01.LSCH_TSP                                     IS '최종변경시각';
COMMENT ON COLUMN TB_BM_STORE_V01.REGN_SCLF_CD                                 IS '지역소분류코드';
COMMENT ON COLUMN TB_BM_STORE_V01.KWTHR_REGN_CD                                IS 'K웨더지역코드';
COMMENT ON COLUMN TB_BM_STORE_V01.BZOP_NM                                      IS '사업자명';
COMMENT ON COLUMN TB_BM_STORE_V01.PRSDT_MBLPH_NO                               IS '대표자휴대폰번호';
COMMENT ON COLUMN TB_BM_STORE_V01.PRSDT_EMAIL_AD                               IS '대표자이메일주소';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_BASIC_AD                               IS '점포기본주소';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_DTL_AD                                 IS '점포상세주소';
COMMENT ON COLUMN TB_BM_STORE_V01.BZAR_CD                                      IS '상권 코드';
COMMENT ON COLUMN TB_BM_STORE_V01.FLR_CNT                                      IS '층 수';
COMMENT ON COLUMN TB_BM_STORE_V01.SEAT_CNT                                     IS '좌석 수';
COMMENT ON COLUMN TB_BM_STORE_V01.PARK_CNT                                     IS '주차 수';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_PYGC                                   IS '점포 평수';
COMMENT ON COLUMN TB_BM_STORE_V01.LAT                                          IS '위도-네이버 Y 좌표';
COMMENT ON COLUMN TB_BM_STORE_V01.LONGI                                        IS '경도-네이버 X 좌표';
COMMENT ON COLUMN TB_BM_STORE_V01.RMK                                          IS '비고';
COMMENT ON COLUMN TB_BM_STORE_V01.REST_ROOM_YN                                 IS '화장실여부';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_STAT_STDT                              IS '점포상태 시작일자';
COMMENT ON COLUMN TB_BM_STORE_V01.STORE_STAT_CLDA                              IS '점포상태 종료일자';
COMMENT ON COLUMN TB_BM_STORE_V01.BLMT_FRCS_TRGT_BRND_CD                       IS '위탁가맹 상대 브랜드 코드';
COMMENT ON COLUMN TB_BM_STORE_V01.BLMT_FRCS_TRGT_STORE_CD                      IS '위탁가맹 상대 점포 코드';
COMMENT ON COLUMN TB_BM_STORE_V01.SMO_USE_YN                                   IS '스마트오더 사용 여부';
COMMENT ON COLUMN TB_BM_STORE_V01.SALE_START_TM                                IS '영업시작시간';
COMMENT ON COLUMN TB_BM_STORE_V01.SALE_END_TM                                  IS '영업종료시간';
COMMENT ON COLUMN TB_BM_STORE_V01.BIZ_BZPL_CD                                  IS '영업 사업장 코드';
COMMENT ON COLUMN TB_BM_STORE_V01.GNRM_EMP_NO                                  IS '점장 사원 번호';
COMMENT ON COLUMN TB_BM_STORE_V01.CHRG_EMP_NO                                  IS '담당 SC 번호';
COMMENT ON COLUMN TB_BM_STORE_V01.TEML_EMP_NO                                  IS '담당 QC 번호';
COMMENT ON COLUMN TB_BM_STORE_V01.CST_CENTR_CD                                 IS '코스트 센터 코드';
COMMENT ON COLUMN TB_BM_STORE_V01.TSS_CNCP_DIV_CD                              IS '투썸 컨셉 구분 코드';
COMMENT ON COLUMN TB_BM_STORE_V01.CNTRT_DT                                     IS '계약 일';
COMMENT ON COLUMN TB_BM_STORE_V01.CNTRT_FR_DT                                  IS '계약 시작 일';
COMMENT ON COLUMN TB_BM_STORE_V01.CNTRT_END_DT                                 IS '계약 종료 일';
COMMENT ON COLUMN TB_BM_STORE_V01.POS_SYS_DIV_CD                               IS 'POS 시스템 구분 코드';
COMMENT ON COLUMN TB_BM_STORE_V01.POS_MTNC_QTY_CD                              IS 'POS 유지보수 수량 코드';
COMMENT ON COLUMN TB_BM_STORE_V01.RLTY_CLAM_YN                                 IS '로열티 청구 여부';
COMMENT ON COLUMN TB_BM_STORE_V01.CJONE_IF_STORE_CD                            IS 'CJONE IF 점포 코드';
COMMENT ON COLUMN TB_BM_STORE_V01.USE_YN                                       IS '사용여부';
COMMENT ON COLUMN TB_BM_STORE_V01.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_BM_STORE_V01.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_BM_STORE_V01.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_BM_STORE_V01.UPDT_DTIME                                   IS '수정일시';
COMMENT ON COLUMN TB_BM_STORE_V01.POS_UPDT_TSP                                 IS 'POS수정타임스탬프';


 /* TB_BM_USER */

DROP TABLE TB_BM_USER PURGE;

CREATE TABLE TB_BM_USER
(
  USER_ID                        VARCHAR2(20)                                 NOT NULL       
, AUTH_ID                        VARCHAR2(20)                                 NOT NULL       
, USER_GRP_CD                    VARCHAR2(1)                                  NULL           
, USER_NM                        VARCHAR2(200)                                NOT NULL       
, USER_PWD                       VARCHAR2(160)                                NOT NULL       
, MBLPH_NO                       VARCHAR2(100)                                NULL           
, TEL_NO                         VARCHAR2(100)                                NULL           
, USER_EMAIL                     VARCHAR2(200)                                NULL           
, BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EMP_NO                         VARCHAR2(50)                                 NULL           
, ROLE_CD                        VARCHAR2(20)                                 NULL           
, HLCD_FR_DT                     VARCHAR2(8)                                  NULL           
, HLCD_END_DT                    VARCHAR2(8)                                  NULL           
, INOFC_STATUS_CD                VARCHAR2(20)                                 NULL           
, POS_ID                         VARCHAR2(10)                                 NULL           
, POS_PWD_NO                     VARCHAR2(200)                                NULL           
, POS_POSI_CD                    VARCHAR2(1)                                  NULL           
, POS_MGR_YN                     VARCHAR2(1)                                  NULL           
, POST_USE_YN                    VARCHAR2(1)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, SYS_USE_FR_DT                  VARCHAR2(8)                                  NULL           
, SYS_USE_END_DT                 VARCHAR2(8)                                  NULL           
, PWDNO_LOCK_YN                  VARCHAR2(1)                                  NULL           
, MOBL_KEY                       VARCHAR2(200)                                NULL           
, APP_UPDT_YN                    VARCHAR2(1)                                  NULL           
, APP_UPDT_DTTM                  VARCHAR2(14)                                 NULL           
, LOGIN_IP_NO                    VARCHAR2(30)                                 NULL           
, FINAL_IN_DTM                   DATE                                         NULL           
, FINAL_OUT_DTM                  DATE                                         NULL           
, FAIL_IN_CNT                    VARCHAR2(10)                                 NULL           
, PWD_CHG_DT                     VARCHAR2(8)                                  NULL           
, TMP_PWD_YN                     VARCHAR2(1)                                  NULL           
, RMRK                           VARCHAR2(4000)                               NULL           
, HWGE_AMT                       NUMBER(15,2)                                 NULL           
, WH_XPAY_AMT                    NUMBER(15,2)                                 NULL           
, WEEK_OV15H_WORK_YN             VARCHAR2(1)                                  NOT NULL       
, ORG_LVL_CD                     VARCHAR2(2)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, IF_UPDT_TSP                    TIMESTAMP(6)                                 NULL           
, CONSTRAINT PK_TB_BM_USER PRIMARY KEY (
    USER_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_BM_USER                                                   IS '사용자';
COMMENT ON COLUMN TB_BM_USER.USER_ID                                           IS '사용자ID';
COMMENT ON COLUMN TB_BM_USER.AUTH_ID                                           IS '권한ID';
COMMENT ON COLUMN TB_BM_USER.USER_GRP_CD                                       IS '사용자 그룹 코드';
COMMENT ON COLUMN TB_BM_USER.USER_NM                                           IS '사용자명';
COMMENT ON COLUMN TB_BM_USER.USER_PWD                                          IS '사용자비밀번호';
COMMENT ON COLUMN TB_BM_USER.MBLPH_NO                                          IS '휴대폰 번호';
COMMENT ON COLUMN TB_BM_USER.TEL_NO                                            IS '전화 번호';
COMMENT ON COLUMN TB_BM_USER.USER_EMAIL                                        IS '사용자메일';
COMMENT ON COLUMN TB_BM_USER.BRND_CD                                           IS '브랜드 코드';
COMMENT ON COLUMN TB_BM_USER.EMP_NO                                            IS '사원번호';
COMMENT ON COLUMN TB_BM_USER.ROLE_CD                                           IS '직책코드';
COMMENT ON COLUMN TB_BM_USER.HLCD_FR_DT                                        IS '보건증 시작 일';
COMMENT ON COLUMN TB_BM_USER.HLCD_END_DT                                       IS '보건증 종료 일';
COMMENT ON COLUMN TB_BM_USER.INOFC_STATUS_CD                                   IS '재직상태코드';
COMMENT ON COLUMN TB_BM_USER.POS_ID                                            IS 'POS ID';
COMMENT ON COLUMN TB_BM_USER.POS_PWD_NO                                        IS 'POS 비밀 번호';
COMMENT ON COLUMN TB_BM_USER.POS_POSI_CD                                       IS 'POS 직위 코드';
COMMENT ON COLUMN TB_BM_USER.POS_MGR_YN                                        IS 'POS 관리자 여부';
COMMENT ON COLUMN TB_BM_USER.POST_USE_YN                                       IS 'POST 사용여부';
COMMENT ON COLUMN TB_BM_USER.USE_YN                                            IS '사용 여부';
COMMENT ON COLUMN TB_BM_USER.SYS_USE_FR_DT                                     IS '시스템 사용 시작 일';
COMMENT ON COLUMN TB_BM_USER.SYS_USE_END_DT                                    IS '시스템 사용 종료 일';
COMMENT ON COLUMN TB_BM_USER.PWDNO_LOCK_YN                                     IS '비밀번호 잠금 여부';
COMMENT ON COLUMN TB_BM_USER.MOBL_KEY                                          IS '모바일Key';
COMMENT ON COLUMN TB_BM_USER.APP_UPDT_YN                                       IS 'APP업데이트여부';
COMMENT ON COLUMN TB_BM_USER.APP_UPDT_DTTM                                     IS 'APP업데이트일시';
COMMENT ON COLUMN TB_BM_USER.LOGIN_IP_NO                                       IS '최종접속IP';
COMMENT ON COLUMN TB_BM_USER.FINAL_IN_DTM                                      IS '최종로그인일시';
COMMENT ON COLUMN TB_BM_USER.FINAL_OUT_DTM                                     IS '최종로그아웃일시';
COMMENT ON COLUMN TB_BM_USER.FAIL_IN_CNT                                       IS '로그인실패수';
COMMENT ON COLUMN TB_BM_USER.PWD_CHG_DT                                        IS '최종패스워드갱신일자';
COMMENT ON COLUMN TB_BM_USER.TMP_PWD_YN                                        IS '임시비밀번호발급여부';
COMMENT ON COLUMN TB_BM_USER.RMRK                                              IS '비고';
COMMENT ON COLUMN TB_BM_USER.HWGE_AMT                                          IS '시급 금액';
COMMENT ON COLUMN TB_BM_USER.WH_XPAY_AMT                                       IS '주휴 수당 금액';
COMMENT ON COLUMN TB_BM_USER.WEEK_OV15H_WORK_YN                                IS '주 15시간 이상 근무 여부';
COMMENT ON COLUMN TB_BM_USER.ORG_LVL_CD                                        IS '조직레벨코드(SCP)';
COMMENT ON COLUMN TB_BM_USER.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_BM_USER.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_BM_USER.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_BM_USER.UPDT_DTIME                                        IS '수정일시';
COMMENT ON COLUMN TB_BM_USER.POS_UPDT_TSP                                      IS 'POS수정타임스템프';
COMMENT ON COLUMN TB_BM_USER.IF_UPDT_TSP                                       IS 'IF수정타임스탬프';


 /* TB_CM_ANNO_CTNT */

DROP TABLE TB_CM_ANNO_CTNT PURGE;

CREATE TABLE TB_CM_ANNO_CTNT
(
  BRD_CD                         VARCHAR2(5)                                  NOT NULL       
, ANNO_NO                        NUMBER(10,0)                                 NOT NULL       
, BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, ANNO_TITL_NM                   VARCHAR2(300)                                NULL           
, IMP_CD                         VARCHAR2(1)                                  NULL           
, READ_DIV_CD                    VARCHAR2(1)                                  NULL           
, ENGR_READ_RANG_CD              VARCHAR2(1)                                  NULL           
, AFLAT_CPN_CD                   VARCHAR2(5)                                  NULL           
, ANNO_FR_DT                     VARCHAR2(8)                                  NULL           
, ANNO_END_DT                    VARCHAR2(8)                                  NULL           
, FNSH_EXPCT_DT                  VARCHAR2(8)                                  NULL           
, FNSH_DT                        VARCHAR2(8)                                  NULL           
, RGS_BRND_CD                    VARCHAR2(2)                                  NULL           
, RGS_STORE_CD                   VARCHAR2(10)                                 NULL           
, EMAIL_AD                       VARCHAR2(200)                                NULL           
, TEL_NO                         VARCHAR2(100)                                NULL           
, INQU_CNT                       NUMBER(5,0)                                  NULL           
, TOP_ANNO_YN                    VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, POP_ANNO_YN                    VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, POP_ANNO_FR_DT                 VARCHAR2(8)                                  NULL           
, POP_ANNO_END_DT                VARCHAR2(8)                                  NULL           
, POP_ANNO_RANG_CD               VARCHAR2(1)                                  NULL           
, POP_ANNO_HID_YN                VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, APV_STATUS_CD                  VARCHAR2(1)                                  NULL           
, APVPE_ID                       VARCHAR2(20)                                 NULL           
, WRK_DIV_CD                     VARCHAR2(2)                                  NULL           
, ITEM_DIV_CD                    VARCHAR2(5)                                  NULL           
, DTL_ITEM_DIV_CD                VARCHAR2(5)                                  NULL           
, CNTNT_DIV_CD                   VARCHAR2(5)                                  NULL           
, CHRG_EMP_NO                    VARCHAR2(10)                                 NULL           
, CHRG_DEPT_CD                   VARCHAR2(10)                                 NULL           
, ANNO_CLF_CD                    VARCHAR2(2)                                  NULL           
, PBL_YN                         VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, RPLY_YN                        VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, MASS_ANNO_YN                   VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, MASS_ANNO_DIV_CD               VARCHAR2(1)                                  NULL           
, ANNO_PWD_NO                    VARCHAR2(100)                                NULL           
, HRCHY_LVL_NO                   VARCHAR2(1)                                  NULL           
, UPER_ANNO_NO                   NUMBER(10,0)                                 NULL           
, ANNO_DOC_FRM_CD                VARCHAR2(1)                                  NULL           
, PRGRS_STATUS_CD                VARCHAR2(1)                                  NULL           
, CNSL_RCP_NO                    VARCHAR2(13)                                 NULL           
, ATTC_FILE_GRP_NO               NUMBER(10,0)                                 NULL           
, APV_RSN_CNTNT                  VARCHAR2(500)                                NULL           
, ANNO_CNTNT                     CLOB                                         NULL           
, EDU_FR_DT                      VARCHAR2(8)                                  NULL           
, EDU_END_DT                     VARCHAR2(8)                                  NULL           
, EDU_PRSNL_CNT                  NUMBER(4,0)                                  NULL           
, EDU_PLACE                      VARCHAR2(500)                                NULL           
, DEL_YN                         VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, SMS_SEND_YN                    VARCHAR2(1)    DEFAULT 'N'                   NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_CM_ANNO_CTNT PRIMARY KEY (
    BRD_CD, ANNO_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CM_ANNO_CTNT                                              IS '공지내역';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.BRD_CD                                       IS '게시판 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.ANNO_NO                                      IS '공지 번호';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.BRND_CD                                      IS '브랜드 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.ANNO_TITL_NM                                 IS '공지 제목 명';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.IMP_CD                                       IS '중요도 코드(CM030)';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.READ_DIV_CD                                  IS '열람 구분 코드(CM033)';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.ENGR_READ_RANG_CD                            IS '기사 열람 범위 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.AFLAT_CPN_CD                                 IS '소속 회사 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.ANNO_FR_DT                                   IS '공지 시작 일자';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.ANNO_END_DT                                  IS '공지 종료 일자';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.FNSH_EXPCT_DT                                IS '완료 예정 일자';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.FNSH_DT                                      IS '완료 일자';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.RGS_BRND_CD                                  IS '등록 브랜드 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.RGS_STORE_CD                                 IS '등록 점포 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.EMAIL_AD                                     IS '이메일 주소';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.TEL_NO                                       IS '전화 번호';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.INQU_CNT                                     IS '조회 수';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.TOP_ANNO_YN                                  IS 'TOP 공지 여부';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.POP_ANNO_YN                                  IS '팝업 공지 여부';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.POP_ANNO_FR_DT                               IS '팝업 공지 시작 일자';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.POP_ANNO_END_DT                              IS '팝업 공지 종료 일자';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.POP_ANNO_RANG_CD                             IS '팝업 공지 범위 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.POP_ANNO_HID_YN                              IS '팝업 공지 숨김 여부';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.APV_STATUS_CD                                IS '승인 상태 코드(CM032)';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.APVPE_ID                                     IS '승인자 ID';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.WRK_DIV_CD                                   IS '업무 구분 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.ITEM_DIV_CD                                  IS '항목 구분 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.DTL_ITEM_DIV_CD                              IS '상세 항목 구분 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.CNTNT_DIV_CD                                 IS '내용 구분 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.CHRG_EMP_NO                                  IS '담당 사원 번호';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.CHRG_DEPT_CD                                 IS '담당 부서 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.ANNO_CLF_CD                                  IS '공지 분류 코드(CM031)';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.PBL_YN                                       IS '공개 여부';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.RPLY_YN                                      IS '댓글 여부';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.MASS_ANNO_YN                                 IS '대량 공지 여부';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.MASS_ANNO_DIV_CD                             IS '대량 공지 구분 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.ANNO_PWD_NO                                  IS '공지 비밀 번호';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.HRCHY_LVL_NO                                 IS '계층 레벨 번호';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.UPER_ANNO_NO                                 IS '상위 공지 번호';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.ANNO_DOC_FRM_CD                              IS '공지 문서 형태 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.PRGRS_STATUS_CD                              IS '진행 상태 코드';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.CNSL_RCP_NO                                  IS '상담 접수 번호';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.ATTC_FILE_GRP_NO                             IS '첨부 파일 그룹 번호';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.APV_RSN_CNTNT                                IS '승인 사유 내용';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.ANNO_CNTNT                                   IS '공지 내용';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.EDU_FR_DT                                    IS '교육시작일자';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.EDU_END_DT                                   IS '교육종료일자';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.EDU_PRSNL_CNT                                IS '교육인원수';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.EDU_PLACE                                    IS '교육장소';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.DEL_YN                                       IS '삭제 여부';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.SMS_SEND_YN                                  IS 'SMS알림';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_CM_ANNO_CTNT.UPDT_DTIME                                   IS '수정일시';


 /* TB_CM_ANNO_READ_CTNT */

DROP TABLE TB_CM_ANNO_READ_CTNT PURGE;

CREATE TABLE TB_CM_ANNO_READ_CTNT
(
  BRD_CD                         VARCHAR2(5)                                  NOT NULL       
, ANNO_NO                        NUMBER(10,0)                                 NOT NULL       
, USER_ID                        VARCHAR2(20)                                 NOT NULL       
, ANNO_EXCL_APPL_DT              VARCHAR2(20)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_CM_ANNO_READ_CTNT PRIMARY KEY (
    BRD_CD, ANNO_NO, USER_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CM_ANNO_READ_CTNT                                         IS '공지열람내역';
COMMENT ON COLUMN TB_CM_ANNO_READ_CTNT.BRD_CD                                  IS '게시판 코드';
COMMENT ON COLUMN TB_CM_ANNO_READ_CTNT.ANNO_NO                                 IS '공지 번호';
COMMENT ON COLUMN TB_CM_ANNO_READ_CTNT.USER_ID                                 IS '사용자 ID';
COMMENT ON COLUMN TB_CM_ANNO_READ_CTNT.ANNO_EXCL_APPL_DT                       IS '오늘하루보지않기';
COMMENT ON COLUMN TB_CM_ANNO_READ_CTNT.REGI_ID                                 IS '등록자ID';
COMMENT ON COLUMN TB_CM_ANNO_READ_CTNT.REGI_DTIME                              IS '등록일시';
COMMENT ON COLUMN TB_CM_ANNO_READ_CTNT.UPDT_ID                                 IS '수정자ID';
COMMENT ON COLUMN TB_CM_ANNO_READ_CTNT.UPDT_DTIME                              IS '수정일시';


 /* TB_CM_ANNO_TGT_CTNT */

DROP TABLE TB_CM_ANNO_TGT_CTNT PURGE;

CREATE TABLE TB_CM_ANNO_TGT_CTNT
(
  BRD_CD                         VARCHAR2(5)                                  NOT NULL       
, ANNO_NO                        NUMBER(10,0)                                 NOT NULL       
, READ_DIV_CD                    VARCHAR2(1)                                  NOT NULL       
, ANNO_TGT_CD                    VARCHAR2(10)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_CM_ANNO_TGT_CTNT PRIMARY KEY (
    BRD_CD, ANNO_NO, READ_DIV_CD, ANNO_TGT_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CM_ANNO_TGT_CTNT                                          IS '공지대상내역';
COMMENT ON COLUMN TB_CM_ANNO_TGT_CTNT.BRD_CD                                   IS '게시판 코드';
COMMENT ON COLUMN TB_CM_ANNO_TGT_CTNT.ANNO_NO                                  IS '공지 번호';
COMMENT ON COLUMN TB_CM_ANNO_TGT_CTNT.READ_DIV_CD                              IS '열람 구분 코드';
COMMENT ON COLUMN TB_CM_ANNO_TGT_CTNT.ANNO_TGT_CD                              IS '공지 대상 코드';
COMMENT ON COLUMN TB_CM_ANNO_TGT_CTNT.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN TB_CM_ANNO_TGT_CTNT.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN TB_CM_ANNO_TGT_CTNT.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN TB_CM_ANNO_TGT_CTNT.UPDT_DTIME                               IS '수정일시';


 /* TB_CM_ATTCFILE */

DROP TABLE TB_CM_ATTCFILE PURGE;

CREATE TABLE TB_CM_ATTCFILE
(
  ATTC_FILE_NO                   NUMBER(17,0)                                 NOT NULL       
, CHECKSUM                       VARCHAR2(256)                                NULL           
, ATTC_FILE_NM                   VARCHAR2(1000)                               NULL           
, ATTC_FILE_EXT_NM               VARCHAR2(20)                                 NULL           
, ATTC_FILE_TYPE                 VARCHAR2(20)                                 NULL           
, ATTC_FILE_SZ                   NUMBER(15,3)                                 NULL           
, SAVE_PATH_NM1                  VARCHAR2(300)                                NULL           
, SAVE_PATH_NM2                  VARCHAR2(300)                                NULL           
, ATTC_FILE_CMNT                 VARCHAR2(300)                                NULL           
, ATTC_FILE_GRP_NO               NUMBER(10,0)                                 NOT NULL       
, FILE_GRP_NM                    VARCHAR2(30)                                 NULL           
, SORT_NO                        NUMBER(4,0)                                  NULL           
, URL_PATH                       VARCHAR2(100)                                NULL           
, DEL_YN                         VARCHAR2(1)                                  NOT NULL       
, TEMP_YN                        VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_CM_ATTCFILE PRIMARY KEY (
    ATTC_FILE_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CM_ATTCFILE                                               IS '첨부파일';
COMMENT ON COLUMN TB_CM_ATTCFILE.ATTC_FILE_NO                                  IS '첨부 파일 번호';
COMMENT ON COLUMN TB_CM_ATTCFILE.CHECKSUM                                      IS '체크섬';
COMMENT ON COLUMN TB_CM_ATTCFILE.ATTC_FILE_NM                                  IS '첨부 파일 명';
COMMENT ON COLUMN TB_CM_ATTCFILE.ATTC_FILE_EXT_NM                              IS '첨부 파일 확장자 명';
COMMENT ON COLUMN TB_CM_ATTCFILE.ATTC_FILE_TYPE                                IS '첨부 파일 유형';
COMMENT ON COLUMN TB_CM_ATTCFILE.ATTC_FILE_SZ                                  IS '첨부 파일 크기';
COMMENT ON COLUMN TB_CM_ATTCFILE.SAVE_PATH_NM1                                 IS '저장 경로 명1';
COMMENT ON COLUMN TB_CM_ATTCFILE.SAVE_PATH_NM2                                 IS '저장 경로 명2';
COMMENT ON COLUMN TB_CM_ATTCFILE.ATTC_FILE_CMNT                                IS '첨부 파일 설명';
COMMENT ON COLUMN TB_CM_ATTCFILE.ATTC_FILE_GRP_NO                              IS '첨부 파일 그룹 번호';
COMMENT ON COLUMN TB_CM_ATTCFILE.FILE_GRP_NM                                   IS '파일 그룹 명';
COMMENT ON COLUMN TB_CM_ATTCFILE.SORT_NO                                       IS '정렬 번호';
COMMENT ON COLUMN TB_CM_ATTCFILE.URL_PATH                                      IS 'URL경로';
COMMENT ON COLUMN TB_CM_ATTCFILE.DEL_YN                                        IS '삭제 여부';
COMMENT ON COLUMN TB_CM_ATTCFILE.TEMP_YN                                       IS '임시여부';
COMMENT ON COLUMN TB_CM_ATTCFILE.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_CM_ATTCFILE.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_CM_ATTCFILE.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_CM_ATTCFILE.UPDT_DTIME                                    IS '수정일시';


 /* TB_CM_ATTCFILE_GRP */

DROP TABLE TB_CM_ATTCFILE_GRP PURGE;

CREATE TABLE TB_CM_ATTCFILE_GRP
(
  ATTC_FILE_GRP_NO               NUMBER(10,0)                                 NOT NULL       
, BIZ_CD                         VARCHAR2(20)                                 NULL           
, GRP_CMNT                       VARCHAR2(100)                                NULL           
, DEL_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_CM_ATTCFILE_GRP PRIMARY KEY (
    ATTC_FILE_GRP_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CM_ATTCFILE_GRP                                           IS '첨부파일그룹';
COMMENT ON COLUMN TB_CM_ATTCFILE_GRP.ATTC_FILE_GRP_NO                          IS '첨부 파일 그룹 번호';
COMMENT ON COLUMN TB_CM_ATTCFILE_GRP.BIZ_CD                                    IS '업무코드';
COMMENT ON COLUMN TB_CM_ATTCFILE_GRP.GRP_CMNT                                  IS '그룹 설명';
COMMENT ON COLUMN TB_CM_ATTCFILE_GRP.DEL_YN                                    IS '삭제 여부';
COMMENT ON COLUMN TB_CM_ATTCFILE_GRP.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_CM_ATTCFILE_GRP.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_CM_ATTCFILE_GRP.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_CM_ATTCFILE_GRP.UPDT_DTIME                                IS '수정일시';


 /* TB_CM_BRD_CD */

DROP TABLE TB_CM_BRD_CD PURGE;

CREATE TABLE TB_CM_BRD_CD
(
  BRD_CD                         VARCHAR2(5)                                  NOT NULL       
, BRD_NM                         VARCHAR2(100)                                NULL           
, BRD_TYPE_CD                    VARCHAR2(1)                                  NULL           
, BRD_TYPE_DTL_CD                VARCHAR2(2)                                  NULL           
, ATTC_FILE_YN                   VARCHAR2(1)                                  NOT NULL       
, BRND_IDCT_YN                   VARCHAR2(1)                                  NOT NULL       
, PBL_YN                         VARCHAR2(1)                                  NOT NULL       
, READ_DIV_YN                    VARCHAR2(1)                                  NOT NULL       
, ENGR_READ_YN                   VARCHAR2(1)                                  NOT NULL       
, AFLAT_CPN_YN                   VARCHAR2(1)                                  NOT NULL       
, ANNO_TERM_YN                   VARCHAR2(1)                                  NOT NULL       
, POP_ANNO_YN                    VARCHAR2(1)                                  NOT NULL       
, ITEM_DIV_YN                    VARCHAR2(1)                                  NOT NULL       
, CNTNT_DIV_YN                   VARCHAR2(1)                                  NOT NULL       
, CHRPE_YN                       VARCHAR2(1)                                  NOT NULL       
, RPLY_YN                        VARCHAR2(1)                                  NOT NULL       
, RPLY_APV_YN                    VARCHAR2(1)                                  NOT NULL       
, SGL_OPIN_YN                    VARCHAR2(1)                                  NOT NULL       
, SGL_OPIN_RPLY_YN               VARCHAR2(1)                                  NOT NULL       
, APV_YN                         VARCHAR2(1)                                  NOT NULL       
, HMP_IF_YN                      VARCHAR2(1)                                  NOT NULL       
, RGS_STORE_YN                   VARCHAR2(1)                                  NOT NULL       
, CNTNT_FRM_MNG_YN               VARCHAR2(1)                                  NOT NULL       
, APV_DEPT_CHOIC_YN              VARCHAR2(1)                                  NOT NULL       
, WRK_DIV_YN                     VARCHAR2(1)                                  NOT NULL       
, CNTNT                          VARCHAR2(1000)                               NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_CM_BRD_CD PRIMARY KEY (
    BRD_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CM_BRD_CD                                                 IS '게시판코드';
COMMENT ON COLUMN TB_CM_BRD_CD.BRD_CD                                          IS '게시판 코드';
COMMENT ON COLUMN TB_CM_BRD_CD.BRD_NM                                          IS '게시판 명';
COMMENT ON COLUMN TB_CM_BRD_CD.BRD_TYPE_CD                                     IS '게시판 유형 코드';
COMMENT ON COLUMN TB_CM_BRD_CD.BRD_TYPE_DTL_CD                                 IS '게시판 유형 상세 코드';
COMMENT ON COLUMN TB_CM_BRD_CD.ATTC_FILE_YN                                    IS '첨부 파일 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.BRND_IDCT_YN                                    IS '브랜드 표시 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.PBL_YN                                          IS '공개 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.READ_DIV_YN                                     IS '열람 구분 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.ENGR_READ_YN                                    IS '기사 열람 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.AFLAT_CPN_YN                                    IS '소속 회사 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.ANNO_TERM_YN                                    IS '공지 기간 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.POP_ANNO_YN                                     IS '팝업 공지 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.ITEM_DIV_YN                                     IS '항목 구분 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.CNTNT_DIV_YN                                    IS '내용 구분 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.CHRPE_YN                                        IS '담당자 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.RPLY_YN                                         IS '댓글 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.RPLY_APV_YN                                     IS '댓글 승인 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.SGL_OPIN_YN                                     IS '한줄 의견 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.SGL_OPIN_RPLY_YN                                IS '한줄 의견 댓글 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.APV_YN                                          IS '승인 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.HMP_IF_YN                                       IS '홈페이지 연계 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.RGS_STORE_YN                                    IS '등록 점포 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.CNTNT_FRM_MNG_YN                                IS '내용 형태 관리 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.APV_DEPT_CHOIC_YN                               IS '승인 부서 선택 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.WRK_DIV_YN                                      IS '업무 구분 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.CNTNT                                           IS '내용';
COMMENT ON COLUMN TB_CM_BRD_CD.USE_YN                                          IS '사용 여부';
COMMENT ON COLUMN TB_CM_BRD_CD.REGI_ID                                         IS '등록자ID';
COMMENT ON COLUMN TB_CM_BRD_CD.REGI_DTIME                                      IS '등록일시';
COMMENT ON COLUMN TB_CM_BRD_CD.UPDT_ID                                         IS '수정자ID';
COMMENT ON COLUMN TB_CM_BRD_CD.UPDT_DTIME                                      IS '수정일시';


 /* TB_CM_CALENDAR */

DROP TABLE TB_CM_CALENDAR PURGE;

CREATE TABLE TB_CM_CALENDAR
(
  CRTRN_DT                       VARCHAR2(8)                                  NOT NULL       
, CRTRN_YR                       VARCHAR2(4)                                  NULL           
, CRTRN_YM                       VARCHAR2(6)                                  NULL           
, DD                             VARCHAR2(2)                                  NULL           
, WDAY_CD                        VARCHAR2(1)                                  NULL           
, DT_DGE                         NUMBER(3,0)                                  NULL           
, YRLY_WEEK_DGE                  NUMBER(3,0)                                  NULL           
, MTHLY_WEEK_DGE                 NUMBER(3,0)                                  NULL           
, HLDY_YN                        VARCHAR2(1)                                  NOT NULL       
, HLDY_NM                        VARCHAR2(50)                                 NULL           
, RMK                            VARCHAR2(100)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_CM_CALENDAR PRIMARY KEY (
    CRTRN_DT
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CM_CALENDAR                                               IS 'CM달력';
COMMENT ON COLUMN TB_CM_CALENDAR.CRTRN_DT                                      IS '기준 일';
COMMENT ON COLUMN TB_CM_CALENDAR.CRTRN_YR                                      IS '기준 년도';
COMMENT ON COLUMN TB_CM_CALENDAR.CRTRN_YM                                      IS '기준 년월';
COMMENT ON COLUMN TB_CM_CALENDAR.DD                                            IS '일자';
COMMENT ON COLUMN TB_CM_CALENDAR.WDAY_CD                                       IS '요일 코드';
COMMENT ON COLUMN TB_CM_CALENDAR.DT_DGE                                        IS '일 차수';
COMMENT ON COLUMN TB_CM_CALENDAR.YRLY_WEEK_DGE                                 IS '년간 주 차수';
COMMENT ON COLUMN TB_CM_CALENDAR.MTHLY_WEEK_DGE                                IS '월간 주 차수';
COMMENT ON COLUMN TB_CM_CALENDAR.HLDY_YN                                       IS '휴일 여부';
COMMENT ON COLUMN TB_CM_CALENDAR.HLDY_NM                                       IS '휴일 명';
COMMENT ON COLUMN TB_CM_CALENDAR.RMK                                           IS '비고';
COMMENT ON COLUMN TB_CM_CALENDAR.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_CM_CALENDAR.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_CM_CALENDAR.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_CM_CALENDAR.UPDT_DTIME                                    IS '수정일시';


 /* TB_CM_WTHRFORCCTNT */

DROP TABLE TB_CM_WTHRFORCCTNT PURGE;

CREATE TABLE TB_CM_WTHRFORCCTNT
(
  CRTRN_DT                       VARCHAR2(8)                                  NOT NULL       
, TSTP                           VARCHAR2(24)                                 NOT NULL       
, KWTHR_REGN_CD                  VARCHAR2(8)                                  NOT NULL       
, KWTHR_DD_CD                    VARCHAR2(1)                                  NOT NULL       
, AREA_WIDE                      VARCHAR2(100)                                NULL           
, AREA_CITY                      VARCHAR2(100)                                NULL           
, AREA_DONG                      VARCHAR2(100)                                NULL           
, KWTHR_WTHR_CD                  VARCHAR2(2)                                  NULL           
, KWTHR_WTHR_DTL_NM              VARCHAR2(100)                                NULL           
, MINI_TMPR                      VARCHAR2(20)                                 NULL           
, BEST_TMPR                      VARCHAR2(20)                                 NULL           
, AM_PRCT_QTY                    VARCHAR2(20)                                 NULL           
, PM_PRCT_QTY                    VARCHAR2(20)                                 NULL           
, AM_WIND_DRCT                   VARCHAR2(20)                                 NULL           
, PM_WIND_DRCT                   VARCHAR2(20)                                 NULL           
, AM_WIND_SPD                    VARCHAR2(20)                                 NULL           
, PM_WIND_SPD                    VARCHAR2(20)                                 NULL           
, KWTHR_WTHR_FRCT                VARCHAR2(4000)                               NULL           
, LAST_YN                        VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_CM_WTHRFORCCTNT PRIMARY KEY (
    CRTRN_DT, KWTHR_REGN_CD, KWTHR_DD_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CM_WTHRFORCCTNT                                           IS '날씨예보내역';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.CRTRN_DT                                  IS '기준 일';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.TSTP                                      IS '타임스탬프';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.KWTHR_REGN_CD                             IS 'K웨더 지역 코드';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.KWTHR_DD_CD                               IS 'K웨더 일자 코드';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.AREA_WIDE                                 IS '시도';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.AREA_CITY                                 IS '시군구';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.AREA_DONG                                 IS '읍면동';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.KWTHR_WTHR_CD                             IS 'K웨더 날씨 코드';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.KWTHR_WTHR_DTL_NM                         IS 'K웨더 날씨 상세 명';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.MINI_TMPR                                 IS '최저 온도';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.BEST_TMPR                                 IS '최고 온도';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.AM_PRCT_QTY                               IS '오전 강수 량';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.PM_PRCT_QTY                               IS '오후 강수 량';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.AM_WIND_DRCT                              IS '오전 풍향';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.PM_WIND_DRCT                              IS '오후 풍향';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.AM_WIND_SPD                               IS '오전 풍속';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.PM_WIND_SPD                               IS '오후 풍속';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.KWTHR_WTHR_FRCT                           IS 'K웨더 날씨 예보';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.LAST_YN                                   IS '최종 여부';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_CM_WTHRFORCCTNT.UPDT_DTIME                                IS '수정일시';


 /* TB_CM_WTHR_CTNT */

DROP TABLE TB_CM_WTHR_CTNT PURGE;

CREATE TABLE TB_CM_WTHR_CTNT
(
  CRTRN_DT                       VARCHAR2(8)                                  NOT NULL       
, KWTHR_REGN_CD                  VARCHAR2(8)                                  NOT NULL       
, KWTHR_WTHR_STATUS_CD           VARCHAR2(2)                                  NULL           
, KWTHR_WTHR_STATUS_NM           VARCHAR2(30)                                 NULL           
, MINI_TMPR                      VARCHAR2(20)                                 NULL           
, BEST_TMPR                      VARCHAR2(20)                                 NULL           
, PRCT_QTY                       VARCHAR2(20)                                 NULL           
, SNWD_QTY                       VARCHAR2(20)                                 NULL           
, HUMMI_QTY                      VARCHAR2(20)                                 NULL           
, WND_SPD_QTY                    VARCHAR2(20)                                 NULL           
, AREA_WIDE                      VARCHAR2(100)                                NULL           
, AREA_CITY                      VARCHAR2(100)                                NULL           
, AREA_DONG                      VARCHAR2(100)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_CM_WTHR_CTNT PRIMARY KEY (
    CRTRN_DT, KWTHR_REGN_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CM_WTHR_CTNT                                              IS '날씨내역';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.CRTRN_DT                                     IS '기준 일';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.KWTHR_REGN_CD                                IS 'K웨더 지역 코드';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.KWTHR_WTHR_STATUS_CD                         IS 'K웨더 날씨 상태 코드';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.KWTHR_WTHR_STATUS_NM                         IS 'K웨더 날씨 상태 명';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.MINI_TMPR                                    IS '최저 온도';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.BEST_TMPR                                    IS '최고 온도';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.PRCT_QTY                                     IS '강수 량';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.SNWD_QTY                                     IS '적설 량';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.HUMMI_QTY                                    IS '습도';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.WND_SPD_QTY                                  IS '풍속';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.AREA_WIDE                                    IS '지역와이드';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.AREA_CITY                                    IS '지역시';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.AREA_DONG                                    IS '지역동';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_CM_WTHR_CTNT.UPDT_DTIME                                   IS '수정일시';


 /* TB_CU_INCS_PUR_PRFR_AGG */

DROP TABLE TB_CU_INCS_PUR_PRFR_AGG PURGE;

CREATE TABLE TB_CU_INCS_PUR_PRFR_AGG
(
  YYYYMM                         VARCHAR2(6)                                  NOT NULL       
, INCS_NO                        NUMBER(9,0)                                  NOT NULL       
, SUM_SALE_CNT                   NUMBER(7,0)                                  NULL           
, SUM_TOTAL_AMT                  NUMBER(22,0)                                 NULL           
, SUM_DC_AMT                     NUMBER(22,0)                                 NULL           
, SUM_SALE_AMT                   NUMBER(22,0)                                 NULL           
, SUM_SALE_VAT_AMT               NUMBER(22,0)                                 NULL           
, SUM_SALE_NET_AMT               NUMBER(22,0)                                 NULL           
, SUM_GREEN_DEPOSIT_AMT          NUMBER(22,0)                                 NULL           
, SUM_USE_POINT_AMT              NUMBER(22,0)                                 NULL           
, NORMAL_SALE_CNT                NUMBER(7,0)                                  NULL           
, NORMAL_TOTAL_AMT               NUMBER(22,0)                                 NULL           
, NORMAL_DC_AMT                  NUMBER(22,0)                                 NULL           
, NORMAL_SALE_AMT                NUMBER(22,0)                                 NULL           
, NORMAL_SALE_VAT_AMT            NUMBER(22,0)                                 NULL           
, NORMAL_SALE_NET_AMT            NUMBER(22,0)                                 NULL           
, NORMAL_GREEN_DEPOSIT_AMT       NUMBER(22,0)                                 NULL           
, NORMAL_USE_POINT_AMT           NUMBER(22,0)                                 NULL           
, VOID_SALE_CNT                  NUMBER(7,0)                                  NULL           
, VOID_TOTAL_AMT                 NUMBER(22,0)                                 NULL           
, VOID_DC_AMT                    NUMBER(22,0)                                 NULL           
, VOID_SALE_AMT                  NUMBER(22,0)                                 NULL           
, VOID_SALE_VAT_AMT              NUMBER(22,0)                                 NULL           
, VOID_SALE_NET_AMT              NUMBER(22,0)                                 NULL           
, VOID_GREEN_DEPOSIT_AMT         NUMBER(22,0)                                 NULL           
, VOID_USE_POINT_AMT             NUMBER(22,0)                                 NULL           
, FSCR_ID                        VARCHAR2(20)                                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(20)                                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_CU_INCS_PUR_PRFR_AGG PRIMARY KEY (
    YYYYMM, INCS_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CU_INCS_PUR_PRFR_AGG                                      IS '고객구매실적 집계대상목록';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.YYYYMM                               IS '집계년월';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.INCS_NO                              IS '통합고객번호';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.SUM_SALE_CNT                         IS '합계구매건수';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.SUM_TOTAL_AMT                        IS '합계총판매금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.SUM_DC_AMT                           IS '합계총할인금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.SUM_SALE_AMT                         IS '합계매출금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.SUM_SALE_VAT_AMT                     IS '합계매출VAT금액 (부가세)';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.SUM_SALE_NET_AMT                     IS '합계순매출금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.SUM_GREEN_DEPOSIT_AMT                IS '합계보증금(컵보증금)';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.SUM_USE_POINT_AMT                    IS '합계총사용포인트';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.NORMAL_SALE_CNT                      IS '정상구매건수';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.NORMAL_TOTAL_AMT                     IS '정상총판매금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.NORMAL_DC_AMT                        IS '정상총할인금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.NORMAL_SALE_AMT                      IS '정상매출금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.NORMAL_SALE_VAT_AMT                  IS '정상매출VAT금액 (부가세)';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.NORMAL_SALE_NET_AMT                  IS '정상순매출금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.NORMAL_GREEN_DEPOSIT_AMT             IS '정상보증금(컵보증금)';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.NORMAL_USE_POINT_AMT                 IS '정상총사용포인트';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.VOID_SALE_CNT                        IS '반품구매건수';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.VOID_TOTAL_AMT                       IS '반품총판매금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.VOID_DC_AMT                          IS '반품총할인금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.VOID_SALE_AMT                        IS '반품매출금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.VOID_SALE_VAT_AMT                    IS '반품매출VAT금액 (부가세)';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.VOID_SALE_NET_AMT                    IS '반품순매출금액';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.VOID_GREEN_DEPOSIT_AMT               IS '반품보증금(컵보증금)';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.VOID_USE_POINT_AMT                   IS '반품총사용포인트';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.FSCR_ID                              IS '최초생성ID';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.FSCR_TSP                             IS '최초생성시각';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.LSCH_ID                              IS '최종변경ID';
COMMENT ON COLUMN TB_CU_INCS_PUR_PRFR_AGG.LSCH_TSP                             IS '최종변경시각';


 /* TB_CU_INFO_AGREE */

DROP TABLE TB_CU_INFO_AGREE PURGE;

CREATE TABLE TB_CU_INFO_AGREE
(
  INCS_NO                        NUMBER(9,0)                                  NOT NULL       
, INFO_AGR_YN                    VARCHAR2(1)                                  NOT NULL       
, INFO_AGR_DTTM                  DATE                                         NOT NULL       
, REQ_STORE_CD                   VARCHAR2(10)                                 NOT NULL       
, REQ_POS_NO                     VARCHAR2(2)                                  NOT NULL       
, REQ_USER_ID                    VARCHAR2(20)                                 NOT NULL       
, REQ_DTTM                       DATE                                         NOT NULL       
, FSCR_ID                        VARCHAR2(20)                                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(20)                                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_CU_INFO_AGREE PRIMARY KEY (
    INCS_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CU_INFO_AGREE                                             IS '제3자정보제공동의내역';
COMMENT ON COLUMN TB_CU_INFO_AGREE.INCS_NO                                     IS '통합고객번호';
COMMENT ON COLUMN TB_CU_INFO_AGREE.INFO_AGR_YN                                 IS '제3자정보제공동의여부';
COMMENT ON COLUMN TB_CU_INFO_AGREE.INFO_AGR_DTTM                               IS '제3자정보제공동의일시';
COMMENT ON COLUMN TB_CU_INFO_AGREE.REQ_STORE_CD                                IS '요청점포코드';
COMMENT ON COLUMN TB_CU_INFO_AGREE.REQ_POS_NO                                  IS '요청포스번호';
COMMENT ON COLUMN TB_CU_INFO_AGREE.REQ_USER_ID                                 IS '요청사용자ID';
COMMENT ON COLUMN TB_CU_INFO_AGREE.REQ_DTTM                                    IS '요청일시(POS)';
COMMENT ON COLUMN TB_CU_INFO_AGREE.FSCR_ID                                     IS '최초생성ID';
COMMENT ON COLUMN TB_CU_INFO_AGREE.FSCR_TSP                                    IS '최초생성시각';
COMMENT ON COLUMN TB_CU_INFO_AGREE.LSCH_ID                                     IS '최종변경ID';
COMMENT ON COLUMN TB_CU_INFO_AGREE.LSCH_TSP                                    IS '최종변경시각';


 /* TB_CU_OMCUSI_INCS_GRD */

DROP TABLE TB_CU_OMCUSI_INCS_GRD PURGE;

CREATE TABLE TB_CU_OMCUSI_INCS_GRD
(
  INCS_NO                        NUMBER(9,0)                                  NOT NULL       
, INCS_GRD_CD                    VARCHAR2(20)                                 NULL           
, INCS_GRD_NM                    VARCHAR2(300)                                NULL           
, OSLM_CUST_GRD_CHG_TP_CD        VARCHAR2(2)                                  NULL           
, OSLM_CUST_GRD_CHG_DTTM         DATE                                         NULL           
, CUST_JOIN_DT                   VARCHAR2(8)                                  NULL           
, CUST_WT_DT                     VARCHAR2(8)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, JOIN_PRFR_FG                   VARCHAR2(1)                                  NULL           
, JOIN_PRFR_DTTM                 DATE                                         NULL           
, RESND_PRFR_FG                  VARCHAR2(1)                                  NULL           
, RESND_PRFR_DTTM                DATE                                         NULL           
, FSCR_ID                        VARCHAR2(20)                                 NOT NULL       
, FSCR_TSP                       TIMESTAMP(6)                                 NOT NULL       
, LSCH_ID                        VARCHAR2(20)                                 NOT NULL       
, LSCH_TSP                       TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_CU_OMCUSI_INCS_GRD PRIMARY KEY (
    INCS_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_CU_OMCUSI_INCS_GRD                                        IS '오설록 통합고객등급 변경내역';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.INCS_NO                                IS '통합고객번호';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.INCS_GRD_CD                            IS '통합고객등급코드';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.INCS_GRD_NM                            IS '통합고객등급명';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.OSLM_CUST_GRD_CHG_TP_CD                IS '통합고객등급변경유형코드';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.OSLM_CUST_GRD_CHG_DTTM                 IS '통합고객등급변경일시';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.CUST_JOIN_DT                           IS '회원가입일자(OSLM_CUST_GRD_CHG_TP_CD 02:회원가입)';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.CUST_WT_DT                             IS '회원탈퇴일자(OSLM_CUST_GRD_CHG_TP_CD 04:회원탈퇴)';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.USE_YN                                 IS '사용여부(탈퇴 시 N)';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.JOIN_PRFR_FG                           IS '회원가입실적전송구분';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.JOIN_PRFR_DTTM                         IS '회원가입실적전송일시';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.RESND_PRFR_FG                          IS '정기멤버십실적재전송구분';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.RESND_PRFR_DTTM                        IS '정기멤버십실적재전송일시';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.FSCR_ID                                IS '최초생성ID';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.FSCR_TSP                               IS '최초생성시각';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.LSCH_ID                                IS '최종변경ID';
COMMENT ON COLUMN TB_CU_OMCUSI_INCS_GRD.LSCH_TSP                               IS '최종변경시각';


 /* TB_EM_CUP_BNF */

DROP TABLE TB_EM_CUP_BNF PURGE;

CREATE TABLE TB_EM_CUP_BNF
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CUP_NO                         VARCHAR2(8)                                  NOT NULL       
, CUP_BNF_NO                     VARCHAR2(2)                                  NOT NULL       
, BNF_VAL                        NUMBER(10,2)                                 NOT NULL       
, BNF_MAX_VAL                    NUMBER(10,2)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_EM_CUP_BNF PRIMARY KEY (
    BRND_CD, CUP_NO, CUP_BNF_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_CUP_BNF                                                IS '쿠폰혜택';
COMMENT ON COLUMN TB_EM_CUP_BNF.BRND_CD                                        IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_CUP_BNF.CUP_NO                                         IS '쿠폰번호';
COMMENT ON COLUMN TB_EM_CUP_BNF.CUP_BNF_NO                                     IS '쿠폰혜택번호';
COMMENT ON COLUMN TB_EM_CUP_BNF.BNF_VAL                                        IS '혜택값';
COMMENT ON COLUMN TB_EM_CUP_BNF.BNF_MAX_VAL                                    IS '혜택최대값';
COMMENT ON COLUMN TB_EM_CUP_BNF.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_EM_CUP_BNF.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_EM_CUP_BNF.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_EM_CUP_BNF.UPDT_DTIME                                     IS '수정일시';
COMMENT ON COLUMN TB_EM_CUP_BNF.POS_UPDT_TSP                                   IS 'POS수정타임스템프';


 /* TB_EM_CUP_ISSU_STD */

DROP TABLE TB_EM_CUP_ISSU_STD PURGE;

CREATE TABLE TB_EM_CUP_ISSU_STD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CUP_NO                         VARCHAR2(8)                                  NOT NULL       
, EVT_NO                         VARCHAR2(10)                                 NOT NULL       
, CUP_NM                         VARCHAR2(300)                                NOT NULL       
, POS_CUP_NM                     VARCHAR2(90)                                 NOT NULL       
, CUP_CNTS                       VARCHAR2(900)                                NOT NULL       
, USE_RANG_CD                    VARCHAR2(2)                                  NOT NULL       
, COND_TYPE_CD                   VARCHAR2(2)                                  NOT NULL       
, MAX_ISSU_QTY                   NUMBER(8,0)                                  NOT NULL       
, ACUM_ISSU_QTY                  NUMBER(8,0)                                  NULL           
, ISSU_ST_DAY                    VARCHAR2(8)                                  NOT NULL       
, ISSU_END_DAY                   VARCHAR2(8)                                  NOT NULL       
, USE_ST_DAY                     VARCHAR2(8)                                  NOT NULL       
, USE_END_DAY                    VARCHAR2(8)                                  NOT NULL       
, USE_PRID_NOFD                  NUMBER(5,0)                                  NOT NULL       
, CUP_STAT_CD                    VARCHAR2(2)                                  NOT NULL       
, ISSU_METH_CD                   VARCHAR2(2)                                  NOT NULL       
, PRT_PST                        VARCHAR2(2)                                  NULL           
, MBSH_THIS_ISSU_COLL            NUMBER(3,0)                                  NULL           
, DUP_USE_PRMT_YN_CD             VARCHAR2(2)                                  NOT NULL       
, IF_CUP_NO                      VARCHAR2(20)                                 NULL           
, TERM_SET_TYPE                  VARCHAR2(2)                                  NULL           
, NJ_STORE_YN                    VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_EM_CUP_ISSU_STD PRIMARY KEY (
    BRND_CD, CUP_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_CUP_ISSU_STD                                           IS '쿠폰행사사용기준';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.BRND_CD                                   IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.CUP_NO                                    IS '쿠폰번호';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.EVT_NO                                    IS '행사번호';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.CUP_NM                                    IS '쿠폰명';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.POS_CUP_NM                                IS 'POS노출명칭';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.CUP_CNTS                                  IS '쿠폰내용';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.USE_RANG_CD                               IS '사용범위코드';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.COND_TYPE_CD                              IS '조건유형코드';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.MAX_ISSU_QTY                              IS '최대발급수량';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.ACUM_ISSU_QTY                             IS '누적발급수량';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.ISSU_ST_DAY                               IS '발급시작일';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.ISSU_END_DAY                              IS '발급종료일';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.USE_ST_DAY                                IS '사용시작일';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.USE_END_DAY                               IS '사용종료일';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.USE_PRID_NOFD                             IS '사용기간일수';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.CUP_STAT_CD                               IS '쿠폰상태코드';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.ISSU_METH_CD                              IS '발급방법코드';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.PRT_PST                                   IS '출력위치';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.MBSH_THIS_ISSU_COLL                       IS '회원당발급회수';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.DUP_USE_PRMT_YN_CD                        IS '중복사용허용여부코드';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.IF_CUP_NO                                 IS 'IF쿠폰번호';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.TERM_SET_TYPE                             IS '기간세트타입';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.NJ_STORE_YN                               IS 'NJ점포여부';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_EM_CUP_ISSU_STD.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_EM_CUP_ISSU_USE */

DROP TABLE TB_EM_CUP_ISSU_USE PURGE;

CREATE TABLE TB_EM_CUP_ISSU_USE
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CUP_ISSU_NO                    VARCHAR2(16)                                 NOT NULL       
, CUP_NO                         VARCHAR2(8)                                  NOT NULL       
, CUP_ISSU_DTTM                  VARCHAR2(14)                                 NOT NULL       
, ISSU_STORE_CD                  VARCHAR2(10)                                 NULL           
, ISSU_RCPT_NO                   VARCHAR2(30)                                 NULL           
, CUP_USE_YN                     VARCHAR2(1)                                  NOT NULL       
, CUP_USE_DTTM                   VARCHAR2(14)                                 NULL           
, USE_STORE_CD                   VARCHAR2(10)                                 NULL           
, USE_RCPT_NO                    VARCHAR2(30)                                 NULL           
, CUP_RETN_DTTM                  VARCHAR2(14)                                 NULL           
, RETN_STORE_CD                  VARCHAR2(10)                                 NULL           
, RETN_RCPT_NO                   VARCHAR2(30)                                 NULL           
, CUP_STAT_CD                    VARCHAR2(2)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_EM_CUP_ISSU_USE PRIMARY KEY (
    BRND_CD, CUP_ISSU_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_CUP_ISSU_USE                                           IS '쿠폰발급사용내역';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.BRND_CD                                   IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.CUP_ISSU_NO                               IS '쿠폰발급번호';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.CUP_NO                                    IS '쿠폰번호';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.CUP_ISSU_DTTM                             IS '쿠폰발급일시';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.ISSU_STORE_CD                             IS '발급점포코드';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.ISSU_RCPT_NO                              IS '발급영수증번호';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.CUP_USE_YN                                IS '쿠폰사용여부';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.CUP_USE_DTTM                              IS '쿠폰사용일시';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.USE_STORE_CD                              IS '사용점포코드';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.USE_RCPT_NO                               IS '사용영수증번호';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.CUP_RETN_DTTM                             IS '쿠폰반품일시';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.RETN_STORE_CD                             IS '반품점포코드';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.RETN_RCPT_NO                              IS '반품영수증번호';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.CUP_STAT_CD                               IS '쿠폰상태코드';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_EM_CUP_ISSU_USE.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_EM_CUP_STOP_STORE */

DROP TABLE TB_EM_CUP_STOP_STORE PURGE;

CREATE TABLE TB_EM_CUP_STOP_STORE
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CUP_NO                         VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, CUP_STOP_DT                    VARCHAR2(8)                                  NULL           
, CUP_STOP_RESN                  VARCHAR2(100)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_EM_CUP_STOP_STORE PRIMARY KEY (
    BRND_CD, CUP_NO, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_CUP_STOP_STORE                                         IS '쿠폰중지점포';
COMMENT ON COLUMN TB_EM_CUP_STOP_STORE.BRND_CD                                 IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_CUP_STOP_STORE.CUP_NO                                  IS '쿠폰번호';
COMMENT ON COLUMN TB_EM_CUP_STOP_STORE.STORE_CD                                IS '점포 코드';
COMMENT ON COLUMN TB_EM_CUP_STOP_STORE.CUP_STOP_DT                             IS '쿠폰중지일자';
COMMENT ON COLUMN TB_EM_CUP_STOP_STORE.CUP_STOP_RESN                           IS '쿠폰중지사유';
COMMENT ON COLUMN TB_EM_CUP_STOP_STORE.REGI_ID                                 IS '등록자ID';
COMMENT ON COLUMN TB_EM_CUP_STOP_STORE.REGI_DTIME                              IS '등록일시';
COMMENT ON COLUMN TB_EM_CUP_STOP_STORE.UPDT_ID                                 IS '수정자ID';
COMMENT ON COLUMN TB_EM_CUP_STOP_STORE.UPDT_DTIME                              IS '수정일시';
COMMENT ON COLUMN TB_EM_CUP_STOP_STORE.POS_UPDT_TSP                            IS 'POS수정타임스템프';


 /* TB_EM_CUP_USE_COND */

DROP TABLE TB_EM_CUP_USE_COND PURGE;

CREATE TABLE TB_EM_CUP_USE_COND
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CUP_NO                         VARCHAR2(8)                                  NOT NULL       
, CUP_COND_NO                    VARCHAR2(2)                                  NOT NULL       
, CUP_COND_MIN_VAL               NUMBER(10,2)                                 NULL           
, CUP_COND_QTY_MORE_YN           VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_EM_CUP_USE_COND PRIMARY KEY (
    BRND_CD, CUP_NO, CUP_COND_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_CUP_USE_COND                                           IS '쿠폰사용조건';
COMMENT ON COLUMN TB_EM_CUP_USE_COND.BRND_CD                                   IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_CUP_USE_COND.CUP_NO                                    IS '쿠폰번호';
COMMENT ON COLUMN TB_EM_CUP_USE_COND.CUP_COND_NO                               IS '쿠폰조건번호';
COMMENT ON COLUMN TB_EM_CUP_USE_COND.CUP_COND_MIN_VAL                          IS '쿠폰조건최소값';
COMMENT ON COLUMN TB_EM_CUP_USE_COND.CUP_COND_QTY_MORE_YN                      IS '쿠폰이상구매여부';
COMMENT ON COLUMN TB_EM_CUP_USE_COND.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_EM_CUP_USE_COND.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_EM_CUP_USE_COND.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_EM_CUP_USE_COND.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_EM_CUP_USE_COND.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_EM_CUP_USE_STORE */

DROP TABLE TB_EM_CUP_USE_STORE PURGE;

CREATE TABLE TB_EM_CUP_USE_STORE
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CUP_NO                         VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_EM_CUP_USE_STORE PRIMARY KEY (
    BRND_CD, CUP_NO, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_CUP_USE_STORE                                          IS '쿠폰사용대상점포';
COMMENT ON COLUMN TB_EM_CUP_USE_STORE.BRND_CD                                  IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_CUP_USE_STORE.CUP_NO                                   IS '쿠폰번호';
COMMENT ON COLUMN TB_EM_CUP_USE_STORE.STORE_CD                                 IS '점포 코드';
COMMENT ON COLUMN TB_EM_CUP_USE_STORE.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN TB_EM_CUP_USE_STORE.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN TB_EM_CUP_USE_STORE.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN TB_EM_CUP_USE_STORE.UPDT_DTIME                               IS '수정일시';
COMMENT ON COLUMN TB_EM_CUP_USE_STORE.POS_UPDT_TSP                             IS 'POS수정타임스템프';


 /* TB_EM_EVT */

DROP TABLE TB_EM_EVT PURGE;

CREATE TABLE TB_EM_EVT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EVT_NO                         VARCHAR2(10)                                 NOT NULL       
, EVT_NM                         VARCHAR2(300)                                NOT NULL       
, POS_EXPR_NM                    VARCHAR2(90)                                 NOT NULL       
, MDA_CLS_CD                     VARCHAR2(2)                                  NOT NULL       
, EVT_RANG_CD                    VARCHAR2(2)                                  NOT NULL       
, EVT_TYPE1_CD                   VARCHAR2(2)                                  NOT NULL       
, EVT_TYPE2_CD                   VARCHAR2(4)                                  NOT NULL       
, EVT_TYPE3_CD                   VARCHAR2(6)                                  NOT NULL       
, COND_TYPE_CD                   VARCHAR2(2)                                  NOT NULL       
, BNF_TYPE_1_CD                  VARCHAR2(2)                                  NOT NULL       
, BNF_TYPE_2_CD                  VARCHAR2(4)                                  NOT NULL       
, BNF_TYPE_3_CD                  VARCHAR2(6)                                  NOT NULL       
, DC_TYPE_CD                     VARCHAR2(2)                                  NOT NULL       
, PMPT_DC_APPL_CD                VARCHAR2(2)                                  NOT NULL       
, DUP_PLCY_CD                    VARCHAR2(2)                                  NOT NULL       
, EVT_STDT                       VARCHAR2(8)                                  NOT NULL       
, EVT_CLDA                       VARCHAR2(8)                                  NOT NULL       
, EVT_APPL_DOW                   VARCHAR2(7)                                  NULL           
, EVT_SPFC_DAY                   VARCHAR2(10)                                 NULL           
, EVT_ST_TM                      VARCHAR2(4)                                  NULL           
, EVT_END_TM                     VARCHAR2(4)                                  NULL           
, EVT_STAT_CD                    VARCHAR2(2)                                  NOT NULL       
, EVT_EXPL                       VARCHAR2(900)                                NOT NULL       
, EVT_STOP_DT                    VARCHAR2(8)                                  NULL           
, EVT_STOP_RESN_RMK              VARCHAR2(300)                                NULL           
, EVT_CALC_METH_CD               VARCHAR2(2)                                  NOT NULL       
, DILA_CLS_CD                    VARCHAR2(2)                                  NULL           
, DILA_GOLD_UNIT_CD              VARCHAR2(2)                                  NOT NULL       
, DILA_FRCS_FRCS                 NUMBER(10,2)                                 NULL           
, DILA_FRCS_MAIN_CO              NUMBER(10,2)                                 NULL           
, DILA_DIRE_STOR                 NUMBER(10,2)                                 NULL           
, DILA_PTNR                      NUMBER(10,2)                                 NULL           
, PTNR_CD                        VARCHAR2(10)                                 NULL           
, TAX_CAL_ISSU                   VARCHAR2(2)                                  NULL           
, REPR_EVT_NO                    VARCHAR2(10)                                 NOT NULL       
, TEST_MOD                       VARCHAR2(1)                                  NULL           
, REGI_SUB                       VARCHAR2(100)                                NULL           
, MOBL_DSLP_YN                   VARCHAR2(1)                                  NULL           
, ESTI_AMT                       NUMBER(12,2)                                 NULL           
, ESTI_COST                      NUMBER(12,2)                                 NULL           
, BATCH_APPLY_YN                 VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_EM_EVT PRIMARY KEY (
    BRND_CD, EVT_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_EVT                                                    IS '행사';
COMMENT ON COLUMN TB_EM_EVT.BRND_CD                                            IS '브랜드코드';
COMMENT ON COLUMN TB_EM_EVT.EVT_NO                                             IS '행사번호';
COMMENT ON COLUMN TB_EM_EVT.EVT_NM                                             IS '행사명';
COMMENT ON COLUMN TB_EM_EVT.POS_EXPR_NM                                        IS '포스노출명칭';
COMMENT ON COLUMN TB_EM_EVT.MDA_CLS_CD                                         IS '매체구분코드';
COMMENT ON COLUMN TB_EM_EVT.EVT_RANG_CD                                        IS '행사범위코드';
COMMENT ON COLUMN TB_EM_EVT.EVT_TYPE1_CD                                       IS '행사유형대';
COMMENT ON COLUMN TB_EM_EVT.EVT_TYPE2_CD                                       IS '행사유형중';
COMMENT ON COLUMN TB_EM_EVT.EVT_TYPE3_CD                                       IS '행사유형소';
COMMENT ON COLUMN TB_EM_EVT.COND_TYPE_CD                                       IS '조건유형';
COMMENT ON COLUMN TB_EM_EVT.BNF_TYPE_1_CD                                      IS '행사혜택대';
COMMENT ON COLUMN TB_EM_EVT.BNF_TYPE_2_CD                                      IS '행사혜택중';
COMMENT ON COLUMN TB_EM_EVT.BNF_TYPE_3_CD                                      IS '행사혜택소';
COMMENT ON COLUMN TB_EM_EVT.DC_TYPE_CD                                         IS '할인유형';
COMMENT ON COLUMN TB_EM_EVT.PMPT_DC_APPL_CD                                    IS '즉시할인적용코드';
COMMENT ON COLUMN TB_EM_EVT.DUP_PLCY_CD                                        IS '중복정책코드';
COMMENT ON COLUMN TB_EM_EVT.EVT_STDT                                           IS '행사시작일자';
COMMENT ON COLUMN TB_EM_EVT.EVT_CLDA                                           IS '행사종료일자';
COMMENT ON COLUMN TB_EM_EVT.EVT_APPL_DOW                                       IS '행사적용요일';
COMMENT ON COLUMN TB_EM_EVT.EVT_SPFC_DAY                                       IS '행사특정일';
COMMENT ON COLUMN TB_EM_EVT.EVT_ST_TM                                          IS '행사시작시간';
COMMENT ON COLUMN TB_EM_EVT.EVT_END_TM                                         IS '행사종료시간';
COMMENT ON COLUMN TB_EM_EVT.EVT_STAT_CD                                        IS '행사상태코드';
COMMENT ON COLUMN TB_EM_EVT.EVT_EXPL                                           IS '행사설명';
COMMENT ON COLUMN TB_EM_EVT.EVT_STOP_DT                                        IS '행사중지일자';
COMMENT ON COLUMN TB_EM_EVT.EVT_STOP_RESN_RMK                                  IS '행사중지사유비고';
COMMENT ON COLUMN TB_EM_EVT.EVT_CALC_METH_CD                                   IS '행사정산방법코드';
COMMENT ON COLUMN TB_EM_EVT.DILA_CLS_CD                                        IS '분담구분코드';
COMMENT ON COLUMN TB_EM_EVT.DILA_GOLD_UNIT_CD                                  IS '분담금단위코드';
COMMENT ON COLUMN TB_EM_EVT.DILA_FRCS_FRCS                                     IS '분담가맹점가맹점';
COMMENT ON COLUMN TB_EM_EVT.DILA_FRCS_MAIN_CO                                  IS '분담가맹점본사';
COMMENT ON COLUMN TB_EM_EVT.DILA_DIRE_STOR                                     IS '분담직영점';
COMMENT ON COLUMN TB_EM_EVT.DILA_PTNR                                          IS '분담제휴사';
COMMENT ON COLUMN TB_EM_EVT.PTNR_CD                                            IS '제휴사코드';
COMMENT ON COLUMN TB_EM_EVT.TAX_CAL_ISSU                                       IS '세금계산서발급';
COMMENT ON COLUMN TB_EM_EVT.REPR_EVT_NO                                        IS '대표행사번호';
COMMENT ON COLUMN TB_EM_EVT.TEST_MOD                                           IS '테스트모드';
COMMENT ON COLUMN TB_EM_EVT.REGI_SUB                                           IS 'REGI_SUB';
COMMENT ON COLUMN TB_EM_EVT.MOBL_DSLP_YN                                       IS '모바일표시여부';
COMMENT ON COLUMN TB_EM_EVT.ESTI_AMT                                           IS '평가금액';
COMMENT ON COLUMN TB_EM_EVT.ESTI_COST                                          IS '평가단가';
COMMENT ON COLUMN TB_EM_EVT.BATCH_APPLY_YN                                     IS '일괄적용행사대상여부';
COMMENT ON COLUMN TB_EM_EVT.REGI_ID                                            IS '등록자ID';
COMMENT ON COLUMN TB_EM_EVT.REGI_DTIME                                         IS '등록일시';
COMMENT ON COLUMN TB_EM_EVT.UPDT_ID                                            IS '수정자ID';
COMMENT ON COLUMN TB_EM_EVT.UPDT_DTIME                                         IS '수정일시';
COMMENT ON COLUMN TB_EM_EVT.POS_UPDT_TSP                                       IS 'POS수정타임스템프';


 /* TB_EM_EVT_BACKUP */

DROP TABLE TB_EM_EVT_BACKUP PURGE;

CREATE TABLE TB_EM_EVT_BACKUP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EVT_NO                         VARCHAR2(10)                                 NOT NULL       
, EVT_NM                         VARCHAR2(300)                                NOT NULL       
, POS_EXPR_NM                    VARCHAR2(90)                                 NOT NULL       
, MDA_CLS_CD                     VARCHAR2(2)                                  NOT NULL       
, EVT_RANG_CD                    VARCHAR2(2)                                  NOT NULL       
, EVT_TYPE1_CD                   VARCHAR2(2)                                  NOT NULL       
, EVT_TYPE2_CD                   VARCHAR2(4)                                  NOT NULL       
, EVT_TYPE3_CD                   VARCHAR2(6)                                  NOT NULL       
, COND_TYPE_CD                   VARCHAR2(2)                                  NOT NULL       
, BNF_TYPE_1_CD                  VARCHAR2(2)                                  NOT NULL       
, BNF_TYPE_2_CD                  VARCHAR2(4)                                  NOT NULL       
, BNF_TYPE_3_CD                  VARCHAR2(6)                                  NOT NULL       
, DC_TYPE_CD                     VARCHAR2(2)                                  NOT NULL       
, PMPT_DC_APPL_CD                VARCHAR2(2)                                  NOT NULL       
, DUP_PLCY_CD                    VARCHAR2(2)                                  NOT NULL       
, EVT_STDT                       VARCHAR2(8)                                  NOT NULL       
, EVT_CLDA                       VARCHAR2(8)                                  NOT NULL       
, EVT_APPL_DOW                   VARCHAR2(7)                                  NULL           
, EVT_SPFC_DAY                   VARCHAR2(10)                                 NULL           
, EVT_ST_TM                      VARCHAR2(4)                                  NULL           
, EVT_END_TM                     VARCHAR2(4)                                  NULL           
, EVT_STAT_CD                    VARCHAR2(2)                                  NOT NULL       
, EVT_EXPL                       VARCHAR2(900)                                NOT NULL       
, EVT_STOP_DT                    VARCHAR2(8)                                  NULL           
, EVT_STOP_RESN_RMK              VARCHAR2(300)                                NULL           
, EVT_CALC_METH_CD               VARCHAR2(2)                                  NOT NULL       
, DILA_CLS_CD                    VARCHAR2(2)                                  NULL           
, DILA_GOLD_UNIT_CD              VARCHAR2(2)                                  NOT NULL       
, DILA_FRCS_FRCS                 NUMBER(10,2)                                 NULL           
, DILA_FRCS_MAIN_CO              NUMBER(10,2)                                 NULL           
, DILA_DIRE_STOR                 NUMBER(10,2)                                 NULL           
, DILA_PTNR                      NUMBER(10,2)                                 NULL           
, PTNR_CD                        VARCHAR2(10)                                 NULL           
, TAX_CAL_ISSU                   VARCHAR2(2)                                  NULL           
, REPR_EVT_NO                    VARCHAR2(10)                                 NOT NULL       
, TEST_MOD                       VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, REGI_SUB                       VARCHAR2(100)                                NULL           
, MOBL_DSLP_YN                   VARCHAR2(1)                                  NULL           
, ESTI_AMT                       NUMBER(12,2)                                 NULL           
, ESTI_COST                      NUMBER(12,2)                                 NULL           
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_EVT_BACKUP                                             IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.BRND_CD                                     IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_NO                                      IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_NM                                      IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.POS_EXPR_NM                                 IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.MDA_CLS_CD                                  IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_RANG_CD                                 IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_TYPE1_CD                                IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_TYPE2_CD                                IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_TYPE3_CD                                IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.COND_TYPE_CD                                IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.BNF_TYPE_1_CD                               IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.BNF_TYPE_2_CD                               IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.BNF_TYPE_3_CD                               IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.DC_TYPE_CD                                  IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.PMPT_DC_APPL_CD                             IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.DUP_PLCY_CD                                 IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_STDT                                    IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_CLDA                                    IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_APPL_DOW                                IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_SPFC_DAY                                IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_ST_TM                                   IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_END_TM                                  IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_STAT_CD                                 IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_EXPL                                    IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_STOP_DT                                 IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_STOP_RESN_RMK                           IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.EVT_CALC_METH_CD                            IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.DILA_CLS_CD                                 IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.DILA_GOLD_UNIT_CD                           IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.DILA_FRCS_FRCS                              IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.DILA_FRCS_MAIN_CO                           IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.DILA_DIRE_STOR                              IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.DILA_PTNR                                   IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.PTNR_CD                                     IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.TAX_CAL_ISSU                                IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.REPR_EVT_NO                                 IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.TEST_MOD                                    IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.REGI_ID                                     IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.REGI_DTIME                                  IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.UPDT_ID                                     IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.UPDT_DTIME                                  IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.POS_UPDT_TSP                                IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.REGI_SUB                                    IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.MOBL_DSLP_YN                                IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.ESTI_AMT                                    IS '';
COMMENT ON COLUMN TB_EM_EVT_BACKUP.ESTI_COST                                   IS '';


 /* TB_EM_EVT_BNF */

DROP TABLE TB_EM_EVT_BNF PURGE;

CREATE TABLE TB_EM_EVT_BNF
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EVT_NO                         VARCHAR2(10)                                 NOT NULL       
, EVT_BNF_NO                     VARCHAR2(2)                                  NOT NULL       
, BNF_VAL                        NUMBER(10,2)                                 NOT NULL       
, BNF_MAX_VAL                    NUMBER(10,2)                                 NULL           
, COND_QTY_MORE_YN               VARCHAR2(2)    DEFAULT 'N'                   NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NULL           
, CONSTRAINT PK_TB_EM_EVT_BNF PRIMARY KEY (
    BRND_CD, EVT_NO, EVT_BNF_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_EVT_BNF                                                IS '행사혜택';
COMMENT ON COLUMN TB_EM_EVT_BNF.BRND_CD                                        IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_EVT_BNF.EVT_NO                                         IS '행사번호';
COMMENT ON COLUMN TB_EM_EVT_BNF.EVT_BNF_NO                                     IS '행사혜택번호';
COMMENT ON COLUMN TB_EM_EVT_BNF.BNF_VAL                                        IS '혜택값';
COMMENT ON COLUMN TB_EM_EVT_BNF.BNF_MAX_VAL                                    IS '혜택최대값';
COMMENT ON COLUMN TB_EM_EVT_BNF.COND_QTY_MORE_YN                               IS '행사이상구매조건여부';
COMMENT ON COLUMN TB_EM_EVT_BNF.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_EM_EVT_BNF.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_EM_EVT_BNF.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_EM_EVT_BNF.UPDT_DTIME                                     IS '수정일시';
COMMENT ON COLUMN TB_EM_EVT_BNF.POS_UPDT_TSP                                   IS 'POS수정타임스템프';


 /* TB_EM_EVT_CARD */

DROP TABLE TB_EM_EVT_CARD PURGE;

CREATE TABLE TB_EM_EVT_CARD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EVT_NO                         VARCHAR2(10)                                 NOT NULL       
, CARD_CO_CD                     VARCHAR2(2)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_EM_EVT_CARD PRIMARY KEY (
    BRND_CD, EVT_NO, CARD_CO_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_EVT_CARD                                               IS '행사카드사';
COMMENT ON COLUMN TB_EM_EVT_CARD.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_EVT_CARD.EVT_NO                                        IS '행사번호';
COMMENT ON COLUMN TB_EM_EVT_CARD.CARD_CO_CD                                    IS '카드사코드';
COMMENT ON COLUMN TB_EM_EVT_CARD.USE_YN                                        IS '사용 여부';
COMMENT ON COLUMN TB_EM_EVT_CARD.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_EM_EVT_CARD.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_EM_EVT_CARD.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_EM_EVT_CARD.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_EM_EVT_CARD.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_EM_EVT_COND */

DROP TABLE TB_EM_EVT_COND PURGE;

CREATE TABLE TB_EM_EVT_COND
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EVT_NO                         VARCHAR2(10)                                 NOT NULL       
, EVT_COND_NO                    VARCHAR2(2)                                  NOT NULL       
, EVT_COND_MIN_VAL               NUMBER(10,2)                                 NULL           
, EVT_COND_QTY_MORE_YN           VARCHAR2(1)    DEFAULT 'N'                   NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NULL           
, CONSTRAINT PK_TB_EM_EVT_COND PRIMARY KEY (
    BRND_CD, EVT_NO, EVT_COND_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_EVT_COND                                               IS '행사조건';
COMMENT ON COLUMN TB_EM_EVT_COND.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_EVT_COND.EVT_NO                                        IS '행사번호';
COMMENT ON COLUMN TB_EM_EVT_COND.EVT_COND_NO                                   IS '행사조건번호';
COMMENT ON COLUMN TB_EM_EVT_COND.EVT_COND_MIN_VAL                              IS '행사조건최소값';
COMMENT ON COLUMN TB_EM_EVT_COND.EVT_COND_QTY_MORE_YN                          IS '행사이상구매조건여부';
COMMENT ON COLUMN TB_EM_EVT_COND.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_EM_EVT_COND.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_EM_EVT_COND.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_EM_EVT_COND.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_EM_EVT_COND.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_EM_EVT_STOP_STORE */

DROP TABLE TB_EM_EVT_STOP_STORE PURGE;

CREATE TABLE TB_EM_EVT_STOP_STORE
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EVT_NO                         VARCHAR2(10)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, EVT_STOP_DT                    VARCHAR2(8)                                  NULL           
, EVT_STOP_RESN                  VARCHAR2(100)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_EM_EVT_STOP_STORE PRIMARY KEY (
    BRND_CD, EVT_NO, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_EVT_STOP_STORE                                         IS '행사중지점포';
COMMENT ON COLUMN TB_EM_EVT_STOP_STORE.BRND_CD                                 IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_EVT_STOP_STORE.EVT_NO                                  IS '행사번호';
COMMENT ON COLUMN TB_EM_EVT_STOP_STORE.STORE_CD                                IS '점포 코드';
COMMENT ON COLUMN TB_EM_EVT_STOP_STORE.EVT_STOP_DT                             IS '행사제외시작일자';
COMMENT ON COLUMN TB_EM_EVT_STOP_STORE.EVT_STOP_RESN                           IS '행사제외시작사유';
COMMENT ON COLUMN TB_EM_EVT_STOP_STORE.REGI_ID                                 IS '등록자ID';
COMMENT ON COLUMN TB_EM_EVT_STOP_STORE.REGI_DTIME                              IS '등록일시';
COMMENT ON COLUMN TB_EM_EVT_STOP_STORE.UPDT_ID                                 IS '수정자ID';
COMMENT ON COLUMN TB_EM_EVT_STOP_STORE.UPDT_DTIME                              IS '수정일시';
COMMENT ON COLUMN TB_EM_EVT_STOP_STORE.POS_UPDT_TSP                            IS 'POS수정타임스템프';


 /* TB_EM_EVT_STORE */

DROP TABLE TB_EM_EVT_STORE PURGE;

CREATE TABLE TB_EM_EVT_STORE
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EVT_NO                         VARCHAR2(10)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_EM_EVT_STORE PRIMARY KEY (
    BRND_CD, EVT_NO, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_EVT_STORE                                              IS '행사대상점포';
COMMENT ON COLUMN TB_EM_EVT_STORE.BRND_CD                                      IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_EVT_STORE.EVT_NO                                       IS '행사번호';
COMMENT ON COLUMN TB_EM_EVT_STORE.STORE_CD                                     IS '점포 코드';
COMMENT ON COLUMN TB_EM_EVT_STORE.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_EM_EVT_STORE.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_EM_EVT_STORE.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_EM_EVT_STORE.UPDT_DTIME                                   IS '수정일시';
COMMENT ON COLUMN TB_EM_EVT_STORE.POS_UPDT_TSP                                 IS 'POS수정타임스템프';


 /* TB_EM_MENU_GRP */

DROP TABLE TB_EM_MENU_GRP PURGE;

CREATE TABLE TB_EM_MENU_GRP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EVT_MENU_GRP_NO                VARCHAR2(10)                                 NOT NULL       
, EVT_MENU_GRP_NM                VARCHAR2(300)                                NOT NULL       
, EVT_MENU_GRP_EXPL              VARCHAR2(900)                                NULL           
, TARG_MENU_CD                   VARCHAR2(2)                                  NOT NULL       
, SOCE_MENU_NO                   VARCHAR2(10)                                 NOT NULL       
, CRT_DT                         VARCHAR2(8)                                  NOT NULL       
, CRT_NM                         VARCHAR2(30)                                 NOT NULL       
, CRT_SCH_WOD                    VARCHAR2(300)                                NULL           
, CRT_RESN_RMK                   VARCHAR2(300)                                NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_EM_MENU_GRP PRIMARY KEY (
    BRND_CD, EVT_MENU_GRP_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_MENU_GRP                                               IS '행사메뉴그룹';
COMMENT ON COLUMN TB_EM_MENU_GRP.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_MENU_GRP.EVT_MENU_GRP_NO                               IS '행사메뉴그룹번호';
COMMENT ON COLUMN TB_EM_MENU_GRP.EVT_MENU_GRP_NM                               IS '행사메뉴그룹명';
COMMENT ON COLUMN TB_EM_MENU_GRP.EVT_MENU_GRP_EXPL                             IS '행사메뉴그룹설명';
COMMENT ON COLUMN TB_EM_MENU_GRP.TARG_MENU_CD                                  IS '대상메뉴코드';
COMMENT ON COLUMN TB_EM_MENU_GRP.SOCE_MENU_NO                                  IS '원천메뉴번호';
COMMENT ON COLUMN TB_EM_MENU_GRP.CRT_DT                                        IS '생성일자';
COMMENT ON COLUMN TB_EM_MENU_GRP.CRT_NM                                        IS '생성자명';
COMMENT ON COLUMN TB_EM_MENU_GRP.CRT_SCH_WOD                                   IS '검색어';
COMMENT ON COLUMN TB_EM_MENU_GRP.CRT_RESN_RMK                                  IS '생성사유비고';
COMMENT ON COLUMN TB_EM_MENU_GRP.USE_YN                                        IS '사용여부';
COMMENT ON COLUMN TB_EM_MENU_GRP.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_EM_MENU_GRP.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_EM_MENU_GRP.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_EM_MENU_GRP.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_EM_MENU_GRP.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_EM_MENU_GRP_GU_LSTNM */

DROP TABLE TB_EM_MENU_GRP_GU_LSTNM PURGE;

CREATE TABLE TB_EM_MENU_GRP_GU_LSTNM
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EVT_MENU_GRP_NO                VARCHAR2(10)                                 NOT NULL       
, MENU_CD                        VARCHAR2(10)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NULL           
, CONSTRAINT PK_TB_EM_MENU_GRP_GU_LSTNM PRIMARY KEY (
    BRND_CD, EVT_MENU_GRP_NO, MENU_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_MENU_GRP_GU_LSTNM                                      IS '행사메뉴그룹구성';
COMMENT ON COLUMN TB_EM_MENU_GRP_GU_LSTNM.BRND_CD                              IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_MENU_GRP_GU_LSTNM.EVT_MENU_GRP_NO                      IS '행사메뉴그룹번호';
COMMENT ON COLUMN TB_EM_MENU_GRP_GU_LSTNM.MENU_CD                              IS '메뉴코드';
COMMENT ON COLUMN TB_EM_MENU_GRP_GU_LSTNM.REGI_ID                              IS '등록자ID';
COMMENT ON COLUMN TB_EM_MENU_GRP_GU_LSTNM.REGI_DTIME                           IS '등록일시';
COMMENT ON COLUMN TB_EM_MENU_GRP_GU_LSTNM.UPDT_ID                              IS '수정자ID';
COMMENT ON COLUMN TB_EM_MENU_GRP_GU_LSTNM.UPDT_DTIME                           IS '수정일시';
COMMENT ON COLUMN TB_EM_MENU_GRP_GU_LSTNM.POS_UPDT_TSP                         IS 'POS수정타임스템프';


 /* TB_EM_MENU_GRP_MAP */

DROP TABLE TB_EM_MENU_GRP_MAP PURGE;

CREATE TABLE TB_EM_MENU_GRP_MAP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, EVT_NO                         VARCHAR2(10)                                 NOT NULL       
, EVT_COND_BNF_NO                VARCHAR2(2)                                  NOT NULL       
, EVT_COND_BNF_CLS_CD            VARCHAR2(2)                                  NOT NULL       
, EVT_MENU_GRP_NO                VARCHAR2(10)                                 NULL           
, SNG_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NULL           
, CONSTRAINT PK_TB_EM_MENU_GRP_MAP PRIMARY KEY (
    BRND_CD, EVT_NO, EVT_COND_BNF_NO, EVT_COND_BNF_CLS_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_MENU_GRP_MAP                                           IS '행사메뉴그룹매핑';
COMMENT ON COLUMN TB_EM_MENU_GRP_MAP.BRND_CD                                   IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_MENU_GRP_MAP.EVT_NO                                    IS '행사번호';
COMMENT ON COLUMN TB_EM_MENU_GRP_MAP.EVT_COND_BNF_NO                           IS '행사조건혜택번호';
COMMENT ON COLUMN TB_EM_MENU_GRP_MAP.EVT_COND_BNF_CLS_CD                       IS '행사조건혜택구분코드';
COMMENT ON COLUMN TB_EM_MENU_GRP_MAP.EVT_MENU_GRP_NO                           IS '행사메뉴그룹번호';
COMMENT ON COLUMN TB_EM_MENU_GRP_MAP.SNG_YN                                    IS '단건여부';
COMMENT ON COLUMN TB_EM_MENU_GRP_MAP.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_EM_MENU_GRP_MAP.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_EM_MENU_GRP_MAP.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_EM_MENU_GRP_MAP.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_EM_MENU_GRP_MAP.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_EM_PRMT_APVPE */

DROP TABLE TB_EM_PRMT_APVPE PURGE;

CREATE TABLE TB_EM_PRMT_APVPE
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, APVPE_ID                       VARCHAR2(20)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NULL           
, REGI_DTIME                     DATE                                         NULL           
, UPDT_ID                        VARCHAR2(20)                                 NULL           
, UPDT_DTIME                     DATE                                         NULL           
, CONSTRAINT PK_TB_EM_PRMT_APVPE PRIMARY KEY (
    BRND_CD, APVPE_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_PRMT_APVPE                                             IS 'SE?프로모션?승인자';
COMMENT ON COLUMN TB_EM_PRMT_APVPE.BRND_CD                                     IS '브랜드 코드';
COMMENT ON COLUMN TB_EM_PRMT_APVPE.APVPE_ID                                    IS '승인자 ID';
COMMENT ON COLUMN TB_EM_PRMT_APVPE.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_EM_PRMT_APVPE.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_EM_PRMT_APVPE.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_EM_PRMT_APVPE.UPDT_DTIME                                  IS '수정일시';


 /* TB_EM_PRMT_CHG_REQ */

DROP TABLE TB_EM_PRMT_CHG_REQ PURGE;

CREATE TABLE TB_EM_PRMT_CHG_REQ
(
  APVPE_ID                       VARCHAR2(20)                                 NOT NULL       
, SEQ                            NUMBER(22,0)                                 NOT NULL       
, EVT_NO                         VARCHAR2(10)                                 NOT NULL       
, RQST_USER_ID                   VARCHAR2(20)                                 NULL           
, CHG_APV_YN                     VARCHAR2(1)                                  NOT NULL       
, CHG_CNTNT                      VARCHAR2(4000)                               NULL           
, CHG_YN                         VARCHAR2(1)                                  NULL           
, BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NULL           
, REGI_DTIME                     DATE                                         NULL           
, UPDT_ID                        VARCHAR2(20)                                 NULL           
, UPDT_DTIME                     DATE                                         NULL           
, CONSTRAINT PK_TB_EM_PRMT_CHG_REQ PRIMARY KEY (
    APVPE_ID, SEQ, EVT_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_EM_PRMT_CHG_REQ                                           IS 'SE?프로모션?변경?요청';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.APVPE_ID                                  IS '승인자 ID';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.SEQ                                       IS '순번';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.EVT_NO                                    IS '행사번호';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.RQST_USER_ID                              IS '요청자 ID';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.CHG_APV_YN                                IS '변경승인여부';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.CHG_CNTNT                                 IS '변경내용';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.CHG_YN                                    IS '변경여부';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.BRND_CD                                   IS '';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_EM_PRMT_CHG_REQ.UPDT_DTIME                                IS '수정일시';


 /* TB_IV_DAILY */

DROP TABLE TB_IV_DAILY PURGE;

CREATE TABLE TB_IV_DAILY
(
  IO_DATE                        VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, MENU_CD                        VARCHAR2(26)                                 NOT NULL       
, SUBUL_QTY                      NUMBER(12,2)                                 NOT NULL       
, SIN_QTY                        NUMBER(12,2)                                 NOT NULL       
, SIN_AMT                        NUMBER(15,2)                                 NOT NULL       
, SIN_TOT                        NUMBER(15,2)                                 NOT NULL       
, RET_QTY                        NUMBER(12,2)                                 NOT NULL       
, RET_AMT                        NUMBER(15,2)                                 NOT NULL       
, RET_TOT                        NUMBER(15,2)                                 NOT NULL       
, SALE_QTY                       NUMBER(12,2)                                 NOT NULL       
, SALE_AMT                       NUMBER(15,2)                                 NOT NULL       
, SALE_TOT                       NUMBER(15,2)                                 NOT NULL       
, MIN_QTY                        NUMBER(12,2)                                 NOT NULL       
, MIN_AMT                        NUMBER(15,2)                                 NOT NULL       
, MIN_TOT                        NUMBER(15,2)                                 NOT NULL       
, MOT_QTY                        NUMBER(12,2)                                 NOT NULL       
, MOT_AMT                        NUMBER(15,2)                                 NOT NULL       
, MOT_TOT                        NUMBER(15,2)                                 NOT NULL       
, DIS_QTY                        NUMBER(12,2)                                 NOT NULL       
, DIS_AMT                        NUMBER(15,2)                                 NOT NULL       
, CTL_QTY                        NUMBER(12,2)                                 NOT NULL       
, CTL_AMT                        NUMBER(15,2)                                 NOT NULL       
, STI_QTY                        NUMBER(12,2)                                 NOT NULL       
, STI_AMT                        NUMBER(15,2)                                 NOT NULL       
, STO_QTY                        NUMBER(12,2)                                 NOT NULL       
, STO_AMT                        NUMBER(15,2)                                 NOT NULL       
, PIN_QTY                        NUMBER(12,2)                                 NOT NULL       
, PIN_AMT                        NUMBER(15,2)                                 NOT NULL       
, PIN_TOT                        NUMBER(15,2)                                 NOT NULL       
, POT_QTY                        NUMBER(12,2)                                 NOT NULL       
, POT_AMT                        NUMBER(15,2)                                 NOT NULL       
, POT_TOT                        NUMBER(15,2)                                 NOT NULL       
, SOI_QTY                        NUMBER(14,2)                                 NOT NULL       
, SOI_AMT                        NUMBER(15,2)                                 NOT NULL       
, SOI_TOT                        NUMBER(15,2)                                 NOT NULL       
, SOO_QTY                        NUMBER(14,2)                                 NOT NULL       
, SOO_AMT                        NUMBER(15,2)                                 NOT NULL       
, SOO_TOT                        NUMBER(15,2)                                 NOT NULL       
, RCP_QTY                        NUMBER(14,2)                                 NOT NULL       
, RCP_AMT                        NUMBER(15,2)                                 NOT NULL       
, RCP_TOT                        NUMBER(15,2)                                 NOT NULL       
, VOS_QTY                        NUMBER(14,2)                                 NOT NULL       
, VOS_AMT                        NUMBER(15,2)                                 NOT NULL       
, VOS_TOT                        NUMBER(15,2)                                 NOT NULL       
, VIS_QTY                        NUMBER(14,2)                                 NOT NULL       
, VIS_AMT                        NUMBER(15,2)                                 NOT NULL       
, VIS_TOT                        NUMBER(15,2)                                 NOT NULL       
, SOT_QTY                        NUMBER(12,2)                                 NOT NULL       
, SOT_AMT                        NUMBER(15,2)                                 NOT NULL       
, SOT_TOT                        NUMBER(15,2)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, CONSTRAINT PK_TB_IV_DAILY PRIMARY KEY (
    IO_DATE, STORE_CD, MENU_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_IV_DAILY                                                  IS '일 재고';
COMMENT ON COLUMN TB_IV_DAILY.IO_DATE                                          IS '수불일자';
COMMENT ON COLUMN TB_IV_DAILY.STORE_CD                                         IS '매장코드';
COMMENT ON COLUMN TB_IV_DAILY.MENU_CD                                          IS '상품코드';
COMMENT ON COLUMN TB_IV_DAILY.SUBUL_QTY                                        IS '당일 수불 산정 수량';
COMMENT ON COLUMN TB_IV_DAILY.SIN_QTY                                          IS '매장입고수량 ( 03:  +  )';
COMMENT ON COLUMN TB_IV_DAILY.SIN_AMT                                          IS '매장입고금액 ( 03:  +  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.SIN_TOT                                          IS '매장입고금액 ( 03:  +  ) - VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.RET_QTY                                          IS '매장반품수량 ( 12:  -  )';
COMMENT ON COLUMN TB_IV_DAILY.RET_AMT                                          IS '매장반품금액 ( 12:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.RET_TOT                                          IS '매장반품금액 ( 12:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.SALE_QTY                                         IS '매장판매수량 ( 11:  -  )';
COMMENT ON COLUMN TB_IV_DAILY.SALE_AMT                                         IS '매장판매금액 ( 11:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.SALE_TOT                                         IS '매장판매금액 ( 11:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.MIN_QTY                                          IS '매장이입수량 ( 04:  +  )';
COMMENT ON COLUMN TB_IV_DAILY.MIN_AMT                                          IS '매장이입금액 ( 04:  +  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.MIN_TOT                                          IS '매장이입금액 ( 04:  +  ) - VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.MOT_QTY                                          IS '매장이출수량 ( 14:  -  )';
COMMENT ON COLUMN TB_IV_DAILY.MOT_AMT                                          IS '매장이출금액 ( 14:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.MOT_TOT                                          IS '매장이출금액 ( 14:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.DIS_QTY                                          IS '재고폐기수량 ( 17:  -  )';
COMMENT ON COLUMN TB_IV_DAILY.DIS_AMT                                          IS '재고폐기금액 ( 17:  -  )';
COMMENT ON COLUMN TB_IV_DAILY.CTL_QTY                                          IS '재고조정수량 ( 21: +/- )';
COMMENT ON COLUMN TB_IV_DAILY.CTL_AMT                                          IS '재고조정금액 ( 21: +/- )';
COMMENT ON COLUMN TB_IV_DAILY.STI_QTY                                          IS '세트구성수량 ( 22:  +  )';
COMMENT ON COLUMN TB_IV_DAILY.STI_AMT                                          IS '세트구성금액 ( 22:  +  )';
COMMENT ON COLUMN TB_IV_DAILY.STO_QTY                                          IS '세트해제수량 ( 23:  -  )';
COMMENT ON COLUMN TB_IV_DAILY.STO_AMT                                          IS '세트해제금액 ( 23:  -  )';
COMMENT ON COLUMN TB_IV_DAILY.PIN_QTY                                          IS '사입입고수량 ( 06:  +  )';
COMMENT ON COLUMN TB_IV_DAILY.PIN_AMT                                          IS '사입입고금액 ( 06:  +  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.PIN_TOT                                          IS '사입입고금액 ( 06:  +  ) - VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.POT_QTY                                          IS '사입반품수량 ( 18:  -  )';
COMMENT ON COLUMN TB_IV_DAILY.POT_AMT                                          IS '사입반품금액 ( 18:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.POT_TOT                                          IS '사입반품금액 ( 18:  -  )';
COMMENT ON COLUMN TB_IV_DAILY.SOI_QTY                                          IS '원재료등록수량 ( 24:  +  )';
COMMENT ON COLUMN TB_IV_DAILY.SOI_AMT                                          IS '원재료등록금액 ( 24:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.SOI_TOT                                          IS '원재료등록금액 ( 24:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.SOO_QTY                                          IS '원재료해제수량 ( 25:  -  )';
COMMENT ON COLUMN TB_IV_DAILY.SOO_AMT                                          IS '원재료해제금액 ( 25:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.SOO_TOT                                          IS '원재료해제금액 ( 25:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.RCP_QTY                                          IS '판매레시피수량 ( 61:  -  )';
COMMENT ON COLUMN TB_IV_DAILY.RCP_AMT                                          IS '판매레시피금액 ( 61:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.RCP_TOT                                          IS '판매레시피금액 ( 61:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.VOS_QTY                                          IS '매출거래처발주수량 ( 19: - )';
COMMENT ON COLUMN TB_IV_DAILY.VOS_AMT                                          IS '매출거래처발주금액 ( 19: - ) VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.VOS_TOT                                          IS '매출거래처반품금액 ( 33: + ) VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.VIS_QTY                                          IS '매출거래처발주금액 ( 19: - ) VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.VIS_AMT                                          IS '매출거래처반품수량 ( 33: + )';
COMMENT ON COLUMN TB_IV_DAILY.VIS_TOT                                          IS '매출거래처반품금액 ( 33: + ) VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.SOT_QTY                                          IS '공장출고수량';
COMMENT ON COLUMN TB_IV_DAILY.SOT_AMT                                          IS '공장출고금액 - VAT미포함';
COMMENT ON COLUMN TB_IV_DAILY.SOT_TOT                                          IS '공장출고금액 - VAT포함';
COMMENT ON COLUMN TB_IV_DAILY.REGI_ID                                          IS '등록자ID';
COMMENT ON COLUMN TB_IV_DAILY.REGI_DTIME                                       IS '등록일시';
COMMENT ON COLUMN TB_IV_DAILY.UPDT_ID                                          IS '수정자ID';
COMMENT ON COLUMN TB_IV_DAILY.UPDT_DTIME                                       IS '수정일시';


 /* TB_IV_MON */

DROP TABLE TB_IV_MON PURGE;

CREATE TABLE TB_IV_MON
(
  IO_MONTH                       VARCHAR2(6)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, MENU_CD                        VARCHAR2(26)                                 NOT NULL       
, BASE_QTY                       NUMBER(14,2)                                 NOT NULL       
, BASE_AMT                       NUMBER(15,2)                                 NOT NULL       
, SUBUL_QTY                      NUMBER(14,2)                                 NOT NULL       
, SIN_QTY                        NUMBER(14,2)                                 NOT NULL       
, SIN_AMT                        NUMBER(15,2)                                 NOT NULL       
, SIN_TOT                        NUMBER(15,2)                                 NOT NULL       
, RET_QTY                        NUMBER(14,2)                                 NOT NULL       
, RET_AMT                        NUMBER(15,2)                                 NOT NULL       
, RET_TOT                        NUMBER(15,2)                                 NOT NULL       
, SALE_QTY                       NUMBER(14,2)                                 NOT NULL       
, SALE_AMT                       NUMBER(15,2)                                 NOT NULL       
, SALE_TOT                       NUMBER(15,2)                                 NOT NULL       
, MIN_QTY                        NUMBER(14,2)                                 NOT NULL       
, MIN_AMT                        NUMBER(15,2)                                 NOT NULL       
, MIN_TOT                        NUMBER(15,2)                                 NOT NULL       
, MOT_QTY                        NUMBER(14,2)                                 NOT NULL       
, MOT_AMT                        NUMBER(15,2)                                 NOT NULL       
, MOT_TOT                        NUMBER(15,2)                                 NOT NULL       
, DIS_QTY                        NUMBER(14,2)                                 NOT NULL       
, DIS_AMT                        NUMBER(15,2)                                 NOT NULL       
, CTL_QTY                        NUMBER(14,2)                                 NOT NULL       
, CTL_AMT                        NUMBER(15,2)                                 NOT NULL       
, STI_QTY                        NUMBER(10,0)                                 NOT NULL       
, STI_AMT                        NUMBER(15,2)                                 NOT NULL       
, STO_QTY                        NUMBER(10,0)                                 NOT NULL       
, STO_AMT                        NUMBER(15,2)                                 NOT NULL       
, PIN_QTY                        NUMBER(14,2)                                 NOT NULL       
, PIN_AMT                        NUMBER(15,2)                                 NOT NULL       
, PIN_TOT                        NUMBER(15,2)                                 NOT NULL       
, POT_QTY                        NUMBER(14,2)                                 NOT NULL       
, POT_AMT                        NUMBER(15,2)                                 NOT NULL       
, POT_TOT                        NUMBER(15,2)                                 NOT NULL       
, SOI_QTY                        NUMBER(14,2)                                 NOT NULL       
, SOI_AMT                        NUMBER(15,2)                                 NOT NULL       
, SOI_TOT                        NUMBER(15,2)                                 NOT NULL       
, SOO_QTY                        NUMBER(14,2)                                 NOT NULL       
, SOO_AMT                        NUMBER(15,2)                                 NOT NULL       
, SOO_TOT                        NUMBER(15,2)                                 NOT NULL       
, RCP_QTY                        NUMBER(14,2)                                 NOT NULL       
, RCP_AMT                        NUMBER(15,2)                                 NOT NULL       
, RCP_TOT                        NUMBER(15,2)                                 NOT NULL       
, CLOSE_QTY                      NUMBER(14,2)                                 NOT NULL       
, CLOSE_AMT                      NUMBER(15,2)                                 NOT NULL       
, AVG_COST_UPRC                  NUMBER(13,2)                                 NOT NULL       
, VOS_QTY                        NUMBER(14,2)                                 NOT NULL       
, VOS_AMT                        NUMBER(15,2)                                 NOT NULL       
, VOS_TOT                        NUMBER(15,2)                                 NOT NULL       
, VIS_QTY                        NUMBER(14,2)                                 NOT NULL       
, VIS_AMT                        NUMBER(15,2)                                 NOT NULL       
, VIS_TOT                        NUMBER(15,2)                                 NOT NULL       
, UNIT_COST_UPRC                 NUMBER(22,6)                                 NULL           
, IO_OCC_FG                      VARCHAR2(3)                                  NULL           
, SOT_QTY                        NUMBER(14,2)                                 NOT NULL       
, SOT_AMT                        NUMBER(15,2)                                 NOT NULL       
, SOT_TOT                        NUMBER(15,2)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE           DEFAULT systimestamp          NOT NULL       
, CONSTRAINT PK_TB_IV_MON PRIMARY KEY (
    IO_MONTH, STORE_CD, MENU_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_IV_MON                                                    IS '월 재고';
COMMENT ON COLUMN TB_IV_MON.IO_MONTH                                           IS '수불년월';
COMMENT ON COLUMN TB_IV_MON.STORE_CD                                           IS '매장코드';
COMMENT ON COLUMN TB_IV_MON.MENU_CD                                            IS '상품코드';
COMMENT ON COLUMN TB_IV_MON.BASE_QTY                                           IS '기초재고수량 ( 전월이월)';
COMMENT ON COLUMN TB_IV_MON.BASE_AMT                                           IS '기초재고금액 ( 전월이월)';
COMMENT ON COLUMN TB_IV_MON.SUBUL_QTY                                          IS '당월 수불 산정 수량';
COMMENT ON COLUMN TB_IV_MON.SIN_QTY                                            IS '매장입고수량 ( 03:  +  )';
COMMENT ON COLUMN TB_IV_MON.SIN_AMT                                            IS '매장입고금액 ( 03:  +  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_MON.SIN_TOT                                            IS '매장입고금액 ( 03:  +  ) - VAT포함';
COMMENT ON COLUMN TB_IV_MON.RET_QTY                                            IS '매장반품수량 ( 12:  -  )';
COMMENT ON COLUMN TB_IV_MON.RET_AMT                                            IS '매장반품금액 ( 12:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_MON.RET_TOT                                            IS '매장반품금액 ( 12:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_MON.SALE_QTY                                           IS '매장판매수량 ( 11:  -  )';
COMMENT ON COLUMN TB_IV_MON.SALE_AMT                                           IS '매장판매금액 ( 11:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_MON.SALE_TOT                                           IS '매장판매금액 ( 11:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_MON.MIN_QTY                                            IS '매장이입수량 ( 04:  +  )';
COMMENT ON COLUMN TB_IV_MON.MIN_AMT                                            IS '매장이입금액 ( 04:  +  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_MON.MIN_TOT                                            IS '매장이입금액 ( 04:  +  ) - VAT포함';
COMMENT ON COLUMN TB_IV_MON.MOT_QTY                                            IS '매장이출수량 ( 14:  -  )';
COMMENT ON COLUMN TB_IV_MON.MOT_AMT                                            IS '매장이출금액 ( 14:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_MON.MOT_TOT                                            IS '매장이출금액 ( 14:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_MON.DIS_QTY                                            IS '재고폐기수량 ( 17:  -  )';
COMMENT ON COLUMN TB_IV_MON.DIS_AMT                                            IS '재고폐기금액 ( 17:  -  )';
COMMENT ON COLUMN TB_IV_MON.CTL_QTY                                            IS '재고조정수량 ( 21: +/- )';
COMMENT ON COLUMN TB_IV_MON.CTL_AMT                                            IS '재고조정금액 ( 21: +/- )';
COMMENT ON COLUMN TB_IV_MON.STI_QTY                                            IS '세트구성수량 ( 22:  +  )';
COMMENT ON COLUMN TB_IV_MON.STI_AMT                                            IS '세트구성금액 ( 22:  +  )';
COMMENT ON COLUMN TB_IV_MON.STO_QTY                                            IS '세트해제수량 ( 23:  -  )';
COMMENT ON COLUMN TB_IV_MON.STO_AMT                                            IS '세트해제금액 ( 23:  -  )';
COMMENT ON COLUMN TB_IV_MON.PIN_QTY                                            IS '사입입고수량 ( 06:  +  )';
COMMENT ON COLUMN TB_IV_MON.PIN_AMT                                            IS '사입입고금액 ( 06:  +  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_MON.PIN_TOT                                            IS '사입입고금액 ( 06:  +  ) - VAT포함';
COMMENT ON COLUMN TB_IV_MON.POT_QTY                                            IS '사입반품수량 ( 18:  -  )';
COMMENT ON COLUMN TB_IV_MON.POT_AMT                                            IS '사입반품금액 ( 18:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_MON.POT_TOT                                            IS '사입반품금액 ( 18:  -  )';
COMMENT ON COLUMN TB_IV_MON.SOI_QTY                                            IS '원재료등록수량( 24:  +  )';
COMMENT ON COLUMN TB_IV_MON.SOI_AMT                                            IS '원재료등록금액( 24:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_MON.SOI_TOT                                            IS '원재료등록금액( 24:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_MON.SOO_QTY                                            IS '원재료해제수량( 25:  -  )';
COMMENT ON COLUMN TB_IV_MON.SOO_AMT                                            IS '원재료해제금액( 25:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_MON.SOO_TOT                                            IS '원재료해제금액( 25:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_MON.RCP_QTY                                            IS '판매레시피수량 ( 61:  -  )';
COMMENT ON COLUMN TB_IV_MON.RCP_AMT                                            IS '판매레시피금액 ( 61:  -  ) - VAT미포함';
COMMENT ON COLUMN TB_IV_MON.RCP_TOT                                            IS '판매레시피금액 ( 61:  -  ) - VAT포함';
COMMENT ON COLUMN TB_IV_MON.CLOSE_QTY                                          IS '기말재고수량';
COMMENT ON COLUMN TB_IV_MON.CLOSE_AMT                                          IS '기말재고금액';
COMMENT ON COLUMN TB_IV_MON.AVG_COST_UPRC                                      IS '평균원가단가( 이동평균/총평균 )';
COMMENT ON COLUMN TB_IV_MON.VOS_QTY                                            IS '매출거래처발주수량 ( 19: - )';
COMMENT ON COLUMN TB_IV_MON.VOS_AMT                                            IS '매출거래처발주금액 ( 19: - ) VAT포함';
COMMENT ON COLUMN TB_IV_MON.VOS_TOT                                            IS '매출거래처반품금액 ( 33: + ) VAT미포함';
COMMENT ON COLUMN TB_IV_MON.VIS_QTY                                            IS '매출거래처발주금액 ( 19: - ) VAT미포함';
COMMENT ON COLUMN TB_IV_MON.VIS_AMT                                            IS '매출거래처반품수량 ( 33: + )';
COMMENT ON COLUMN TB_IV_MON.VIS_TOT                                            IS '매출거래처반품금액 ( 33: + ) VAT포함';
COMMENT ON COLUMN TB_IV_MON.UNIT_COST_UPRC                                     IS '재고단위이동평균원가';
COMMENT ON COLUMN TB_IV_MON.IO_OCC_FG                                          IS '재고 구분 값';
COMMENT ON COLUMN TB_IV_MON.SOT_QTY                                            IS '공장출고수량';
COMMENT ON COLUMN TB_IV_MON.SOT_AMT                                            IS '공장출고금액 -VAT미포함';
COMMENT ON COLUMN TB_IV_MON.SOT_TOT                                            IS '공장출고금액 -VAT포함';
COMMENT ON COLUMN TB_IV_MON.REGI_ID                                            IS '등록자ID';
COMMENT ON COLUMN TB_IV_MON.REGI_DTIME                                         IS '등록일시';
COMMENT ON COLUMN TB_IV_MON.UPDT_ID                                            IS '수정자ID';
COMMENT ON COLUMN TB_IV_MON.UPDT_DTIME                                         IS '수정일시';


 /* TB_IV_OCCU_LOG */

DROP TABLE TB_IV_OCCU_LOG PURGE;

CREATE TABLE TB_IV_OCCU_LOG
(
  IO_OCC_DT                      VARCHAR2(20)                                 NOT NULL       
, IO_SEQ_NO                      NUMBER(8,0)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, IO_OCC_FG                      VARCHAR2(2)                                  NOT NULL       
, MENU_CD                        VARCHAR2(26)                                 NOT NULL       
, IO_PROC_DATE                   VARCHAR2(8)                                  NOT NULL       
, IO_OCC_QTY                     NUMBER(10,2)                                 NULL           
, IO_OCC_AMT                     NUMBER(13,2)                                 NOT NULL       
, IO_OCC_TOT                     NUMBER(13,2)                                 NOT NULL       
, IO_PROC_FG                     VARCHAR2(1)                                  NOT NULL       
, IO_TYPE                        NUMBER(1,0)                                  NOT NULL       
, PRD_PROD_CD                    VARCHAR2(26)                                 NULL           
, COST_UPRC                      NUMBER(10,2)                                 NULL           
, RMK                            VARCHAR2(1000)                               NULL           
, REGI_ID                        VARCHAR2(20)                                 NULL           
, REGI_TSP                       TIMESTAMP(6)                                 NULL           
, CONSTRAINT PK_TB_IV_OCCU_LOG PRIMARY KEY (
    IO_OCC_DT, IO_SEQ_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_IV_OCCU_LOG                                               IS '재고 발생 로그';
COMMENT ON COLUMN TB_IV_OCCU_LOG.IO_OCC_DT                                     IS '수불발생일시 (백만분의1초)';
COMMENT ON COLUMN TB_IV_OCCU_LOG.IO_SEQ_NO                                     IS '수불발생 SEQUENCE';
COMMENT ON COLUMN TB_IV_OCCU_LOG.STORE_CD                                      IS '매장코드';
COMMENT ON COLUMN TB_IV_OCCU_LOG.IO_OCC_FG                                     IS '수불발생구분 ( CCD_CODEM_T : 100 ) 01-10:재고(+) 11-20:재고(-) 21:재고(+/-) 31-32:재고변동없음';
COMMENT ON COLUMN TB_IV_OCCU_LOG.MENU_CD                                       IS '상품코드';
COMMENT ON COLUMN TB_IV_OCCU_LOG.IO_PROC_DATE                                  IS '수불대상일자 ( 발생일자와 대상일자가 다를수 있음)';
COMMENT ON COLUMN TB_IV_OCCU_LOG.IO_OCC_QTY                                    IS '수불발생수량';
COMMENT ON COLUMN TB_IV_OCCU_LOG.IO_OCC_AMT                                    IS '수불발생금액-VAT미포함';
COMMENT ON COLUMN TB_IV_OCCU_LOG.IO_OCC_TOT                                    IS '수불발생금액-VAT포함';
COMMENT ON COLUMN TB_IV_OCCU_LOG.IO_PROC_FG                                    IS '수불처리구분 0:미처리 1:오류 2:완료 3:수불대상아님';
COMMENT ON COLUMN TB_IV_OCCU_LOG.IO_TYPE                                       IS '수불처리기준 1:(+) -1:(-) 0:(0)';
COMMENT ON COLUMN TB_IV_OCCU_LOG.PRD_PROD_CD                                   IS '세트대상상품코드';
COMMENT ON COLUMN TB_IV_OCCU_LOG.COST_UPRC                                     IS '원가';
COMMENT ON COLUMN TB_IV_OCCU_LOG.RMK                                           IS '비고';
COMMENT ON COLUMN TB_IV_OCCU_LOG.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_IV_OCCU_LOG.REGI_TSP                                      IS '등록일시';


 /* TB_IV_OCCU_LOG_HIS */

DROP TABLE TB_IV_OCCU_LOG_HIS PURGE;

CREATE TABLE TB_IV_OCCU_LOG_HIS
(
  IO_OCC_DT                      VARCHAR2(20)                                 NOT NULL       
, IO_SEQ_NO                      NUMBER(8,0)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, IO_OCC_FG                      VARCHAR2(2)                                  NOT NULL       
, MENU_CD                        VARCHAR2(26)                                 NOT NULL       
, IO_PROC_DATE                   VARCHAR2(8)                                  NOT NULL       
, IO_OCC_QTY                     NUMBER(10,2)                                 NULL           
, IO_OCC_AMT                     NUMBER(13,2)                                 NULL           
, IO_OCC_TOT                     NUMBER(13,2)                                 NULL           
, IO_PROC_FG                     VARCHAR2(1)                                  NOT NULL       
, IO_TYPE                        NUMBER(1,0)                                  NOT NULL       
, PRD_PROD_CD                    VARCHAR2(26)                                 NULL           
, COST_UPRC                      NUMBER(10,2)                                 NULL           
, RMK                            VARCHAR2(1000)                               NULL           
, INS_DT                         VARCHAR2(14)                                 NULL           
, ERR_MSG                        VARCHAR2(4000)                               NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_TSP                       TIMESTAMP(6)                                 NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_IV_OCCU_LOG_HIS                                           IS '재고 발생 로그 처리내역';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.IO_OCC_DT                                 IS '수불발생금액-VAT미포함';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.IO_SEQ_NO                                 IS '수불발생 SEQUENCE';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.STORE_CD                                  IS '매장코드';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.IO_OCC_FG                                 IS '수불발생구분 ( CCD_CODEM_T : 100 ) 01-10:재고(+) 11-20:재고(-) 21:재고(+/-) 31-32:재고변동없음';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.MENU_CD                                   IS '상품코드';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.IO_PROC_DATE                              IS '수불대상일자 ( 발생일자와 대상일자가 다를수 있음)';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.IO_OCC_QTY                                IS '수불발생수량';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.IO_OCC_AMT                                IS '수불발생금액-VAT미포함';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.IO_OCC_TOT                                IS '수불발생금액-VAT포함';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.IO_PROC_FG                                IS '수불처리구분 0:미처리 1:오류 2:성공';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.IO_TYPE                                   IS '수불처리기준 1:(+) -1:(-) 0:(0)';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.PRD_PROD_CD                               IS '세트대상상품코드';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.COST_UPRC                                 IS '원가';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.RMK                                       IS '비고';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.INS_DT                                    IS '등록일시(ASIS)';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.ERR_MSG                                   IS '에러메세지';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_IV_OCCU_LOG_HIS.REGI_TSP                                  IS '등록타임스템프';


 /* TB_MM_BRND */

DROP TABLE TB_MM_BRND PURGE;

CREATE TABLE TB_MM_BRND
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, BRND_NM                        VARCHAR2(50)                                 NOT NULL       
, BSNS_FR_DT                     VARCHAR2(8)                                  NULL           
, SORT_NO                        NUMBER(4,0)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_MM_BRND PRIMARY KEY (
    BRND_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_BRND                                                   IS '브랜드';
COMMENT ON COLUMN TB_MM_BRND.BRND_CD                                           IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_BRND.BRND_NM                                           IS '브랜드 명';
COMMENT ON COLUMN TB_MM_BRND.BSNS_FR_DT                                        IS '사업 시작 일';
COMMENT ON COLUMN TB_MM_BRND.SORT_NO                                           IS '정렬 번호';
COMMENT ON COLUMN TB_MM_BRND.USE_YN                                            IS '사용 여부';
COMMENT ON COLUMN TB_MM_BRND.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_MM_BRND.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_MM_BRND.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_MM_BRND.UPDT_DTIME                                        IS '수정일시';


 /* TB_MM_BS_VENDOR */

DROP TABLE TB_MM_BS_VENDOR PURGE;

CREATE TABLE TB_MM_BS_VENDOR
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, VEND_CD                        VARCHAR2(10)                                 NOT NULL       
, VEND_NM                        VARCHAR2(200)                                NULL           
, VEND_REG_NM                    VARCHAR2(200)                                NULL           
, CNTRY_CD                       VARCHAR2(3)                                  NULL           
, ZIP_CD                         VARCHAR2(6)                                  NULL           
, ADDR1                          VARCHAR2(200)                                NULL           
, ADDR2                          VARCHAR2(500)                                NULL           
, TEL_NO                         VARCHAR2(100)                                NULL           
, HP_TEL_NO                      VARCHAR2(100)                                NULL           
, FAX_TEL_NO                     VARCHAR2(50)                                 NULL           
, MAIL_ADDR                      VARCHAR2(200)                                NULL           
, VEND_NO                        VARCHAR2(11)                                 NULL           
, CORP_NO                        VARCHAR2(18)                                 NULL           
, RPRER_NM                       VARCHAR2(200)                                NULL           
, BIZ_TYPE_NM                    VARCHAR2(100)                                NULL           
, BKND_NM                        VARCHAR2(100)                                NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_MM_BS_VENDOR PRIMARY KEY (
    BRND_CD, VEND_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_BS_VENDOR                                              IS '거래처?마스터';
COMMENT ON COLUMN TB_MM_BS_VENDOR.BRND_CD                                      IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_BS_VENDOR.VEND_CD                                      IS '거래처 코드';
COMMENT ON COLUMN TB_MM_BS_VENDOR.VEND_NM                                      IS '거래처명';
COMMENT ON COLUMN TB_MM_BS_VENDOR.VEND_REG_NM                                  IS '사업자등록증상호';
COMMENT ON COLUMN TB_MM_BS_VENDOR.CNTRY_CD                                     IS '주소지 국가';
COMMENT ON COLUMN TB_MM_BS_VENDOR.ZIP_CD                                       IS '우편번호';
COMMENT ON COLUMN TB_MM_BS_VENDOR.ADDR1                                        IS '세부주소1';
COMMENT ON COLUMN TB_MM_BS_VENDOR.ADDR2                                        IS '세부주소2';
COMMENT ON COLUMN TB_MM_BS_VENDOR.TEL_NO                                       IS '전화번호';
COMMENT ON COLUMN TB_MM_BS_VENDOR.HP_TEL_NO                                    IS '휴대폰번호';
COMMENT ON COLUMN TB_MM_BS_VENDOR.FAX_TEL_NO                                   IS '팩스';
COMMENT ON COLUMN TB_MM_BS_VENDOR.MAIL_ADDR                                    IS 'E-mail';
COMMENT ON COLUMN TB_MM_BS_VENDOR.VEND_NO                                      IS '사업자등록번호';
COMMENT ON COLUMN TB_MM_BS_VENDOR.CORP_NO                                      IS '법인등록번호';
COMMENT ON COLUMN TB_MM_BS_VENDOR.RPRER_NM                                     IS '대표자이름';
COMMENT ON COLUMN TB_MM_BS_VENDOR.BIZ_TYPE_NM                                  IS '업태';
COMMENT ON COLUMN TB_MM_BS_VENDOR.BKND_NM                                      IS '종목';
COMMENT ON COLUMN TB_MM_BS_VENDOR.USE_YN                                       IS '사용여부';
COMMENT ON COLUMN TB_MM_BS_VENDOR.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_MM_BS_VENDOR.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_MM_BS_VENDOR.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_MM_BS_VENDOR.UPDT_DTIME                                   IS '수정일시';


 /* TB_MM_CSTM */

DROP TABLE TB_MM_CSTM PURGE;

CREATE TABLE TB_MM_CSTM
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CSTM_GRP_CD                    VARCHAR2(20)                                 NOT NULL       
, CSTM_TYPE_CD                   VARCHAR2(20)                                 NOT NULL       
, CSTM_CD                        VARCHAR2(20)                                 NOT NULL       
, CSTM_NM                        VARCHAR2(100)                                NOT NULL       
, AMNT_YN                        VARCHAR2(1)                                  NOT NULL       
, ADJST_PRVT_YN                  VARCHAR2(1)                                  NOT NULL       
, RECP_COMP_YN                   VARCHAR2(1)                                  NOT NULL       
, CSTM_MENU_CD                   VARCHAR2(20)                                 NULL           
, POST_CSTM_CD                   VARCHAR2(20)                                 NULL           
, SORT_ORD                       NUMBER(22,0)                                 NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, CSTM_NM_EN                     VARCHAR2(100)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_CSTM PRIMARY KEY (
    BRND_CD, CSTM_GRP_CD, CSTM_TYPE_CD, CSTM_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_CSTM                                                   IS '커스텀코드';
COMMENT ON COLUMN TB_MM_CSTM.BRND_CD                                           IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_CSTM.CSTM_GRP_CD                                       IS '커스텀그룹코드';
COMMENT ON COLUMN TB_MM_CSTM.CSTM_TYPE_CD                                      IS '커스텀유형코드';
COMMENT ON COLUMN TB_MM_CSTM.CSTM_CD                                           IS '커스텀코드';
COMMENT ON COLUMN TB_MM_CSTM.CSTM_NM                                           IS '커스텀명';
COMMENT ON COLUMN TB_MM_CSTM.AMNT_YN                                           IS '수량관리여부';
COMMENT ON COLUMN TB_MM_CSTM.ADJST_PRVT_YN                                     IS '조정전용여부';
COMMENT ON COLUMN TB_MM_CSTM.RECP_COMP_YN                                      IS '레시피구성품여부';
COMMENT ON COLUMN TB_MM_CSTM.CSTM_MENU_CD                                      IS '커스텀메뉴코드';
COMMENT ON COLUMN TB_MM_CSTM.POST_CSTM_CD                                      IS '구커스텀코드';
COMMENT ON COLUMN TB_MM_CSTM.SORT_ORD                                          IS '표시순서';
COMMENT ON COLUMN TB_MM_CSTM.USE_YN                                            IS '사용여부';
COMMENT ON COLUMN TB_MM_CSTM.CSTM_NM_EN                                        IS '커스텀영문명';
COMMENT ON COLUMN TB_MM_CSTM.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_MM_CSTM.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_MM_CSTM.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_MM_CSTM.UPDT_DTIME                                        IS '수정일시';
COMMENT ON COLUMN TB_MM_CSTM.POS_UPDT_TSP                                      IS 'POS수정타임스템프';


 /* TB_MM_CSTM_GRP */

DROP TABLE TB_MM_CSTM_GRP PURGE;

CREATE TABLE TB_MM_CSTM_GRP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CSTM_GRP_CD                    VARCHAR2(20)                                 NOT NULL       
, CSTM_GRP_NM                    VARCHAR2(100)                                NOT NULL       
, CSTM_DIV_CD                    VARCHAR2(20)                                 NOT NULL       
, SORT_ORD                       NUMBER(22,0)                                 NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, CSTM_GRP_NM_EN                 VARCHAR2(100)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_CSTM_GRP PRIMARY KEY (
    BRND_CD, CSTM_GRP_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_CSTM_GRP                                               IS '커스텀그룹';
COMMENT ON COLUMN TB_MM_CSTM_GRP.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_CSTM_GRP.CSTM_GRP_CD                                   IS '커스텀그룹코드';
COMMENT ON COLUMN TB_MM_CSTM_GRP.CSTM_GRP_NM                                   IS '커스텀그룹명';
COMMENT ON COLUMN TB_MM_CSTM_GRP.CSTM_DIV_CD                                   IS '커스텀분류';
COMMENT ON COLUMN TB_MM_CSTM_GRP.SORT_ORD                                      IS '표시순서';
COMMENT ON COLUMN TB_MM_CSTM_GRP.USE_YN                                        IS '사용여부';
COMMENT ON COLUMN TB_MM_CSTM_GRP.CSTM_GRP_NM_EN                                IS '커스텀그룹영문명';
COMMENT ON COLUMN TB_MM_CSTM_GRP.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_MM_CSTM_GRP.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_MM_CSTM_GRP.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_MM_CSTM_GRP.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_MM_CSTM_GRP.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_MM_CSTM_GRP_COF */

DROP TABLE TB_MM_CSTM_GRP_COF PURGE;

CREATE TABLE TB_MM_CSTM_GRP_COF
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CSTM_GRP_CD                    VARCHAR2(20)                                 NOT NULL       
, CSTM_TYPE_CD                   VARCHAR2(20)                                 NOT NULL       
, CSTM_GRP_TY_NM                 VARCHAR2(100)                                NOT NULL       
, CHOIC_TYPE_CD                  VARCHAR2(20)                                 NOT NULL       
, FACE_DIV_CD                    VARCHAR2(20)                                 NOT NULL       
, SORT_ORD                       NUMBER(22,0)                                 NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, CSTM_GRP_TY_NM_EN              VARCHAR2(100)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_CSTM_GRP_COF PRIMARY KEY (
    BRND_CD, CSTM_GRP_CD, CSTM_TYPE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_CSTM_GRP_COF                                           IS '커스텀그룹구성';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.BRND_CD                                   IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.CSTM_GRP_CD                               IS '커스텀그룹코드';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.CSTM_TYPE_CD                              IS '커스텀유형코드';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.CSTM_GRP_TY_NM                            IS '커스텀그룹구성명';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.CHOIC_TYPE_CD                             IS '선택유형코드';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.FACE_DIV_CD                               IS '대면구분코드';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.SORT_ORD                                  IS '표시순서';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.USE_YN                                    IS '사용여부';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.CSTM_GRP_TY_NM_EN                         IS '커스텀그룹구성영문명';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_MM_CSTM_GRP_COF.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_MM_CSTM_STOP_STORE */

DROP TABLE TB_MM_CSTM_STOP_STORE PURGE;

CREATE TABLE TB_MM_CSTM_STOP_STORE
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CSTM_GRP_CD                    VARCHAR2(20)                                 NOT NULL       
, CSTM_TYPE_CD                   VARCHAR2(20)                                 NOT NULL       
, CSTM_CD                        VARCHAR2(20)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, STOP_DT                        VARCHAR2(8)                                  NOT NULL       
, STOP_RESN                      VARCHAR2(100)                                NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_CSTM_STOP_STORE PRIMARY KEY (
    BRND_CD, CSTM_GRP_CD, CSTM_TYPE_CD, CSTM_CD, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_CSTM_STOP_STORE                                        IS '점포별미취급커스텀';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.BRND_CD                                IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.CSTM_GRP_CD                            IS '커스텀그룹코드';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.CSTM_TYPE_CD                           IS '커스텀유형코드';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.CSTM_CD                                IS '커스텀코드';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.STORE_CD                               IS '점포코드';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.STOP_DT                                IS '미취급시작일자';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.STOP_RESN                              IS '미취급사유';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.USE_YN                                 IS '사용여부';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.REGI_ID                                IS '등록자ID';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.REGI_DTIME                             IS '등록일시';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.UPDT_ID                                IS '수정자ID';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.UPDT_DTIME                             IS '수정일시';
COMMENT ON COLUMN TB_MM_CSTM_STOP_STORE.POS_UPDT_TSP                           IS 'POS수정타임스템프';


 /* TB_MM_DISP_GRT */

DROP TABLE TB_MM_DISP_GRT PURGE;

CREATE TABLE TB_MM_DISP_GRT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, GRT_CD                         VARCHAR2(3)                                  NOT NULL       
, GRT_NM                         VARCHAR2(100)                                NOT NULL       
, DISPLAY_NO                     NUMBER(3,0)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_DISP_GRT PRIMARY KEY (
    BRND_CD, GRT_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_DISP_GRT                                               IS '대분류';
COMMENT ON COLUMN TB_MM_DISP_GRT.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_DISP_GRT.GRT_CD                                        IS '대분류코드';
COMMENT ON COLUMN TB_MM_DISP_GRT.GRT_NM                                        IS '대분류명';
COMMENT ON COLUMN TB_MM_DISP_GRT.DISPLAY_NO                                    IS '표시순서';
COMMENT ON COLUMN TB_MM_DISP_GRT.USE_YN                                        IS '사용여부';
COMMENT ON COLUMN TB_MM_DISP_GRT.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_MM_DISP_GRT.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_MM_DISP_GRT.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_MM_DISP_GRT.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_MM_DISP_GRT.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_MM_DISP_MID */

DROP TABLE TB_MM_DISP_MID PURGE;

CREATE TABLE TB_MM_DISP_MID
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, MID_CD                         VARCHAR2(6)                                  NOT NULL       
, GRT_CD                         VARCHAR2(3)                                  NOT NULL       
, MID_NM                         VARCHAR2(100)                                NOT NULL       
, DISPLAY_NO                     NUMBER(3,0)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_DISP_MID PRIMARY KEY (
    BRND_CD, MID_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_DISP_MID                                               IS '중분류';
COMMENT ON COLUMN TB_MM_DISP_MID.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_DISP_MID.MID_CD                                        IS '중분류코드';
COMMENT ON COLUMN TB_MM_DISP_MID.GRT_CD                                        IS '대분류코드';
COMMENT ON COLUMN TB_MM_DISP_MID.MID_NM                                        IS '중분류명';
COMMENT ON COLUMN TB_MM_DISP_MID.DISPLAY_NO                                    IS '표시순서';
COMMENT ON COLUMN TB_MM_DISP_MID.USE_YN                                        IS '사용여부';
COMMENT ON COLUMN TB_MM_DISP_MID.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_MM_DISP_MID.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_MM_DISP_MID.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_MM_DISP_MID.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_MM_DISP_MID.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_MM_DISP_SML */

DROP TABLE TB_MM_DISP_SML PURGE;

CREATE TABLE TB_MM_DISP_SML
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, SML_CD                         VARCHAR2(9)                                  NOT NULL       
, GRT_CD                         VARCHAR2(3)                                  NOT NULL       
, MID_CD                         VARCHAR2(6)                                  NOT NULL       
, SML_NM                         VARCHAR2(100)                                NOT NULL       
, DISPLAY_NO                     NUMBER(3,0)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_DISP_SML PRIMARY KEY (
    BRND_CD, SML_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_DISP_SML                                               IS '소분류';
COMMENT ON COLUMN TB_MM_DISP_SML.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_DISP_SML.SML_CD                                        IS '소분류코드';
COMMENT ON COLUMN TB_MM_DISP_SML.GRT_CD                                        IS '대분류코드';
COMMENT ON COLUMN TB_MM_DISP_SML.MID_CD                                        IS '중분류코드';
COMMENT ON COLUMN TB_MM_DISP_SML.SML_NM                                        IS '소분류명';
COMMENT ON COLUMN TB_MM_DISP_SML.DISPLAY_NO                                    IS '표시순서';
COMMENT ON COLUMN TB_MM_DISP_SML.USE_YN                                        IS '사용여부';
COMMENT ON COLUMN TB_MM_DISP_SML.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_MM_DISP_SML.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_MM_DISP_SML.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_MM_DISP_SML.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_MM_DISP_SML.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_MM_MENU_CSTM */

DROP TABLE TB_MM_MENU_CSTM PURGE;

CREATE TABLE TB_MM_MENU_CSTM
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, CSTM_GRP_CD                    VARCHAR2(4)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_MENU_CSTM PRIMARY KEY (
    BRND_CD, MENU_CD, CSTM_GRP_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_MENU_CSTM                                              IS '메뉴커스텀(매핑)';
COMMENT ON COLUMN TB_MM_MENU_CSTM.BRND_CD                                      IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_MENU_CSTM.MENU_CD                                      IS '메뉴코드';
COMMENT ON COLUMN TB_MM_MENU_CSTM.CSTM_GRP_CD                                  IS '커스텀그룹코드';
COMMENT ON COLUMN TB_MM_MENU_CSTM.USE_YN                                       IS '사용여부';
COMMENT ON COLUMN TB_MM_MENU_CSTM.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_MM_MENU_CSTM.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_MM_MENU_CSTM.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_MM_MENU_CSTM.UPDT_DTIME                                   IS '수정일시';
COMMENT ON COLUMN TB_MM_MENU_CSTM.POS_UPDT_TSP                                 IS 'POS수정타임스템프';


 /* TB_MM_MENU_IMG */

DROP TABLE TB_MM_MENU_IMG PURGE;

CREATE TABLE TB_MM_MENU_IMG
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, IMG_DIV_CD                     VARCHAR2(24)                                 NOT NULL       
, ATTC_FILE_GRP_NO               NUMBER(10,0)                                 NOT NULL       
, IMG_PATH                       VARCHAR2(100)                                NULL           
, IMG_NM                         VARCHAR2(50)                                 NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_MENU_IMG PRIMARY KEY (
    BRND_CD, MENU_CD, IMG_DIV_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_MENU_IMG                                               IS '메뉴이미지';
COMMENT ON COLUMN TB_MM_MENU_IMG.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_MENU_IMG.MENU_CD                                       IS '메뉴코드';
COMMENT ON COLUMN TB_MM_MENU_IMG.IMG_DIV_CD                                    IS '이미지구분코드(BM227)';
COMMENT ON COLUMN TB_MM_MENU_IMG.ATTC_FILE_GRP_NO                              IS '첨부 파일 그룹 번호';
COMMENT ON COLUMN TB_MM_MENU_IMG.IMG_PATH                                      IS '이미지경로';
COMMENT ON COLUMN TB_MM_MENU_IMG.IMG_NM                                        IS '이미지명';
COMMENT ON COLUMN TB_MM_MENU_IMG.USE_YN                                        IS '사용여부';
COMMENT ON COLUMN TB_MM_MENU_IMG.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_MM_MENU_IMG.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_MM_MENU_IMG.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_MM_MENU_IMG.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_MM_MENU_IMG.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_MM_MENU_OPT */

DROP TABLE TB_MM_MENU_OPT PURGE;

CREATE TABLE TB_MM_MENU_OPT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, OPT_GRP_CD                     VARCHAR2(3)                                  NOT NULL       
, OPT_CD                         VARCHAR2(1)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_MENU_OPT PRIMARY KEY (
    BRND_CD, MENU_CD, OPT_GRP_CD, OPT_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_MENU_OPT                                               IS '메뉴옵션';
COMMENT ON COLUMN TB_MM_MENU_OPT.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_MENU_OPT.MENU_CD                                       IS '메뉴코드';
COMMENT ON COLUMN TB_MM_MENU_OPT.OPT_GRP_CD                                    IS '옵션그룹코드';
COMMENT ON COLUMN TB_MM_MENU_OPT.OPT_CD                                        IS '옵션코드';
COMMENT ON COLUMN TB_MM_MENU_OPT.USE_YN                                        IS '사용여부';
COMMENT ON COLUMN TB_MM_MENU_OPT.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_MM_MENU_OPT.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_MM_MENU_OPT.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_MM_MENU_OPT.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_MM_MENU_OPT.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_MM_MENU_OPT_GRP */

DROP TABLE TB_MM_MENU_OPT_GRP PURGE;

CREATE TABLE TB_MM_MENU_OPT_GRP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, OPT_GRP_CD                     VARCHAR2(3)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_MENU_OPT_GRP PRIMARY KEY (
    BRND_CD, MENU_CD, OPT_GRP_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_MENU_OPT_GRP                                           IS '메뉴옵션그룹';
COMMENT ON COLUMN TB_MM_MENU_OPT_GRP.BRND_CD                                   IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_MENU_OPT_GRP.MENU_CD                                   IS '메뉴코드';
COMMENT ON COLUMN TB_MM_MENU_OPT_GRP.OPT_GRP_CD                                IS '옵션그룹코드';
COMMENT ON COLUMN TB_MM_MENU_OPT_GRP.USE_YN                                    IS '사용여부';
COMMENT ON COLUMN TB_MM_MENU_OPT_GRP.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_MM_MENU_OPT_GRP.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_MM_MENU_OPT_GRP.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_MM_MENU_OPT_GRP.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_MM_MENU_OPT_GRP.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_MM_OPT */

DROP TABLE TB_MM_OPT PURGE;

CREATE TABLE TB_MM_OPT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, OPT_GRP_CD                     VARCHAR2(3)                                  NOT NULL       
, OPT_CD                         VARCHAR2(1)                                  NOT NULL       
, OPT_NM                         VARCHAR2(100)                                NOT NULL       
, BASIC_DISPLAY_YN               VARCHAR2(1)                                  NOT NULL       
, ENB_ATTC_FILE_GRP_NO           NUMBER(10,0)                                 NULL           
, ENB_IMG_PATH                   VARCHAR2(100)                                NULL           
, ENB_IMG_NM                     VARCHAR2(50)                                 NULL           
, DSB_ATTC_FILE_GRP_NO           NUMBER(10,0)                                 NULL           
, DSB_IMG_PATH                   VARCHAR2(100)                                NULL           
, DSB_IMG_NM                     VARCHAR2(50)                                 NULL           
, DISPLAY_NO                     NUMBER(3,0)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_OPT PRIMARY KEY (
    BRND_CD, OPT_GRP_CD, OPT_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_OPT                                                    IS '옵션';
COMMENT ON COLUMN TB_MM_OPT.BRND_CD                                            IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_OPT.OPT_GRP_CD                                         IS '옵션그룹코드';
COMMENT ON COLUMN TB_MM_OPT.OPT_CD                                             IS '옵션코드';
COMMENT ON COLUMN TB_MM_OPT.OPT_NM                                             IS '옵션명';
COMMENT ON COLUMN TB_MM_OPT.BASIC_DISPLAY_YN                                   IS '기본표시여부';
COMMENT ON COLUMN TB_MM_OPT.ENB_ATTC_FILE_GRP_NO                               IS '활성첨부 파일 그룹 번호';
COMMENT ON COLUMN TB_MM_OPT.ENB_IMG_PATH                                       IS '활성이미지경로';
COMMENT ON COLUMN TB_MM_OPT.ENB_IMG_NM                                         IS '활성이미지명';
COMMENT ON COLUMN TB_MM_OPT.DSB_ATTC_FILE_GRP_NO                               IS '비활성첨부 파일 그룹 번호';
COMMENT ON COLUMN TB_MM_OPT.DSB_IMG_PATH                                       IS '비활성이미지경로';
COMMENT ON COLUMN TB_MM_OPT.DSB_IMG_NM                                         IS '비활성이미지명';
COMMENT ON COLUMN TB_MM_OPT.DISPLAY_NO                                         IS '표시순서';
COMMENT ON COLUMN TB_MM_OPT.USE_YN                                             IS '사용여부';
COMMENT ON COLUMN TB_MM_OPT.REGI_ID                                            IS '등록자ID';
COMMENT ON COLUMN TB_MM_OPT.REGI_DTIME                                         IS '등록일시';
COMMENT ON COLUMN TB_MM_OPT.UPDT_ID                                            IS '수정자ID';
COMMENT ON COLUMN TB_MM_OPT.UPDT_DTIME                                         IS '수정일시';
COMMENT ON COLUMN TB_MM_OPT.POS_UPDT_TSP                                       IS 'POS수정타임스템프';


 /* TB_MM_OPT_GRP */

DROP TABLE TB_MM_OPT_GRP PURGE;

CREATE TABLE TB_MM_OPT_GRP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, OPT_GRP_CD                     VARCHAR2(3)                                  NOT NULL       
, OPT_GRP_NM                     VARCHAR2(200)                                NOT NULL       
, DISPLAY_NO                     NUMBER(3,0)                                  NOT NULL       
, SIZE_OPT_GRP_YN                VARCHAR2(1)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_OPT_GRP PRIMARY KEY (
    BRND_CD, OPT_GRP_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_OPT_GRP                                                IS '옵션그룹';
COMMENT ON COLUMN TB_MM_OPT_GRP.BRND_CD                                        IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_OPT_GRP.OPT_GRP_CD                                     IS '옵션그룹코드';
COMMENT ON COLUMN TB_MM_OPT_GRP.OPT_GRP_NM                                     IS '옵션그룹코드명';
COMMENT ON COLUMN TB_MM_OPT_GRP.DISPLAY_NO                                     IS '표시순서';
COMMENT ON COLUMN TB_MM_OPT_GRP.SIZE_OPT_GRP_YN                                IS '사이즈옵션그룹여부';
COMMENT ON COLUMN TB_MM_OPT_GRP.USE_YN                                         IS '사용여부';
COMMENT ON COLUMN TB_MM_OPT_GRP.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_MM_OPT_GRP.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_MM_OPT_GRP.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_MM_OPT_GRP.UPDT_DTIME                                     IS '수정일시';
COMMENT ON COLUMN TB_MM_OPT_GRP.POS_UPDT_TSP                                   IS 'POS수정타임스템프';


 /* TB_MM_SET_MENU */

DROP TABLE TB_MM_SET_MENU PURGE;

CREATE TABLE TB_MM_SET_MENU
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, SET_MENU_CD                    VARCHAR2(12)                                 NOT NULL       
, CHOIC_GRP_NO                   NUMBER(3,0)                                  NOT NULL       
, CHOIC_GRP_NM                   VARCHAR2(50)                                 NOT NULL       
, CMPST_QTY                      VARCHAR2(3)                                  NOT NULL       
, BASIC_QTY                      VARCHAR2(2)                                  NOT NULL       
, ESSENTIAL_QTY                  VARCHAR2(2)                                  NOT NULL       
, USE_STP_YN                     VARCHAR2(1)                                  NOT NULL       
, USE_STP_DT                     VARCHAR2(8)                                  NULL           
, DISPLAY_NO                     NUMBER(3,0)                                  NOT NULL       
, CUR_USE_YN                     VARCHAR2(4000)                               NOT NULL       
, ADD_AMT                        NUMBER(13,0)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_SET_MENU PRIMARY KEY (
    BRND_CD, MENU_CD, SET_MENU_CD, CHOIC_GRP_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_SET_MENU                                               IS '세트메뉴';
COMMENT ON COLUMN TB_MM_SET_MENU.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_SET_MENU.MENU_CD                                       IS '메뉴코드';
COMMENT ON COLUMN TB_MM_SET_MENU.SET_MENU_CD                                   IS '세트메뉴코드';
COMMENT ON COLUMN TB_MM_SET_MENU.CHOIC_GRP_NO                                  IS '선택그룹번호';
COMMENT ON COLUMN TB_MM_SET_MENU.CHOIC_GRP_NM                                  IS '선택그룹명';
COMMENT ON COLUMN TB_MM_SET_MENU.CMPST_QTY                                     IS '그룹선택수량';
COMMENT ON COLUMN TB_MM_SET_MENU.BASIC_QTY                                     IS '기본선택수량';
COMMENT ON COLUMN TB_MM_SET_MENU.ESSENTIAL_QTY                                 IS '필수선택수량';
COMMENT ON COLUMN TB_MM_SET_MENU.USE_STP_YN                                    IS '사용중지여부';
COMMENT ON COLUMN TB_MM_SET_MENU.USE_STP_DT                                    IS '사용중지일자';
COMMENT ON COLUMN TB_MM_SET_MENU.DISPLAY_NO                                    IS '표시순서';
COMMENT ON COLUMN TB_MM_SET_MENU.CUR_USE_YN                                    IS '현재 사용여부';
COMMENT ON COLUMN TB_MM_SET_MENU.ADD_AMT                                       IS '추가금액';
COMMENT ON COLUMN TB_MM_SET_MENU.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_MM_SET_MENU.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_MM_SET_MENU.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_MM_SET_MENU.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_MM_SET_MENU.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_MM_STORE_MENU */

DROP TABLE TB_MM_STORE_MENU PURGE;

CREATE TABLE TB_MM_STORE_MENU
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, IF_MENU_CD                     VARCHAR2(20)                                 NULL           
, FC_SALE_AMT                    NUMBER(13,0)                                 NOT NULL       
, BEST_MENU_YN                   VARCHAR2(1)                                  NOT NULL       
, BEST_MENU_STP_DT               VARCHAR2(8)                                  NULL           
, CUR_BEST_MENU_YN               VARCHAR2(4000)                               NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_STORE_MENU PRIMARY KEY (
    BRND_CD, STORE_CD, MENU_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_STORE_MENU                                             IS '점포메뉴';
COMMENT ON COLUMN TB_MM_STORE_MENU.BRND_CD                                     IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_STORE_MENU.STORE_CD                                    IS '점포 코드';
COMMENT ON COLUMN TB_MM_STORE_MENU.MENU_CD                                     IS '메뉴 코드';
COMMENT ON COLUMN TB_MM_STORE_MENU.IF_MENU_CD                                  IS 'IF메뉴코드';
COMMENT ON COLUMN TB_MM_STORE_MENU.FC_SALE_AMT                                 IS '가맹 판매 금액';
COMMENT ON COLUMN TB_MM_STORE_MENU.BEST_MENU_YN                                IS '베스트메뉴여부';
COMMENT ON COLUMN TB_MM_STORE_MENU.BEST_MENU_STP_DT                            IS '베스트메뉴중지일자';
COMMENT ON COLUMN TB_MM_STORE_MENU.CUR_BEST_MENU_YN                            IS '현재 베스트메뉴여부';
COMMENT ON COLUMN TB_MM_STORE_MENU.USE_YN                                      IS '사용 여부';
COMMENT ON COLUMN TB_MM_STORE_MENU.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_MM_STORE_MENU.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_MM_STORE_MENU.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_MM_STORE_MENU.UPDT_DTIME                                  IS '수정일시';
COMMENT ON COLUMN TB_MM_STORE_MENU.POS_UPDT_TSP                                IS 'POS수정타임스템프';


 /* TB_MM_STORE_ODS_MENU */

DROP TABLE TB_MM_STORE_ODS_MENU PURGE;

CREATE TABLE TB_MM_STORE_ODS_MENU
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, DISPLAY_FG                     VARCHAR2(1)                                  NOT NULL       
, MENU_CD                        VARCHAR2(20)                                 NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_STORE_ODS_MENU PRIMARY KEY (
    BRND_CD, STORE_CD, POS_NO, DISPLAY_FG, MENU_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_STORE_ODS_MENU                                         IS '점포별메뉴ODS연결마스터';
COMMENT ON COLUMN TB_MM_STORE_ODS_MENU.BRND_CD                                 IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_STORE_ODS_MENU.STORE_CD                                IS '점포코드';
COMMENT ON COLUMN TB_MM_STORE_ODS_MENU.POS_NO                                  IS 'POS번호';
COMMENT ON COLUMN TB_MM_STORE_ODS_MENU.DISPLAY_FG                              IS '표시여부';
COMMENT ON COLUMN TB_MM_STORE_ODS_MENU.MENU_CD                                 IS '메뉴 코드';
COMMENT ON COLUMN TB_MM_STORE_ODS_MENU.USE_YN                                  IS '사용여부';
COMMENT ON COLUMN TB_MM_STORE_ODS_MENU.REGI_ID                                 IS '등록자ID';
COMMENT ON COLUMN TB_MM_STORE_ODS_MENU.REGI_DTIME                              IS '등록일시';
COMMENT ON COLUMN TB_MM_STORE_ODS_MENU.UPDT_ID                                 IS '수정자ID';
COMMENT ON COLUMN TB_MM_STORE_ODS_MENU.UPDT_DTIME                              IS '수정일시';
COMMENT ON COLUMN TB_MM_STORE_ODS_MENU.POS_UPDT_TSP                            IS 'POS수정타임스템프';


 /* TB_MM_STORE_VEND */

DROP TABLE TB_MM_STORE_VEND PURGE;

CREATE TABLE TB_MM_STORE_VEND
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, VEND_CD                        VARCHAR2(10)                                 NOT NULL       
, VEND_NM                        VARCHAR2(100)                                NULL           
, VEND_TYPE_DIV_CD               VARCHAR2(2)                                  NULL           
, VEND_BZOP_RGS_NO               VARCHAR2(10)                                 NULL           
, VEND_BZOP_NM                   VARCHAR2(100)                                NULL           
, VEND_PRSDT_FNM                 VARCHAR2(200)                                NULL           
, VEND_CTGBZ_NM                  VARCHAR2(100)                                NULL           
, VEND_BZCN_NM                   VARCHAR2(100)                                NULL           
, VEND_ZIP_CD                    VARCHAR2(6)                                  NULL           
, VEND_ROADNM_BASIC_AD           VARCHAR2(200)                                NULL           
, VEND_ROADNM_DTL_AD             VARCHAR2(500)                                NULL           
, VEND_TEL_NO                    VARCHAR2(100)                                NULL           
, VEND_FAX_NO                    VARCHAR2(20)                                 NULL           
, VEND_CHRG_TEL_NO               VARCHAR2(100)                                NULL           
, VEND_EMAIL_AD                  VARCHAR2(200)                                NULL           
, VEND_MAJ_ITM_NM                VARCHAR2(100)                                NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, DISPLAY_NO                     NUMBER(3,0)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_MM_STORE_VEND PRIMARY KEY (
    BRND_CD, STORE_CD, VEND_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_MM_STORE_VEND                                             IS '점포?거래처';
COMMENT ON COLUMN TB_MM_STORE_VEND.BRND_CD                                     IS '브랜드 코드';
COMMENT ON COLUMN TB_MM_STORE_VEND.STORE_CD                                    IS '점포 코드';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_CD                                     IS '거래처 코드';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_NM                                     IS '거래처 명';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_TYPE_DIV_CD                            IS '거래처 유형 구분 코드';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_BZOP_RGS_NO                            IS '거래처 사업자 등록 번호';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_BZOP_NM                                IS '거래처 사업자 명';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_PRSDT_FNM                              IS '거래처 대표자 성명';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_CTGBZ_NM                               IS '거래처 업종 명';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_BZCN_NM                                IS '거래처 업태 명';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_ZIP_CD                                 IS '거래처 우편번호';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_ROADNM_BASIC_AD                        IS '거래처 도로명 기본 주소';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_ROADNM_DTL_AD                          IS '거래처 도로명 상세 주소';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_TEL_NO                                 IS '거래처 전화 번호';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_FAX_NO                                 IS '거래처 팩스 번호';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_CHRG_TEL_NO                            IS '거래처 담당 전화 번호';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_EMAIL_AD                               IS '거래처 이메일 주소';
COMMENT ON COLUMN TB_MM_STORE_VEND.VEND_MAJ_ITM_NM                             IS '거래처 주요 품목 명';
COMMENT ON COLUMN TB_MM_STORE_VEND.USE_YN                                      IS '사용 여부';
COMMENT ON COLUMN TB_MM_STORE_VEND.DISPLAY_NO                                  IS '표시순서';
COMMENT ON COLUMN TB_MM_STORE_VEND.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_MM_STORE_VEND.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_MM_STORE_VEND.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_MM_STORE_VEND.UPDT_DTIME                                  IS '수정일시';
COMMENT ON COLUMN TB_MM_STORE_VEND.POS_UPDT_TSP                                IS 'POS수정타임스템프';


 /* TB_PM_ADVMST */

DROP TABLE TB_PM_ADVMST PURGE;

CREATE TABLE TB_PM_ADVMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, ADV_CD                         VARCHAR2(10)                                 NOT NULL       
, ADV_NM                         VARCHAR2(80)                                 NOT NULL       
, CHNL_DIV_CD                    VARCHAR2(2)                                  NOT NULL       
, ATTC_FILE_TYPE                 VARCHAR2(2)                                  NOT NULL       
, DISP_LOC_CD                    VARCHAR2(3)                                  NOT NULL       
, ATTC_FILE_GRP_NO               NUMBER(10,0)                                 NULL           
, REPLAY_TM                      VARCHAR2(3)                                  NULL           
, USE_FR_DT                      VARCHAR2(8)                                  NOT NULL       
, USE_END_DT                     VARCHAR2(8)                                  NOT NULL       
, STORE_FLAG                     VARCHAR2(1)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REMARK                         VARCHAR2(200)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_ADVMST PRIMARY KEY (
    BRND_CD, ADV_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_ADVMST                                                 IS '광고마스터';
COMMENT ON COLUMN TB_PM_ADVMST.BRND_CD                                         IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_ADVMST.ADV_CD                                          IS '광고코드';
COMMENT ON COLUMN TB_PM_ADVMST.ADV_NM                                          IS '광고명';
COMMENT ON COLUMN TB_PM_ADVMST.CHNL_DIV_CD                                     IS '채널구분코드';
COMMENT ON COLUMN TB_PM_ADVMST.ATTC_FILE_TYPE                                  IS '첨부파일구분';
COMMENT ON COLUMN TB_PM_ADVMST.DISP_LOC_CD                                     IS '전시위치코드';
COMMENT ON COLUMN TB_PM_ADVMST.ATTC_FILE_GRP_NO                                IS '첨부 파일 그룹 번호';
COMMENT ON COLUMN TB_PM_ADVMST.REPLAY_TM                                       IS '리플레이시간';
COMMENT ON COLUMN TB_PM_ADVMST.USE_FR_DT                                       IS '사용 시작 일자';
COMMENT ON COLUMN TB_PM_ADVMST.USE_END_DT                                      IS '사용 종료 일자';
COMMENT ON COLUMN TB_PM_ADVMST.STORE_FLAG                                      IS '점포구분';
COMMENT ON COLUMN TB_PM_ADVMST.USE_YN                                          IS '사용 여부';
COMMENT ON COLUMN TB_PM_ADVMST.REMARK                                          IS '비고';
COMMENT ON COLUMN TB_PM_ADVMST.REGI_ID                                         IS '등록자ID';
COMMENT ON COLUMN TB_PM_ADVMST.REGI_DTIME                                      IS '등록일시';
COMMENT ON COLUMN TB_PM_ADVMST.UPDT_ID                                         IS '수정자ID';
COMMENT ON COLUMN TB_PM_ADVMST.UPDT_DTIME                                      IS '수정일시';
COMMENT ON COLUMN TB_PM_ADVMST.POS_UPDT_TSP                                    IS 'POS수정타임스템프';


 /* TB_PM_BRANDFUNCKEYMST */

DROP TABLE TB_PM_BRANDFUNCKEYMST PURGE;

CREATE TABLE TB_PM_BRANDFUNCKEYMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, UP_FUNCTION_CD                 VARCHAR2(4)                                  NOT NULL       
, FUNCTION_KEY                   VARCHAR2(4)                                  NOT NULL       
, FUNCTION_CD                    VARCHAR2(4)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_BRANDFUNCKEYMST PRIMARY KEY (
    BRND_CD, UP_FUNCTION_CD, FUNCTION_KEY
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_BRANDFUNCKEYMST                                        IS '브랜드별기능키';
COMMENT ON COLUMN TB_PM_BRANDFUNCKEYMST.BRND_CD                                IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_BRANDFUNCKEYMST.UP_FUNCTION_CD                         IS '상위기능코드';
COMMENT ON COLUMN TB_PM_BRANDFUNCKEYMST.FUNCTION_KEY                           IS '기능키위치코드';
COMMENT ON COLUMN TB_PM_BRANDFUNCKEYMST.FUNCTION_CD                            IS '기능키코드';
COMMENT ON COLUMN TB_PM_BRANDFUNCKEYMST.USE_YN                                 IS '사용 여부';
COMMENT ON COLUMN TB_PM_BRANDFUNCKEYMST.REGI_ID                                IS '등록자ID';
COMMENT ON COLUMN TB_PM_BRANDFUNCKEYMST.REGI_DTIME                             IS '등록일시';
COMMENT ON COLUMN TB_PM_BRANDFUNCKEYMST.UPDT_ID                                IS '수정자ID';
COMMENT ON COLUMN TB_PM_BRANDFUNCKEYMST.UPDT_DTIME                             IS '수정일시';
COMMENT ON COLUMN TB_PM_BRANDFUNCKEYMST.POS_UPDT_TSP                           IS 'POS수정타임스템프';


 /* TB_PM_CALLCENTERMST */

DROP TABLE TB_PM_CALLCENTERMST PURGE;

CREATE TABLE TB_PM_CALLCENTERMST
(
  SEQ                            VARCHAR2(5)                                  NOT NULL       
, BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CHARGE_FG                      VARCHAR2(1)                                  NULL           
, SECTOR_NM                      VARCHAR2(30)                                 NULL           
, CONTACK_NM                     VARCHAR2(200)                                NULL           
, CONTACK_BUSI                   VARCHAR2(200)                                NULL           
, COM_TEL_NO                     VARCHAR2(20)                                 NULL           
, MOBILE_TEL_NO                  VARCHAR2(100)                                NULL           
, ORDER_BY                       VARCHAR2(5)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_CALLCENTERMST PRIMARY KEY (
    SEQ
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_CALLCENTERMST                                          IS '콜센터정보';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.SEQ                                      IS '일련번호';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.BRND_CD                                  IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.CHARGE_FG                                IS '담당 구분';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.SECTOR_NM                                IS '소속 명';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.CONTACK_NM                               IS '담당자';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.CONTACK_BUSI                             IS '담당 업무';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.COM_TEL_NO                               IS '회사 전화 번호';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.MOBILE_TEL_NO                            IS '핸드폰';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.ORDER_BY                                 IS '정렬';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.USE_YN                                   IS '사용 여부';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.UPDT_DTIME                               IS '수정일시';
COMMENT ON COLUMN TB_PM_CALLCENTERMST.POS_UPDT_TSP                             IS 'POS수정타임스템프';


 /* TB_PM_CARDNO */

DROP TABLE TB_PM_CARDNO PURGE;

CREATE TABLE TB_PM_CARDNO
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, CARD_CD                        VARCHAR2(3)                                  NOT NULL       
, CONTACT_NO                     VARCHAR2(20)                                 NULL           
, SUSURYO                        NUMBER(7,4)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_PM_CARDNO PRIMARY KEY (
    BRND_CD, STORE_CD, CARD_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_CARDNO                                                 IS '카드사정보';
COMMENT ON COLUMN TB_PM_CARDNO.BRND_CD                                         IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_CARDNO.STORE_CD                                        IS '점포 코드';
COMMENT ON COLUMN TB_PM_CARDNO.CARD_CD                                         IS '카드사코드';
COMMENT ON COLUMN TB_PM_CARDNO.CONTACT_NO                                      IS '계약번호';
COMMENT ON COLUMN TB_PM_CARDNO.SUSURYO                                         IS '수수료';
COMMENT ON COLUMN TB_PM_CARDNO.REGI_ID                                         IS '등록자ID';
COMMENT ON COLUMN TB_PM_CARDNO.REGI_DTIME                                      IS '등록일시';
COMMENT ON COLUMN TB_PM_CARDNO.UPDT_ID                                         IS '수정자ID';
COMMENT ON COLUMN TB_PM_CARDNO.UPDT_DTIME                                      IS '수정일시';


 /* TB_PM_CARDPREFIX */

DROP TABLE TB_PM_CARDPREFIX PURGE;

CREATE TABLE TB_PM_CARDPREFIX
(
  PREFIX_CD                      VARCHAR2(10)                                 NOT NULL       
, CARD_CO_CD                     VARCHAR2(2)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_CARDPREFIX PRIMARY KEY (
    PREFIX_CD, CARD_CO_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_CARDPREFIX                                             IS '프리픽스정보';
COMMENT ON COLUMN TB_PM_CARDPREFIX.PREFIX_CD                                   IS '프리픽스';
COMMENT ON COLUMN TB_PM_CARDPREFIX.CARD_CO_CD                                  IS '카드사코드';
COMMENT ON COLUMN TB_PM_CARDPREFIX.USE_YN                                      IS '사용 여부';
COMMENT ON COLUMN TB_PM_CARDPREFIX.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_PM_CARDPREFIX.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_PM_CARDPREFIX.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_PM_CARDPREFIX.UPDT_DTIME                                  IS '수정일시';
COMMENT ON COLUMN TB_PM_CARDPREFIX.POS_UPDT_TSP                                IS 'POS수정타임스템프';


 /* TB_PM_ENV_CLF_INFO */

DROP TABLE TB_PM_ENV_CLF_INFO PURGE;

CREATE TABLE TB_PM_ENV_CLF_INFO
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, ENV_DIV_CD                     VARCHAR2(1)                                  NOT NULL       
, ENV_CD                         VARCHAR2(100)                                NOT NULL       
, ENV_NM                         VARCHAR2(60)                                 NULL           
, ENV_CLF_CD                     VARCHAR2(4)                                  NULL           
, COMM_CL_CD                     VARCHAR2(20)                                 NULL           
, INIT_VAL                       VARCHAR2(30)                                 NULL           
, REMARK                         VARCHAR2(100)                                NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_ENV_CLF_INFO PRIMARY KEY (
    BRND_CD, ENV_DIV_CD, ENV_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_ENV_CLF_INFO                                           IS '환경분류정보';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.BRND_CD                                   IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.ENV_DIV_CD                                IS '환경구분코드';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.ENV_CD                                    IS '환경변수코드';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.ENV_NM                                    IS '환경변수명';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.ENV_CLF_CD                                IS '환경분류코드';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.COMM_CL_CD                                IS '공통분류코드';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.INIT_VAL                                  IS '초기값';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.REMARK                                    IS '설명';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.USE_YN                                    IS '사용 여부';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_PM_ENV_CLF_INFO.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_PM_ETC_STTLMTHD */

DROP TABLE TB_PM_ETC_STTLMTHD PURGE;

CREATE TABLE TB_PM_ETC_STTLMTHD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, FUNCTION_CD                    VARCHAR2(4)                                  NOT NULL       
, STTL_MTHD_CD                   VARCHAR2(2)                                  NOT NULL       
, DETAIL_STTL_CD                 VARCHAR2(5)                                  NOT NULL       
, LOCA                           NUMBER(2,0)                                  NULL           
, DETAIL_STTL_NM                 VARCHAR2(50)                                 NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_ETC_STTLMTHD PRIMARY KEY (
    BRND_CD, FUNCTION_CD, STTL_MTHD_CD, DETAIL_STTL_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_ETC_STTLMTHD                                           IS '기타결제정보';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.BRND_CD                                   IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.FUNCTION_CD                               IS '기능키코드';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.STTL_MTHD_CD                              IS '결제수단코드';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.DETAIL_STTL_CD                            IS '상세결제코드';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.LOCA                                      IS '위치';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.DETAIL_STTL_NM                            IS '상세결제명';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.USE_YN                                    IS '사용여부';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_PM_ETC_STTLMTHD.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_PM_FUNCKEYMST */

DROP TABLE TB_PM_FUNCKEYMST PURGE;

CREATE TABLE TB_PM_FUNCKEYMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, FUNCTION_CD                    VARCHAR2(4)                                  NOT NULL       
, FUNCTION_NM                    VARCHAR2(30)                                 NULL           
, FUNCTION_DIV_CD                VARCHAR2(1)                                  NOT NULL       
, ROLLSET_YN                     VARCHAR2(1)                                  NOT NULL       
, STORE_APPL_DIV_CD              VARCHAR2(1)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_FUNCKEYMST PRIMARY KEY (
    BRND_CD, FUNCTION_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_FUNCKEYMST                                             IS '기능키정보';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.BRND_CD                                     IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.FUNCTION_CD                                 IS '기능키코드';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.FUNCTION_NM                                 IS '기능키명';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.FUNCTION_DIV_CD                             IS '기능 구분 코드';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.ROLLSET_YN                                  IS '권한설정여부';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.STORE_APPL_DIV_CD                           IS '점포적용구분코드';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.USE_YN                                      IS '사용 여부';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.UPDT_DTIME                                  IS '수정일시';
COMMENT ON COLUMN TB_PM_FUNCKEYMST.POS_UPDT_TSP                                IS 'POS수정타임스템프';


 /* TB_PM_FUNCKEYMSTORE_MNG */

DROP TABLE TB_PM_FUNCKEYMSTORE_MNG PURGE;

CREATE TABLE TB_PM_FUNCKEYMSTORE_MNG
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, FUNCTION_CD                    VARCHAR2(4)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_FUNCKEYMSTORE_MNG PRIMARY KEY (
    BRND_CD, FUNCTION_CD, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_FUNCKEYMSTORE_MNG                                      IS '기능키점포관리';
COMMENT ON COLUMN TB_PM_FUNCKEYMSTORE_MNG.BRND_CD                              IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_FUNCKEYMSTORE_MNG.FUNCTION_CD                          IS '기능키코드';
COMMENT ON COLUMN TB_PM_FUNCKEYMSTORE_MNG.STORE_CD                             IS '점포 코드';
COMMENT ON COLUMN TB_PM_FUNCKEYMSTORE_MNG.USE_YN                               IS '사용 여부';
COMMENT ON COLUMN TB_PM_FUNCKEYMSTORE_MNG.REGI_ID                              IS '등록자ID';
COMMENT ON COLUMN TB_PM_FUNCKEYMSTORE_MNG.REGI_DTIME                           IS '등록일시';
COMMENT ON COLUMN TB_PM_FUNCKEYMSTORE_MNG.UPDT_ID                              IS '수정자ID';
COMMENT ON COLUMN TB_PM_FUNCKEYMSTORE_MNG.UPDT_DTIME                           IS '수정일시';
COMMENT ON COLUMN TB_PM_FUNCKEYMSTORE_MNG.POS_UPDT_TSP                         IS 'POS수정타임스템프';


 /* TB_PM_KITCPRTMENUMST */

DROP TABLE TB_PM_KITCPRTMENUMST PURGE;

CREATE TABLE TB_PM_KITCPRTMENUMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, MENU_CD                        VARCHAR2(20)                                 NOT NULL       
, ORD_PRINT_EXCL_YN              VARCHAR2(1)                                  NOT NULL       
, BILL_PRINT_EXCL_YN             VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_KITCPRTMENUMST PRIMARY KEY (
    BRND_CD, STORE_CD, MENU_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_KITCPRTMENUMST                                         IS '주방프린터메뉴마스터';
COMMENT ON COLUMN TB_PM_KITCPRTMENUMST.BRND_CD                                 IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_KITCPRTMENUMST.STORE_CD                                IS '점포 코드';
COMMENT ON COLUMN TB_PM_KITCPRTMENUMST.MENU_CD                                 IS '메뉴 코드';
COMMENT ON COLUMN TB_PM_KITCPRTMENUMST.ORD_PRINT_EXCL_YN                       IS '픽업 프린트 제외 여부';
COMMENT ON COLUMN TB_PM_KITCPRTMENUMST.BILL_PRINT_EXCL_YN                      IS '영수증 프린터 제외 여부';
COMMENT ON COLUMN TB_PM_KITCPRTMENUMST.REGI_ID                                 IS '등록자ID';
COMMENT ON COLUMN TB_PM_KITCPRTMENUMST.REGI_DTIME                              IS '등록일시';
COMMENT ON COLUMN TB_PM_KITCPRTMENUMST.UPDT_ID                                 IS '수정자ID';
COMMENT ON COLUMN TB_PM_KITCPRTMENUMST.UPDT_DTIME                              IS '수정일시';
COMMENT ON COLUMN TB_PM_KITCPRTMENUMST.POS_UPDT_TSP                            IS 'POS수정타임스템프';


 /* TB_PM_KITCPRTMST */

DROP TABLE TB_PM_KITCPRTMST PURGE;

CREATE TABLE TB_PM_KITCPRTMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, PRINT_SEQ                      VARCHAR2(3)                                  NOT NULL       
, PRINT_NM                       VARCHAR2(40)                                 NULL           
, PRINT_IP                       VARCHAR2(20)                                 NULL           
, PRINT_PORT                     VARCHAR2(10)                                 NULL           
, NET_PRINT_FG                   VARCHAR2(1)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_KITCPRTMST PRIMARY KEY (
    BRND_CD, STORE_CD, PRINT_SEQ
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_KITCPRTMST                                             IS '점포별주방프린터정보';
COMMENT ON COLUMN TB_PM_KITCPRTMST.BRND_CD                                     IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_KITCPRTMST.STORE_CD                                    IS '점포 코드';
COMMENT ON COLUMN TB_PM_KITCPRTMST.PRINT_SEQ                                   IS '프린터번호';
COMMENT ON COLUMN TB_PM_KITCPRTMST.PRINT_NM                                    IS '프린터명';
COMMENT ON COLUMN TB_PM_KITCPRTMST.PRINT_IP                                    IS '프린터IP';
COMMENT ON COLUMN TB_PM_KITCPRTMST.PRINT_PORT                                  IS '프린터PORT';
COMMENT ON COLUMN TB_PM_KITCPRTMST.NET_PRINT_FG                                IS '네크워크프린트구분';
COMMENT ON COLUMN TB_PM_KITCPRTMST.USE_YN                                      IS '사용 여부';
COMMENT ON COLUMN TB_PM_KITCPRTMST.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_PM_KITCPRTMST.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_PM_KITCPRTMST.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_PM_KITCPRTMST.UPDT_DTIME                                  IS '수정일시';
COMMENT ON COLUMN TB_PM_KITCPRTMST.POS_UPDT_TSP                                IS 'POS수정타임스템프';


 /* TB_PM_MENU_LCLASS */

DROP TABLE TB_PM_MENU_LCLASS PURGE;

CREATE TABLE TB_PM_MENU_LCLASS
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, CHNL_DIV_CD                    VARCHAR2(2)                                  NOT NULL       
, GRT_CD                         VARCHAR2(3)                                  NOT NULL       
, GRT_NM                         VARCHAR2(100)                                NOT NULL       
, GRT_ENG_NM                     VARCHAR2(100)                                NULL           
, GRT_JPN_NM                     VARCHAR2(100)                                NULL           
, GRT_CHN_NM                     VARCHAR2(100)                                NULL           
, GRT_DISPLAY_NO                 NUMBER(3,0)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_MENU_LCLASS PRIMARY KEY (
    BRND_CD, STORE_CD, CHNL_DIV_CD, GRT_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_MENU_LCLASS                                            IS '메뉴대분류키';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.BRND_CD                                    IS '브랜드 코드 '01'고정';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.STORE_CD                                   IS '점포 코드';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.CHNL_DIV_CD                                IS '채널구분코드 포스:'01', 키오스크:'03'';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.GRT_CD                                     IS '대분류코드';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.GRT_NM                                     IS '대분류명';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.GRT_ENG_NM                                 IS '대분류영문명';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.GRT_JPN_NM                                 IS '대분류일문명';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.GRT_CHN_NM                                 IS '대분류중문명';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.GRT_DISPLAY_NO                             IS '대분류표시순서';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.USE_YN                                     IS '사용여부 기본값:'Y'';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.REGI_ID                                    IS '등록자ID';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.REGI_DTIME                                 IS '등록일시';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.UPDT_ID                                    IS '수정자ID';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.UPDT_DTIME                                 IS '수정일시';
COMMENT ON COLUMN TB_PM_MENU_LCLASS.POS_UPDT_TSP                               IS 'POS수정타임스템프';


 /* TB_PM_MENU_MCLASS */

DROP TABLE TB_PM_MENU_MCLASS PURGE;

CREATE TABLE TB_PM_MENU_MCLASS
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, CHNL_DIV_CD                    VARCHAR2(2)                                  NOT NULL       
, GRT_CD                         VARCHAR2(3)                                  NOT NULL       
, MID_CD                         VARCHAR2(3)                                  NOT NULL       
, MID_NM                         VARCHAR2(100)                                NOT NULL       
, MID_ENG_NM                     VARCHAR2(100)                                NULL           
, MID_JPN_NM                     VARCHAR2(100)                                NULL           
, MID_CHN_NM                     VARCHAR2(100)                                NULL           
, GRT_DISPLAY_NO                 NUMBER(3,0)                                  NOT NULL       
, MID_DISPLAY_NO                 NUMBER(3,0)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_MENU_MCLASS PRIMARY KEY (
    BRND_CD, STORE_CD, CHNL_DIV_CD, GRT_CD, MID_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_MENU_MCLASS                                            IS '메뉴중분류키';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.BRND_CD                                    IS '브랜드 코드 '01'고정';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.STORE_CD                                   IS '점포 코드';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.CHNL_DIV_CD                                IS '채널구분코드 포스:'01', 키오스크:'03'';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.GRT_CD                                     IS '대분류코드';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.MID_CD                                     IS '중분류코드';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.MID_NM                                     IS '중분류명';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.MID_ENG_NM                                 IS '중분류영문명';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.MID_JPN_NM                                 IS '중분류일문명';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.MID_CHN_NM                                 IS '중분류중문명';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.GRT_DISPLAY_NO                             IS '대분류표시순서';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.MID_DISPLAY_NO                             IS '중분류표시순서';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.USE_YN                                     IS '사용여부 기본값:'Y'';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.REGI_ID                                    IS '등록자ID';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.REGI_DTIME                                 IS '등록일시';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.UPDT_ID                                    IS '수정자ID';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.UPDT_DTIME                                 IS '수정일시';
COMMENT ON COLUMN TB_PM_MENU_MCLASS.POS_UPDT_TSP                               IS 'POS수정타임스템프';


 /* TB_PM_MENU_MENUKEY */

DROP TABLE TB_PM_MENU_MENUKEY PURGE;

CREATE TABLE TB_PM_MENU_MENUKEY
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, CHNL_DIV_CD                    VARCHAR2(2)                                  NOT NULL       
, GRT_CD                         VARCHAR2(3)                                  NOT NULL       
, MID_CD                         VARCHAR2(3)                                  NOT NULL       
, MENUKEY_CD                     VARCHAR2(3)                                  NOT NULL       
, GRT_DISPLAY_NO                 NUMBER(3,0)                                  NOT NULL       
, MID_DISPLAY_NO                 NUMBER(3,0)                                  NOT NULL       
, MENU_DISPLAY_NO                NUMBER(3,0)                                  NOT NULL       
, MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, DEF_COLOR_CD                   VARCHAR2(9)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_MENU_MENUKEY PRIMARY KEY (
    BRND_CD, STORE_CD, CHNL_DIV_CD, GRT_CD, MID_CD, MENUKEY_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_MENU_MENUKEY                                           IS '메뉴키';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.BRND_CD                                   IS '브랜드 코드 '01'고정';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.STORE_CD                                  IS '점포 코드';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.CHNL_DIV_CD                               IS '채널구분코드 포스:'01', 키오스크:'03'';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.GRT_CD                                    IS '대분류코드';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.MID_CD                                    IS '중분류코드';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.MENUKEY_CD                                IS '메뉴키코드';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.GRT_DISPLAY_NO                            IS '대분류표시순서';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.MID_DISPLAY_NO                            IS '중분류표시순서';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.MENU_DISPLAY_NO                           IS '메뉴표시순서';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.MENU_CD                                   IS '메뉴코드';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.DEF_COLOR_CD                              IS '기본색상코드 (EX:#FFFFFFFF)';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.USE_YN                                    IS '사용여부 기본값:'Y'';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_PM_MENU_MENUKEY.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_PM_MLCLASSMST */

DROP TABLE TB_PM_MLCLASSMST PURGE;

CREATE TABLE TB_PM_MLCLASSMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, GRT_DISPLAY_NO                 VARCHAR2(3)                                  NOT NULL       
, GRT_CD                         VARCHAR2(3)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_PM_MLCLASSMST PRIMARY KEY (
    BRND_CD, GRT_DISPLAY_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_MLCLASSMST                                             IS '메뉴그룹대분류';
COMMENT ON COLUMN TB_PM_MLCLASSMST.BRND_CD                                     IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_MLCLASSMST.GRT_DISPLAY_NO                              IS '대분류 표시순서';
COMMENT ON COLUMN TB_PM_MLCLASSMST.GRT_CD                                      IS '대분류코드';
COMMENT ON COLUMN TB_PM_MLCLASSMST.USE_YN                                      IS '사용 여부';
COMMENT ON COLUMN TB_PM_MLCLASSMST.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_PM_MLCLASSMST.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_PM_MLCLASSMST.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_PM_MLCLASSMST.UPDT_DTIME                                  IS '수정일시';


 /* TB_PM_MMCLASSMST */

DROP TABLE TB_PM_MMCLASSMST PURGE;

CREATE TABLE TB_PM_MMCLASSMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, GRT_DISPLAY_NO                 VARCHAR2(3)                                  NOT NULL       
, MID_DISPLAY_NO                 VARCHAR2(3)                                  NOT NULL       
, MID_CD                         VARCHAR2(6)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_PM_MMCLASSMST PRIMARY KEY (
    BRND_CD, GRT_DISPLAY_NO, MID_DISPLAY_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_MMCLASSMST                                             IS '메뉴그룹중분류';
COMMENT ON COLUMN TB_PM_MMCLASSMST.BRND_CD                                     IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_MMCLASSMST.GRT_DISPLAY_NO                              IS '대분류 표시순서';
COMMENT ON COLUMN TB_PM_MMCLASSMST.MID_DISPLAY_NO                              IS '중분류 표시순서';
COMMENT ON COLUMN TB_PM_MMCLASSMST.MID_CD                                      IS '중분류코드';
COMMENT ON COLUMN TB_PM_MMCLASSMST.USE_YN                                      IS '사용 여부';
COMMENT ON COLUMN TB_PM_MMCLASSMST.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_PM_MMCLASSMST.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_PM_MMCLASSMST.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_PM_MMCLASSMST.UPDT_DTIME                                  IS '수정일시';


 /* TB_PM_ODS_INFO */

DROP TABLE TB_PM_ODS_INFO PURGE;

CREATE TABLE TB_PM_ODS_INFO
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, DVCE_NO                        VARCHAR2(100)                                NOT NULL       
, ODS_NO                         VARCHAR2(100)                                NULL           
, OS_VER                         VARCHAR2(100)                                NULL           
, MAC_ADDR                       VARCHAR2(20)                                 NULL           
, ODS_PGM_VER                    VARCHAR2(100)                                NULL           
, MAIN_POS_IP                    VARCHAR2(20)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_PM_ODS_INFO PRIMARY KEY (
    BRND_CD, STORE_CD, DVCE_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_ODS_INFO                                               IS 'ODS정보';
COMMENT ON COLUMN TB_PM_ODS_INFO.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_ODS_INFO.STORE_CD                                      IS '점포 코드';
COMMENT ON COLUMN TB_PM_ODS_INFO.DVCE_NO                                       IS '디바이스번호';
COMMENT ON COLUMN TB_PM_ODS_INFO.ODS_NO                                        IS 'ODS번호';
COMMENT ON COLUMN TB_PM_ODS_INFO.OS_VER                                        IS 'OS 버전';
COMMENT ON COLUMN TB_PM_ODS_INFO.MAC_ADDR                                      IS '맥주소';
COMMENT ON COLUMN TB_PM_ODS_INFO.ODS_PGM_VER                                   IS 'ODS 프로그램 버전';
COMMENT ON COLUMN TB_PM_ODS_INFO.MAIN_POS_IP                                   IS 'MAIN POS IP';
COMMENT ON COLUMN TB_PM_ODS_INFO.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_PM_ODS_INFO.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_PM_ODS_INFO.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_PM_ODS_INFO.UPDT_DTIME                                    IS '수정일시';


 /* TB_PM_ORD_TABLE */

DROP TABLE TB_PM_ORD_TABLE PURGE;

CREATE TABLE TB_PM_ORD_TABLE
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, TABLE_GRP_ID                   VARCHAR2(1)                                  NOT NULL       
, TABLE_ID                       VARCHAR2(3)                                  NOT NULL       
, TABLE_NM                       VARCHAR2(100)                                NOT NULL       
, SIZE_W                         NUMBER(3,0)                                  NOT NULL       
, SIZE_H                         NUMBER(3,0)                                  NOT NULL       
, LOC_X                          NUMBER(3,0)                                  NOT NULL       
, LOC_Y                          NUMBER(3,0)                                  NOT NULL       
, COLOR_CD                       VARCHAR2(9)                                  NOT NULL       
, SHAPE_CD                       VARCHAR2(4)                                  NOT NULL       
, STYLE_CD                       VARCHAR2(4)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_ORD_TABLE PRIMARY KEY (
    BRND_CD, STORE_CD, TABLE_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_ORD_TABLE                                              IS '주문테이블';
COMMENT ON COLUMN TB_PM_ORD_TABLE.BRND_CD                                      IS '브랜드 코드 '01'고정';
COMMENT ON COLUMN TB_PM_ORD_TABLE.STORE_CD                                     IS '점포 코드';
COMMENT ON COLUMN TB_PM_ORD_TABLE.TABLE_GRP_ID                                 IS '테이블그룹 코드';
COMMENT ON COLUMN TB_PM_ORD_TABLE.TABLE_ID                                     IS '테이블ID';
COMMENT ON COLUMN TB_PM_ORD_TABLE.TABLE_NM                                     IS '테이블명';
COMMENT ON COLUMN TB_PM_ORD_TABLE.SIZE_W                                       IS '테이블 넓이';
COMMENT ON COLUMN TB_PM_ORD_TABLE.SIZE_H                                       IS '테이블 높이';
COMMENT ON COLUMN TB_PM_ORD_TABLE.LOC_X                                        IS '테이블 X좌표';
COMMENT ON COLUMN TB_PM_ORD_TABLE.LOC_Y                                        IS '테이블 Y좌표';
COMMENT ON COLUMN TB_PM_ORD_TABLE.COLOR_CD                                     IS '테이블색상코드 (EX:#FFFFFF)';
COMMENT ON COLUMN TB_PM_ORD_TABLE.SHAPE_CD                                     IS '테이블모양';
COMMENT ON COLUMN TB_PM_ORD_TABLE.STYLE_CD                                     IS '테이블스타일';
COMMENT ON COLUMN TB_PM_ORD_TABLE.USE_YN                                       IS '사용여부 기본값:'Y'';
COMMENT ON COLUMN TB_PM_ORD_TABLE.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_PM_ORD_TABLE.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_PM_ORD_TABLE.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_PM_ORD_TABLE.UPDT_DTIME                                   IS '수정일시';
COMMENT ON COLUMN TB_PM_ORD_TABLE.POS_UPDT_TSP                                 IS 'POS수정타임스템프';


 /* TB_PM_ORD_TABLE_GRP */

DROP TABLE TB_PM_ORD_TABLE_GRP PURGE;

CREATE TABLE TB_PM_ORD_TABLE_GRP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, TABLE_GRP_ID                   VARCHAR2(2)                                  NOT NULL       
, TABLE_GRP_NM                   VARCHAR2(100)                                NOT NULL       
, DISPLAY_NO                     NUMBER(2,0)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_ORD_TABLE_GRP PRIMARY KEY (
    BRND_CD, STORE_CD, TABLE_GRP_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_ORD_TABLE_GRP                                          IS '주문테이블그룹';
COMMENT ON COLUMN TB_PM_ORD_TABLE_GRP.BRND_CD                                  IS '브랜드 코드 '01'고정';
COMMENT ON COLUMN TB_PM_ORD_TABLE_GRP.STORE_CD                                 IS '점포 코드';
COMMENT ON COLUMN TB_PM_ORD_TABLE_GRP.TABLE_GRP_ID                             IS '테이블그룹 코드';
COMMENT ON COLUMN TB_PM_ORD_TABLE_GRP.TABLE_GRP_NM                             IS '테이블그룹 명';
COMMENT ON COLUMN TB_PM_ORD_TABLE_GRP.DISPLAY_NO                               IS '테이블그룹 표시 순서';
COMMENT ON COLUMN TB_PM_ORD_TABLE_GRP.USE_YN                                   IS '사용여부 기본값:'Y'';
COMMENT ON COLUMN TB_PM_ORD_TABLE_GRP.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN TB_PM_ORD_TABLE_GRP.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN TB_PM_ORD_TABLE_GRP.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN TB_PM_ORD_TABLE_GRP.UPDT_DTIME                               IS '수정일시';
COMMENT ON COLUMN TB_PM_ORD_TABLE_GRP.POS_UPDT_TSP                             IS 'POS수정타임스템프';


 /* TB_PM_POSEMMSG */

DROP TABLE TB_PM_POSEMMSG PURGE;

CREATE TABLE TB_PM_POSEMMSG
(
  SEQ                            NUMBER(10,0)                                 NOT NULL       
, BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, TITLE                          VARCHAR2(100)                                NOT NULL       
, MSG_DESC                       VARCHAR2(4000)                               NULL           
, INS_NM                         VARCHAR2(20)                                 NULL           
, INS_DEPT_NM                    VARCHAR2(50)                                 NULL           
, POPUP_FG                       VARCHAR2(1)    DEFAULT '0'                   NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_POSEMMSG PRIMARY KEY (
    SEQ
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_POSEMMSG                                               IS '포스긴급메세지';
COMMENT ON COLUMN TB_PM_POSEMMSG.SEQ                                           IS '순번';
COMMENT ON COLUMN TB_PM_POSEMMSG.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_POSEMMSG.TITLE                                         IS '제목';
COMMENT ON COLUMN TB_PM_POSEMMSG.MSG_DESC                                      IS '내용';
COMMENT ON COLUMN TB_PM_POSEMMSG.INS_NM                                        IS '입력자명';
COMMENT ON COLUMN TB_PM_POSEMMSG.INS_DEPT_NM                                   IS '입력자소속점포명';
COMMENT ON COLUMN TB_PM_POSEMMSG.POPUP_FG                                      IS '공지구분(PO103)';
COMMENT ON COLUMN TB_PM_POSEMMSG.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_PM_POSEMMSG.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_PM_POSEMMSG.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_PM_POSEMMSG.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_PM_POSEMMSG.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_PM_POSEMSTORE */

DROP TABLE TB_PM_POSEMSTORE PURGE;

CREATE TABLE TB_PM_POSEMSTORE
(
  SEQ                            NUMBER(10,0)                                 NOT NULL       
, BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, CONFIRM_YN                     VARCHAR2(1)                                  NOT NULL       
, YMD_CONFIRM                    VARCHAR2(14)                                 NULL           
, EMP_CONFIRM                    VARCHAR2(20)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_POSEMSTORE PRIMARY KEY (
    SEQ, BRND_CD, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_POSEMSTORE                                             IS '포스긴급메세지점포확인';
COMMENT ON COLUMN TB_PM_POSEMSTORE.SEQ                                         IS '순번';
COMMENT ON COLUMN TB_PM_POSEMSTORE.BRND_CD                                     IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_POSEMSTORE.STORE_CD                                    IS '점포 코드';
COMMENT ON COLUMN TB_PM_POSEMSTORE.USE_YN                                      IS '사용 여부';
COMMENT ON COLUMN TB_PM_POSEMSTORE.CONFIRM_YN                                  IS '확인 여부';
COMMENT ON COLUMN TB_PM_POSEMSTORE.YMD_CONFIRM                                 IS '확인일';
COMMENT ON COLUMN TB_PM_POSEMSTORE.EMP_CONFIRM                                 IS '확인자';
COMMENT ON COLUMN TB_PM_POSEMSTORE.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_PM_POSEMSTORE.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_PM_POSEMSTORE.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_PM_POSEMSTORE.UPDT_DTIME                                  IS '수정일시';
COMMENT ON COLUMN TB_PM_POSEMSTORE.POS_UPDT_TSP                                IS 'POS수정타임스템프';


 /* TB_PM_POSENVMST */

DROP TABLE TB_PM_POSENVMST PURGE;

CREATE TABLE TB_PM_POSENVMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, ENV_CD                         VARCHAR2(100)                                NOT NULL       
, POS_NO                         VARCHAR2(4)                                  NOT NULL       
, ENV_VAL                        VARCHAR2(30)                                 NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_POSENVMST PRIMARY KEY (
    BRND_CD, STORE_CD, ENV_CD, POS_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_POSENVMST                                              IS '포스별환경정보';
COMMENT ON COLUMN TB_PM_POSENVMST.BRND_CD                                      IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_POSENVMST.STORE_CD                                     IS '점포 코드';
COMMENT ON COLUMN TB_PM_POSENVMST.ENV_CD                                       IS '환경변수코드';
COMMENT ON COLUMN TB_PM_POSENVMST.POS_NO                                       IS '포스 번호';
COMMENT ON COLUMN TB_PM_POSENVMST.ENV_VAL                                      IS '환경속성값';
COMMENT ON COLUMN TB_PM_POSENVMST.USE_YN                                       IS '사용 여부';
COMMENT ON COLUMN TB_PM_POSENVMST.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_PM_POSENVMST.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_PM_POSENVMST.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_PM_POSENVMST.UPDT_DTIME                                   IS '수정일시';
COMMENT ON COLUMN TB_PM_POSENVMST.POS_UPDT_TSP                                 IS 'POS수정타임스템프';


 /* TB_PM_POS_MST */

DROP TABLE TB_PM_POS_MST PURGE;

CREATE TABLE TB_PM_POS_MST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, POS_TYPE_CD                    VARCHAR2(10)                                 NOT NULL       
, POS_IP                         VARCHAR2(15)                                 NOT NULL       
, POS_MNG_NM                     VARCHAR2(300)                                NULL           
, REMARK                         VARCHAR2(300)                                NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_POS_MST PRIMARY KEY (
    BRND_CD, STORE_CD, POS_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_POS_MST                                                IS '점포별POS IP마스터';
COMMENT ON COLUMN TB_PM_POS_MST.BRND_CD                                        IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_POS_MST.STORE_CD                                       IS '점포 코드';
COMMENT ON COLUMN TB_PM_POS_MST.POS_NO                                         IS '포스 번호';
COMMENT ON COLUMN TB_PM_POS_MST.POS_TYPE_CD                                    IS 'POS유형코드';
COMMENT ON COLUMN TB_PM_POS_MST.POS_IP                                         IS 'POS IP';
COMMENT ON COLUMN TB_PM_POS_MST.POS_MNG_NM                                     IS 'POS 관리명';
COMMENT ON COLUMN TB_PM_POS_MST.REMARK                                         IS '비고';
COMMENT ON COLUMN TB_PM_POS_MST.USE_YN                                         IS '사용 여부';
COMMENT ON COLUMN TB_PM_POS_MST.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_PM_POS_MST.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_PM_POS_MST.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_PM_POS_MST.UPDT_DTIME                                     IS '수정일시';
COMMENT ON COLUMN TB_PM_POS_MST.POS_UPDT_TSP                                   IS 'POS수정타임스템프';


 /* TB_PM_POS_ODS_CTNT */

DROP TABLE TB_PM_POS_ODS_CTNT PURGE;

CREATE TABLE TB_PM_POS_ODS_CTNT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, RECEIPT_NO                     VARCHAR2(5)                                  NOT NULL       
, CORNER_NO                      VARCHAR2(2)                                  NOT NULL       
, STATUS                         VARCHAR2(3)                                  NOT NULL       
, MENU_CNT                       NUMBER(13,0)                                 NOT NULL       
, ORDER_DTIME                    VARCHAR2(14)                                 NULL           
, BEGIN_DTIME                    VARCHAR2(14)                                 NULL           
, OFFER_DTIME                    VARCHAR2(14)                                 NULL           
, DELETE_DTIME                   VARCHAR2(14)                                 NULL           
, CALL_DTIME                     VARCHAR2(14)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_PM_POS_ODS_CTNT PRIMARY KEY (
    BRND_CD, SALE_DATE, STORE_CD, POS_NO, RECEIPT_NO, CORNER_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_POS_ODS_CTNT                                           IS 'POS_ODS_내역';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.BRND_CD                                   IS '브랜드코드';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.SALE_DATE                                 IS '영업일자';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.STORE_CD                                  IS '점포코드';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.POS_NO                                    IS '포스번호';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.RECEIPT_NO                                IS '영수증번호';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.CORNER_NO                                 IS '코너 번호';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.STATUS                                    IS '상태';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.MENU_CNT                                  IS '메뉴건수';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.ORDER_DTIME                               IS '주문시간';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.BEGIN_DTIME                               IS '시작시간';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.OFFER_DTIME                               IS '제공시간';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.DELETE_DTIME                              IS '삭제시간';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.CALL_DTIME                                IS '호출시간';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_PM_POS_ODS_CTNT.UPDT_DTIME                                IS '수정일시';


 /* TB_PM_STOREENVMST */

DROP TABLE TB_PM_STOREENVMST PURGE;

CREATE TABLE TB_PM_STOREENVMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, ENV_CD                         VARCHAR2(100)                                NOT NULL       
, ENV_VAL                        VARCHAR2(30)                                 NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_STOREENVMST PRIMARY KEY (
    BRND_CD, STORE_CD, ENV_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_STOREENVMST                                            IS '점포별환경정보';
COMMENT ON COLUMN TB_PM_STOREENVMST.BRND_CD                                    IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_STOREENVMST.STORE_CD                                   IS '점포 코드';
COMMENT ON COLUMN TB_PM_STOREENVMST.ENV_CD                                     IS '환경변수코드';
COMMENT ON COLUMN TB_PM_STOREENVMST.ENV_VAL                                    IS '환경속성값';
COMMENT ON COLUMN TB_PM_STOREENVMST.USE_YN                                     IS '사용 여부';
COMMENT ON COLUMN TB_PM_STOREENVMST.REGI_ID                                    IS '등록자ID';
COMMENT ON COLUMN TB_PM_STOREENVMST.REGI_DTIME                                 IS '등록일시';
COMMENT ON COLUMN TB_PM_STOREENVMST.UPDT_ID                                    IS '수정자ID';
COMMENT ON COLUMN TB_PM_STOREENVMST.UPDT_DTIME                                 IS '수정일시';
COMMENT ON COLUMN TB_PM_STOREENVMST.POS_UPDT_TSP                               IS 'POS수정타임스템프';


 /* TB_PM_STOREFUNCKEYMST */

DROP TABLE TB_PM_STOREFUNCKEYMST PURGE;

CREATE TABLE TB_PM_STOREFUNCKEYMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, UP_FUNCTION_CD                 VARCHAR2(4)                                  NOT NULL       
, FUNCTION_KEY                   VARCHAR2(4)                                  NOT NULL       
, FUNCTION_CD                    VARCHAR2(4)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_STOREFUNCKEYMST PRIMARY KEY (
    BRND_CD, STORE_CD, UP_FUNCTION_CD, FUNCTION_KEY
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_STOREFUNCKEYMST                                        IS '점포별기능키';
COMMENT ON COLUMN TB_PM_STOREFUNCKEYMST.BRND_CD                                IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_STOREFUNCKEYMST.STORE_CD                               IS '점포 코드';
COMMENT ON COLUMN TB_PM_STOREFUNCKEYMST.UP_FUNCTION_CD                         IS '상위기능코드';
COMMENT ON COLUMN TB_PM_STOREFUNCKEYMST.FUNCTION_KEY                           IS '기능키위치코드';
COMMENT ON COLUMN TB_PM_STOREFUNCKEYMST.FUNCTION_CD                            IS '기능키코드';
COMMENT ON COLUMN TB_PM_STOREFUNCKEYMST.USE_YN                                 IS '사용 여부';
COMMENT ON COLUMN TB_PM_STOREFUNCKEYMST.REGI_ID                                IS '등록자ID';
COMMENT ON COLUMN TB_PM_STOREFUNCKEYMST.REGI_DTIME                             IS '등록일시';
COMMENT ON COLUMN TB_PM_STOREFUNCKEYMST.UPDT_ID                                IS '수정자ID';
COMMENT ON COLUMN TB_PM_STOREFUNCKEYMST.UPDT_DTIME                             IS '수정일시';
COMMENT ON COLUMN TB_PM_STOREFUNCKEYMST.POS_UPDT_TSP                           IS 'POS수정타임스템프';


 /* TB_PM_STORE_ADVMST */

DROP TABLE TB_PM_STORE_ADVMST PURGE;

CREATE TABLE TB_PM_STORE_ADVMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, ADV_CD                         VARCHAR2(10)                                 NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_STORE_ADVMST PRIMARY KEY (
    BRND_CD, ADV_CD, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_STORE_ADVMST                                           IS '점포별광고마스터';
COMMENT ON COLUMN TB_PM_STORE_ADVMST.BRND_CD                                   IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_STORE_ADVMST.ADV_CD                                    IS '광고코드';
COMMENT ON COLUMN TB_PM_STORE_ADVMST.STORE_CD                                  IS '점포 코드';
COMMENT ON COLUMN TB_PM_STORE_ADVMST.USE_YN                                    IS '사용 여부';
COMMENT ON COLUMN TB_PM_STORE_ADVMST.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_PM_STORE_ADVMST.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_PM_STORE_ADVMST.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_PM_STORE_ADVMST.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_PM_STORE_ADVMST.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_PM_STORE_ETC_STTLMTHD */

DROP TABLE TB_PM_STORE_ETC_STTLMTHD PURGE;

CREATE TABLE TB_PM_STORE_ETC_STTLMTHD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, FUNCTION_CD                    VARCHAR2(4)                                  NOT NULL       
, STTL_MTHD_CD                   VARCHAR2(2)                                  NOT NULL       
, DETAIL_STTL_CD                 VARCHAR2(5)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_STORE_ETC_STTLMTHD PRIMARY KEY (
    BRND_CD, FUNCTION_CD, STTL_MTHD_CD, DETAIL_STTL_CD, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_STORE_ETC_STTLMTHD                                     IS '점포별기타결제정보';
COMMENT ON COLUMN TB_PM_STORE_ETC_STTLMTHD.BRND_CD                             IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_STORE_ETC_STTLMTHD.FUNCTION_CD                         IS '기능키코드';
COMMENT ON COLUMN TB_PM_STORE_ETC_STTLMTHD.STTL_MTHD_CD                        IS '결제수단코드';
COMMENT ON COLUMN TB_PM_STORE_ETC_STTLMTHD.DETAIL_STTL_CD                      IS '상세결제코드';
COMMENT ON COLUMN TB_PM_STORE_ETC_STTLMTHD.STORE_CD                            IS '점포코드';
COMMENT ON COLUMN TB_PM_STORE_ETC_STTLMTHD.USE_YN                              IS '사용여부';
COMMENT ON COLUMN TB_PM_STORE_ETC_STTLMTHD.REGI_ID                             IS '등록자ID';
COMMENT ON COLUMN TB_PM_STORE_ETC_STTLMTHD.REGI_DTIME                          IS '등록일시';
COMMENT ON COLUMN TB_PM_STORE_ETC_STTLMTHD.UPDT_ID                             IS '수정자ID';
COMMENT ON COLUMN TB_PM_STORE_ETC_STTLMTHD.UPDT_DTIME                          IS '수정일시';
COMMENT ON COLUMN TB_PM_STORE_ETC_STTLMTHD.POS_UPDT_TSP                        IS 'POS수정타임스템프';


 /* TB_PM_STORE_MENUKEYMST */

DROP TABLE TB_PM_STORE_MENUKEYMST PURGE;

CREATE TABLE TB_PM_STORE_MENUKEYMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, GRT_DISPLAY_NO                 VARCHAR2(3)                                  NOT NULL       
, MID_DISPLAY_NO                 VARCHAR2(3)                                  NOT NULL       
, MENU_DISPLAY_NO                VARCHAR2(3)                                  NOT NULL       
, MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, DEF_COLOR_CD                   VARCHAR2(10)                                 NOT NULL       
, SCO_USE_YN                     VARCHAR2(1)                                  NOT NULL       
, KIOSK_USE_YN                   VARCHAR2(1)                                  NOT NULL       
, SMO_USE_YN                     VARCHAR2(1)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_STORE_MENUKEYMST PRIMARY KEY (
    BRND_CD, STORE_CD, GRT_DISPLAY_NO, MID_DISPLAY_NO, MENU_DISPLAY_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_STORE_MENUKEYMST                                       IS '점포메뉴키';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.BRND_CD                               IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.STORE_CD                              IS '점포 코드';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.GRT_DISPLAY_NO                        IS '대분류 표시순서';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.MID_DISPLAY_NO                        IS '중분류 표시순서';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.MENU_DISPLAY_NO                       IS '메뉴 표시순서';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.MENU_CD                               IS '메뉴코드';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.DEF_COLOR_CD                          IS '기본색상코드';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.SCO_USE_YN                            IS 'SCO사용여부';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.KIOSK_USE_YN                          IS 'KIOSK사용여부';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.SMO_USE_YN                            IS '투썸오더사용여부';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.USE_YN                                IS '사용 여부';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.REGI_ID                               IS '등록자ID';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.REGI_DTIME                            IS '등록일시';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.UPDT_ID                               IS '수정자ID';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.UPDT_DTIME                            IS '수정일시';
COMMENT ON COLUMN TB_PM_STORE_MENUKEYMST.POS_UPDT_TSP                          IS 'POS수정타임스템프';


 /* TB_PM_STORE_MLCLASSMST */

DROP TABLE TB_PM_STORE_MLCLASSMST PURGE;

CREATE TABLE TB_PM_STORE_MLCLASSMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, GRT_DISPLAY_NO                 VARCHAR2(3)                                  NOT NULL       
, GRT_CD                         VARCHAR2(3)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_STORE_MLCLASSMST PRIMARY KEY (
    BRND_CD, STORE_CD, GRT_DISPLAY_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_STORE_MLCLASSMST                                       IS '점포메뉴그룹대분류';
COMMENT ON COLUMN TB_PM_STORE_MLCLASSMST.BRND_CD                               IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_STORE_MLCLASSMST.STORE_CD                              IS '점포 코드';
COMMENT ON COLUMN TB_PM_STORE_MLCLASSMST.GRT_DISPLAY_NO                        IS '대분류 표시순서';
COMMENT ON COLUMN TB_PM_STORE_MLCLASSMST.GRT_CD                                IS '대분류코드';
COMMENT ON COLUMN TB_PM_STORE_MLCLASSMST.USE_YN                                IS '사용 여부';
COMMENT ON COLUMN TB_PM_STORE_MLCLASSMST.REGI_ID                               IS '등록자ID';
COMMENT ON COLUMN TB_PM_STORE_MLCLASSMST.REGI_DTIME                            IS '등록일시';
COMMENT ON COLUMN TB_PM_STORE_MLCLASSMST.UPDT_ID                               IS '수정자ID';
COMMENT ON COLUMN TB_PM_STORE_MLCLASSMST.UPDT_DTIME                            IS '수정일시';
COMMENT ON COLUMN TB_PM_STORE_MLCLASSMST.POS_UPDT_TSP                          IS 'POS수정타임스템프';


 /* TB_PM_STORE_MMCLASSMST */

DROP TABLE TB_PM_STORE_MMCLASSMST PURGE;

CREATE TABLE TB_PM_STORE_MMCLASSMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, GRT_DISPLAY_NO                 VARCHAR2(3)                                  NOT NULL       
, MID_DISPLAY_NO                 VARCHAR2(3)                                  NOT NULL       
, MID_CD                         VARCHAR2(6)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_STORE_MMCLASSMST PRIMARY KEY (
    BRND_CD, STORE_CD, GRT_DISPLAY_NO, MID_DISPLAY_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_STORE_MMCLASSMST                                       IS '점포메뉴그룹중분류';
COMMENT ON COLUMN TB_PM_STORE_MMCLASSMST.BRND_CD                               IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_STORE_MMCLASSMST.STORE_CD                              IS '점포 코드';
COMMENT ON COLUMN TB_PM_STORE_MMCLASSMST.GRT_DISPLAY_NO                        IS '대분류 표시순서';
COMMENT ON COLUMN TB_PM_STORE_MMCLASSMST.MID_DISPLAY_NO                        IS '중분류 표시순서';
COMMENT ON COLUMN TB_PM_STORE_MMCLASSMST.MID_CD                                IS '중분류코드';
COMMENT ON COLUMN TB_PM_STORE_MMCLASSMST.USE_YN                                IS '사용 여부';
COMMENT ON COLUMN TB_PM_STORE_MMCLASSMST.REGI_ID                               IS '등록자ID';
COMMENT ON COLUMN TB_PM_STORE_MMCLASSMST.REGI_DTIME                            IS '등록일시';
COMMENT ON COLUMN TB_PM_STORE_MMCLASSMST.UPDT_ID                               IS '수정자ID';
COMMENT ON COLUMN TB_PM_STORE_MMCLASSMST.UPDT_DTIME                            IS '수정일시';
COMMENT ON COLUMN TB_PM_STORE_MMCLASSMST.POS_UPDT_TSP                          IS 'POS수정타임스템프';


 /* TB_PM_STORE_RCP */

DROP TABLE TB_PM_STORE_RCP PURGE;

CREATE TABLE TB_PM_STORE_RCP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, VANID                          VARCHAR2(10)                                 NULL           
, RECEIPT_ADDR                   VARCHAR2(200)                                NULL           
, RECEIPT_HWORD1                 VARCHAR2(60)                                 NULL           
, RECEIPT_HWORD2                 VARCHAR2(60)                                 NULL           
, RECEIPT_LWORD1                 VARCHAR2(60)                                 NULL           
, RECEIPT_LWORD2                 VARCHAR2(60)                                 NULL           
, APPL_YN                        VARCHAR2(1)                                  NOT NULL       
, BZOP_RGS_NO                    VARCHAR2(10)                                 NULL           
, RCP_STORE_NM                   VARCHAR2(100)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_STORE_RCP PRIMARY KEY (
    BRND_CD, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_STORE_RCP                                              IS '점포별영수증표기';
COMMENT ON COLUMN TB_PM_STORE_RCP.BRND_CD                                      IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_STORE_RCP.STORE_CD                                     IS '점포 코드';
COMMENT ON COLUMN TB_PM_STORE_RCP.VANID                                        IS '신용단말기번호';
COMMENT ON COLUMN TB_PM_STORE_RCP.RECEIPT_ADDR                                 IS '영수증 명판 주소';
COMMENT ON COLUMN TB_PM_STORE_RCP.RECEIPT_HWORD1                               IS '영수증 머릿말1';
COMMENT ON COLUMN TB_PM_STORE_RCP.RECEIPT_HWORD2                               IS '영수증 머릿말2';
COMMENT ON COLUMN TB_PM_STORE_RCP.RECEIPT_LWORD1                               IS '영수증 꼬리말1';
COMMENT ON COLUMN TB_PM_STORE_RCP.RECEIPT_LWORD2                               IS '영수증 꼬리말2';
COMMENT ON COLUMN TB_PM_STORE_RCP.APPL_YN                                      IS '적용여부';
COMMENT ON COLUMN TB_PM_STORE_RCP.BZOP_RGS_NO                                  IS 'POS영수증 표시용사업자번호';
COMMENT ON COLUMN TB_PM_STORE_RCP.RCP_STORE_NM                                 IS '영수증표기 점포명';
COMMENT ON COLUMN TB_PM_STORE_RCP.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_PM_STORE_RCP.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_PM_STORE_RCP.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_PM_STORE_RCP.UPDT_DTIME                                   IS '수정일시';
COMMENT ON COLUMN TB_PM_STORE_RCP.POS_UPDT_TSP                                 IS 'POS수정타임스템프';


 /* TB_PM_STORE_TERMINAL */

DROP TABLE TB_PM_STORE_TERMINAL PURGE;

CREATE TABLE TB_PM_STORE_TERMINAL
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, TERMINAL                       VARCHAR2(10)                                 NOT NULL       
, RMK                            VARCHAR2(200)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_PM_STORE_TERMINAL PRIMARY KEY (
    BRND_CD, STORE_CD, TERMINAL
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_STORE_TERMINAL                                         IS '점포단말기정보';
COMMENT ON COLUMN TB_PM_STORE_TERMINAL.BRND_CD                                 IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_STORE_TERMINAL.STORE_CD                                IS '점포코드';
COMMENT ON COLUMN TB_PM_STORE_TERMINAL.TERMINAL                                IS '단말기번호';
COMMENT ON COLUMN TB_PM_STORE_TERMINAL.RMK                                     IS '비고';
COMMENT ON COLUMN TB_PM_STORE_TERMINAL.REGI_ID                                 IS '등록자ID';
COMMENT ON COLUMN TB_PM_STORE_TERMINAL.REGI_DTIME                              IS '등록일시';
COMMENT ON COLUMN TB_PM_STORE_TERMINAL.UPDT_ID                                 IS '수정자ID';
COMMENT ON COLUMN TB_PM_STORE_TERMINAL.UPDT_DTIME                              IS '수정일시';


 /* TB_PM_STORE_VER */

DROP TABLE TB_PM_STORE_VER PURGE;

CREATE TABLE TB_PM_STORE_VER
(
  VER_SEQ                        VARCHAR2(20)                                 NOT NULL       
, BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, RSVN_DT                        VARCHAR2(8)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, CONFIRM_FG                     VARCHAR2(1)                                  NOT NULL       
, CONFIRM_ID                     VARCHAR2(20)                                 NULL           
, CONFIRM_DTIME                  DATE                                         NULL           
, POS_FRST_APPL_DTIME            DATE                                         NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_STORE_VER PRIMARY KEY (
    VER_SEQ, BRND_CD, STORE_CD, POS_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_STORE_VER                                              IS '점포별버전마스터';
COMMENT ON COLUMN TB_PM_STORE_VER.VER_SEQ                                      IS '버전 SEQ';
COMMENT ON COLUMN TB_PM_STORE_VER.BRND_CD                                      IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_STORE_VER.STORE_CD                                     IS '점포 코드';
COMMENT ON COLUMN TB_PM_STORE_VER.POS_NO                                       IS 'POS 번호';
COMMENT ON COLUMN TB_PM_STORE_VER.RSVN_DT                                      IS '예약일자';
COMMENT ON COLUMN TB_PM_STORE_VER.USE_YN                                       IS '사용여부';
COMMENT ON COLUMN TB_PM_STORE_VER.CONFIRM_FG                                   IS '확정 구분';
COMMENT ON COLUMN TB_PM_STORE_VER.CONFIRM_ID                                   IS '확정자ID';
COMMENT ON COLUMN TB_PM_STORE_VER.CONFIRM_DTIME                                IS '확정 일시';
COMMENT ON COLUMN TB_PM_STORE_VER.POS_FRST_APPL_DTIME                          IS 'POS 최초 적용일시';
COMMENT ON COLUMN TB_PM_STORE_VER.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_PM_STORE_VER.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_PM_STORE_VER.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_PM_STORE_VER.UPDT_DTIME                                   IS '수정일시';
COMMENT ON COLUMN TB_PM_STORE_VER.POS_UPDT_TSP                                 IS 'POS수정타임스템프';


 /* TB_PM_STORE_VER_INFO */

DROP TABLE TB_PM_STORE_VER_INFO PURGE;

CREATE TABLE TB_PM_STORE_VER_INFO
(
  VER_SEQ                        VARCHAR2(20)                                 NOT NULL       
, BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_PM_STORE_VER_INFO PRIMARY KEY (
    VER_SEQ, BRND_CD, STORE_CD, POS_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_STORE_VER_INFO                                         IS '점포별버전정보';
COMMENT ON COLUMN TB_PM_STORE_VER_INFO.VER_SEQ                                 IS '버전 SEQ';
COMMENT ON COLUMN TB_PM_STORE_VER_INFO.BRND_CD                                 IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_STORE_VER_INFO.STORE_CD                                IS '점포 코드';
COMMENT ON COLUMN TB_PM_STORE_VER_INFO.POS_NO                                  IS 'POS 번호';
COMMENT ON COLUMN TB_PM_STORE_VER_INFO.REGI_ID                                 IS '등록자ID';
COMMENT ON COLUMN TB_PM_STORE_VER_INFO.REGI_DTIME                              IS '등록일시';
COMMENT ON COLUMN TB_PM_STORE_VER_INFO.UPDT_ID                                 IS '수정자ID';
COMMENT ON COLUMN TB_PM_STORE_VER_INFO.UPDT_DTIME                              IS '수정일시';


 /* TB_PM_VANIPMST */

DROP TABLE TB_PM_VANIPMST PURGE;

CREATE TABLE TB_PM_VANIPMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, VAN_CD                         VARCHAR2(2)                                  NOT NULL       
, VAN_IP                         VARCHAR2(20)                                 NOT NULL       
, VAN_PORT                       VARCHAR2(5)                                  NOT NULL       
, VAN_NAME                       VARCHAR2(30)                                 NOT NULL       
, VAN_URL                        VARCHAR2(500)                                NULL           
, VAN_TXT                        VARCHAR2(4)                                  NULL           
, VAN_FG                         VARCHAR2(1)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_VANIPMST PRIMARY KEY (
    BRND_CD, VAN_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_VANIPMST                                               IS 'VAN사IP관리정보';
COMMENT ON COLUMN TB_PM_VANIPMST.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_VANIPMST.VAN_CD                                        IS 'VAN사 코드';
COMMENT ON COLUMN TB_PM_VANIPMST.VAN_IP                                        IS 'VAN사 IP';
COMMENT ON COLUMN TB_PM_VANIPMST.VAN_PORT                                      IS 'VAN사 PORT';
COMMENT ON COLUMN TB_PM_VANIPMST.VAN_NAME                                      IS 'VAN사 명';
COMMENT ON COLUMN TB_PM_VANIPMST.VAN_URL                                       IS 'VAN사 URL';
COMMENT ON COLUMN TB_PM_VANIPMST.VAN_TXT                                       IS 'VAN사 텍스트';
COMMENT ON COLUMN TB_PM_VANIPMST.VAN_FG                                        IS 'VAN사 구분';
COMMENT ON COLUMN TB_PM_VANIPMST.USE_YN                                        IS '사용 여부';
COMMENT ON COLUMN TB_PM_VANIPMST.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_PM_VANIPMST.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_PM_VANIPMST.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_PM_VANIPMST.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_PM_VANIPMST.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_PM_VANMST */

DROP TABLE TB_PM_VANMST PURGE;

CREATE TABLE TB_PM_VANMST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, VAN_CD                         VARCHAR2(2)                                  NOT NULL       
, CRDTRM                         VARCHAR2(20)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_VANMST PRIMARY KEY (
    BRND_CD, STORE_CD, VAN_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_VANMST                                                 IS 'VAN사정보';
COMMENT ON COLUMN TB_PM_VANMST.BRND_CD                                         IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_VANMST.STORE_CD                                        IS '점포 코드';
COMMENT ON COLUMN TB_PM_VANMST.VAN_CD                                          IS 'VAN사 코드';
COMMENT ON COLUMN TB_PM_VANMST.CRDTRM                                          IS '카드단말기번호';
COMMENT ON COLUMN TB_PM_VANMST.REGI_ID                                         IS '등록자ID';
COMMENT ON COLUMN TB_PM_VANMST.REGI_DTIME                                      IS '등록일시';
COMMENT ON COLUMN TB_PM_VANMST.UPDT_ID                                         IS '수정자ID';
COMMENT ON COLUMN TB_PM_VANMST.UPDT_DTIME                                      IS '수정일시';
COMMENT ON COLUMN TB_PM_VANMST.POS_UPDT_TSP                                    IS 'POS수정타임스템프';


 /* TB_PM_VAN_AGENT_MST */

DROP TABLE TB_PM_VAN_AGENT_MST PURGE;

CREATE TABLE TB_PM_VAN_AGENT_MST
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, TERMINAL_SEQ                   VARCHAR2(20)                                 NULL           
, TERMINAL_PWD                   VARCHAR2(20)                                 NULL           
, RMK                            VARCHAR2(200)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_PM_VAN_AGENT_MST PRIMARY KEY (
    BRND_CD, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_VAN_AGENT_MST                                          IS 'VAN에이전트단말마스터';
COMMENT ON COLUMN TB_PM_VAN_AGENT_MST.BRND_CD                                  IS '브랜드 코드';
COMMENT ON COLUMN TB_PM_VAN_AGENT_MST.STORE_CD                                 IS '점포 코드';
COMMENT ON COLUMN TB_PM_VAN_AGENT_MST.TERMINAL_SEQ                             IS '단말기일련번호';
COMMENT ON COLUMN TB_PM_VAN_AGENT_MST.TERMINAL_PWD                             IS '단말기비밀번호';
COMMENT ON COLUMN TB_PM_VAN_AGENT_MST.RMK                                      IS '비고';
COMMENT ON COLUMN TB_PM_VAN_AGENT_MST.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN TB_PM_VAN_AGENT_MST.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN TB_PM_VAN_AGENT_MST.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN TB_PM_VAN_AGENT_MST.UPDT_DTIME                               IS '수정일시';


 /* TB_PM_VER */

DROP TABLE TB_PM_VER PURGE;

CREATE TABLE TB_PM_VER
(
  VER_SEQ                        VARCHAR2(20)                                 NOT NULL       
, CHNL_DIV_CD                    VARCHAR2(2)                                  NOT NULL       
, VER_DATE                       VARCHAR2(8)                                  NOT NULL       
, VER_NM                         VARCHAR2(50)                                 NOT NULL       
, ATTC_FILE_GRP_NO               NUMBER(10,0)                                 NOT NULL       
, VER_DIV_CD                     VARCHAR2(1)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, STORE_FLAG                     VARCHAR2(1)                                  NOT NULL       
, APPL_ST_DT                     VARCHAR2(8)                                  NOT NULL       
, APPL_ST_TIME                   VARCHAR2(4)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_PM_VER PRIMARY KEY (
    VER_SEQ
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_PM_VER                                                    IS '버전마스터';
COMMENT ON COLUMN TB_PM_VER.VER_SEQ                                            IS '버전 SEQ';
COMMENT ON COLUMN TB_PM_VER.CHNL_DIV_CD                                        IS '채널구분코드';
COMMENT ON COLUMN TB_PM_VER.VER_DATE                                           IS '버전 등록일';
COMMENT ON COLUMN TB_PM_VER.VER_NM                                             IS '버전명';
COMMENT ON COLUMN TB_PM_VER.ATTC_FILE_GRP_NO                                   IS '첨부 파일 그룹 번호';
COMMENT ON COLUMN TB_PM_VER.VER_DIV_CD                                         IS '버전구분코드';
COMMENT ON COLUMN TB_PM_VER.USE_YN                                             IS '사용여부';
COMMENT ON COLUMN TB_PM_VER.STORE_FLAG                                         IS '점포구분';
COMMENT ON COLUMN TB_PM_VER.APPL_ST_DT                                         IS '적용시작일자';
COMMENT ON COLUMN TB_PM_VER.APPL_ST_TIME                                       IS '적용시작시간';
COMMENT ON COLUMN TB_PM_VER.REGI_ID                                            IS '등록자ID';
COMMENT ON COLUMN TB_PM_VER.REGI_DTIME                                         IS '등록일시';
COMMENT ON COLUMN TB_PM_VER.UPDT_ID                                            IS '수정자ID';
COMMENT ON COLUMN TB_PM_VER.UPDT_DTIME                                         IS '수정일시';
COMMENT ON COLUMN TB_PM_VER.POS_UPDT_TSP                                       IS 'POS수정타임스템프';


 /* TB_SA_APPROVAL */

DROP TABLE TB_SA_APPROVAL PURGE;

CREATE TABLE TB_SA_APPROVAL
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, APPROVAL_TYPE_FG               VARCHAR2(1)                                  NULL           
, APPROVAL_STATUS_FG             VARCHAR2(1)                                  NULL           
, APPROVAL_VAN_CD                VARCHAR2(2)                                  NULL           
, APPROVAL_REQ_AMT               NUMBER(22,2)                                 NOT NULL       
, APPROVAL_REQ_VAT_AMT           NUMBER(22,2)                                 NOT NULL       
, APPROVAL_ID_NO                 VARCHAR2(256)                                NULL           
, APPROVAL_ID_TYPE_FG            VARCHAR2(2)                                  NULL           
, APPROVAL_ID_INPUT_FG           VARCHAR2(1)                                  NULL           
, APPROVAL_TRAN_ID               VARCHAR2(50)                                 NULL           
, APPROVAL_DATE                  VARCHAR2(8)                                  NULL           
, APPROVAL_TIME                  VARCHAR2(6)                                  NULL           
, APPROVAL_RESP_CD               VARCHAR2(20)                                 NULL           
, APPROVAL_NO                    VARCHAR2(50)                                 NULL           
, APPROVAL_AMT                   NUMBER(22,2)                                 NOT NULL       
, APPROVAL_EXTRA_AMT             NUMBER(22,2)                                 NOT NULL       
, ORG_APPROVAL_DATE              VARCHAR2(8)                                  NULL           
, ORG_APPROVAL_NO                VARCHAR2(50)                                 NULL           
, OTC_NO                         VARCHAR2(200)                                NULL           
, VAN_MERCHANT_NO                VARCHAR2(20)                                 NULL           
, EXPIRY_DATE                    VARCHAR2(6)                                  NULL           
, INSTALLMENT                    NUMBER(5,0)                                  NOT NULL       
, ISSUER_CD                      VARCHAR2(4)                                  NULL           
, ISSUER_NM                      VARCHAR2(30)                                 NULL           
, BUYER_CD                       VARCHAR2(4)                                  NULL           
, BUYER_NM                       VARCHAR2(30)                                 NULL           
, REMAIN_AMT                     NUMBER(22,2)                                 NULL           
, CASH_RECEIPT_CUST_FG           VARCHAR2(8)                                  NULL           
, CARD_SIGN_PROC_FG              VARCHAR2(1)                                  NULL           
, CARD_MERCHANT_NO               VARCHAR2(20)                                 NULL           
, SMARTPAY_ACCOUNT_CD            VARCHAR2(3)                                  NULL           
, SMARTPAY_TELEX_ID              VARCHAR2(16)                                 NULL           
, APPROVAL_MSG                   VARCHAR2(4000)                               NULL           
, GREEN_DEPOSIT_AMT              NUMBER(22,2)                                 NOT NULL       
, PPC_DETAIL_SERVICE_CD          VARCHAR2(10)                                 NULL           
, PPC_PIN_NO                     VARCHAR2(256)                                NULL           
, ORG_APPROVAL_TRAN_ID           VARCHAR2(50)                                 NULL           
, ORG_APPROVAL_TIME              VARCHAR2(6)                                  NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, EX_AMT_1                       NUMBER(22,2)                                 NULL           
, EX_AMT_2                       NUMBER(22,2)                                 NULL           
, EX_AMT_3                       NUMBER(22,2)                                 NULL           
, EX_AMT_4                       NUMBER(22,2)                                 NULL           
, EX_AMT_5                       NUMBER(22,2)                                 NULL           
, EX_DATA_1                      VARCHAR2(200)                                NULL           
, EX_DATA_2                      VARCHAR2(200)                                NULL           
, EX_DATA_3                      VARCHAR2(200)                                NULL           
, EX_DATA_4                      VARCHAR2(200)                                NULL           
, EX_DATA_5                      VARCHAR2(200)                                NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_APPROVAL PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_APPROVAL                                               IS '매출_승인';
COMMENT ON COLUMN TB_SA_APPROVAL.BRND_CD                                       IS '브랜드코드';
COMMENT ON COLUMN TB_SA_APPROVAL.POS_SALE_NO                                   IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_APPROVAL.POS_SALE_ITEM_SN                              IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_APPROVAL.SALE_DATE                                     IS '영업일자';
COMMENT ON COLUMN TB_SA_APPROVAL.STORE_CD                                      IS '점포코드';
COMMENT ON COLUMN TB_SA_APPROVAL.POS_NO                                        IS 'POS번호';
COMMENT ON COLUMN TB_SA_APPROVAL.RECEIPT_NO                                    IS '영수증번호';
COMMENT ON COLUMN TB_SA_APPROVAL.SLIP_FG                                       IS '전표유형구분';
COMMENT ON COLUMN TB_SA_APPROVAL.SLIP_TYPE_FG                                  IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_APPROVAL.SLIP_TENDER_FG                                IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_FG                                   IS '승인구분';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_TYPE_FG                              IS '승인유형구분';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_STATUS_FG                            IS '승인상태구분';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_VAN_CD                               IS '승인VAN코드';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_REQ_AMT                              IS '요청금액';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_REQ_VAT_AMT                          IS '승인요청부가세금액';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_ID_NO                                IS '승인식별번호';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_ID_TYPE_FG                           IS '승인식별번호유형구분';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_ID_INPUT_FG                          IS '승인식별번호입력구분';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_TRAN_ID                              IS '승인거래ID';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_DATE                                 IS '승인일자';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_TIME                                 IS '승인시간';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_RESP_CD                              IS '승인응답코드';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_NO                                   IS '승인번호';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_AMT                                  IS '승인금액';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_EXTRA_AMT                            IS '승인금액2';
COMMENT ON COLUMN TB_SA_APPROVAL.ORG_APPROVAL_DATE                             IS '원거래승인일자';
COMMENT ON COLUMN TB_SA_APPROVAL.ORG_APPROVAL_NO                               IS '원거래승인번호';
COMMENT ON COLUMN TB_SA_APPROVAL.OTC_NO                                        IS 'OTC 번호';
COMMENT ON COLUMN TB_SA_APPROVAL.VAN_MERCHANT_NO                               IS '신용카드 VAN사 가맹번호';
COMMENT ON COLUMN TB_SA_APPROVAL.EXPIRY_DATE                                   IS '신용카드 유효일자';
COMMENT ON COLUMN TB_SA_APPROVAL.INSTALLMENT                                   IS '신용카드 할부개월';
COMMENT ON COLUMN TB_SA_APPROVAL.ISSUER_CD                                     IS '신용카드 발급사코드';
COMMENT ON COLUMN TB_SA_APPROVAL.ISSUER_NM                                     IS '신용카드 발급사명';
COMMENT ON COLUMN TB_SA_APPROVAL.BUYER_CD                                      IS '신용카드 매입사코드';
COMMENT ON COLUMN TB_SA_APPROVAL.BUYER_NM                                      IS '신용카드 매입사명';
COMMENT ON COLUMN TB_SA_APPROVAL.REMAIN_AMT                                    IS '잔여금액';
COMMENT ON COLUMN TB_SA_APPROVAL.CASH_RECEIPT_CUST_FG                          IS '현금영수증 발급대상구분';
COMMENT ON COLUMN TB_SA_APPROVAL.CARD_SIGN_PROC_FG                             IS '신용카드 서명처리구분';
COMMENT ON COLUMN TB_SA_APPROVAL.CARD_MERCHANT_NO                              IS '신용카드 카드사 가맹번호';
COMMENT ON COLUMN TB_SA_APPROVAL.SMARTPAY_ACCOUNT_CD                           IS '정산처코드';
COMMENT ON COLUMN TB_SA_APPROVAL.SMARTPAY_TELEX_ID                             IS '전문고유번호';
COMMENT ON COLUMN TB_SA_APPROVAL.APPROVAL_MSG                                  IS '판매승인 승인메시지';
COMMENT ON COLUMN TB_SA_APPROVAL.GREEN_DEPOSIT_AMT                             IS '컵보증금';
COMMENT ON COLUMN TB_SA_APPROVAL.PPC_DETAIL_SERVICE_CD                         IS '판매승인 (기프트카드) 상세서비스코드';
COMMENT ON COLUMN TB_SA_APPROVAL.PPC_PIN_NO                                    IS '판매승인 (기프트카드) PIN번호(스크레치번호)';
COMMENT ON COLUMN TB_SA_APPROVAL.ORG_APPROVAL_TRAN_ID                          IS '원거래승인거래ID(거래번호,추적번호)';
COMMENT ON COLUMN TB_SA_APPROVAL.ORG_APPROVAL_TIME                             IS '원거래승인시간';
COMMENT ON COLUMN TB_SA_APPROVAL.POS_UID                                       IS 'UID';
COMMENT ON COLUMN TB_SA_APPROVAL.LINK_SLIP_UID                                 IS '연결된판매전표UID';
COMMENT ON COLUMN TB_SA_APPROVAL.EX_AMT_1                                      IS '';
COMMENT ON COLUMN TB_SA_APPROVAL.EX_AMT_2                                      IS '';
COMMENT ON COLUMN TB_SA_APPROVAL.EX_AMT_3                                      IS '';
COMMENT ON COLUMN TB_SA_APPROVAL.EX_AMT_4                                      IS '';
COMMENT ON COLUMN TB_SA_APPROVAL.EX_AMT_5                                      IS '';
COMMENT ON COLUMN TB_SA_APPROVAL.EX_DATA_1                                     IS '';
COMMENT ON COLUMN TB_SA_APPROVAL.EX_DATA_2                                     IS '';
COMMENT ON COLUMN TB_SA_APPROVAL.EX_DATA_3                                     IS '';
COMMENT ON COLUMN TB_SA_APPROVAL.EX_DATA_4                                     IS '';
COMMENT ON COLUMN TB_SA_APPROVAL.EX_DATA_5                                     IS '';
COMMENT ON COLUMN TB_SA_APPROVAL.MIG_YN                                        IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_APPROVAL.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SA_APPROVAL.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SA_APPROVAL.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SA_APPROVAL.UPDT_DTIME                                    IS '수정일시';


 /* TB_SA_DISC_BASIC */

DROP TABLE TB_SA_DISC_BASIC PURGE;

CREATE TABLE TB_SA_DISC_BASIC
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(8)                                  NULL           
, RT_AMT_FG                      VARCHAR2(1)                                  NULL           
, RT_AMT_VAL                     NUMBER(22,2)                                 NOT NULL       
, TARGET_FG                      VARCHAR2(2)                                  NULL           
, TARGET_AMT                     NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, DISC_NM                        VARCHAR2(600)                                NULL           
, EVT_AUTO_APPLY_YN              VARCHAR2(1)                                  NULL           
, EVT_BNF_TYPE_FG                VARCHAR2(6)                                  NULL           
, EVT_BNF_VAL                    NUMBER(22,2)                                 NULL           
, EVT_COND_TYPE_FG               VARCHAR2(2)                                  NULL           
, EVT_DC_TYPE_FG                 VARCHAR2(2)                                  NULL           
, EVT_DUP_APPLY_ALLOW_YN         VARCHAR2(1)                                  NULL           
, EVT_NO                         VARCHAR2(10)                                 NULL           
, EVT_RANG_FG                    VARCHAR2(2)                                  NULL           
, EVT_TYPE_FG                    VARCHAR2(6)                                  NULL           
, REPR_EVT_NO                    VARCHAR2(10)                                 NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_DISC_BASIC PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_DISC_BASIC                                             IS '매출_할인_기본';
COMMENT ON COLUMN TB_SA_DISC_BASIC.BRND_CD                                     IS '브랜드코드';
COMMENT ON COLUMN TB_SA_DISC_BASIC.POS_SALE_NO                                 IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_DISC_BASIC.POS_SALE_ITEM_SN                            IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_DISC_BASIC.SALE_DATE                                   IS '영업일자';
COMMENT ON COLUMN TB_SA_DISC_BASIC.STORE_CD                                    IS '점포코드';
COMMENT ON COLUMN TB_SA_DISC_BASIC.POS_NO                                      IS 'POS번호';
COMMENT ON COLUMN TB_SA_DISC_BASIC.RECEIPT_NO                                  IS '영수증번호';
COMMENT ON COLUMN TB_SA_DISC_BASIC.SLIP_FG                                     IS '전표유형구분';
COMMENT ON COLUMN TB_SA_DISC_BASIC.SLIP_TYPE_FG                                IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_DISC_BASIC.SLIP_TENDER_FG                              IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_DISC_BASIC.APPROVAL_FG                                 IS '승인구분';
COMMENT ON COLUMN TB_SA_DISC_BASIC.RT_AMT_FG                                   IS '혜택율금액구분';
COMMENT ON COLUMN TB_SA_DISC_BASIC.RT_AMT_VAL                                  IS '혜택율금액값';
COMMENT ON COLUMN TB_SA_DISC_BASIC.TARGET_FG                                   IS '혜택대상구분';
COMMENT ON COLUMN TB_SA_DISC_BASIC.TARGET_AMT                                  IS '혜택대상금액';
COMMENT ON COLUMN TB_SA_DISC_BASIC.APPLY_AMT                                   IS '혜택적용금액';
COMMENT ON COLUMN TB_SA_DISC_BASIC.ID_NO                                       IS '식별번호';
COMMENT ON COLUMN TB_SA_DISC_BASIC.DISC_NM                                     IS '할인정책명칭';
COMMENT ON COLUMN TB_SA_DISC_BASIC.EVT_AUTO_APPLY_YN                           IS '프로모션(행사) 행사자동적용여부(Y/N)';
COMMENT ON COLUMN TB_SA_DISC_BASIC.EVT_BNF_TYPE_FG                             IS '프로모션(행사) 행사혜택유형구분(Lv3)(메뉴/영수증,할인/페어링/증정/옵션UP/증정품,단일/교차/일반/멀티)';
COMMENT ON COLUMN TB_SA_DISC_BASIC.EVT_BNF_VAL                                 IS '프로모션(행사) 행사혜택값';
COMMENT ON COLUMN TB_SA_DISC_BASIC.EVT_COND_TYPE_FG                            IS '프로모션(행사) 행사조건유형구분(메뉴구매,구매금액,특정결제,행사참여)';
COMMENT ON COLUMN TB_SA_DISC_BASIC.EVT_DC_TYPE_FG                              IS '프로모션(행사) 행사할인유형구분(정액,정율,특가,균일가)';
COMMENT ON COLUMN TB_SA_DISC_BASIC.EVT_DUP_APPLY_ALLOW_YN                      IS '프로모션(행사) 행사중복적용허용여부(Y/N, N:중복불가)';
COMMENT ON COLUMN TB_SA_DISC_BASIC.EVT_NO                                      IS '프로모션(행사) 행사번호';
COMMENT ON COLUMN TB_SA_DISC_BASIC.EVT_RANG_FG                                 IS '프로모션(행사) 행사범위구분(전체행사-NWP,개별행사-LAM,개별행사-LSM)';
COMMENT ON COLUMN TB_SA_DISC_BASIC.EVT_TYPE_FG                                 IS '프로모션(행사) 행사유형구분(Lv3)';
COMMENT ON COLUMN TB_SA_DISC_BASIC.REPR_EVT_NO                                 IS '프로모션(행사) 대표행사번호';
COMMENT ON COLUMN TB_SA_DISC_BASIC.POS_UID                                     IS 'UID';
COMMENT ON COLUMN TB_SA_DISC_BASIC.LINK_SLIP_UID                               IS '연결된판매결제전표UID';
COMMENT ON COLUMN TB_SA_DISC_BASIC.MIG_YN                                      IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_DISC_BASIC.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_SA_DISC_BASIC.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_SA_DISC_BASIC.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_SA_DISC_BASIC.UPDT_DTIME                                  IS '수정일시';


 /* TB_SA_DISC_CARD */

DROP TABLE TB_SA_DISC_CARD PURGE;

CREATE TABLE TB_SA_DISC_CARD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(8)                                  NULL           
, RT_AMT_FG                      VARCHAR2(1)                                  NULL           
, RT_AMT_VAL                     NUMBER(22,2)                                 NOT NULL       
, TARGET_FG                      VARCHAR2(2)                                  NULL           
, TARGET_AMT                     NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, DISC_NM                        VARCHAR2(600)                                NULL           
, COOP_FG                        VARCHAR2(1)                                  NULL           
, COOP_COMP_FG                   VARCHAR2(1)                                  NULL           
, ISSUER_CD                      VARCHAR2(3)                                  NULL           
, BUYER_CD                       VARCHAR2(3)                                  NULL           
, EVT_AUTO_APPLY_YN              VARCHAR2(1)                                  NULL           
, EVT_BNF_TYPE_FG                VARCHAR2(6)                                  NULL           
, EVT_BNF_VAL                    NUMBER(22,2)                                 NULL           
, EVT_COND_TYPE_FG               VARCHAR2(2)                                  NULL           
, EVT_DC_TYPE_FG                 VARCHAR2(2)                                  NULL           
, EVT_DUP_APPLY_ALLOW_YN         VARCHAR2(1)                                  NULL           
, EVT_NO                         VARCHAR2(10)                                 NULL           
, EVT_RANG_FG                    VARCHAR2(2)                                  NULL           
, EVT_TYPE_FG                    VARCHAR2(6)                                  NULL           
, REPR_EVT_NO                    VARCHAR2(10)                                 NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_DISC_CARD PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_DISC_CARD                                              IS '매출_할인_제휴';
COMMENT ON COLUMN TB_SA_DISC_CARD.BRND_CD                                      IS '브랜드코드';
COMMENT ON COLUMN TB_SA_DISC_CARD.POS_SALE_NO                                  IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_DISC_CARD.POS_SALE_ITEM_SN                             IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_DISC_CARD.SALE_DATE                                    IS '영업일자';
COMMENT ON COLUMN TB_SA_DISC_CARD.STORE_CD                                     IS '점포코드';
COMMENT ON COLUMN TB_SA_DISC_CARD.POS_NO                                       IS 'POS번호';
COMMENT ON COLUMN TB_SA_DISC_CARD.RECEIPT_NO                                   IS '영수증번호';
COMMENT ON COLUMN TB_SA_DISC_CARD.SLIP_FG                                      IS '전표유형구분';
COMMENT ON COLUMN TB_SA_DISC_CARD.SLIP_TYPE_FG                                 IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_DISC_CARD.SLIP_TENDER_FG                               IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_DISC_CARD.APPROVAL_FG                                  IS '승인구분';
COMMENT ON COLUMN TB_SA_DISC_CARD.RT_AMT_FG                                    IS '혜택율금액구분';
COMMENT ON COLUMN TB_SA_DISC_CARD.RT_AMT_VAL                                   IS '혜택율금액값';
COMMENT ON COLUMN TB_SA_DISC_CARD.TARGET_FG                                    IS '혜택대상구분';
COMMENT ON COLUMN TB_SA_DISC_CARD.TARGET_AMT                                   IS '혜택대상금액';
COMMENT ON COLUMN TB_SA_DISC_CARD.APPLY_AMT                                    IS '혜택적용금액';
COMMENT ON COLUMN TB_SA_DISC_CARD.ID_NO                                        IS '식별번호';
COMMENT ON COLUMN TB_SA_DISC_CARD.DISC_NM                                      IS '할인정책명칭';
COMMENT ON COLUMN TB_SA_DISC_CARD.COOP_FG                                      IS '제휴 구분';
COMMENT ON COLUMN TB_SA_DISC_CARD.COOP_COMP_FG                                 IS '제휴사구분';
COMMENT ON COLUMN TB_SA_DISC_CARD.ISSUER_CD                                    IS '발급사코드';
COMMENT ON COLUMN TB_SA_DISC_CARD.BUYER_CD                                     IS '매입사코드';
COMMENT ON COLUMN TB_SA_DISC_CARD.EVT_AUTO_APPLY_YN                            IS '프로모션(행사) 행사자동적용여부(Y/N)';
COMMENT ON COLUMN TB_SA_DISC_CARD.EVT_BNF_TYPE_FG                              IS '프로모션(행사) 행사혜택유형구분(Lv3)(메뉴/영수증,할인/페어링/증정/옵션UP/증정품,단일/교차/일반/멀티)';
COMMENT ON COLUMN TB_SA_DISC_CARD.EVT_BNF_VAL                                  IS '프로모션(행사) 행사혜택값';
COMMENT ON COLUMN TB_SA_DISC_CARD.EVT_COND_TYPE_FG                             IS '프로모션(행사) 행사조건유형구분(메뉴구매,구매금액,특정결제,행사참여)';
COMMENT ON COLUMN TB_SA_DISC_CARD.EVT_DC_TYPE_FG                               IS '프로모션(행사) 행사할인유형구분(정액,정율,특가,균일가)';
COMMENT ON COLUMN TB_SA_DISC_CARD.EVT_DUP_APPLY_ALLOW_YN                       IS '프로모션(행사) 행사중복적용허용여부(Y/N, N:중복불가)';
COMMENT ON COLUMN TB_SA_DISC_CARD.EVT_NO                                       IS '프로모션(행사) 행사번호';
COMMENT ON COLUMN TB_SA_DISC_CARD.EVT_RANG_FG                                  IS '프로모션(행사) 행사범위구분(전체행사-NWP,개별행사-LAM,개별행사-LSM)';
COMMENT ON COLUMN TB_SA_DISC_CARD.EVT_TYPE_FG                                  IS '프로모션(행사) 행사유형구분(Lv3)';
COMMENT ON COLUMN TB_SA_DISC_CARD.REPR_EVT_NO                                  IS '프로모션(행사) 대표행사번호';
COMMENT ON COLUMN TB_SA_DISC_CARD.POS_UID                                      IS 'UID';
COMMENT ON COLUMN TB_SA_DISC_CARD.LINK_SLIP_UID                                IS '연결된판매결제전표UID';
COMMENT ON COLUMN TB_SA_DISC_CARD.MIG_YN                                       IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_DISC_CARD.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_SA_DISC_CARD.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_SA_DISC_CARD.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_SA_DISC_CARD.UPDT_DTIME                                   IS '수정일시';


 /* TB_SA_DISC_CP */

DROP TABLE TB_SA_DISC_CP PURGE;

CREATE TABLE TB_SA_DISC_CP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, RT_AMT_FG                      VARCHAR2(1)                                  NULL           
, RT_AMT_VAL                     NUMBER(22,2)                                 NOT NULL       
, TARGET_FG                      VARCHAR2(2)                                  NULL           
, TARGET_AMT                     NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, DISC_NM                        VARCHAR2(600)                                NULL           
, EVT_AUTO_APPLY_YN              VARCHAR2(1)                                  NULL           
, EVT_BNF_TYPE_FG                VARCHAR2(6)                                  NULL           
, EVT_BNF_VAL                    NUMBER(22,2)                                 NULL           
, EVT_COND_TYPE_FG               VARCHAR2(2)                                  NULL           
, EVT_CP_BARCODE                 VARCHAR2(16)                                 NULL           
, EVT_CP_BNF_VAL                 NUMBER(22,2)                                 NULL           
, EVT_CP_NO                      VARCHAR2(8)                                  NULL           
, EVT_CP_RANG_FG                 VARCHAR2(2)                                  NULL           
, EVT_CP_USE_COND_TYPE_FG        VARCHAR2(2)                                  NULL           
, EVT_DC_TYPE_FG                 VARCHAR2(2)                                  NULL           
, EVT_DUP_APPLY_ALLOW_YN         VARCHAR2(1)                                  NULL           
, EVT_NO                         VARCHAR2(10)                                 NULL           
, EVT_RANG_FG                    VARCHAR2(2)                                  NULL           
, EVT_TYPE_FG                    VARCHAR2(6)                                  NULL           
, REPR_EVT_NO                    VARCHAR2(10)                                 NULL           
, CP_CD                          VARCHAR2(16)                                 NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_DISC_CP PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_DISC_CP                                                IS '매출_할인_쿠폰';
COMMENT ON COLUMN TB_SA_DISC_CP.BRND_CD                                        IS '브랜드코드';
COMMENT ON COLUMN TB_SA_DISC_CP.POS_SALE_NO                                    IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_DISC_CP.POS_SALE_ITEM_SN                               IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_DISC_CP.SALE_DATE                                      IS '영업일자';
COMMENT ON COLUMN TB_SA_DISC_CP.STORE_CD                                       IS '점포코드';
COMMENT ON COLUMN TB_SA_DISC_CP.POS_NO                                         IS 'POS번호';
COMMENT ON COLUMN TB_SA_DISC_CP.RECEIPT_NO                                     IS '영수증번호';
COMMENT ON COLUMN TB_SA_DISC_CP.SLIP_FG                                        IS '전표유형구분';
COMMENT ON COLUMN TB_SA_DISC_CP.SLIP_TYPE_FG                                   IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_DISC_CP.SLIP_TENDER_FG                                 IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_DISC_CP.APPROVAL_FG                                    IS '승인구분';
COMMENT ON COLUMN TB_SA_DISC_CP.RT_AMT_FG                                      IS '혜택율금액구분';
COMMENT ON COLUMN TB_SA_DISC_CP.RT_AMT_VAL                                     IS '혜택율금액값';
COMMENT ON COLUMN TB_SA_DISC_CP.TARGET_FG                                      IS '혜택대상구분';
COMMENT ON COLUMN TB_SA_DISC_CP.TARGET_AMT                                     IS '혜택대상금액';
COMMENT ON COLUMN TB_SA_DISC_CP.APPLY_AMT                                      IS '혜택적용금액';
COMMENT ON COLUMN TB_SA_DISC_CP.ID_NO                                          IS '식별번호';
COMMENT ON COLUMN TB_SA_DISC_CP.DISC_NM                                        IS '할인정책명칭';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_AUTO_APPLY_YN                              IS '프로모션(행사) 행사자동적용여부(Y/N)';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_BNF_TYPE_FG                                IS '프로모션(행사) 행사혜택유형구분(Lv3)(메뉴/영수증,할인/페어링/증정/옵션UP/증정품,단일/교차/일반/멀티)';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_BNF_VAL                                    IS '프로모션(행사) 행사혜택값';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_COND_TYPE_FG                               IS '프로모션(행사) 행사조건유형구분(메뉴구매,구매금액,특정결제,행사참여)';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_CP_BARCODE                                 IS '프로모션(행사) 쿠폰바코드(행사범위(2)+쿠폰번호(5)+체크디지트(1)+발급일련번호(5))';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_CP_BNF_VAL                                 IS '프로모션(행사) 쿠폰혜택값';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_CP_NO                                      IS '프로모션(행사) 쿠폰번호(쿠폰행사번호)';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_CP_RANG_FG                                 IS '프로모션(행사) 쿠폰사용범위구분(범용,발급점전용)';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_CP_USE_COND_TYPE_FG                        IS '프로모션(행사) 쿠폰사용조건유형구분(메뉴구매,구매금액,특정결제,행사참여)';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_DC_TYPE_FG                                 IS '프로모션(행사) 행사할인유형구분(정액,정율,특가,균일가)';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_DUP_APPLY_ALLOW_YN                         IS '프로모션(행사) 행사중복적용허용여부(Y/N, N:중복불가)';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_NO                                         IS '프로모션(행사) 행사번호';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_RANG_FG                                    IS '프로모션(행사) 행사범위구분(전체행사-NWP,개별행사-LAM,개별행사-LSM)';
COMMENT ON COLUMN TB_SA_DISC_CP.EVT_TYPE_FG                                    IS '프로모션(행사) 행사유형구분(Lv3)';
COMMENT ON COLUMN TB_SA_DISC_CP.REPR_EVT_NO                                    IS '프로모션(행사) 대표행사번호';
COMMENT ON COLUMN TB_SA_DISC_CP.CP_CD                                          IS '쿠폰코드(행사)';
COMMENT ON COLUMN TB_SA_DISC_CP.POS_UID                                        IS 'UID';
COMMENT ON COLUMN TB_SA_DISC_CP.LINK_SLIP_UID                                  IS '연결된판매결제전표UID';
COMMENT ON COLUMN TB_SA_DISC_CP.MIG_YN                                         IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_DISC_CP.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_SA_DISC_CP.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_SA_DISC_CP.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_SA_DISC_CP.UPDT_DTIME                                     IS '수정일시';


 /* TB_SA_DISC_EMP */

DROP TABLE TB_SA_DISC_EMP PURGE;

CREATE TABLE TB_SA_DISC_EMP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(8)                                  NULL           
, RT_AMT_FG                      VARCHAR2(1)                                  NULL           
, RT_AMT_VAL                     NUMBER(22,2)                                 NOT NULL       
, TARGET_FG                      VARCHAR2(2)                                  NULL           
, TARGET_AMT                     NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, DISC_NM                        VARCHAR2(600)                                NULL           
, DC_PROC_FG                     VARCHAR2(1)                                  NULL           
, EMP_NO                         VARCHAR2(20)                                 NULL           
, EMP_NM                         VARCHAR2(80)                                 NULL           
, DEPT_NM                        VARCHAR2(80)                                 NULL           
, EVT_AUTO_APPLY_YN              VARCHAR2(1)                                  NULL           
, EVT_BNF_TYPE_FG                VARCHAR2(6)                                  NULL           
, EVT_BNF_VAL                    NUMBER(22,2)                                 NULL           
, EVT_COND_TYPE_FG               VARCHAR2(2)                                  NULL           
, EVT_DC_TYPE_FG                 VARCHAR2(2)                                  NULL           
, EVT_DUP_APPLY_ALLOW_YN         VARCHAR2(1)                                  NULL           
, EVT_NO                         VARCHAR2(10)                                 NULL           
, EVT_RANG_FG                    VARCHAR2(2)                                  NULL           
, EVT_TYPE_FG                    VARCHAR2(6)                                  NULL           
, REPR_EVT_NO                    VARCHAR2(10)                                 NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_DISC_EMP PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_DISC_EMP                                               IS '매출_할인_임직원';
COMMENT ON COLUMN TB_SA_DISC_EMP.BRND_CD                                       IS '브랜드코드';
COMMENT ON COLUMN TB_SA_DISC_EMP.POS_SALE_NO                                   IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_DISC_EMP.POS_SALE_ITEM_SN                              IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_DISC_EMP.SALE_DATE                                     IS '영업일자';
COMMENT ON COLUMN TB_SA_DISC_EMP.STORE_CD                                      IS '점포코드';
COMMENT ON COLUMN TB_SA_DISC_EMP.POS_NO                                        IS 'POS번호';
COMMENT ON COLUMN TB_SA_DISC_EMP.RECEIPT_NO                                    IS '영수증번호';
COMMENT ON COLUMN TB_SA_DISC_EMP.SLIP_FG                                       IS '전표유형구분';
COMMENT ON COLUMN TB_SA_DISC_EMP.SLIP_TYPE_FG                                  IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_DISC_EMP.SLIP_TENDER_FG                                IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_DISC_EMP.APPROVAL_FG                                   IS '승인구분';
COMMENT ON COLUMN TB_SA_DISC_EMP.RT_AMT_FG                                     IS '혜택율금액구분';
COMMENT ON COLUMN TB_SA_DISC_EMP.RT_AMT_VAL                                    IS '혜택율금액값';
COMMENT ON COLUMN TB_SA_DISC_EMP.TARGET_FG                                     IS '혜택대상구분';
COMMENT ON COLUMN TB_SA_DISC_EMP.TARGET_AMT                                    IS '혜택대상금액';
COMMENT ON COLUMN TB_SA_DISC_EMP.APPLY_AMT                                     IS '혜택적용금액';
COMMENT ON COLUMN TB_SA_DISC_EMP.ID_NO                                         IS '식별번호';
COMMENT ON COLUMN TB_SA_DISC_EMP.DISC_NM                                       IS '할인정책명칭';
COMMENT ON COLUMN TB_SA_DISC_EMP.DC_PROC_FG                                    IS '할인처리구분';
COMMENT ON COLUMN TB_SA_DISC_EMP.EMP_NO                                        IS '사원번호';
COMMENT ON COLUMN TB_SA_DISC_EMP.EMP_NM                                        IS '사원명';
COMMENT ON COLUMN TB_SA_DISC_EMP.DEPT_NM                                       IS '소속부서정보';
COMMENT ON COLUMN TB_SA_DISC_EMP.EVT_AUTO_APPLY_YN                             IS '프로모션(행사) 행사자동적용여부(Y/N)';
COMMENT ON COLUMN TB_SA_DISC_EMP.EVT_BNF_TYPE_FG                               IS '프로모션(행사) 행사혜택유형구분(Lv3)(메뉴/영수증,할인/페어링/증정/옵션UP/증정품,단일/교차/일반/멀티)';
COMMENT ON COLUMN TB_SA_DISC_EMP.EVT_BNF_VAL                                   IS '프로모션(행사) 행사혜택값';
COMMENT ON COLUMN TB_SA_DISC_EMP.EVT_COND_TYPE_FG                              IS '프로모션(행사) 행사조건유형구분(메뉴구매,구매금액,특정결제,행사참여)';
COMMENT ON COLUMN TB_SA_DISC_EMP.EVT_DC_TYPE_FG                                IS '프로모션(행사) 행사할인유형구분(정액,정율,특가,균일가)';
COMMENT ON COLUMN TB_SA_DISC_EMP.EVT_DUP_APPLY_ALLOW_YN                        IS '프로모션(행사) 행사중복적용허용여부(Y/N, N:중복불가)';
COMMENT ON COLUMN TB_SA_DISC_EMP.EVT_NO                                        IS '프로모션(행사) 행사번호';
COMMENT ON COLUMN TB_SA_DISC_EMP.EVT_RANG_FG                                   IS '프로모션(행사) 행사범위구분(전체행사-NWP,개별행사-LAM,개별행사-LSM)';
COMMENT ON COLUMN TB_SA_DISC_EMP.EVT_TYPE_FG                                   IS '프로모션(행사) 행사유형구분(Lv3)';
COMMENT ON COLUMN TB_SA_DISC_EMP.REPR_EVT_NO                                   IS '프로모션(행사) 대표행사번호';
COMMENT ON COLUMN TB_SA_DISC_EMP.POS_UID                                       IS 'UID';
COMMENT ON COLUMN TB_SA_DISC_EMP.LINK_SLIP_UID                                 IS '연결된판매결제전표UID';
COMMENT ON COLUMN TB_SA_DISC_EMP.MIG_YN                                        IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_DISC_EMP.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SA_DISC_EMP.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SA_DISC_EMP.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SA_DISC_EMP.UPDT_DTIME                                    IS '수정일시';


 /* TB_SA_DISC_ETC */

DROP TABLE TB_SA_DISC_ETC PURGE;

CREATE TABLE TB_SA_DISC_ETC
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(8)                                  NULL           
, RT_AMT_FG                      VARCHAR2(1)                                  NULL           
, RT_AMT_VAL                     NUMBER(22,2)                                 NOT NULL       
, TARGET_FG                      VARCHAR2(2)                                  NULL           
, TARGET_AMT                     NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, DISC_AMT_1                     NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_2                     NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_3                     NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_4                     NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_5                     NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_6                     NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_7                     NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_8                     NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_9                     NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_10                    NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_11                    NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_12                    NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_13                    NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_14                    NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_15                    NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_16                    NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_17                    NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_18                    NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_19                    NUMBER(22,2)                                 NOT NULL       
, DISC_AMT_20                    NUMBER(22,2)                                 NOT NULL       
, DISC_DATA_1                    VARCHAR2(600)                                NULL           
, DISC_DATA_2                    VARCHAR2(600)                                NULL           
, DISC_DATA_3                    VARCHAR2(600)                                NULL           
, DISC_DATA_4                    VARCHAR2(600)                                NULL           
, DISC_DATA_5                    VARCHAR2(600)                                NULL           
, DISC_DATA_6                    VARCHAR2(600)                                NULL           
, DISC_DATA_7                    VARCHAR2(600)                                NULL           
, DISC_DATA_8                    VARCHAR2(600)                                NULL           
, DISC_DATA_9                    VARCHAR2(600)                                NULL           
, DISC_DATA_10                   VARCHAR2(600)                                NULL           
, DISC_DATA_11                   VARCHAR2(600)                                NULL           
, DISC_DATA_12                   VARCHAR2(600)                                NULL           
, DISC_DATA_13                   VARCHAR2(600)                                NULL           
, DISC_DATA_14                   VARCHAR2(600)                                NULL           
, DISC_DATA_15                   VARCHAR2(600)                                NULL           
, DISC_DATA_16                   VARCHAR2(600)                                NULL           
, DISC_DATA_17                   VARCHAR2(600)                                NULL           
, DISC_DATA_18                   VARCHAR2(600)                                NULL           
, DISC_DATA_19                   VARCHAR2(600)                                NULL           
, DISC_DATA_20                   VARCHAR2(600)                                NULL           
, DISC_NM                        VARCHAR2(600)                                NULL           
, EVT_AUTO_APPLY_YN              VARCHAR2(1)                                  NULL           
, EVT_BNF_TYPE_FG                VARCHAR2(6)                                  NULL           
, EVT_BNF_VAL                    NUMBER(22,2)                                 NULL           
, EVT_COND_TYPE_FG               VARCHAR2(2)                                  NULL           
, EVT_CP_BARCODE                 VARCHAR2(16)                                 NULL           
, EVT_CP_BNF_VAL                 NUMBER(22,2)                                 NULL           
, EVT_CP_NO                      VARCHAR2(8)                                  NULL           
, EVT_CP_RANG_FG                 VARCHAR2(2)                                  NULL           
, EVT_CP_USE_COND_TYPE_FG        VARCHAR2(2)                                  NULL           
, EVT_DC_TYPE_FG                 VARCHAR2(2)                                  NULL           
, EVT_DUP_APPLY_ALLOW_YN         VARCHAR2(1)                                  NULL           
, EVT_NO                         VARCHAR2(10)                                 NULL           
, EVT_RANG_FG                    VARCHAR2(2)                                  NULL           
, EVT_TYPE_FG                    VARCHAR2(6)                                  NULL           
, REPR_EVT_NO                    VARCHAR2(10)                                 NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_DISC_ETC PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_DISC_ETC                                               IS '매출_할인_기타';
COMMENT ON COLUMN TB_SA_DISC_ETC.BRND_CD                                       IS '브랜드코드';
COMMENT ON COLUMN TB_SA_DISC_ETC.POS_SALE_NO                                   IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_DISC_ETC.POS_SALE_ITEM_SN                              IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_DISC_ETC.SALE_DATE                                     IS '영업일자';
COMMENT ON COLUMN TB_SA_DISC_ETC.STORE_CD                                      IS '점포코드';
COMMENT ON COLUMN TB_SA_DISC_ETC.POS_NO                                        IS 'POS번호';
COMMENT ON COLUMN TB_SA_DISC_ETC.RECEIPT_NO                                    IS '영수증번호';
COMMENT ON COLUMN TB_SA_DISC_ETC.SLIP_FG                                       IS '전표유형구분';
COMMENT ON COLUMN TB_SA_DISC_ETC.SLIP_TYPE_FG                                  IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_DISC_ETC.SLIP_TENDER_FG                                IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_DISC_ETC.APPROVAL_FG                                   IS '승인구분';
COMMENT ON COLUMN TB_SA_DISC_ETC.RT_AMT_FG                                     IS '혜택율금액구분';
COMMENT ON COLUMN TB_SA_DISC_ETC.RT_AMT_VAL                                    IS '혜택율금액값';
COMMENT ON COLUMN TB_SA_DISC_ETC.TARGET_FG                                     IS '혜택대상구분';
COMMENT ON COLUMN TB_SA_DISC_ETC.TARGET_AMT                                    IS '혜택대상금액';
COMMENT ON COLUMN TB_SA_DISC_ETC.APPLY_AMT                                     IS '혜택적용금액';
COMMENT ON COLUMN TB_SA_DISC_ETC.ID_NO                                         IS '식별번호';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_1                                    IS '금액-1';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_2                                    IS '금액-2';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_3                                    IS '금액-3';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_4                                    IS '금액-4';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_5                                    IS '금액-5';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_6                                    IS '금액-6';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_7                                    IS '금액-7';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_8                                    IS '금액-8';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_9                                    IS '금액-9';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_10                                   IS '금액-10';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_11                                   IS '금액-11';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_12                                   IS '금액-12';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_13                                   IS '금액-13';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_14                                   IS '금액-14';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_15                                   IS '금액-15';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_16                                   IS '금액-16';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_17                                   IS '금액-17';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_18                                   IS '금액-18';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_19                                   IS '금액-19';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_AMT_20                                   IS '금액-20';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_1                                   IS '데이터-1';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_2                                   IS '데이터-2';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_3                                   IS '데이터-3';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_4                                   IS '데이터-4';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_5                                   IS '데이터-5';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_6                                   IS '데이터-6';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_7                                   IS '데이터-7';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_8                                   IS '데이터-8';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_9                                   IS '데이터-9';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_10                                  IS '데이터-10';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_11                                  IS '데이터-11';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_12                                  IS '데이터-12';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_13                                  IS '데이터-13';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_14                                  IS '데이터-14';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_15                                  IS '데이터-15';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_16                                  IS '데이터-16';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_17                                  IS '데이터-17';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_18                                  IS '데이터-18';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_19                                  IS '데이터-19';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_DATA_20                                  IS '데이터-20';
COMMENT ON COLUMN TB_SA_DISC_ETC.DISC_NM                                       IS '할인정책명칭';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_AUTO_APPLY_YN                             IS '프로모션(행사) 행사자동적용여부(Y/N)';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_BNF_TYPE_FG                               IS '프로모션(행사) 행사혜택유형구분(Lv3)(메뉴/영수증,할인/페어링/증정/옵션UP/증정품,단일/교차/일반/멀티)';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_BNF_VAL                                   IS '프로모션(행사) 행사혜택값';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_COND_TYPE_FG                              IS '프로모션(행사) 행사조건유형구분(메뉴구매,구매금액,특정결제,행사참여)';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_CP_BARCODE                                IS '프로모션(행사) 쿠폰바코드(행사범위(2)+쿠폰번호(5)+체크디지트(1)+발급일련번호(5))';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_CP_BNF_VAL                                IS '프로모션(행사) 쿠폰혜택값';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_CP_NO                                     IS '프로모션(행사) 쿠폰번호(쿠폰행사번호)';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_CP_RANG_FG                                IS '프로모션(행사) 쿠폰사용범위구분(범용,발급점전용)';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_CP_USE_COND_TYPE_FG                       IS '프로모션(행사) 쿠폰사용조건유형구분(메뉴구매,구매금액,특정결제,행사참여)';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_DC_TYPE_FG                                IS '프로모션(행사) 행사할인유형구분(정액,정율,특가,균일가)';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_DUP_APPLY_ALLOW_YN                        IS '프로모션(행사) 행사중복적용허용여부(Y/N, N:중복불가)';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_NO                                        IS '프로모션(행사) 행사번호';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_RANG_FG                                   IS '프로모션(행사) 행사범위구분(전체행사-NWP,개별행사-LAM,개별행사-LSM)';
COMMENT ON COLUMN TB_SA_DISC_ETC.EVT_TYPE_FG                                   IS '프로모션(행사) 행사유형구분(Lv3)';
COMMENT ON COLUMN TB_SA_DISC_ETC.REPR_EVT_NO                                   IS '프로모션(행사) 대표행사번호';
COMMENT ON COLUMN TB_SA_DISC_ETC.POS_UID                                       IS 'UID';
COMMENT ON COLUMN TB_SA_DISC_ETC.LINK_SLIP_UID                                 IS '연결된판매결제전표UID';
COMMENT ON COLUMN TB_SA_DISC_ETC.MIG_YN                                        IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_DISC_ETC.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SA_DISC_ETC.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SA_DISC_ETC.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SA_DISC_ETC.UPDT_DTIME                                    IS '수정일시';


 /* TB_SA_DISC_PRMT */

DROP TABLE TB_SA_DISC_PRMT PURGE;

CREATE TABLE TB_SA_DISC_PRMT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, APPROVAL_TYPE_FG               VARCHAR2(1)                                  NULL           
, RT_AMT_FG                      VARCHAR2(1)                                  NULL           
, RT_AMT_VAL                     NUMBER(22,2)                                 NOT NULL       
, TARGET_FG                      VARCHAR2(2)                                  NULL           
, TARGET_AMT                     NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, MENU_CD                        VARCHAR2(20)                                 NULL           
, PRICE                          NUMBER(22,2)                                 NOT NULL       
, QTY                            NUMBER(13,0)                                 NOT NULL       
, CP_TYPE                        VARCHAR2(5)                                  NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_DISC_PRMT PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_DISC_PRMT                                              IS '매출_할인_행사';
COMMENT ON COLUMN TB_SA_DISC_PRMT.BRND_CD                                      IS '브랜드코드';
COMMENT ON COLUMN TB_SA_DISC_PRMT.POS_SALE_NO                                  IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_DISC_PRMT.POS_SALE_ITEM_SN                             IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_DISC_PRMT.SALE_DATE                                    IS '영업일자';
COMMENT ON COLUMN TB_SA_DISC_PRMT.STORE_CD                                     IS '점포코드';
COMMENT ON COLUMN TB_SA_DISC_PRMT.POS_NO                                       IS 'POS번호';
COMMENT ON COLUMN TB_SA_DISC_PRMT.RECEIPT_NO                                   IS '영수증번호';
COMMENT ON COLUMN TB_SA_DISC_PRMT.SLIP_TYPE_FG                                 IS '전표유형구분';
COMMENT ON COLUMN TB_SA_DISC_PRMT.SLIP_TENDER_FG                               IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_DISC_PRMT.APPROVAL_FG                                  IS '승인구분';
COMMENT ON COLUMN TB_SA_DISC_PRMT.APPROVAL_TYPE_FG                             IS '승인유형구분';
COMMENT ON COLUMN TB_SA_DISC_PRMT.RT_AMT_FG                                    IS '혜택율금액구분';
COMMENT ON COLUMN TB_SA_DISC_PRMT.RT_AMT_VAL                                   IS '혜택율금액값';
COMMENT ON COLUMN TB_SA_DISC_PRMT.TARGET_FG                                    IS '혜택대상구분';
COMMENT ON COLUMN TB_SA_DISC_PRMT.TARGET_AMT                                   IS '혜택대상금액';
COMMENT ON COLUMN TB_SA_DISC_PRMT.APPLY_AMT                                    IS '혜택적용금액';
COMMENT ON COLUMN TB_SA_DISC_PRMT.ID_NO                                        IS '식별번호';
COMMENT ON COLUMN TB_SA_DISC_PRMT.MENU_CD                                      IS '메뉴코드';
COMMENT ON COLUMN TB_SA_DISC_PRMT.PRICE                                        IS '단가';
COMMENT ON COLUMN TB_SA_DISC_PRMT.QTY                                          IS '수량';
COMMENT ON COLUMN TB_SA_DISC_PRMT.CP_TYPE                                      IS '쿠폰 유형 코드';
COMMENT ON COLUMN TB_SA_DISC_PRMT.POS_UID                                      IS 'UID';
COMMENT ON COLUMN TB_SA_DISC_PRMT.LINK_SLIP_UID                                IS '연결된판매결제전표UID';
COMMENT ON COLUMN TB_SA_DISC_PRMT.MIG_YN                                       IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_DISC_PRMT.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_SA_DISC_PRMT.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_SA_DISC_PRMT.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_SA_DISC_PRMT.UPDT_DTIME                                   IS '수정일시';


 /* TB_SA_ETC */

DROP TABLE TB_SA_ETC PURGE;

CREATE TABLE TB_SA_ETC
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(8)                                  NULL           
, ID_NO                          VARCHAR2(256)                                NULL           
, ETC_AMT_1                      NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_2                      NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_3                      NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_4                      NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_5                      NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_6                      NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_7                      NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_8                      NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_9                      NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_10                     NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_11                     NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_12                     NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_13                     NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_14                     NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_15                     NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_16                     NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_17                     NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_18                     NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_19                     NUMBER(22,2)                                 NOT NULL       
, ETC_AMT_20                     NUMBER(22,2)                                 NOT NULL       
, ETC_DATA_1                     VARCHAR2(600)                                NULL           
, ETC_DATA_2                     VARCHAR2(600)                                NULL           
, ETC_DATA_3                     VARCHAR2(600)                                NULL           
, ETC_DATA_4                     VARCHAR2(600)                                NULL           
, ETC_DATA_5                     VARCHAR2(600)                                NULL           
, ETC_DATA_6                     VARCHAR2(600)                                NULL           
, ETC_DATA_7                     VARCHAR2(600)                                NULL           
, ETC_DATA_8                     VARCHAR2(600)                                NULL           
, ETC_DATA_9                     VARCHAR2(600)                                NULL           
, ETC_DATA_10                    VARCHAR2(600)                                NULL           
, ETC_DATA_11                    VARCHAR2(600)                                NULL           
, ETC_DATA_12                    VARCHAR2(600)                                NULL           
, ETC_DATA_13                    VARCHAR2(600)                                NULL           
, ETC_DATA_14                    VARCHAR2(600)                                NULL           
, ETC_DATA_15                    VARCHAR2(600)                                NULL           
, ETC_DATA_16                    VARCHAR2(600)                                NULL           
, ETC_DATA_17                    VARCHAR2(600)                                NULL           
, ETC_DATA_18                    VARCHAR2(600)                                NULL           
, ETC_DATA_19                    VARCHAR2(600)                                NULL           
, ETC_DATA_20                    VARCHAR2(600)                                NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, APPLY_AMT                      NUMBER(22,2)                                 NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_ETC PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_ETC                                                    IS '매출_기타';
COMMENT ON COLUMN TB_SA_ETC.BRND_CD                                            IS '브랜드코드';
COMMENT ON COLUMN TB_SA_ETC.POS_SALE_NO                                        IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_ETC.POS_SALE_ITEM_SN                                   IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_ETC.SALE_DATE                                          IS '영업일자';
COMMENT ON COLUMN TB_SA_ETC.STORE_CD                                           IS '점포코드';
COMMENT ON COLUMN TB_SA_ETC.POS_NO                                             IS 'POS번호';
COMMENT ON COLUMN TB_SA_ETC.RECEIPT_NO                                         IS '영수증번호';
COMMENT ON COLUMN TB_SA_ETC.SLIP_FG                                            IS '전표유형구분';
COMMENT ON COLUMN TB_SA_ETC.SLIP_TYPE_FG                                       IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_ETC.SLIP_TENDER_FG                                     IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_ETC.APPROVAL_FG                                        IS '승인구분';
COMMENT ON COLUMN TB_SA_ETC.ID_NO                                              IS '식별번호';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_1                                          IS '금액-1';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_2                                          IS '금액-2';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_3                                          IS '금액-3';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_4                                          IS '금액-4';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_5                                          IS '금액-5';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_6                                          IS '금액-6';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_7                                          IS '금액-7';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_8                                          IS '금액-8';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_9                                          IS '금액-9';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_10                                         IS '금액-10';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_11                                         IS '금액-11';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_12                                         IS '금액-12';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_13                                         IS '금액-13';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_14                                         IS '금액-14';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_15                                         IS '금액-15';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_16                                         IS '금액-16';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_17                                         IS '금액-17';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_18                                         IS '금액-18';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_19                                         IS '금액-19';
COMMENT ON COLUMN TB_SA_ETC.ETC_AMT_20                                         IS '금액-20';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_1                                         IS '데이터-1';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_2                                         IS '데이터-2';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_3                                         IS '데이터-3';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_4                                         IS '데이터-4';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_5                                         IS '데이터-5';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_6                                         IS '데이터-6';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_7                                         IS '데이터-7';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_8                                         IS '데이터-8';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_9                                         IS '데이터-9';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_10                                        IS '데이터-10';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_11                                        IS '데이터-11';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_12                                        IS '데이터-12';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_13                                        IS '데이터-13';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_14                                        IS '데이터-14';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_15                                        IS '데이터-15';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_16                                        IS '데이터-16';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_17                                        IS '데이터-17';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_18                                        IS '데이터-18';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_19                                        IS '데이터-19';
COMMENT ON COLUMN TB_SA_ETC.ETC_DATA_20                                        IS '데이터-20';
COMMENT ON COLUMN TB_SA_ETC.LINK_SLIP_UID                                      IS '판매기타 연결된전표UID';
COMMENT ON COLUMN TB_SA_ETC.APPLY_AMT                                          IS '판매기타 적용금액(기타전표금액)';
COMMENT ON COLUMN TB_SA_ETC.POS_UID                                            IS 'UID';
COMMENT ON COLUMN TB_SA_ETC.MIG_YN                                             IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_ETC.REGI_ID                                            IS '등록자ID';
COMMENT ON COLUMN TB_SA_ETC.REGI_DTIME                                         IS '등록일시';
COMMENT ON COLUMN TB_SA_ETC.UPDT_ID                                            IS '수정자ID';
COMMENT ON COLUMN TB_SA_ETC.UPDT_DTIME                                         IS '수정일시';


 /* TB_SA_HEADER */

DROP TABLE TB_SA_HEADER PURGE;

CREATE TABLE TB_SA_HEADER
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, RECEIPT_NO                     VARCHAR2(5)                                  NOT NULL       
, RECEIPT_BARCODE                VARCHAR2(30)                                 NULL           
, ORG_SALE_DATE                  VARCHAR2(8)                                  NULL           
, ORG_STORE_CD                   VARCHAR2(10)                                 NULL           
, ORG_POS_NO                     VARCHAR2(2)                                  NULL           
, ORG_RECEIPT_NO                 VARCHAR2(5)                                  NULL           
, ORG_RECEIPT_BARCODE            VARCHAR2(30)                                 NULL           
, SALE_CHANNEL_FG                VARCHAR2(8)                                  NULL           
, SALE_FG                        VARCHAR2(1)                                  NULL           
, SALE_TYPE_FG                   VARCHAR2(2)                                  NULL           
, SALE_MANAGE_TYPE_FG            VARCHAR2(1)                                  NULL           
, SALE_MANAGE_TYPE_DETAIL_FG     VARCHAR2(4)                                  NULL           
, SALE_VOID_TYPE_FG              VARCHAR2(2)                                  NULL           
, TOTAL_QTY                      NUMBER(13,0)                                 NOT NULL       
, TOTAL_AMT                      NUMBER(22,2)                                 NOT NULL       
, TOTAL_DC_AMT                   NUMBER(22,2)                                 NOT NULL       
, SALE_AMT                       NUMBER(22,2)                                 NOT NULL       
, SALE_VAT_AMT                   NUMBER(22,2)                                 NOT NULL       
, SALE_NET_AMT                   NUMBER(22,2)                                 NOT NULL       
, GREEN_DEPOSIT_AMT              NUMBER(22,2)                                 NOT NULL       
, GREEN_DEPOSIT_QTY              NUMBER(13,0)                                 NOT NULL       
, CASHIER_ID                     VARCHAR2(12)                                 NULL           
, SALE_BEGIN_DTTM                VARCHAR2(14)                                 NULL           
, SALE_END_DTTM                  VARCHAR2(14)                                 NULL           
, TR_VERSION                     VARCHAR2(20)                                 NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, ORG_SALE_UID                   VARCHAR2(30)                                 NULL           
, CONNECT_SALE_UID               VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, CUSTOMER_KIND                  VARCHAR2(8)                                  NULL           
, CUSTOMER_COUNT                 NUMBER(13,0)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_HEADER PRIMARY KEY (
    BRND_CD, POS_SALE_NO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_HEADER                                                 IS '매출_헤더';
COMMENT ON COLUMN TB_SA_HEADER.BRND_CD                                         IS '브랜드코드';
COMMENT ON COLUMN TB_SA_HEADER.POS_SALE_NO                                     IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_HEADER.SALE_DATE                                       IS '영업일자';
COMMENT ON COLUMN TB_SA_HEADER.STORE_CD                                        IS '점포코드';
COMMENT ON COLUMN TB_SA_HEADER.POS_NO                                          IS 'POS번호';
COMMENT ON COLUMN TB_SA_HEADER.RECEIPT_NO                                      IS '영수증번호';
COMMENT ON COLUMN TB_SA_HEADER.RECEIPT_BARCODE                                 IS '영수증바코드';
COMMENT ON COLUMN TB_SA_HEADER.ORG_SALE_DATE                                   IS '원거래영업일자';
COMMENT ON COLUMN TB_SA_HEADER.ORG_STORE_CD                                    IS '원거래매장코드';
COMMENT ON COLUMN TB_SA_HEADER.ORG_POS_NO                                      IS '원거래포스번호';
COMMENT ON COLUMN TB_SA_HEADER.ORG_RECEIPT_NO                                  IS '원거래영수증번호';
COMMENT ON COLUMN TB_SA_HEADER.ORG_RECEIPT_BARCODE                             IS '원거래영수증바코드';
COMMENT ON COLUMN TB_SA_HEADER.SALE_CHANNEL_FG                                 IS 'POS매출채널구분';
COMMENT ON COLUMN TB_SA_HEADER.SALE_FG                                         IS '매출구분';
COMMENT ON COLUMN TB_SA_HEADER.SALE_TYPE_FG                                    IS '매출유형구분';
COMMENT ON COLUMN TB_SA_HEADER.SALE_MANAGE_TYPE_FG                             IS '매출관리유형구분';
COMMENT ON COLUMN TB_SA_HEADER.SALE_MANAGE_TYPE_DETAIL_FG                      IS '매출관리유형상세구분';
COMMENT ON COLUMN TB_SA_HEADER.SALE_VOID_TYPE_FG                               IS '매출반품유형구분';
COMMENT ON COLUMN TB_SA_HEADER.TOTAL_QTY                                       IS '총판매수량';
COMMENT ON COLUMN TB_SA_HEADER.TOTAL_AMT                                       IS '총판매금액';
COMMENT ON COLUMN TB_SA_HEADER.TOTAL_DC_AMT                                    IS '총할인금액';
COMMENT ON COLUMN TB_SA_HEADER.SALE_AMT                                        IS '매출금액';
COMMENT ON COLUMN TB_SA_HEADER.SALE_VAT_AMT                                    IS '매출부가세금액';
COMMENT ON COLUMN TB_SA_HEADER.SALE_NET_AMT                                    IS '순매출금액';
COMMENT ON COLUMN TB_SA_HEADER.GREEN_DEPOSIT_AMT                               IS '컵보증금';
COMMENT ON COLUMN TB_SA_HEADER.GREEN_DEPOSIT_QTY                               IS '컵보증금수량';
COMMENT ON COLUMN TB_SA_HEADER.CASHIER_ID                                      IS '판매담당자아이디';
COMMENT ON COLUMN TB_SA_HEADER.SALE_BEGIN_DTTM                                 IS '매출시작일시';
COMMENT ON COLUMN TB_SA_HEADER.SALE_END_DTTM                                   IS '매출종료일시';
COMMENT ON COLUMN TB_SA_HEADER.TR_VERSION                                      IS 'TR버전';
COMMENT ON COLUMN TB_SA_HEADER.POS_UID                                         IS 'UID';
COMMENT ON COLUMN TB_SA_HEADER.ORG_SALE_UID                                    IS '원거래 POS 매출번호 UID';
COMMENT ON COLUMN TB_SA_HEADER.CONNECT_SALE_UID                                IS '연결된매출UID';
COMMENT ON COLUMN TB_SA_HEADER.MIG_YN                                          IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_HEADER.CUSTOMER_KIND                                   IS '';
COMMENT ON COLUMN TB_SA_HEADER.CUSTOMER_COUNT                                  IS '';
COMMENT ON COLUMN TB_SA_HEADER.REGI_ID                                         IS '등록자ID';
COMMENT ON COLUMN TB_SA_HEADER.REGI_DTIME                                      IS '등록일시';
COMMENT ON COLUMN TB_SA_HEADER.UPDT_ID                                         IS '수정자ID';
COMMENT ON COLUMN TB_SA_HEADER.UPDT_DTIME                                      IS '수정일시';


 /* TB_SA_ITEM */

DROP TABLE TB_SA_ITEM PURGE;

CREATE TABLE TB_SA_ITEM
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SALE_FG                        VARCHAR2(1)                                  NULL           
, ITEM_CD                        VARCHAR2(12)                                 NULL           
, BARCODE                        VARCHAR2(40)                                 NULL           
, ITEM_NAME                      VARCHAR2(150)                                NULL           
, NORMAL_SALE_PRC                NUMBER(22,2)                                 NOT NULL       
, SALE_PRC                       NUMBER(22,2)                                 NOT NULL       
, SALE_QTY                       NUMBER(10,0)                                 NOT NULL       
, TOTAL_AMT                      NUMBER(22,2)                                 NOT NULL       
, TOTAL_DC_AMT                   NUMBER(22,2)                                 NOT NULL       
, SALE_AMT                       NUMBER(22,2)                                 NOT NULL       
, NET_AMT                        NUMBER(22,2)                                 NOT NULL       
, SALE_VAT_AMT                   NUMBER(22,2)                                 NOT NULL       
, ITEM_VAT_FG                    VARCHAR2(1)                                  NULL           
, ITEM_NORMAL_VAT_AMT            NUMBER(22,2)                                 NOT NULL       
, ITEM_VAT_RT                    NUMBER(10,4)                                 NOT NULL       
, ITEM_DEPART_CD                 VARCHAR2(10)                                 NULL           
, ITEM_LINE_CD                   VARCHAR2(10)                                 NULL           
, ITEM_CLASS_CD                  VARCHAR2(10)                                 NULL           
, ITEM_SUB_CLASS_CD              VARCHAR2(10)                                 NULL           
, ITEM_TYPE_FG                   VARCHAR2(2)                                  NULL           
, SAVE_POINT_FG                  VARCHAR2(1)                                  NULL           
, NORMAL_SAVE_POINT_AMT          NUMBER(22,2)                                 NOT NULL       
, EVENT_SAVE_POINT_AMT           NUMBER(22,2)                                 NOT NULL       
, USE_POINT_AMT                  NUMBER(22,2)                                 NOT NULL       
, REMARK                         VARCHAR2(50)                                 NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, UPPER_ITEM_UID                 VARCHAR2(30)                                 NULL           
, UPPER_ITEM_CD                  VARCHAR2(50)                                 NULL           
, ROOT_ITEM_UID                  VARCHAR2(30)                                 NULL           
, ROOT_ITEM_CD                   VARCHAR2(50)                                 NULL           
, SET_ITEM_TOTAL_AMT             NUMBER(22,2)                                 NOT NULL       
, SET_ITEM_TOTAL_DC_AMT          NUMBER(22,2)                                 NOT NULL       
, SET_ITEM_SALE_AMT              NUMBER(22,2)                                 NOT NULL       
, SET_ITEM_NET_AMT               NUMBER(22,2)                                 NOT NULL       
, SET_ITEM_VAT_AMT               NUMBER(22,2)                                 NOT NULL       
, PACKING_YN                     VARCHAR2(1)                                  NULL           
, MENU_DIV_CD                    VARCHAR2(2)                                  NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_ITEM PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_ITEM                                                   IS '매출_상세';
COMMENT ON COLUMN TB_SA_ITEM.BRND_CD                                           IS '브랜드코드';
COMMENT ON COLUMN TB_SA_ITEM.POS_SALE_NO                                       IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_ITEM.POS_SALE_ITEM_SN                                  IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_ITEM.SALE_DATE                                         IS '영업일자';
COMMENT ON COLUMN TB_SA_ITEM.STORE_CD                                          IS '점포코드';
COMMENT ON COLUMN TB_SA_ITEM.POS_NO                                            IS 'POS번호';
COMMENT ON COLUMN TB_SA_ITEM.RECEIPT_NO                                        IS '영수증번호';
COMMENT ON COLUMN TB_SA_ITEM.SALE_FG                                           IS '매출구분';
COMMENT ON COLUMN TB_SA_ITEM.ITEM_CD                                           IS '상품코드';
COMMENT ON COLUMN TB_SA_ITEM.BARCODE                                           IS '바코드';
COMMENT ON COLUMN TB_SA_ITEM.ITEM_NAME                                         IS '상품명';
COMMENT ON COLUMN TB_SA_ITEM.NORMAL_SALE_PRC                                   IS '기본판매가격';
COMMENT ON COLUMN TB_SA_ITEM.SALE_PRC                                          IS '판매가격';
COMMENT ON COLUMN TB_SA_ITEM.SALE_QTY                                          IS '판매수량';
COMMENT ON COLUMN TB_SA_ITEM.TOTAL_AMT                                         IS '총판매금액';
COMMENT ON COLUMN TB_SA_ITEM.TOTAL_DC_AMT                                      IS '총할인금액';
COMMENT ON COLUMN TB_SA_ITEM.SALE_AMT                                          IS '총매출금액';
COMMENT ON COLUMN TB_SA_ITEM.NET_AMT                                           IS '순매출금액';
COMMENT ON COLUMN TB_SA_ITEM.SALE_VAT_AMT                                      IS '매출부가세금액';
COMMENT ON COLUMN TB_SA_ITEM.ITEM_VAT_FG                                       IS '상품부가세구분';
COMMENT ON COLUMN TB_SA_ITEM.ITEM_NORMAL_VAT_AMT                               IS '상품기본부가세금액';
COMMENT ON COLUMN TB_SA_ITEM.ITEM_VAT_RT                                       IS '상품부가세율';
COMMENT ON COLUMN TB_SA_ITEM.ITEM_DEPART_CD                                    IS '상품대분류코드';
COMMENT ON COLUMN TB_SA_ITEM.ITEM_LINE_CD                                      IS '상품중분류코드';
COMMENT ON COLUMN TB_SA_ITEM.ITEM_CLASS_CD                                     IS '상품소분류코드';
COMMENT ON COLUMN TB_SA_ITEM.ITEM_SUB_CLASS_CD                                 IS '상품상세분류코드';
COMMENT ON COLUMN TB_SA_ITEM.ITEM_TYPE_FG                                      IS '상품 유형 구분';
COMMENT ON COLUMN TB_SA_ITEM.SAVE_POINT_FG                                     IS '포인트적립구분';
COMMENT ON COLUMN TB_SA_ITEM.NORMAL_SAVE_POINT_AMT                             IS '기본포인트적립금액';
COMMENT ON COLUMN TB_SA_ITEM.EVENT_SAVE_POINT_AMT                              IS '이벤트포인트적립금액';
COMMENT ON COLUMN TB_SA_ITEM.USE_POINT_AMT                                     IS '포인트사용금액';
COMMENT ON COLUMN TB_SA_ITEM.REMARK                                            IS '비고';
COMMENT ON COLUMN TB_SA_ITEM.POS_UID                                           IS 'UID';
COMMENT ON COLUMN TB_SA_ITEM.UPPER_ITEM_UID                                    IS '상위 판매상품 UID';
COMMENT ON COLUMN TB_SA_ITEM.UPPER_ITEM_CD                                     IS '상위 판매상품 상품코드';
COMMENT ON COLUMN TB_SA_ITEM.ROOT_ITEM_UID                                     IS '최상위 판매상품 UID';
COMMENT ON COLUMN TB_SA_ITEM.ROOT_ITEM_CD                                      IS '최상위 판매상품 상품코드';
COMMENT ON COLUMN TB_SA_ITEM.SET_ITEM_TOTAL_AMT                                IS '세트구성상품 총판매금액';
COMMENT ON COLUMN TB_SA_ITEM.SET_ITEM_TOTAL_DC_AMT                             IS '세트구성상품 총할인금액';
COMMENT ON COLUMN TB_SA_ITEM.SET_ITEM_SALE_AMT                                 IS '세트구성상품 총매출금액';
COMMENT ON COLUMN TB_SA_ITEM.SET_ITEM_NET_AMT                                  IS '세트구성상품 순매출금액';
COMMENT ON COLUMN TB_SA_ITEM.SET_ITEM_VAT_AMT                                  IS '세트구성상품 매출부가세금액';
COMMENT ON COLUMN TB_SA_ITEM.PACKING_YN                                        IS '';
COMMENT ON COLUMN TB_SA_ITEM.MENU_DIV_CD                                       IS '';
COMMENT ON COLUMN TB_SA_ITEM.MIG_YN                                            IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_ITEM.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_SA_ITEM.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_SA_ITEM.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_SA_ITEM.UPDT_DTIME                                        IS '수정일시';


 /* TB_SA_JOURNAL */

DROP TABLE TB_SA_JOURNAL PURGE;

CREATE TABLE TB_SA_JOURNAL
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, JOURNAL_TYPE_FG                VARCHAR2(2)                                  NULL           
, JOURNAL_TXT                    CLOB                                         NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_JOURNAL PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_JOURNAL                                                IS '매출_영수증';
COMMENT ON COLUMN TB_SA_JOURNAL.BRND_CD                                        IS '브랜드코드';
COMMENT ON COLUMN TB_SA_JOURNAL.POS_SALE_NO                                    IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_JOURNAL.POS_SALE_ITEM_SN                               IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_JOURNAL.SALE_DATE                                      IS '영업일자';
COMMENT ON COLUMN TB_SA_JOURNAL.STORE_CD                                       IS '점포코드';
COMMENT ON COLUMN TB_SA_JOURNAL.POS_NO                                         IS 'POS번호';
COMMENT ON COLUMN TB_SA_JOURNAL.RECEIPT_NO                                     IS '영수증번호';
COMMENT ON COLUMN TB_SA_JOURNAL.JOURNAL_TYPE_FG                                IS '영수증 출력물유형구분';
COMMENT ON COLUMN TB_SA_JOURNAL.JOURNAL_TXT                                    IS '영수증 출력물내용';
COMMENT ON COLUMN TB_SA_JOURNAL.POS_UID                                        IS 'UID';
COMMENT ON COLUMN TB_SA_JOURNAL.MIG_YN                                         IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_JOURNAL.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_SA_JOURNAL.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_SA_JOURNAL.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_SA_JOURNAL.UPDT_DTIME                                     IS '수정일시';


 /* TB_SA_MAPPING */

DROP TABLE TB_SA_MAPPING PURGE;

CREATE TABLE TB_SA_MAPPING
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, RT_AMT_FG                      VARCHAR2(1)                                  NULL           
, RT_AMT_VAL                     NUMBER(22,2)                                 NOT NULL       
, TARGET_FG                      VARCHAR2(2)                                  NULL           
, TARGET_AMT                     NUMBER(22,2)                                 NOT NULL       
, TARGET_QTY                     NUMBER(13,0)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, APPLY_QTY                      NUMBER(13,0)                                 NOT NULL       
, EVT_BNF_TYPE_FG                VARCHAR2(6)                                  NULL           
, EVT_BNF_VAL                    NUMBER(22,2)                                 NULL           
, EVT_COND_TYPE_FG               VARCHAR2(2)                                  NULL           
, EVT_DC_TYPE_FG                 VARCHAR2(2)                                  NULL           
, EVT_NO                         VARCHAR2(10)                                 NULL           
, EVT_TYPE_FG                    VARCHAR2(6)                                  NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_ITEM_UID                  VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_MAPPING PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_MAPPING                                                IS '매출_매핑';
COMMENT ON COLUMN TB_SA_MAPPING.BRND_CD                                        IS '브랜드코드';
COMMENT ON COLUMN TB_SA_MAPPING.POS_SALE_NO                                    IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_MAPPING.POS_SALE_ITEM_SN                               IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_MAPPING.SALE_DATE                                      IS '영업일자';
COMMENT ON COLUMN TB_SA_MAPPING.STORE_CD                                       IS '점포코드';
COMMENT ON COLUMN TB_SA_MAPPING.POS_NO                                         IS 'POS번호';
COMMENT ON COLUMN TB_SA_MAPPING.RECEIPT_NO                                     IS '영수증번호';
COMMENT ON COLUMN TB_SA_MAPPING.SLIP_FG                                        IS '혜택결제구분';
COMMENT ON COLUMN TB_SA_MAPPING.SLIP_TYPE_FG                                   IS '혜택결제유형구분';
COMMENT ON COLUMN TB_SA_MAPPING.SLIP_TENDER_FG                                 IS '혜택결제유형상세구분';
COMMENT ON COLUMN TB_SA_MAPPING.RT_AMT_FG                                      IS '혜택결제율금액구분';
COMMENT ON COLUMN TB_SA_MAPPING.RT_AMT_VAL                                     IS '혜택결제율금액값';
COMMENT ON COLUMN TB_SA_MAPPING.TARGET_FG                                      IS '혜택결제대상구분';
COMMENT ON COLUMN TB_SA_MAPPING.TARGET_AMT                                     IS '혜택결제대상금액';
COMMENT ON COLUMN TB_SA_MAPPING.TARGET_QTY                                     IS '혜택결제대상수량';
COMMENT ON COLUMN TB_SA_MAPPING.APPLY_AMT                                      IS '혜택결제적용금액';
COMMENT ON COLUMN TB_SA_MAPPING.APPLY_QTY                                      IS '혜택결제적용수량';
COMMENT ON COLUMN TB_SA_MAPPING.EVT_BNF_TYPE_FG                                IS '프로모션(행사) 행사혜택유형구분(Lv3)(메뉴/영수증,할인/페어링/증정/옵션UP/증정품,단일/교차/일반/멀티)';
COMMENT ON COLUMN TB_SA_MAPPING.EVT_BNF_VAL                                    IS '프로모션(행사) 행사혜택값';
COMMENT ON COLUMN TB_SA_MAPPING.EVT_COND_TYPE_FG                               IS '프로모션(행사) 행사조건유형구분(메뉴구매,구매금액,특정결제,행사참여)';
COMMENT ON COLUMN TB_SA_MAPPING.EVT_DC_TYPE_FG                                 IS '프로모션(행사) 행사할인유형구분(정액,정율,특가,균일가)';
COMMENT ON COLUMN TB_SA_MAPPING.EVT_NO                                         IS '프로모션(행사) 행사번호';
COMMENT ON COLUMN TB_SA_MAPPING.EVT_TYPE_FG                                    IS '프로모션(행사) 행사유형구분(Lv3)';
COMMENT ON COLUMN TB_SA_MAPPING.POS_UID                                        IS 'UID';
COMMENT ON COLUMN TB_SA_MAPPING.LINK_ITEM_UID                                  IS '연결된판매상품UID';
COMMENT ON COLUMN TB_SA_MAPPING.LINK_SLIP_UID                                  IS '연결된판매전표UID';
COMMENT ON COLUMN TB_SA_MAPPING.MIG_YN                                         IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_MAPPING.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_SA_MAPPING.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_SA_MAPPING.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_SA_MAPPING.UPDT_DTIME                                     IS '수정일시';


 /* TB_SA_MEMBERSHIP */

DROP TABLE TB_SA_MEMBERSHIP PURGE;

CREATE TABLE TB_SA_MEMBERSHIP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, MBR_NO                         VARCHAR2(16)                                 NULL           
, MBR_NM                         VARCHAR2(80)                                 NULL           
, MBR_ID_NO                      VARCHAR2(160)                                NULL           
, MBR_ID_NO_FG                   VARCHAR2(1)                                  NULL           
, SAVE_POINT_AMT                 NUMBER(22,2)                                 NOT NULL       
, USE_POINT_AMT                  NUMBER(13,0)                                 NULL           
, REMAIN_POINT_AMT               NUMBER(22,2)                                 NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_MEMBERSHIP PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_MEMBERSHIP                                             IS '매출_멤버십';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.BRND_CD                                     IS '브랜드코드';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.POS_SALE_NO                                 IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.POS_SALE_ITEM_SN                            IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.SALE_DATE                                   IS '영업일자';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.STORE_CD                                    IS '점포코드';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.POS_NO                                      IS 'POS번호';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.RECEIPT_NO                                  IS '영수증번호';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.MBR_NO                                      IS '회원번호';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.MBR_NM                                      IS '회원명';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.MBR_ID_NO                                   IS '회원식별번호';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.MBR_ID_NO_FG                                IS '회원식별번호구분';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.SAVE_POINT_AMT                              IS '총할인금액';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.USE_POINT_AMT                               IS '사용포인트';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.REMAIN_POINT_AMT                            IS '회원가용포인트(조회시점)';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.POS_UID                                     IS 'UID';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.MIG_YN                                      IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_SA_MEMBERSHIP.UPDT_DTIME                                  IS '수정일시';


 /* TB_SA_PAY_CARD */

DROP TABLE TB_SA_PAY_CARD PURGE;

CREATE TABLE TB_SA_PAY_CARD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, REQ_AMT                        NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, BUYER_CD                       VARCHAR2(3)                                  NULL           
, ISSUER_CD                      VARCHAR2(3)                                  NULL           
, SMART_PAY_TYPE_FG              VARCHAR2(8)                                  NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_PAY_CARD PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_PAY_CARD                                               IS '매출_결제_신용카드';
COMMENT ON COLUMN TB_SA_PAY_CARD.BRND_CD                                       IS '브랜드코드';
COMMENT ON COLUMN TB_SA_PAY_CARD.POS_SALE_NO                                   IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_PAY_CARD.POS_SALE_ITEM_SN                              IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_PAY_CARD.SALE_DATE                                     IS '영업일자';
COMMENT ON COLUMN TB_SA_PAY_CARD.STORE_CD                                      IS '점포코드';
COMMENT ON COLUMN TB_SA_PAY_CARD.POS_NO                                        IS 'POS번호';
COMMENT ON COLUMN TB_SA_PAY_CARD.RECEIPT_NO                                    IS '영수증번호';
COMMENT ON COLUMN TB_SA_PAY_CARD.SLIP_FG                                       IS '전표유형구분';
COMMENT ON COLUMN TB_SA_PAY_CARD.SLIP_TYPE_FG                                  IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_PAY_CARD.SLIP_TENDER_FG                                IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_PAY_CARD.APPROVAL_FG                                   IS '승인구분';
COMMENT ON COLUMN TB_SA_PAY_CARD.REQ_AMT                                       IS '요청금액';
COMMENT ON COLUMN TB_SA_PAY_CARD.APPLY_AMT                                     IS '적용금액';
COMMENT ON COLUMN TB_SA_PAY_CARD.ID_NO                                         IS '식별번호';
COMMENT ON COLUMN TB_SA_PAY_CARD.BUYER_CD                                      IS '매입사코드';
COMMENT ON COLUMN TB_SA_PAY_CARD.ISSUER_CD                                     IS '발급사코드';
COMMENT ON COLUMN TB_SA_PAY_CARD.SMART_PAY_TYPE_FG                             IS '스마트페이유형구분(POST20)';
COMMENT ON COLUMN TB_SA_PAY_CARD.POS_UID                                       IS 'UID';
COMMENT ON COLUMN TB_SA_PAY_CARD.LINK_SLIP_UID                                 IS '연결된전표UID';
COMMENT ON COLUMN TB_SA_PAY_CARD.MIG_YN                                        IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_PAY_CARD.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SA_PAY_CARD.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SA_PAY_CARD.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SA_PAY_CARD.UPDT_DTIME                                    IS '수정일시';


 /* TB_SA_PAY_CASH */

DROP TABLE TB_SA_PAY_CASH PURGE;

CREATE TABLE TB_SA_PAY_CASH
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, REQ_AMT                        NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, CHANGE_AMT                     NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_PAY_CASH PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_PAY_CASH                                               IS '매출_결제_현금';
COMMENT ON COLUMN TB_SA_PAY_CASH.BRND_CD                                       IS '브랜드코드';
COMMENT ON COLUMN TB_SA_PAY_CASH.POS_SALE_NO                                   IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_PAY_CASH.POS_SALE_ITEM_SN                              IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_PAY_CASH.SALE_DATE                                     IS '영업일자';
COMMENT ON COLUMN TB_SA_PAY_CASH.STORE_CD                                      IS '점포코드';
COMMENT ON COLUMN TB_SA_PAY_CASH.POS_NO                                        IS 'POS번호';
COMMENT ON COLUMN TB_SA_PAY_CASH.RECEIPT_NO                                    IS '영수증번호';
COMMENT ON COLUMN TB_SA_PAY_CASH.SLIP_FG                                       IS '전표유형구분';
COMMENT ON COLUMN TB_SA_PAY_CASH.SLIP_TYPE_FG                                  IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_PAY_CASH.SLIP_TENDER_FG                                IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_PAY_CASH.APPROVAL_FG                                   IS '승인구분';
COMMENT ON COLUMN TB_SA_PAY_CASH.REQ_AMT                                       IS '요청금액';
COMMENT ON COLUMN TB_SA_PAY_CASH.APPLY_AMT                                     IS '적용금액';
COMMENT ON COLUMN TB_SA_PAY_CASH.CHANGE_AMT                                    IS '거스름금액';
COMMENT ON COLUMN TB_SA_PAY_CASH.ID_NO                                         IS '식별번호';
COMMENT ON COLUMN TB_SA_PAY_CASH.POS_UID                                       IS 'UID';
COMMENT ON COLUMN TB_SA_PAY_CASH.LINK_SLIP_UID                                 IS '연결된전표UID';
COMMENT ON COLUMN TB_SA_PAY_CASH.MIG_YN                                        IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_PAY_CASH.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SA_PAY_CASH.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SA_PAY_CASH.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SA_PAY_CASH.UPDT_DTIME                                    IS '수정일시';


 /* TB_SA_PAY_CREDIT */

DROP TABLE TB_SA_PAY_CREDIT PURGE;

CREATE TABLE TB_SA_PAY_CREDIT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, REQ_AMT                        NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, VENDOR_CD                      VARCHAR2(20)                                 NULL           
, UNIT_KIND_CD                   VARCHAR2(10)                                 NULL           
, UNIT_AMT_CD                    VARCHAR2(10)                                 NULL           
, UNIT_AMT                       NUMBER(22,2)                                 NULL           
, UNIT_QTY                       NUMBER(13,0)                                 NOT NULL       
, CHANGE_AMT                     NUMBER(22,2)                                 NOT NULL       
, APPLY_FG                       VARCHAR2(1)                                  NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_PAY_CREDIT PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_PAY_CREDIT                                             IS '매출_결제_외상';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.BRND_CD                                     IS '브랜드코드';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.POS_SALE_NO                                 IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.POS_SALE_ITEM_SN                            IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.SALE_DATE                                   IS '영업일자';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.STORE_CD                                    IS '점포코드';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.POS_NO                                      IS 'POS번호';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.RECEIPT_NO                                  IS '영수증번호';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.SLIP_FG                                     IS '전표유형구분';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.SLIP_TYPE_FG                                IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.SLIP_TENDER_FG                              IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.APPROVAL_FG                                 IS '승인구분';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.REQ_AMT                                     IS '요청금액';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.APPLY_AMT                                   IS '적용금액';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.ID_NO                                       IS '식별번호';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.VENDOR_CD                                   IS '거래처코드';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.UNIT_KIND_CD                                IS '권종코드';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.UNIT_AMT_CD                                 IS '금액코드';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.UNIT_AMT                                    IS '금액';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.UNIT_QTY                                    IS '수량';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.CHANGE_AMT                                  IS '거스름금액';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.APPLY_FG                                    IS '결제 적용 구분';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.POS_UID                                     IS 'UID';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.LINK_SLIP_UID                               IS '연결된전표UID';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.MIG_YN                                      IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_SA_PAY_CREDIT.UPDT_DTIME                                  IS '수정일시';


 /* TB_SA_PAY_ETC */

DROP TABLE TB_SA_PAY_ETC PURGE;

CREATE TABLE TB_SA_PAY_ETC
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, REQ_AMT                        NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, PAY_AMT_1                      NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_2                      NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_3                      NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_4                      NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_5                      NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_6                      NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_7                      NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_8                      NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_9                      NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_10                     NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_11                     NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_12                     NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_13                     NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_14                     NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_15                     NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_16                     NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_17                     NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_18                     NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_19                     NUMBER(22,2)                                 NOT NULL       
, PAY_AMT_20                     NUMBER(22,2)                                 NOT NULL       
, PAY_DATA_1                     VARCHAR2(600)                                NULL           
, PAY_DATA_2                     VARCHAR2(600)                                NULL           
, PAY_DATA_3                     VARCHAR2(600)                                NULL           
, PAY_DATA_4                     VARCHAR2(600)                                NULL           
, PAY_DATA_5                     VARCHAR2(600)                                NULL           
, PAY_DATA_6                     VARCHAR2(600)                                NULL           
, PAY_DATA_7                     VARCHAR2(600)                                NULL           
, PAY_DATA_8                     VARCHAR2(600)                                NULL           
, PAY_DATA_9                     VARCHAR2(600)                                NULL           
, PAY_DATA_10                    VARCHAR2(600)                                NULL           
, PAY_DATA_11                    VARCHAR2(600)                                NULL           
, PAY_DATA_12                    VARCHAR2(600)                                NULL           
, PAY_DATA_13                    VARCHAR2(600)                                NULL           
, PAY_DATA_14                    VARCHAR2(600)                                NULL           
, PAY_DATA_15                    VARCHAR2(600)                                NULL           
, PAY_DATA_16                    VARCHAR2(600)                                NULL           
, PAY_DATA_17                    VARCHAR2(600)                                NULL           
, PAY_DATA_18                    VARCHAR2(600)                                NULL           
, PAY_DATA_19                    VARCHAR2(600)                                NULL           
, PAY_DATA_20                    VARCHAR2(600)                                NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, PAY_DATA_21                    VARCHAR2(200)                                NULL           
, PAY_DATA_22                    VARCHAR2(200)                                NULL           
, PAY_DATA_23                    VARCHAR2(200)                                NULL           
, PAY_DATA_24                    VARCHAR2(200)                                NULL           
, PAY_DATA_25                    VARCHAR2(200)                                NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_PAY_ETC PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_PAY_ETC                                                IS '매출_결제_기타';
COMMENT ON COLUMN TB_SA_PAY_ETC.BRND_CD                                        IS '브랜드코드';
COMMENT ON COLUMN TB_SA_PAY_ETC.POS_SALE_NO                                    IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_PAY_ETC.POS_SALE_ITEM_SN                               IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_PAY_ETC.SALE_DATE                                      IS '영업일자';
COMMENT ON COLUMN TB_SA_PAY_ETC.STORE_CD                                       IS '점포코드';
COMMENT ON COLUMN TB_SA_PAY_ETC.POS_NO                                         IS 'POS번호';
COMMENT ON COLUMN TB_SA_PAY_ETC.RECEIPT_NO                                     IS '영수증번호';
COMMENT ON COLUMN TB_SA_PAY_ETC.SLIP_FG                                        IS '전표유형구분';
COMMENT ON COLUMN TB_SA_PAY_ETC.SLIP_TYPE_FG                                   IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_PAY_ETC.SLIP_TENDER_FG                                 IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_PAY_ETC.APPROVAL_FG                                    IS '승인구분';
COMMENT ON COLUMN TB_SA_PAY_ETC.REQ_AMT                                        IS '요청금액';
COMMENT ON COLUMN TB_SA_PAY_ETC.APPLY_AMT                                      IS '적용금액';
COMMENT ON COLUMN TB_SA_PAY_ETC.ID_NO                                          IS '식별번호';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_1                                      IS '금액-1';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_2                                      IS '금액-2';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_3                                      IS '금액-3';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_4                                      IS '금액-4';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_5                                      IS '금액-5';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_6                                      IS '금액-6';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_7                                      IS '금액-7';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_8                                      IS '금액-8';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_9                                      IS '금액-9';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_10                                     IS '금액-10';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_11                                     IS '금액-11';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_12                                     IS '금액-12';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_13                                     IS '금액-13';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_14                                     IS '금액-14';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_15                                     IS '금액-15';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_16                                     IS '금액-16';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_17                                     IS '금액-17';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_18                                     IS '금액-18';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_19                                     IS '금액-19';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_AMT_20                                     IS '금액-20';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_1                                     IS '데이터-1';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_2                                     IS '데이터-2';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_3                                     IS '데이터-3';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_4                                     IS '데이터-4';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_5                                     IS '데이터-5';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_6                                     IS '데이터-6';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_7                                     IS '데이터-7';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_8                                     IS '데이터-8';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_9                                     IS '데이터-9';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_10                                    IS '데이터-10';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_11                                    IS '데이터-11';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_12                                    IS '데이터-12';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_13                                    IS '데이터-13';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_14                                    IS '데이터-14';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_15                                    IS '데이터-15';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_16                                    IS '데이터-16';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_17                                    IS '데이터-17';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_18                                    IS '데이터-18';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_19                                    IS '데이터-19';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_20                                    IS '데이터-20';
COMMENT ON COLUMN TB_SA_PAY_ETC.POS_UID                                        IS 'UID';
COMMENT ON COLUMN TB_SA_PAY_ETC.LINK_SLIP_UID                                  IS '연결된전표UID';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_21                                    IS '';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_22                                    IS '';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_23                                    IS '';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_24                                    IS '';
COMMENT ON COLUMN TB_SA_PAY_ETC.PAY_DATA_25                                    IS '';
COMMENT ON COLUMN TB_SA_PAY_ETC.MIG_YN                                         IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_PAY_ETC.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_SA_PAY_ETC.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_SA_PAY_ETC.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_SA_PAY_ETC.UPDT_DTIME                                     IS '수정일시';


 /* TB_SA_PAY_GIFT */

DROP TABLE TB_SA_PAY_GIFT PURGE;

CREATE TABLE TB_SA_PAY_GIFT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, REQ_AMT                        NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, UNIT_KIND_CD                   VARCHAR2(4)                                  NULL           
, UNIT_AMT_CD                    VARCHAR2(4)                                  NULL           
, UNIT_AMT                       NUMBER(22,2)                                 NOT NULL       
, UNIT_QTY                       NUMBER(13,0)                                 NOT NULL       
, CHANGE_AMT                     NUMBER(22,2)                                 NOT NULL       
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_PAY_GIFT PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_PAY_GIFT                                               IS '매출_결제_상품권';
COMMENT ON COLUMN TB_SA_PAY_GIFT.BRND_CD                                       IS '브랜드코드';
COMMENT ON COLUMN TB_SA_PAY_GIFT.POS_SALE_NO                                   IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_PAY_GIFT.POS_SALE_ITEM_SN                              IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_PAY_GIFT.SALE_DATE                                     IS '영업일자';
COMMENT ON COLUMN TB_SA_PAY_GIFT.STORE_CD                                      IS '점포코드';
COMMENT ON COLUMN TB_SA_PAY_GIFT.POS_NO                                        IS 'POS번호';
COMMENT ON COLUMN TB_SA_PAY_GIFT.RECEIPT_NO                                    IS '영수증번호';
COMMENT ON COLUMN TB_SA_PAY_GIFT.SLIP_FG                                       IS '전표유형구분';
COMMENT ON COLUMN TB_SA_PAY_GIFT.SLIP_TYPE_FG                                  IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_PAY_GIFT.SLIP_TENDER_FG                                IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_PAY_GIFT.APPROVAL_FG                                   IS '승인구분';
COMMENT ON COLUMN TB_SA_PAY_GIFT.REQ_AMT                                       IS '요청금액';
COMMENT ON COLUMN TB_SA_PAY_GIFT.APPLY_AMT                                     IS '적용금액';
COMMENT ON COLUMN TB_SA_PAY_GIFT.ID_NO                                         IS '식별번호';
COMMENT ON COLUMN TB_SA_PAY_GIFT.UNIT_KIND_CD                                  IS '권종코드';
COMMENT ON COLUMN TB_SA_PAY_GIFT.UNIT_AMT_CD                                   IS '금액코드';
COMMENT ON COLUMN TB_SA_PAY_GIFT.UNIT_AMT                                      IS '금액';
COMMENT ON COLUMN TB_SA_PAY_GIFT.UNIT_QTY                                      IS '수량';
COMMENT ON COLUMN TB_SA_PAY_GIFT.CHANGE_AMT                                    IS '현금 거스름금액';
COMMENT ON COLUMN TB_SA_PAY_GIFT.POS_UID                                       IS 'UID';
COMMENT ON COLUMN TB_SA_PAY_GIFT.LINK_SLIP_UID                                 IS '연결된전표UID';
COMMENT ON COLUMN TB_SA_PAY_GIFT.MIG_YN                                        IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_PAY_GIFT.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SA_PAY_GIFT.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SA_PAY_GIFT.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SA_PAY_GIFT.UPDT_DTIME                                    IS '수정일시';


 /* TB_SA_PAY_MOBILE_CP */

DROP TABLE TB_SA_PAY_MOBILE_CP PURGE;

CREATE TABLE TB_SA_PAY_MOBILE_CP
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, REQ_AMT                        NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, COUPON_NM                      VARCHAR2(450)                                NULL           
, CP_KIND_CD                     VARCHAR2(2)                                  NULL           
, KIND_FG                        VARCHAR2(2)                                  NULL           
, FACE_PRICE                     NUMBER(22,2)                                 NOT NULL       
, MENU_CD                        VARCHAR2(20)                                 NULL           
, DUPLICATE_YN                   VARCHAR2(1)                                  NULL           
, CASHRECEIPT_YN                 VARCHAR2(1)                                  NOT NULL       
, POINT_ACCUM_YN                 VARCHAR2(1)                                  NULL           
, POINT_USE_YN                   VARCHAR2(1)                                  NULL           
, JOINCARD_YN                    VARCHAR2(1)                                  NULL           
, EMP_DC_YN                      VARCHAR2(1)                                  NULL           
, TERMS_CD                       VARCHAR2(20)                                 NULL           
, TERMS_CNT                      NUMBER(13,0)                                 NOT NULL       
, BENEFIT_CD                     VARCHAR2(1)                                  NULL           
, BENEFIT_AMT                    NUMBER(22,2)                                 NOT NULL       
, BENEFIT_CNT                    NUMBER(13,0)                                 NOT NULL       
, ISSUER_CD                      VARCHAR2(10)                                 NULL           
, SELL_CHANNEL_CD                VARCHAR2(10)                                 NULL           
, CHANGE_AMT                     NUMBER(22,2)                                 NOT NULL       
, ISSUER_NM                      VARCHAR2(80)                                 NULL           
, ISSUER_TYPE                    VARCHAR2(1)                                  NULL           
, ISSUER_DATE                    VARCHAR2(8)                                  NULL           
, SELL_CHANNEL_NM                VARCHAR2(80)                                 NULL           
, PAY_MTHD_MNG_NO                VARCHAR2(50)                                 NULL           
, VERSION_NO                     VARCHAR2(10)                                 NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_PAY_MOBILE_CP PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_PAY_MOBILE_CP                                          IS '매출_결제_모바일쿠폰';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.BRND_CD                                  IS '브랜드코드';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.POS_SALE_NO                              IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.POS_SALE_ITEM_SN                         IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.SALE_DATE                                IS '영업일자';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.STORE_CD                                 IS '점포코드';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.POS_NO                                   IS 'POS번호';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.RECEIPT_NO                               IS '영수증번호';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.SLIP_FG                                  IS '전표유형구분';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.SLIP_TYPE_FG                             IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.SLIP_TENDER_FG                           IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.APPROVAL_FG                              IS '승인구분';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.REQ_AMT                                  IS '요청금액';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.APPLY_AMT                                IS '적용금액';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.ID_NO                                    IS '식별번호';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.COUPON_NM                                IS '쿠폰이름';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.CP_KIND_CD                               IS '쿠폰 권종 코드';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.KIND_FG                                  IS '금액권, 상품권 구분';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.FACE_PRICE                               IS '액면가';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.MENU_CD                                  IS '혜택메뉴';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.DUPLICATE_YN                             IS '중복할인여부';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.CASHRECEIPT_YN                           IS '현금영수증 여부';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.POINT_ACCUM_YN                           IS '포인트적립여부';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.POINT_USE_YN                             IS '포인트사용여부';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.JOINCARD_YN                              IS '제휴카드 사용여부';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.EMP_DC_YN                                IS '임직원 할인여부';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.TERMS_CD                                 IS '조건메뉴코드';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.TERMS_CNT                                IS '조건메뉴수량';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.BENEFIT_CD                               IS '혜택코드';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.BENEFIT_AMT                              IS '혜택금액';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.BENEFIT_CNT                              IS '혜택수량';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.ISSUER_CD                                IS '발급업체코드';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.SELL_CHANNEL_CD                          IS '판매채널코드';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.CHANGE_AMT                               IS '거스름금액';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.ISSUER_NM                                IS '발급업체명';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.ISSUER_TYPE                              IS '발급타입';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.ISSUER_DATE                              IS '발급일자';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.SELL_CHANNEL_NM                          IS '판매채널명';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.PAY_MTHD_MNG_NO                          IS '결제수단관리번호';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.VERSION_NO                               IS '전문 구분';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.POS_UID                                  IS 'UID';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.LINK_SLIP_UID                            IS '연결된전표UID';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.MIG_YN                                   IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN TB_SA_PAY_MOBILE_CP.UPDT_DTIME                               IS '수정일시';


 /* TB_SA_PAY_POINT */

DROP TABLE TB_SA_PAY_POINT PURGE;

CREATE TABLE TB_SA_PAY_POINT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, REQ_AMT                        NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_PAY_POINT PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_PAY_POINT                                              IS '매출_결제_제휴포인트';
COMMENT ON COLUMN TB_SA_PAY_POINT.BRND_CD                                      IS '브랜드코드';
COMMENT ON COLUMN TB_SA_PAY_POINT.POS_SALE_NO                                  IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_PAY_POINT.POS_SALE_ITEM_SN                             IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_PAY_POINT.SALE_DATE                                    IS '영업일자';
COMMENT ON COLUMN TB_SA_PAY_POINT.STORE_CD                                     IS '점포코드';
COMMENT ON COLUMN TB_SA_PAY_POINT.POS_NO                                       IS 'POS번호';
COMMENT ON COLUMN TB_SA_PAY_POINT.RECEIPT_NO                                   IS '영수증번호';
COMMENT ON COLUMN TB_SA_PAY_POINT.SLIP_FG                                      IS '전표유형구분';
COMMENT ON COLUMN TB_SA_PAY_POINT.SLIP_TYPE_FG                                 IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_PAY_POINT.SLIP_TENDER_FG                               IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_PAY_POINT.APPROVAL_FG                                  IS '승인구분';
COMMENT ON COLUMN TB_SA_PAY_POINT.REQ_AMT                                      IS '요청금액';
COMMENT ON COLUMN TB_SA_PAY_POINT.APPLY_AMT                                    IS '적용금액';
COMMENT ON COLUMN TB_SA_PAY_POINT.ID_NO                                        IS '식별번호';
COMMENT ON COLUMN TB_SA_PAY_POINT.POS_UID                                      IS 'UID';
COMMENT ON COLUMN TB_SA_PAY_POINT.LINK_SLIP_UID                                IS '연결된전표UID';
COMMENT ON COLUMN TB_SA_PAY_POINT.MIG_YN                                       IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_PAY_POINT.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_SA_PAY_POINT.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_SA_PAY_POINT.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_SA_PAY_POINT.UPDT_DTIME                                   IS '수정일시';


 /* TB_SA_PAY_PPC */

DROP TABLE TB_SA_PAY_PPC PURGE;

CREATE TABLE TB_SA_PAY_PPC
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, REQ_AMT                        NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, PREPAID_CRD_CD                 VARCHAR2(3)                                  NULL           
, PREPAID_CARD_TYPE              VARCHAR2(2)                                  NULL           
, PREPAID_CARD_NO                VARCHAR2(256)                                NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_PAY_PPC PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_PAY_PPC                                                IS '매출_결제_선불카드';
COMMENT ON COLUMN TB_SA_PAY_PPC.BRND_CD                                        IS '브랜드코드';
COMMENT ON COLUMN TB_SA_PAY_PPC.POS_SALE_NO                                    IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_PAY_PPC.POS_SALE_ITEM_SN                               IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_PAY_PPC.SALE_DATE                                      IS '영업일자';
COMMENT ON COLUMN TB_SA_PAY_PPC.STORE_CD                                       IS '점포코드';
COMMENT ON COLUMN TB_SA_PAY_PPC.POS_NO                                         IS 'POS번호';
COMMENT ON COLUMN TB_SA_PAY_PPC.RECEIPT_NO                                     IS '영수증번호';
COMMENT ON COLUMN TB_SA_PAY_PPC.SLIP_FG                                        IS '전표유형구분';
COMMENT ON COLUMN TB_SA_PAY_PPC.SLIP_TYPE_FG                                   IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_PAY_PPC.SLIP_TENDER_FG                                 IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_PAY_PPC.APPROVAL_FG                                    IS '승인구분';
COMMENT ON COLUMN TB_SA_PAY_PPC.REQ_AMT                                        IS '요청금액';
COMMENT ON COLUMN TB_SA_PAY_PPC.APPLY_AMT                                      IS '적용금액';
COMMENT ON COLUMN TB_SA_PAY_PPC.ID_NO                                          IS '식별번호';
COMMENT ON COLUMN TB_SA_PAY_PPC.PREPAID_CRD_CD                                 IS '결제 상세 코드';
COMMENT ON COLUMN TB_SA_PAY_PPC.PREPAID_CARD_TYPE                              IS '기프트 카드 분류';
COMMENT ON COLUMN TB_SA_PAY_PPC.PREPAID_CARD_NO                                IS '기프트 카드 번호';
COMMENT ON COLUMN TB_SA_PAY_PPC.POS_UID                                        IS 'UID';
COMMENT ON COLUMN TB_SA_PAY_PPC.LINK_SLIP_UID                                  IS '연결된전표UID';
COMMENT ON COLUMN TB_SA_PAY_PPC.MIG_YN                                         IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_PAY_PPC.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_SA_PAY_PPC.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_SA_PAY_PPC.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_SA_PAY_PPC.UPDT_DTIME                                     IS '수정일시';


 /* TB_SA_PAY_PREPAID */

DROP TABLE TB_SA_PAY_PREPAID PURGE;

CREATE TABLE TB_SA_PAY_PREPAID
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, REQ_AMT                        NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, RES_DATE                       VARCHAR2(8)                                  NULL           
, RES_PERSON                     VARCHAR2(50)                                 NULL           
, RES_AMT                        NUMBER(22,2)                                 NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, PREPAID_CUST_NM                VARCHAR2(50)                                 NULL           
, PREPAID_REG_AMT                NUMBER(22,2)                                 NULL           
, PREPAID_REG_DATE               VARCHAR2(8)                                  NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_PAY_PREPAID PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_PAY_PREPAID                                            IS '매출_결제_선결제';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.BRND_CD                                    IS '브랜드코드';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.POS_SALE_NO                                IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.POS_SALE_ITEM_SN                           IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.SALE_DATE                                  IS '영업일자';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.STORE_CD                                   IS '점포코드';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.POS_NO                                     IS 'POS번호';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.RECEIPT_NO                                 IS '영수증번호';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.SLIP_FG                                    IS '전표유형구분';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.SLIP_TYPE_FG                               IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.SLIP_TENDER_FG                             IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.APPROVAL_FG                                IS '승인구분';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.REQ_AMT                                    IS '요청금액';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.APPLY_AMT                                  IS '적용금액';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.ID_NO                                      IS '식별번호';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.RES_DATE                                   IS '예약일자';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.RES_PERSON                                 IS '예약자';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.RES_AMT                                    IS '예약금';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.POS_UID                                    IS 'UID';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.LINK_SLIP_UID                              IS '연결된전표UID';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.PREPAID_CUST_NM                            IS '';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.PREPAID_REG_AMT                            IS '';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.PREPAID_REG_DATE                           IS '';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.MIG_YN                                     IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.REGI_ID                                    IS '등록자ID';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.REGI_DTIME                                 IS '등록일시';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.UPDT_ID                                    IS '수정자ID';
COMMENT ON COLUMN TB_SA_PAY_PREPAID.UPDT_DTIME                                 IS '수정일시';


 /* TB_SA_PAY_SMART_PAY */

DROP TABLE TB_SA_PAY_SMART_PAY PURGE;

CREATE TABLE TB_SA_PAY_SMART_PAY
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, REQ_AMT                        NUMBER(22,2)                                 NOT NULL       
, APPLY_AMT                      NUMBER(22,2)                                 NOT NULL       
, ID_NO                          VARCHAR2(256)                                NULL           
, CURRENCY_FG                    VARCHAR2(3)                                  NULL           
, NETWORK_FG                     VARCHAR2(3)                                  NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_PAY_SMART_PAY PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_PAY_SMART_PAY                                          IS '매출_결제_간편결제';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.BRND_CD                                  IS '브랜드코드';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.POS_SALE_NO                              IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.POS_SALE_ITEM_SN                         IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.SALE_DATE                                IS '영업일자';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.STORE_CD                                 IS '점포코드';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.POS_NO                                   IS 'POS번호';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.RECEIPT_NO                               IS '영수증번호';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.SLIP_FG                                  IS '전표유형구분';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.SLIP_TYPE_FG                             IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.SLIP_TENDER_FG                           IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.APPROVAL_FG                              IS '승인구분';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.REQ_AMT                                  IS '요청금액';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.APPLY_AMT                                IS '적용금액';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.ID_NO                                    IS '식별번호';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.CURRENCY_FG                              IS '통화 구분';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.NETWORK_FG                               IS '통신망 구분';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.POS_UID                                  IS 'UID';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.LINK_SLIP_UID                            IS '연결된전표UID';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.MIG_YN                                   IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.REGI_ID                                  IS '등록자ID';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.REGI_DTIME                               IS '등록일시';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.UPDT_ID                                  IS '수정자ID';
COMMENT ON COLUMN TB_SA_PAY_SMART_PAY.UPDT_DTIME                               IS '수정일시';


 /* TB_SA_SAVE */

DROP TABLE TB_SA_SAVE PURGE;

CREATE TABLE TB_SA_SAVE
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, POS_SALE_NO                    VARCHAR2(30)                                 NOT NULL       
, POS_SALE_ITEM_SN               NUMBER(5,0)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NULL           
, STORE_CD                       VARCHAR2(10)                                 NULL           
, POS_NO                         VARCHAR2(2)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, SLIP_FG                        VARCHAR2(8)                                  NULL           
, SLIP_TYPE_FG                   VARCHAR2(8)                                  NULL           
, SLIP_TENDER_FG                 VARCHAR2(8)                                  NULL           
, APPROVAL_FG                    VARCHAR2(1)                                  NULL           
, RT_AMT_FG                      NUMBER(22,2)                                 NOT NULL       
, RT_AMT_VAL                     NUMBER(22,2)                                 NOT NULL       
, TARGET_FG                      VARCHAR2(256)                                NULL           
, TARGET_AMT                     NUMBER(22,0)                                 NULL           
, APPLY_AMT                      NUMBER(22,0)                                 NULL           
, ID_NO                          VARCHAR2(256)                                NULL           
, POS_UID                        VARCHAR2(30)                                 NULL           
, LINK_SLIP_UID                  VARCHAR2(30)                                 NULL           
, SAVE_CHANNEL_FG                VARCHAR2(10)                                 NULL           
, MIG_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SA_SAVE PRIMARY KEY (
    BRND_CD, POS_SALE_NO, POS_SALE_ITEM_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SA_SAVE                                                   IS '매출_적립';
COMMENT ON COLUMN TB_SA_SAVE.BRND_CD                                           IS '브랜드코드';
COMMENT ON COLUMN TB_SA_SAVE.POS_SALE_NO                                       IS 'POS판매번호';
COMMENT ON COLUMN TB_SA_SAVE.POS_SALE_ITEM_SN                                  IS 'POS판매항목순번';
COMMENT ON COLUMN TB_SA_SAVE.SALE_DATE                                         IS '영업일자';
COMMENT ON COLUMN TB_SA_SAVE.STORE_CD                                          IS '점포코드';
COMMENT ON COLUMN TB_SA_SAVE.POS_NO                                            IS 'POS번호';
COMMENT ON COLUMN TB_SA_SAVE.RECEIPT_NO                                        IS '영수증번호';
COMMENT ON COLUMN TB_SA_SAVE.SLIP_FG                                           IS '전표유형구분';
COMMENT ON COLUMN TB_SA_SAVE.SLIP_TYPE_FG                                      IS '전표유형분류구분';
COMMENT ON COLUMN TB_SA_SAVE.SLIP_TENDER_FG                                    IS '전표유형상세구분';
COMMENT ON COLUMN TB_SA_SAVE.APPROVAL_FG                                       IS '승인구분';
COMMENT ON COLUMN TB_SA_SAVE.RT_AMT_FG                                         IS '적립율금액구분';
COMMENT ON COLUMN TB_SA_SAVE.RT_AMT_VAL                                        IS '적립율금액값';
COMMENT ON COLUMN TB_SA_SAVE.TARGET_FG                                         IS '적립대상구분';
COMMENT ON COLUMN TB_SA_SAVE.TARGET_AMT                                        IS '적립대상금액';
COMMENT ON COLUMN TB_SA_SAVE.APPLY_AMT                                         IS '적립금액';
COMMENT ON COLUMN TB_SA_SAVE.ID_NO                                             IS '식별번호';
COMMENT ON COLUMN TB_SA_SAVE.POS_UID                                           IS 'UID';
COMMENT ON COLUMN TB_SA_SAVE.LINK_SLIP_UID                                     IS '연결된전표UID';
COMMENT ON COLUMN TB_SA_SAVE.SAVE_CHANNEL_FG                                   IS '';
COMMENT ON COLUMN TB_SA_SAVE.MIG_YN                                            IS '데이터 이행 여부';
COMMENT ON COLUMN TB_SA_SAVE.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_SA_SAVE.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_SA_SAVE.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_SA_SAVE.UPDT_DTIME                                        IS '수정일시';


 /* TB_SM_CRD_BUYC */

DROP TABLE TB_SM_CRD_BUYC PURGE;

CREATE TABLE TB_SM_CRD_BUYC
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CRD_BUYC_CD                    VARCHAR2(2)                                  NOT NULL       
, CRD_BUYC_NM                    VARCHAR2(50)                                 NOT NULL       
, PG_CRD_BUYC_CD                 VARCHAR2(2)                                  NULL           
, VEND_CD                        VARCHAR2(10)                                 NULL           
, COMMI_RT                       NUMBER(7,4)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SM_CRD_BUYC PRIMARY KEY (
    BRND_CD, CRD_BUYC_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SM_CRD_BUYC                                               IS '카드매입사';
COMMENT ON COLUMN TB_SM_CRD_BUYC.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_SM_CRD_BUYC.CRD_BUYC_CD                                   IS '카드 매입사 코드';
COMMENT ON COLUMN TB_SM_CRD_BUYC.CRD_BUYC_NM                                   IS '카드 매입사 명';
COMMENT ON COLUMN TB_SM_CRD_BUYC.PG_CRD_BUYC_CD                                IS 'PG 카드 매입사 코드';
COMMENT ON COLUMN TB_SM_CRD_BUYC.VEND_CD                                       IS '거래처 코드';
COMMENT ON COLUMN TB_SM_CRD_BUYC.COMMI_RT                                      IS '수수료 율';
COMMENT ON COLUMN TB_SM_CRD_BUYC.USE_YN                                        IS '사용 여부';
COMMENT ON COLUMN TB_SM_CRD_BUYC.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SM_CRD_BUYC.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SM_CRD_BUYC.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SM_CRD_BUYC.UPDT_DTIME                                    IS '수정일시';


 /* TB_SM_DC_CP_CD */

DROP TABLE TB_SM_DC_CP_CD PURGE;

CREATE TABLE TB_SM_DC_CP_CD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, DC_CP_CD                       VARCHAR2(4)                                  NOT NULL       
, DC_CP_NM                       VARCHAR2(200)                                NULL           
, DC_CP_SEQ_NO                   VARCHAR2(13)                                 NULL           
, DC_CP_DIV_CD                   VARCHAR2(2)                                  NULL           
, DC_CP_VAL                      NUMBER(15,3)                                 NULL           
, SEQ_NO_APPL_YN                 VARCHAR2(1)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, RGSPE_ID                       VARCHAR2(20)                                 NOT NULL       
, RGS_DH                         DATE                                         NOT NULL       
, RGS_IP_AD                      VARCHAR2(15)                                 NULL           
, MODPE_ID                       VARCHAR2(20)                                 NOT NULL       
, MOD_DH                         DATE                                         NOT NULL       
, MOD_IP_AD                      VARCHAR2(15)                                 NULL           
, CONSTRAINT PK_TB_SM_DC_CP_CD PRIMARY KEY (
    BRND_CD, DC_CP_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SM_DC_CP_CD                                               IS '할인쿠폰코드';
COMMENT ON COLUMN TB_SM_DC_CP_CD.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_SM_DC_CP_CD.DC_CP_CD                                      IS '할인 쿠폰 코드';
COMMENT ON COLUMN TB_SM_DC_CP_CD.DC_CP_NM                                      IS '할인 쿠폰 명';
COMMENT ON COLUMN TB_SM_DC_CP_CD.DC_CP_SEQ_NO                                  IS '할인 쿠폰 일련 번호';
COMMENT ON COLUMN TB_SM_DC_CP_CD.DC_CP_DIV_CD                                  IS '할인 쿠폰 구분 코드';
COMMENT ON COLUMN TB_SM_DC_CP_CD.DC_CP_VAL                                     IS '할인 쿠폰 값';
COMMENT ON COLUMN TB_SM_DC_CP_CD.SEQ_NO_APPL_YN                                IS '일련 번호 적용 여부';
COMMENT ON COLUMN TB_SM_DC_CP_CD.USE_YN                                        IS '사용 여부';
COMMENT ON COLUMN TB_SM_DC_CP_CD.RGSPE_ID                                      IS '등록자 ID';
COMMENT ON COLUMN TB_SM_DC_CP_CD.RGS_DH                                        IS '등록 일시';
COMMENT ON COLUMN TB_SM_DC_CP_CD.RGS_IP_AD                                     IS '등록 IP 주소';
COMMENT ON COLUMN TB_SM_DC_CP_CD.MODPE_ID                                      IS '수정자 ID';
COMMENT ON COLUMN TB_SM_DC_CP_CD.MOD_DH                                        IS '수정 일시';
COMMENT ON COLUMN TB_SM_DC_CP_CD.MOD_IP_AD                                     IS '수정 IP 주소';


 /* TB_SM_GFTC_CD */

DROP TABLE TB_SM_GFTC_CD PURGE;

CREATE TABLE TB_SM_GFTC_CD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, GFTC_CD                        VARCHAR2(3)                                  NOT NULL       
, GFTC_CLF_CD                    VARCHAR2(1)                                  NULL           
, GFTC_NM                        VARCHAR2(200)                                NULL           
, VEND_CD                        VARCHAR2(10)                                 NOT NULL       
, SML_USE_AMT_RTO                NUMBER(10,4)                                 NOT NULL       
, BL_RFND_YN                     VARCHAR2(1)                                  NOT NULL       
, ADJMT_YN                       VARCHAR2(1)                                  NOT NULL       
, RMK                            VARCHAR2(500)                                NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_SM_GFTC_CD PRIMARY KEY (
    BRND_CD, GFTC_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SM_GFTC_CD                                                IS '상품권코드';
COMMENT ON COLUMN TB_SM_GFTC_CD.BRND_CD                                        IS '브랜드 코드';
COMMENT ON COLUMN TB_SM_GFTC_CD.GFTC_CD                                        IS '상품권 코드';
COMMENT ON COLUMN TB_SM_GFTC_CD.GFTC_CLF_CD                                    IS '상품권 분류 코드';
COMMENT ON COLUMN TB_SM_GFTC_CD.GFTC_NM                                        IS '상품권 명';
COMMENT ON COLUMN TB_SM_GFTC_CD.VEND_CD                                        IS '거래처 코드';
COMMENT ON COLUMN TB_SM_GFTC_CD.SML_USE_AMT_RTO                                IS '최소 사용 금액 비율';
COMMENT ON COLUMN TB_SM_GFTC_CD.BL_RFND_YN                                     IS '잔액 환급 여부';
COMMENT ON COLUMN TB_SM_GFTC_CD.ADJMT_YN                                       IS '정산 여부';
COMMENT ON COLUMN TB_SM_GFTC_CD.RMK                                            IS '비고';
COMMENT ON COLUMN TB_SM_GFTC_CD.USE_YN                                         IS '사용 여부';
COMMENT ON COLUMN TB_SM_GFTC_CD.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_SM_GFTC_CD.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_SM_GFTC_CD.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_SM_GFTC_CD.UPDT_DTIME                                     IS '수정일시';
COMMENT ON COLUMN TB_SM_GFTC_CD.POS_UPDT_TSP                                   IS 'POS수정타임스템프';


 /* TB_SM_GFTC_KTM */

DROP TABLE TB_SM_GFTC_KTM PURGE;

CREATE TABLE TB_SM_GFTC_KTM
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, GFTC_CD                        VARCHAR2(3)                                  NOT NULL       
, GFTC_KTM_CD                    VARCHAR2(3)                                  NOT NULL       
, POS_GFTC_KTM_CD                VARCHAR2(3)                                  NULL           
, GFTC_SALE_CD                   VARCHAR2(2)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_SM_GFTC_KTM PRIMARY KEY (
    BRND_CD, GFTC_CD, GFTC_KTM_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SM_GFTC_KTM                                               IS '상품권권종';
COMMENT ON COLUMN TB_SM_GFTC_KTM.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_SM_GFTC_KTM.GFTC_CD                                       IS '상품권 코드';
COMMENT ON COLUMN TB_SM_GFTC_KTM.GFTC_KTM_CD                                   IS '상품권 권종 코드';
COMMENT ON COLUMN TB_SM_GFTC_KTM.POS_GFTC_KTM_CD                               IS 'POS 상품권 권종 코드';
COMMENT ON COLUMN TB_SM_GFTC_KTM.GFTC_SALE_CD                                  IS '상품권 판매 코드';
COMMENT ON COLUMN TB_SM_GFTC_KTM.USE_YN                                        IS '사용 여부';
COMMENT ON COLUMN TB_SM_GFTC_KTM.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SM_GFTC_KTM.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SM_GFTC_KTM.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SM_GFTC_KTM.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_SM_GFTC_KTM.POS_UPDT_TSP                                  IS 'POS수정타임스템프';


 /* TB_SM_MBL_CP_CD */

DROP TABLE TB_SM_MBL_CP_CD PURGE;

CREATE TABLE TB_SM_MBL_CP_CD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CP_CD                          VARCHAR2(3)                                  NOT NULL       
, CP_NM                          VARCHAR2(200)                                NULL           
, STORE_VEND_DIV_CD              VARCHAR2(2)                                  NULL           
, VEND_CD                        VARCHAR2(10)                                 NULL           
, POS_CP_CD                      VARCHAR2(2)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_SM_MBL_CP_CD PRIMARY KEY (
    BRND_CD, CP_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SM_MBL_CP_CD                                              IS '모바일쿠폰코드';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.BRND_CD                                      IS '브랜드 코드';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.CP_CD                                        IS '쿠폰 코드';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.CP_NM                                        IS '쿠폰 명';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.STORE_VEND_DIV_CD                            IS '점포 거래처 구분 코드';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.VEND_CD                                      IS '거래처 코드';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.POS_CP_CD                                    IS 'POS 쿠폰 코드';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.USE_YN                                       IS '사용 여부';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.UPDT_DTIME                                   IS '수정일시';
COMMENT ON COLUMN TB_SM_MBL_CP_CD.POS_UPDT_TSP                                 IS 'POS수정타임스템프';


 /* TB_SM_MBL_CP_COMMI */

DROP TABLE TB_SM_MBL_CP_COMMI PURGE;

CREATE TABLE TB_SM_MBL_CP_COMMI
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, CP_CD                          VARCHAR2(3)                                  NOT NULL       
, USE_FR_DT                      VARCHAR2(8)                                  NOT NULL       
, USE_FR_TM                      VARCHAR2(2)                                  NOT NULL       
, USE_END_DT                     VARCHAR2(8)                                  NULL           
, USE_END_TM                     VARCHAR2(2)                                  NULL           
, ASSCV_MSG_ID                   VARCHAR2(6)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_SM_MBL_CP_COMMI PRIMARY KEY (
    BRND_CD, CP_CD, USE_FR_DT, USE_FR_TM
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SM_MBL_CP_COMMI                                           IS '모바일쿠폰수수료';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.BRND_CD                                   IS '브랜드 코드';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.CP_CD                                     IS '쿠폰 코드';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.USE_FR_DT                                 IS '사용 시작 일자';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.USE_FR_TM                                 IS '사용 시작 시간';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.USE_END_DT                                IS '사용 종료 일자';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.USE_END_TM                                IS '사용 종료 시간';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.ASSCV_MSG_ID                              IS '제휴사 전문 ID';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.USE_YN                                    IS '사용 여부';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_SM_MBL_CP_COMMI.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_SM_MPAY_CD */

DROP TABLE TB_SM_MPAY_CD PURGE;

CREATE TABLE TB_SM_MPAY_CD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STTL_MTHD_CD                   VARCHAR2(2)                                  NOT NULL       
, MPAY_CD                        VARCHAR2(3)                                  NOT NULL       
, MPAY_NM                        VARCHAR2(200)                                NOT NULL       
, MPAY_CLF_CD                    VARCHAR2(1)                                  NOT NULL       
, ADJMT_YN                       VARCHAR2(1)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, RMK                            VARCHAR2(600)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_SM_MPAY_CD PRIMARY KEY (
    BRND_CD, STTL_MTHD_CD, MPAY_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SM_MPAY_CD                                                IS '모바일결제코드';
COMMENT ON COLUMN TB_SM_MPAY_CD.BRND_CD                                        IS '브랜드 코드';
COMMENT ON COLUMN TB_SM_MPAY_CD.STTL_MTHD_CD                                   IS '결제 수단 코드';
COMMENT ON COLUMN TB_SM_MPAY_CD.MPAY_CD                                        IS '모바일 결제 코드';
COMMENT ON COLUMN TB_SM_MPAY_CD.MPAY_NM                                        IS '모바일 결제 명';
COMMENT ON COLUMN TB_SM_MPAY_CD.MPAY_CLF_CD                                    IS '모바일 결제 분류 코드';
COMMENT ON COLUMN TB_SM_MPAY_CD.ADJMT_YN                                       IS '정산 여부';
COMMENT ON COLUMN TB_SM_MPAY_CD.USE_YN                                         IS '사용 여부';
COMMENT ON COLUMN TB_SM_MPAY_CD.RMK                                            IS '비고';
COMMENT ON COLUMN TB_SM_MPAY_CD.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_SM_MPAY_CD.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_SM_MPAY_CD.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_SM_MPAY_CD.UPDT_DTIME                                     IS '수정일시';
COMMENT ON COLUMN TB_SM_MPAY_CD.POS_UPDT_TSP                                   IS 'POS수정타임스템프';


 /* TB_SM_MPAY_VEND_CD */

DROP TABLE TB_SM_MPAY_VEND_CD PURGE;

CREATE TABLE TB_SM_MPAY_VEND_CD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STTL_MTHD_CD                   VARCHAR2(2)                                  NOT NULL       
, MPAY_CD                        VARCHAR2(3)                                  NOT NULL       
, MPAY_VEND_CD                   VARCHAR2(3)                                  NOT NULL       
, MPAY_VEND_NM                   VARCHAR2(200)                                NOT NULL       
, VEND_CD                        VARCHAR2(10)                                 NULL           
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_SM_MPAY_VEND_CD PRIMARY KEY (
    BRND_CD, STTL_MTHD_CD, MPAY_CD, MPAY_VEND_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SM_MPAY_VEND_CD                                           IS '모바일결제거래처코드';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.BRND_CD                                   IS '브랜드 코드';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.STTL_MTHD_CD                              IS '결제 수단 코드';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.MPAY_CD                                   IS '모바일 결제 코드';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.MPAY_VEND_CD                              IS '거래처 결제코드';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.MPAY_VEND_NM                              IS '거래처 결제 명';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.VEND_CD                                   IS '거래처 코드';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.USE_YN                                    IS '사용 여부';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.UPDT_DTIME                                IS '수정일시';
COMMENT ON COLUMN TB_SM_MPAY_VEND_CD.POS_UPDT_TSP                              IS 'POS수정타임스템프';


 /* TB_SM_STTL_MTHD */

DROP TABLE TB_SM_STTL_MTHD PURGE;

CREATE TABLE TB_SM_STTL_MTHD
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STTL_MTHD_CD                   VARCHAR2(2)                                  NOT NULL       
, STTL_MTHD_NM                   VARCHAR2(100)                                NULL           
, NEST_STTL_MTHD_CD              VARCHAR2(2)                                  NULL           
, MNUL_RGS_USE_YN                VARCHAR2(1)                                  NOT NULL       
, SMO_YN                         VARCHAR2(1)                                  NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NOT NULL       
, CONSTRAINT PK_TB_SM_STTL_MTHD PRIMARY KEY (
    BRND_CD, STTL_MTHD_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SM_STTL_MTHD                                              IS '결제수단';
COMMENT ON COLUMN TB_SM_STTL_MTHD.BRND_CD                                      IS '브랜드 코드';
COMMENT ON COLUMN TB_SM_STTL_MTHD.STTL_MTHD_CD                                 IS '결제 수단 코드';
COMMENT ON COLUMN TB_SM_STTL_MTHD.STTL_MTHD_NM                                 IS '결제 수단 명';
COMMENT ON COLUMN TB_SM_STTL_MTHD.NEST_STTL_MTHD_CD                            IS 'NEST 결제 수단 코드';
COMMENT ON COLUMN TB_SM_STTL_MTHD.MNUL_RGS_USE_YN                              IS '수기 등록 사용 여부';
COMMENT ON COLUMN TB_SM_STTL_MTHD.SMO_YN                                       IS '스마트오더 여부';
COMMENT ON COLUMN TB_SM_STTL_MTHD.USE_YN                                       IS '사용 여부';
COMMENT ON COLUMN TB_SM_STTL_MTHD.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_SM_STTL_MTHD.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_SM_STTL_MTHD.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_SM_STTL_MTHD.UPDT_DTIME                                   IS '수정일시';
COMMENT ON COLUMN TB_SM_STTL_MTHD.POS_UPDT_TSP                                 IS 'POS수정타임스템프';


 /* TB_ST_CASH */

DROP TABLE TB_ST_CASH PURGE;

CREATE TABLE TB_ST_CASH
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, STTL_SN                        NUMBER(10,0)                                 NOT NULL       
, UNIT_FG                        VARCHAR2(8)                                  NOT NULL       
, UNIT_AMT                       NUMBER(22,2)                                 NOT NULL       
, UNIT_QTY                       NUMBER(13,0)                                 NOT NULL       
, UNIT_TOT_AMT                   NUMBER(22,2)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_ST_CASH PRIMARY KEY (
    BRND_CD, SALE_DATE, STORE_CD, POS_NO, STTL_SN, UNIT_FG
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_ST_CASH                                                   IS '정산현금시제';
COMMENT ON COLUMN TB_ST_CASH.BRND_CD                                           IS '브랜드코드';
COMMENT ON COLUMN TB_ST_CASH.SALE_DATE                                         IS '영업 일자';
COMMENT ON COLUMN TB_ST_CASH.STORE_CD                                          IS '점포코드';
COMMENT ON COLUMN TB_ST_CASH.POS_NO                                            IS '포스번호';
COMMENT ON COLUMN TB_ST_CASH.STTL_SN                                           IS '정산차수';
COMMENT ON COLUMN TB_ST_CASH.UNIT_FG                                           IS '권종구분';
COMMENT ON COLUMN TB_ST_CASH.UNIT_AMT                                          IS '권종 금액';
COMMENT ON COLUMN TB_ST_CASH.UNIT_QTY                                          IS '권종 수량';
COMMENT ON COLUMN TB_ST_CASH.UNIT_TOT_AMT                                      IS '권종 총 금액';
COMMENT ON COLUMN TB_ST_CASH.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_ST_CASH.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_ST_CASH.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_ST_CASH.UPDT_DTIME                                        IS '수정일시';


 /* TB_ST_CASH_CHG_HIS */

DROP TABLE TB_ST_CASH_CHG_HIS PURGE;

CREATE TABLE TB_ST_CASH_CHG_HIS
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, CHG_DTIME                      VARCHAR2(14)                                 NOT NULL       
, UNIT_FG                        VARCHAR2(8)                                  NOT NULL       
, UNIT_QTY                       NUMBER(13,0)                                 NOT NULL       
, UNIT_TOT_AMT                   NUMBER(22,2)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_ST_CASH_CHG_HIS PRIMARY KEY (
    BRND_CD, SALE_DATE, STORE_CD, POS_NO, CHG_DTIME, UNIT_FG
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_ST_CASH_CHG_HIS                                           IS '정산시재변경이력';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.BRND_CD                                   IS '브랜드코드';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.SALE_DATE                                 IS '영업 일자';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.STORE_CD                                  IS '점포코드';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.POS_NO                                    IS '포스번호';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.CHG_DTIME                                 IS '변경 일시';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.UNIT_FG                                   IS '권종구분';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.UNIT_QTY                                  IS '권종 수량';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.UNIT_TOT_AMT                              IS '권종 총 금액';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.REGI_ID                                   IS '등록자ID';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.REGI_DTIME                                IS '등록일시';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.UPDT_ID                                   IS '수정자ID';
COMMENT ON COLUMN TB_ST_CASH_CHG_HIS.UPDT_DTIME                                IS '수정일시';


 /* TB_ST_DETAIL */

DROP TABLE TB_ST_DETAIL PURGE;

CREATE TABLE TB_ST_DETAIL
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, STTL_SN                        NUMBER(10,0)                                 NOT NULL       
, STTL_CD                        VARCHAR2(8)                                  NOT NULL       
, STTL_CD_NM                     VARCHAR2(120)                                NULL           
, SALE_AMT                       NUMBER(22,2)                                 NOT NULL       
, SALE_CNT                       NUMBER(13,0)                                 NOT NULL       
, VOID_AMT                       NUMBER(22,2)                                 NOT NULL       
, VOID_CNT                       NUMBER(13,0)                                 NOT NULL       
, CLOSE_AMT_1                    NUMBER(22,2)                                 NOT NULL       
, CLOSE_CNT_1                    NUMBER(13,0)                                 NOT NULL       
, CLOSE_AMT_2                    NUMBER(22,2)                                 NOT NULL       
, CLOSE_CNT_2                    NUMBER(13,0)                                 NOT NULL       
, CLOSE_AMT_3                    NUMBER(22,2)                                 NOT NULL       
, CLOSE_CNT_3                    NUMBER(13,0)                                 NOT NULL       
, CLOSE_AMT_4                    NUMBER(22,2)                                 NOT NULL       
, CLOSE_CNT_4                    NUMBER(13,0)                                 NOT NULL       
, CLOSE_AMT_5                    NUMBER(22,2)                                 NOT NULL       
, CLOSE_CNT_5                    NUMBER(13,0)                                 NOT NULL       
, CLOSE_AMT_6                    NUMBER(22,2)                                 NOT NULL       
, CLOSE_CNT_6                    NUMBER(13,0)                                 NOT NULL       
, CLOSE_AMT_7                    NUMBER(22,2)                                 NOT NULL       
, CLOSE_CNT_7                    NUMBER(13,0)                                 NOT NULL       
, CLOSE_AMT_8                    NUMBER(22,2)                                 NOT NULL       
, CLOSE_CNT_8                    NUMBER(13,0)                                 NOT NULL       
, CLOSE_AMT_9                    NUMBER(22,2)                                 NOT NULL       
, CLOSE_CNT_9                    NUMBER(13,0)                                 NOT NULL       
, CLOSE_AMT_10                   NUMBER(22,2)                                 NOT NULL       
, CLOSE_CNT_10                   NUMBER(13,0)                                 NOT NULL       
, CLOSE_AMT_11                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_11                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_12                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_12                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_13                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_13                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_14                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_14                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_15                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_15                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_16                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_16                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_17                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_17                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_18                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_18                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_19                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_19                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_20                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_20                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_21                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_21                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_22                   NUMBER(22,2)                                 NULL           
, CLOSE_CNT_22                   NUMBER(13,0)                                 NULL           
, CLOSE_AMT_23                   NUMBER(22,2)                                 NULL           
, CLOSE_AMT_24                   NUMBER(22,2)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_ST_DETAIL PRIMARY KEY (
    BRND_CD, SALE_DATE, STORE_CD, POS_NO, STTL_SN, STTL_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_ST_DETAIL                                                 IS '정산디테일';
COMMENT ON COLUMN TB_ST_DETAIL.BRND_CD                                         IS '브랜드코드';
COMMENT ON COLUMN TB_ST_DETAIL.SALE_DATE                                       IS '영업 일자';
COMMENT ON COLUMN TB_ST_DETAIL.STORE_CD                                        IS '점포코드';
COMMENT ON COLUMN TB_ST_DETAIL.POS_NO                                          IS '포스번호';
COMMENT ON COLUMN TB_ST_DETAIL.STTL_SN                                         IS '정산차수';
COMMENT ON COLUMN TB_ST_DETAIL.STTL_CD                                         IS '정산상세코드';
COMMENT ON COLUMN TB_ST_DETAIL.STTL_CD_NM                                      IS '정산상세코드명칭';
COMMENT ON COLUMN TB_ST_DETAIL.SALE_AMT                                        IS '매출 금액';
COMMENT ON COLUMN TB_ST_DETAIL.SALE_CNT                                        IS '매출 건수';
COMMENT ON COLUMN TB_ST_DETAIL.VOID_AMT                                        IS '반품 금액';
COMMENT ON COLUMN TB_ST_DETAIL.VOID_CNT                                        IS '반품 건수';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_1                                     IS '마감 금액 1';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_1                                     IS '마감 건수 1';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_2                                     IS '마감 금액 2';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_2                                     IS '마감 건수 2';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_3                                     IS '마감 금액 3';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_3                                     IS '마감 건수 3';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_4                                     IS '마감 금액 4';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_4                                     IS '마감 건수 4';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_5                                     IS '마감 금액 5';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_5                                     IS '마감 건수 5';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_6                                     IS '마감 금액 6';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_6                                     IS '마감 건수 6';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_7                                     IS '마감 금액 7';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_7                                     IS '마감 건수 7';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_8                                     IS '마감 금액 8';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_8                                     IS '마감 건수 8';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_9                                     IS '마감 금액 9';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_9                                     IS '마감 건수 9';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_10                                    IS '마감 금액 10';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_10                                    IS '마감 건수 10';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_11                                    IS '마감 금액 11';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_11                                    IS '마감 건수 11';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_12                                    IS '마감 금액 12';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_12                                    IS '마감 건수 12';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_13                                    IS '마감 금액 13';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_13                                    IS '마감 건수 13';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_14                                    IS '마감 금액 14';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_14                                    IS '마감 건수 14';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_15                                    IS '마감 금액 15';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_15                                    IS '마감 건수 15';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_16                                    IS '마감 금액 16';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_16                                    IS '마감 건수 16';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_17                                    IS '마감 금액 17';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_17                                    IS '마감 건수 17';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_18                                    IS '마감 금액 18';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_18                                    IS '마감 건수 18';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_19                                    IS '마감 금액 19';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_19                                    IS '마감 건수 19';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_20                                    IS '마감 금액 20';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_20                                    IS '마감 건수 20';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_21                                    IS '마감 금액 21';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_21                                    IS '마감 건수 21';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_22                                    IS '마감 금액 22';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_CNT_22                                    IS '마감 건수 22';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_23                                    IS '마감 금액 23';
COMMENT ON COLUMN TB_ST_DETAIL.CLOSE_AMT_24                                    IS '마감 금액 24';
COMMENT ON COLUMN TB_ST_DETAIL.REGI_ID                                         IS '등록자ID';
COMMENT ON COLUMN TB_ST_DETAIL.REGI_DTIME                                      IS '등록일시';
COMMENT ON COLUMN TB_ST_DETAIL.UPDT_ID                                         IS '수정자ID';
COMMENT ON COLUMN TB_ST_DETAIL.UPDT_DTIME                                      IS '수정일시';


 /* TB_ST_HEADER */

DROP TABLE TB_ST_HEADER PURGE;

CREATE TABLE TB_ST_HEADER
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, SALE_DATE                      VARCHAR2(8)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, POS_NO                         VARCHAR2(2)                                  NOT NULL       
, STTL_SN                        NUMBER(10,0)                                 NOT NULL       
, STTL_FG                        VARCHAR2(2)                                  NOT NULL       
, OPEN_YN                        VARCHAR2(1)                                  NULL           
, OPEN_DTIME                     VARCHAR2(14)                                 NULL           
, CLOSE_YN                       VARCHAR2(1)                                  NULL           
, CLOSE_DTIME                    VARCHAR2(14)                                 NULL           
, START_RECEIPT_NO               VARCHAR2(5)                                  NULL           
, LAST_RECEIPT_NO                VARCHAR2(5)                                  NULL           
, RECEIPT_NO                     VARCHAR2(5)                                  NULL           
, CASHIER_ID                     VARCHAR2(20)                                 NULL           
, CLOSE_APPR_ID                  VARCHAR2(20)                                 NULL           
, WEATHER_CD                     VARCHAR2(10)                                 NULL           
, NATIVE_TOT_CUS_CNT             NUMBER(5,0)                                  NOT NULL       
, FOREIGN_TOT_CUS_CNT            NUMBER(5,0)                                  NOT NULL       
, SALE_START_AMT                 NUMBER(22,2)                                 NOT NULL       
, SALE_IN_AMT                    NUMBER(22,2)                                 NOT NULL       
, SALE_IN_CNT                    NUMBER(13,0)                                 NOT NULL       
, SALE_OUT_AMT                   NUMBER(22,2)                                 NOT NULL       
, SALE_OUT_CNT                   NUMBER(13,0)                                 NOT NULL       
, TOT_SALE_AMT                   NUMBER(22,2)                                 NOT NULL       
, TOT_SALE_CNT                   NUMBER(13,0)                                 NOT NULL       
, SALE_TOT_AMT                   NUMBER(22,2)                                 NOT NULL       
, SALE_TOT_CNT                   NUMBER(13,0)                                 NOT NULL       
, SALE_AMT                       NUMBER(22,2)                                 NOT NULL       
, SALE_CNT                       NUMBER(13,0)                                 NOT NULL       
, CASH_CHECK_AMT                 NUMBER(22,2)                                 NOT NULL       
, NET_SALE_AMT                   NUMBER(22,2)                                 NULL           
, NET_SALE_CNT                   NUMBER(13,0)                                 NULL           
, POS_STTL_SN                    NUMBER(10,0)                                 NULL           
, TOT_SALE_DC_AMT                NUMBER(22,2)                                 NOT NULL       
, TOT_SALE_DC_CNT                NUMBER(22,2)                                 NOT NULL       
, SALE_TOT_DC_AMT                NUMBER(22,2)                                 NOT NULL       
, SALE_TOT_DC_CNT                NUMBER(13,0)                                 NOT NULL       
, SALE_VAT_AMT                   NUMBER(22,2)                                 NOT NULL       
, VOID_SALE_TOT_AMT              NUMBER(22,2)                                 NOT NULL       
, VOID_SALE_TOT_CNT              NUMBER(13,0)                                 NOT NULL       
, VOID_SALE_TOT_DC_AMT           NUMBER(22,2)                                 NOT NULL       
, VOID_SALE_TOT_DC_CNT           NUMBER(13,0)                                 NOT NULL       
, VOID_SALE_AMT                  NUMBER(22,2)                                 NOT NULL       
, VOID_SALE_CNT                  NUMBER(13,0)                                 NOT NULL       
, VOID_SALE_VAT_AMT              NUMBER(22,2)                                 NOT NULL       
, VOID_NET_SALE_AMT              NUMBER(22,2)                                 NOT NULL       
, VOID_NET_SALE_CNT              NUMBER(13,0)                                 NOT NULL       
, OLD_VOID_SALE_TOT_AMT          NUMBER(22,2)                                 NOT NULL       
, OLD_VOID_SALE_TOT_CNT          NUMBER(13,0)                                 NOT NULL       
, OLD_VOID_SALE_TOT_DC_AMT       NUMBER(22,2)                                 NOT NULL       
, OLD_VOID_SALE_TOT_DC_CNT       NUMBER(13,0)                                 NOT NULL       
, OLD_VOID_SALE_AMT              NUMBER(22,2)                                 NOT NULL       
, OLD_VOID_SALE_CNT              NUMBER(13,0)                                 NOT NULL       
, OLD_VOID_SALE_VAT_AMT          NUMBER(22,2)                                 NOT NULL       
, OLD_VOID_NET_SALE_AMT          NUMBER(22,2)                                 NOT NULL       
, OLD_VOID_NET_SALE_CNT          NUMBER(13,0)                                 NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_ST_HEADER PRIMARY KEY (
    BRND_CD, SALE_DATE, STORE_CD, POS_NO, STTL_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_ST_HEADER                                                 IS '정산헤더';
COMMENT ON COLUMN TB_ST_HEADER.BRND_CD                                         IS '브랜드코드';
COMMENT ON COLUMN TB_ST_HEADER.SALE_DATE                                       IS '영업 일자';
COMMENT ON COLUMN TB_ST_HEADER.STORE_CD                                        IS '점포코드';
COMMENT ON COLUMN TB_ST_HEADER.POS_NO                                          IS '포스번호';
COMMENT ON COLUMN TB_ST_HEADER.STTL_SN                                         IS '정산차수';
COMMENT ON COLUMN TB_ST_HEADER.STTL_FG                                         IS '정산구분';
COMMENT ON COLUMN TB_ST_HEADER.OPEN_YN                                         IS '개점 여부';
COMMENT ON COLUMN TB_ST_HEADER.OPEN_DTIME                                      IS '개점 일시';
COMMENT ON COLUMN TB_ST_HEADER.CLOSE_YN                                        IS '마감 여부';
COMMENT ON COLUMN TB_ST_HEADER.CLOSE_DTIME                                     IS '마감 일시';
COMMENT ON COLUMN TB_ST_HEADER.START_RECEIPT_NO                                IS '시작 영수증 번호';
COMMENT ON COLUMN TB_ST_HEADER.LAST_RECEIPT_NO                                 IS '최종 영수증 번호';
COMMENT ON COLUMN TB_ST_HEADER.RECEIPT_NO                                      IS '영수증번호';
COMMENT ON COLUMN TB_ST_HEADER.CASHIER_ID                                      IS '캐셔 ID';
COMMENT ON COLUMN TB_ST_HEADER.CLOSE_APPR_ID                                   IS '마감 캐셔 ID';
COMMENT ON COLUMN TB_ST_HEADER.WEATHER_CD                                      IS '날씨 코드';
COMMENT ON COLUMN TB_ST_HEADER.NATIVE_TOT_CUS_CNT                              IS '내국인 총 객수';
COMMENT ON COLUMN TB_ST_HEADER.FOREIGN_TOT_CUS_CNT                             IS '외국인 총 객수';
COMMENT ON COLUMN TB_ST_HEADER.SALE_START_AMT                                  IS '준비금';
COMMENT ON COLUMN TB_ST_HEADER.SALE_IN_AMT                                     IS '영업 중 입금액';
COMMENT ON COLUMN TB_ST_HEADER.SALE_IN_CNT                                     IS '영업 중 입금액 건수';
COMMENT ON COLUMN TB_ST_HEADER.SALE_OUT_AMT                                    IS '영업 중 출금액';
COMMENT ON COLUMN TB_ST_HEADER.SALE_OUT_CNT                                    IS '영업 중 출금액 건수';
COMMENT ON COLUMN TB_ST_HEADER.TOT_SALE_AMT                                    IS '총 판매 금액';
COMMENT ON COLUMN TB_ST_HEADER.TOT_SALE_CNT                                    IS '총 판매 건수';
COMMENT ON COLUMN TB_ST_HEADER.SALE_TOT_AMT                                    IS '매출 총 금액';
COMMENT ON COLUMN TB_ST_HEADER.SALE_TOT_CNT                                    IS '매출 총 건수';
COMMENT ON COLUMN TB_ST_HEADER.SALE_AMT                                        IS '순매출 금액';
COMMENT ON COLUMN TB_ST_HEADER.SALE_CNT                                        IS '순매출 건수';
COMMENT ON COLUMN TB_ST_HEADER.CASH_CHECK_AMT                                  IS '현금 과부족 금액';
COMMENT ON COLUMN TB_ST_HEADER.NET_SALE_AMT                                    IS '순매출 금액(부가세제외)';
COMMENT ON COLUMN TB_ST_HEADER.NET_SALE_CNT                                    IS '순매출 건수(부가세제외)';
COMMENT ON COLUMN TB_ST_HEADER.POS_STTL_SN                                     IS 'POS 정산차수';
COMMENT ON COLUMN TB_ST_HEADER.TOT_SALE_DC_AMT                                 IS '총판매 할인금액 (매출+반품)';
COMMENT ON COLUMN TB_ST_HEADER.TOT_SALE_DC_CNT                                 IS '총판매 할인건수 (매출+반품)';
COMMENT ON COLUMN TB_ST_HEADER.SALE_TOT_DC_AMT                                 IS '정상 총판매 할인 금액';
COMMENT ON COLUMN TB_ST_HEADER.SALE_TOT_DC_CNT                                 IS '정상 총판매 할인 건수';
COMMENT ON COLUMN TB_ST_HEADER.SALE_VAT_AMT                                    IS '정상 매출 부가세 금액';
COMMENT ON COLUMN TB_ST_HEADER.VOID_SALE_TOT_AMT                               IS '반품 총판매 금액';
COMMENT ON COLUMN TB_ST_HEADER.VOID_SALE_TOT_CNT                               IS '반품 총판매 건수';
COMMENT ON COLUMN TB_ST_HEADER.VOID_SALE_TOT_DC_AMT                            IS '반품 총판매 할인 금액';
COMMENT ON COLUMN TB_ST_HEADER.VOID_SALE_TOT_DC_CNT                            IS '반품 총판매 할인 건수';
COMMENT ON COLUMN TB_ST_HEADER.VOID_SALE_AMT                                   IS '반품 매출 금액';
COMMENT ON COLUMN TB_ST_HEADER.VOID_SALE_CNT                                   IS '반품 매출 건수';
COMMENT ON COLUMN TB_ST_HEADER.VOID_SALE_VAT_AMT                               IS '반품 매출 부가세 금액';
COMMENT ON COLUMN TB_ST_HEADER.VOID_NET_SALE_AMT                               IS '반품 순매출 금액';
COMMENT ON COLUMN TB_ST_HEADER.VOID_NET_SALE_CNT                               IS '반품 순매출 건수';
COMMENT ON COLUMN TB_ST_HEADER.OLD_VOID_SALE_TOT_AMT                           IS '과거반품 총판매 금액';
COMMENT ON COLUMN TB_ST_HEADER.OLD_VOID_SALE_TOT_CNT                           IS '과거반품 총판매 건수';
COMMENT ON COLUMN TB_ST_HEADER.OLD_VOID_SALE_TOT_DC_AMT                        IS '과거반품 총판매 할인 금액';
COMMENT ON COLUMN TB_ST_HEADER.OLD_VOID_SALE_TOT_DC_CNT                        IS '과거반품 총판매 할인 건수';
COMMENT ON COLUMN TB_ST_HEADER.OLD_VOID_SALE_AMT                               IS '과거반품 매출 금액';
COMMENT ON COLUMN TB_ST_HEADER.OLD_VOID_SALE_CNT                               IS '과거반품 매출 건수';
COMMENT ON COLUMN TB_ST_HEADER.OLD_VOID_SALE_VAT_AMT                           IS '과거반품 매출 부가세 금액';
COMMENT ON COLUMN TB_ST_HEADER.OLD_VOID_NET_SALE_AMT                           IS '과거반품 순매출 금액';
COMMENT ON COLUMN TB_ST_HEADER.OLD_VOID_NET_SALE_CNT                           IS '과거반품 순매출 건수';
COMMENT ON COLUMN TB_ST_HEADER.REGI_ID                                         IS '등록자ID';
COMMENT ON COLUMN TB_ST_HEADER.REGI_DTIME                                      IS '등록일시';
COMMENT ON COLUMN TB_ST_HEADER.UPDT_ID                                         IS '수정자ID';
COMMENT ON COLUMN TB_ST_HEADER.UPDT_DTIME                                      IS '수정일시';


 /* TB_SY_API_LOG */

DROP TABLE TB_SY_API_LOG PURGE;

CREATE TABLE TB_SY_API_LOG
(
  LOG_SNO                        NUMBER(22)                                   NOT NULL       
, INTRLCK_SYS_ID                 VARCHAR2(20)                                 NULL           
, SNR_FG                         VARCHAR2(20)                                 NOT NULL       
, RQST_URL                       VARCHAR2(500)                                NOT NULL       
, RQST_MTHD                      VARCHAR2(10)                                 NULL           
, RQST_PARM                      VARCHAR2(4000)                               NULL           
, RQST_HEADER                    VARCHAR2(4000)                               NULL           
, RQST_BODY                      CLOB                                         NULL           
, RQST_IP                        VARCHAR2(40)                                 NULL           
, RQST_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, RSPONS_HEADER                  VARCHAR2(4000)                               NULL           
, RSPONS_BODY                    CLOB                                         NULL           
, RSPONS_STAT_CD                 VARCHAR2(10)                                 NULL           
, RSPONS_CD                      VARCHAR2(20)                                 NULL           
, RSPONS_MSG                     VARCHAR2(1000)                               NULL           
, RSPONS_DTIME                   TIMESTAMP(6)                                 NULL           
, ERR_CN                         CLOB                                         NULL           
, SVR_NO                         NUMBER(3,0)                                  NULL           
, SYS_ID                         VARCHAR2(30)                                 NULL           
, TX_ID                          VARCHAR2(30)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_API_LOG PRIMARY KEY (
    LOG_SNO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_API_LOG                                                IS 'API로그';
COMMENT ON COLUMN TB_SY_API_LOG.LOG_SNO                                        IS '로그일련번호';
COMMENT ON COLUMN TB_SY_API_LOG.INTRLCK_SYS_ID                                 IS '연동시스템ID (공통코드: 9010)';
COMMENT ON COLUMN TB_SY_API_LOG.SNR_FG                                         IS '송수신구분 (공통코드: 9011)';
COMMENT ON COLUMN TB_SY_API_LOG.RQST_URL                                       IS '요청URL';
COMMENT ON COLUMN TB_SY_API_LOG.RQST_MTHD                                      IS '요청Method';
COMMENT ON COLUMN TB_SY_API_LOG.RQST_PARM                                      IS '요청파라미터';
COMMENT ON COLUMN TB_SY_API_LOG.RQST_HEADER                                    IS '요청Header';
COMMENT ON COLUMN TB_SY_API_LOG.RQST_BODY                                      IS '요청Body';
COMMENT ON COLUMN TB_SY_API_LOG.RQST_IP                                        IS '요청IP';
COMMENT ON COLUMN TB_SY_API_LOG.RQST_DTIME                                     IS '요청일시';
COMMENT ON COLUMN TB_SY_API_LOG.RSPONS_HEADER                                  IS '응답Header';
COMMENT ON COLUMN TB_SY_API_LOG.RSPONS_BODY                                    IS '응답Body';
COMMENT ON COLUMN TB_SY_API_LOG.RSPONS_STAT_CD                                 IS '응답상태코드';
COMMENT ON COLUMN TB_SY_API_LOG.RSPONS_CD                                      IS '응답코드';
COMMENT ON COLUMN TB_SY_API_LOG.RSPONS_MSG                                     IS '응답메시지';
COMMENT ON COLUMN TB_SY_API_LOG.RSPONS_DTIME                                   IS '응답일시';
COMMENT ON COLUMN TB_SY_API_LOG.ERR_CN                                         IS '오류상세정보';
COMMENT ON COLUMN TB_SY_API_LOG.SVR_NO                                         IS '서버번호';
COMMENT ON COLUMN TB_SY_API_LOG.SYS_ID                                         IS '시스템ID';
COMMENT ON COLUMN TB_SY_API_LOG.TX_ID                                          IS '트랜잭션ID';
COMMENT ON COLUMN TB_SY_API_LOG.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_SY_API_LOG.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_SY_API_LOG.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_SY_API_LOG.UPDT_DTIME                                     IS '수정일시';


 /* TB_SY_AUTH */

DROP TABLE TB_SY_AUTH PURGE;

CREATE TABLE TB_SY_AUTH
(
  AUTH_ID                        VARCHAR2(20)                                 NOT NULL       
, AUTH_NM                        VARCHAR2(100)                                NOT NULL       
, SYS_AUTH_FG                    VARCHAR2(20)                                 NULL           
, BIZ_AUTH_FG                    VARCHAR2(20)                                 NULL           
, DASHBRD_FG                     VARCHAR2(20)                                 NULL           
, INDVDLINFO_SRCH_AUTH_YN        VARCHAR2(1)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_AUTH PRIMARY KEY (
    AUTH_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_AUTH                                                   IS '권한';
COMMENT ON COLUMN TB_SY_AUTH.AUTH_ID                                           IS '권한ID';
COMMENT ON COLUMN TB_SY_AUTH.AUTH_NM                                           IS '권한명';
COMMENT ON COLUMN TB_SY_AUTH.SYS_AUTH_FG                                       IS '시스템권한구분 (공통코드: 9002)';
COMMENT ON COLUMN TB_SY_AUTH.BIZ_AUTH_FG                                       IS '업무권한구분 (공통코드: 9003)';
COMMENT ON COLUMN TB_SY_AUTH.DASHBRD_FG                                        IS '대시보드구분 (공통코드: 9004)';
COMMENT ON COLUMN TB_SY_AUTH.INDVDLINFO_SRCH_AUTH_YN                           IS '개인정보조회권한여부';
COMMENT ON COLUMN TB_SY_AUTH.USE_YN                                            IS '사용여부';
COMMENT ON COLUMN TB_SY_AUTH.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_SY_AUTH.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_SY_AUTH.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_SY_AUTH.UPDT_DTIME                                        IS '수정일시';


 /* TB_SY_AUTH_PGM */

DROP TABLE TB_SY_AUTH_PGM PURGE;

CREATE TABLE TB_SY_AUTH_PGM
(
  AUTH_ID                        VARCHAR2(20)                                 NOT NULL       
, SYS_FG                         VARCHAR2(20)                                 NOT NULL       
, PGM_ID                         VARCHAR2(20)                                 NOT NULL       
, SAVE_AUTH_YN                   VARCHAR2(1)                                  NULL           
, DEL_AUTH_YN                    VARCHAR2(1)                                  NULL           
, PRNT_AUTH_YN                   VARCHAR2(1)                                  NULL           
, CLOS_AUTH_YN                   VARCHAR2(1)                                  NULL           
, EXCEL_AUTH_YN                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN1                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN2                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN3                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN4                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN5                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN6                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN7                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN8                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN9                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN10                 VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_AUTH_PGM PRIMARY KEY (
    AUTH_ID, SYS_FG, PGM_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_AUTH_PGM                                               IS '권한별프로그램';
COMMENT ON COLUMN TB_SY_AUTH_PGM.AUTH_ID                                       IS '권한ID';
COMMENT ON COLUMN TB_SY_AUTH_PGM.SYS_FG                                        IS '시스템구분 (공통코드: 9001)';
COMMENT ON COLUMN TB_SY_AUTH_PGM.PGM_ID                                        IS '프로그램ID';
COMMENT ON COLUMN TB_SY_AUTH_PGM.SAVE_AUTH_YN                                  IS '저장권한여부';
COMMENT ON COLUMN TB_SY_AUTH_PGM.DEL_AUTH_YN                                   IS '삭제권한여부';
COMMENT ON COLUMN TB_SY_AUTH_PGM.PRNT_AUTH_YN                                  IS '출력권한여부';
COMMENT ON COLUMN TB_SY_AUTH_PGM.CLOS_AUTH_YN                                  IS '마감권한여부';
COMMENT ON COLUMN TB_SY_AUTH_PGM.EXCEL_AUTH_YN                                 IS '엑셀권한여부';
COMMENT ON COLUMN TB_SY_AUTH_PGM.EXTN_AUTH_YN1                                 IS '확장권한여부1';
COMMENT ON COLUMN TB_SY_AUTH_PGM.EXTN_AUTH_YN2                                 IS '확장권한여부2';
COMMENT ON COLUMN TB_SY_AUTH_PGM.EXTN_AUTH_YN3                                 IS '확장권한여부3';
COMMENT ON COLUMN TB_SY_AUTH_PGM.EXTN_AUTH_YN4                                 IS '확장권한여부4';
COMMENT ON COLUMN TB_SY_AUTH_PGM.EXTN_AUTH_YN5                                 IS '확장권한여부5';
COMMENT ON COLUMN TB_SY_AUTH_PGM.EXTN_AUTH_YN6                                 IS '확장권한여부6';
COMMENT ON COLUMN TB_SY_AUTH_PGM.EXTN_AUTH_YN7                                 IS '확장권한여부7';
COMMENT ON COLUMN TB_SY_AUTH_PGM.EXTN_AUTH_YN8                                 IS '확장권한여부8';
COMMENT ON COLUMN TB_SY_AUTH_PGM.EXTN_AUTH_YN9                                 IS '확장권한여부9';
COMMENT ON COLUMN TB_SY_AUTH_PGM.EXTN_AUTH_YN10                                IS '확장권한여부10';
COMMENT ON COLUMN TB_SY_AUTH_PGM.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SY_AUTH_PGM.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SY_AUTH_PGM.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SY_AUTH_PGM.UPDT_DTIME                                    IS '수정일시';


 /* TB_SY_CMCD */

DROP TABLE TB_SY_CMCD PURGE;

CREATE TABLE TB_SY_CMCD
(
  CD_GRP_ID                      VARCHAR2(20)                                 NOT NULL       
, CD_ID                          VARCHAR2(20)                                 NOT NULL       
, CD_NM                          VARCHAR2(200)                                NOT NULL       
, SORT_ORD                       NUMBER(5,0)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NULL           
, REF_VAL1                       VARCHAR2(500)                                NULL           
, REF_VAL2                       VARCHAR2(500)                                NULL           
, REF_VAL3                       VARCHAR2(500)                                NULL           
, REF_VAL4                       VARCHAR2(500)                                NULL           
, REF_VAL5                       VARCHAR2(500)                                NULL           
, REF_VAL6                       VARCHAR2(500)                                NULL           
, REF_VAL7                       VARCHAR2(500)                                NULL           
, REF_VAL8                       VARCHAR2(500)                                NULL           
, REF_VAL9                       VARCHAR2(500)                                NULL           
, REF_VAL10                      VARCHAR2(500)                                NULL           
, RMRK                           VARCHAR2(4000)                               NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, IF_UPDT_TSP                    TIMESTAMP(6)                                 NULL           
, CONSTRAINT PK_TB_SY_CMCD PRIMARY KEY (
    CD_GRP_ID, CD_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_CMCD                                                   IS '공통코드';
COMMENT ON COLUMN TB_SY_CMCD.CD_GRP_ID                                         IS '코드그룹ID';
COMMENT ON COLUMN TB_SY_CMCD.CD_ID                                             IS '코드ID';
COMMENT ON COLUMN TB_SY_CMCD.CD_NM                                             IS '코드명';
COMMENT ON COLUMN TB_SY_CMCD.SORT_ORD                                          IS '정렬순서';
COMMENT ON COLUMN TB_SY_CMCD.USE_YN                                            IS '사용여부';
COMMENT ON COLUMN TB_SY_CMCD.REF_VAL1                                          IS '참조값1';
COMMENT ON COLUMN TB_SY_CMCD.REF_VAL2                                          IS '참조값2';
COMMENT ON COLUMN TB_SY_CMCD.REF_VAL3                                          IS '참조값3';
COMMENT ON COLUMN TB_SY_CMCD.REF_VAL4                                          IS '참조값4';
COMMENT ON COLUMN TB_SY_CMCD.REF_VAL5                                          IS '참조값5';
COMMENT ON COLUMN TB_SY_CMCD.REF_VAL6                                          IS '참조값6';
COMMENT ON COLUMN TB_SY_CMCD.REF_VAL7                                          IS '참조값7';
COMMENT ON COLUMN TB_SY_CMCD.REF_VAL8                                          IS '참조값8';
COMMENT ON COLUMN TB_SY_CMCD.REF_VAL9                                          IS '참조값9';
COMMENT ON COLUMN TB_SY_CMCD.REF_VAL10                                         IS '참조값10';
COMMENT ON COLUMN TB_SY_CMCD.RMRK                                              IS '비고';
COMMENT ON COLUMN TB_SY_CMCD.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_SY_CMCD.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_SY_CMCD.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_SY_CMCD.UPDT_DTIME                                        IS '수정일시';
COMMENT ON COLUMN TB_SY_CMCD.POS_UPDT_TSP                                      IS 'POS수정타임스템프';
COMMENT ON COLUMN TB_SY_CMCD.IF_UPDT_TSP                                       IS 'EAI수정타임스템프';


 /* TB_SY_CMCD_GRP */

DROP TABLE TB_SY_CMCD_GRP PURGE;

CREATE TABLE TB_SY_CMCD_GRP
(
  CD_GRP_ID                      VARCHAR2(20)                                 NOT NULL       
, CD_GRP_NM                      VARCHAR2(200)                                NOT NULL       
, CD_GRP_TYPE                    VARCHAR2(2)    DEFAULT 10                    NOT NULL       
, BIZ_FG                         VARCHAR2(20)                                 NULL           
, USE_YN                         VARCHAR2(1)                                  NULL           
, REF_EXPL1                      VARCHAR2(500)                                NULL           
, REF_EXPL2                      VARCHAR2(500)                                NULL           
, REF_EXPL3                      VARCHAR2(500)                                NULL           
, REF_EXPL4                      VARCHAR2(500)                                NULL           
, REF_EXPL5                      VARCHAR2(500)                                NULL           
, REF_EXPL6                      VARCHAR2(500)                                NULL           
, REF_EXPL7                      VARCHAR2(500)                                NULL           
, REF_EXPL8                      VARCHAR2(500)                                NULL           
, REF_EXPL9                      VARCHAR2(500)                                NULL           
, REF_EXPL10                     VARCHAR2(500)                                NULL           
, RMRK                           VARCHAR2(4000)                               NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)   DEFAULT SYSTIMESTAMP          NULL           
, IF_UPDT_TSP                    TIMESTAMP(6)                                 NULL           
, CONSTRAINT PK_TB_SY_CMCD_GRP PRIMARY KEY (
    CD_GRP_ID, CD_GRP_TYPE
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_CMCD_GRP                                               IS '공통코드그룹';
COMMENT ON COLUMN TB_SY_CMCD_GRP.CD_GRP_ID                                     IS '코드그룹ID';
COMMENT ON COLUMN TB_SY_CMCD_GRP.CD_GRP_NM                                     IS '코드그룹명';
COMMENT ON COLUMN TB_SY_CMCD_GRP.CD_GRP_TYPE                                   IS '코드그룹유형 (공통코드: O0001)';
COMMENT ON COLUMN TB_SY_CMCD_GRP.BIZ_FG                                        IS '업무구분 (공통코드: 9006)';
COMMENT ON COLUMN TB_SY_CMCD_GRP.USE_YN                                        IS '사용여부';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REF_EXPL1                                     IS '참조설명1';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REF_EXPL2                                     IS '참조설명2';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REF_EXPL3                                     IS '참조설명3';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REF_EXPL4                                     IS '참조설명4';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REF_EXPL5                                     IS '참조설명5';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REF_EXPL6                                     IS '참조설명6';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REF_EXPL7                                     IS '참조설명7';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REF_EXPL8                                     IS '참조설명8';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REF_EXPL9                                     IS '참조설명9';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REF_EXPL10                                    IS '참조설명10';
COMMENT ON COLUMN TB_SY_CMCD_GRP.RMRK                                          IS '비고';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SY_CMCD_GRP.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SY_CMCD_GRP.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SY_CMCD_GRP.UPDT_DTIME                                    IS '수정일시';
COMMENT ON COLUMN TB_SY_CMCD_GRP.POS_UPDT_TSP                                  IS 'POS수정타임스템프';
COMMENT ON COLUMN TB_SY_CMCD_GRP.IF_UPDT_TSP                                   IS 'EAI수정타임스템프';


 /* TB_SY_DEPT */

DROP TABLE TB_SY_DEPT PURGE;

CREATE TABLE TB_SY_DEPT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, DEPT_ID                        VARCHAR2(80)                                 NOT NULL       
, DEPT_NAME                      VARCHAR2(100)                                NOT NULL       
, PARENT_DEPT_ID                 VARCHAR2(80)                                 NULL           
, SORT_ORDER                     NUMBER(22)                                   NOT NULL       
, AUTH_STORE_CD                  VARCHAR2(10)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_DEPT PRIMARY KEY (
    BRND_CD, DEPT_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_DEPT                                                   IS '부서';
COMMENT ON COLUMN TB_SY_DEPT.BRND_CD                                           IS '브랜드 코드';
COMMENT ON COLUMN TB_SY_DEPT.DEPT_ID                                           IS '부서 ID';
COMMENT ON COLUMN TB_SY_DEPT.DEPT_NAME                                         IS '부서명';
COMMENT ON COLUMN TB_SY_DEPT.PARENT_DEPT_ID                                    IS '상위부서 ID';
COMMENT ON COLUMN TB_SY_DEPT.SORT_ORDER                                        IS '정렬순서';
COMMENT ON COLUMN TB_SY_DEPT.AUTH_STORE_CD                                     IS '권한점포 코드';
COMMENT ON COLUMN TB_SY_DEPT.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_SY_DEPT.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_SY_DEPT.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_SY_DEPT.UPDT_DTIME                                        IS '수정일시';


 /* TB_SY_DSPT */

DROP TABLE TB_SY_DSPT PURGE;

CREATE TABLE TB_SY_DSPT
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, DSPT_ID                        VARCHAR2(50)                                 NOT NULL       
, DSPT_NM                        VARCHAR2(100)                                NULL           
, JOB_CLS_NM                     VARCHAR2(200)                                NULL           
, DSPT_EXEC_CD                   VARCHAR2(30)                                 NULL           
, DSPT_RMK                       VARCHAR2(1000)                               NULL           
, SYSM_CLS_CD                    VARCHAR2(30)                                 NULL           
, SCHE_PLAN_NM                   VARCHAR2(200)                                NULL           
, ST_DT                          VARCHAR2(8)                                  NULL           
, END_DT                         VARCHAR2(8)                                  NULL           
, DSPT_STAT_CD                   VARCHAR2(30)                                 NULL           
, TARG_CNT                       VARCHAR2(200)                                NULL           
, SUCC_CNT                       VARCHAR2(200)                                NULL           
, FAIL_CNT                       VARCHAR2(200)                                NULL           
, ERR_CD                         VARCHAR2(30)                                 NULL           
, ERR_MSG                        VARCHAR2(4000)                               NULL           
, TEL_NO                         VARCHAR2(64)                                 NULL           
, DSPT_TEL_NO                    VARCHAR2(64)                                 NULL           
, DSPT_SCHE_RMK                  VARCHAR2(2048)                               NULL           
, SMS_RCV_YN                     VARCHAR2(1)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NULL           
, FINA_ST_DTTM                   VARCHAR2(20)                                 NULL           
, FINA_END_DTTM                  VARCHAR2(20)                                 NULL           
, FINA_DIFF_TM                   VARCHAR2(20)                                 NULL           
, DSPT_WRK_NM                    VARCHAR2(200)                                NULL           
, SMS_RCV_CD                     VARCHAR2(2)                                  NULL           
, PARAM01                        VARCHAR2(100)                                NULL           
, PARAM02                        VARCHAR2(100)                                NULL           
, PARAM03                        VARCHAR2(100)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_DSPT PRIMARY KEY (
    BRND_CD, DSPT_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_DSPT                                                   IS '시스템배치마스터';
COMMENT ON COLUMN TB_SY_DSPT.BRND_CD                                           IS '브랜드 코드';
COMMENT ON COLUMN TB_SY_DSPT.DSPT_ID                                           IS '배치ID';
COMMENT ON COLUMN TB_SY_DSPT.DSPT_NM                                           IS '배치명';
COMMENT ON COLUMN TB_SY_DSPT.JOB_CLS_NM                                        IS '직무구분명';
COMMENT ON COLUMN TB_SY_DSPT.DSPT_EXEC_CD                                      IS '배치실행코드';
COMMENT ON COLUMN TB_SY_DSPT.DSPT_RMK                                          IS '배치비고';
COMMENT ON COLUMN TB_SY_DSPT.SYSM_CLS_CD                                       IS '시스템구분코드';
COMMENT ON COLUMN TB_SY_DSPT.SCHE_PLAN_NM                                      IS '스케쥴계획명';
COMMENT ON COLUMN TB_SY_DSPT.ST_DT                                             IS '시작일자';
COMMENT ON COLUMN TB_SY_DSPT.END_DT                                            IS '종료일자';
COMMENT ON COLUMN TB_SY_DSPT.DSPT_STAT_CD                                      IS '배치상태코드';
COMMENT ON COLUMN TB_SY_DSPT.TARG_CNT                                          IS '대상건수';
COMMENT ON COLUMN TB_SY_DSPT.SUCC_CNT                                          IS '성공건수';
COMMENT ON COLUMN TB_SY_DSPT.FAIL_CNT                                          IS '실패건수';
COMMENT ON COLUMN TB_SY_DSPT.ERR_CD                                            IS '오류코드';
COMMENT ON COLUMN TB_SY_DSPT.ERR_MSG                                           IS '오류메시지';
COMMENT ON COLUMN TB_SY_DSPT.TEL_NO                                            IS '전화번호';
COMMENT ON COLUMN TB_SY_DSPT.DSPT_TEL_NO                                       IS '배치전화번호';
COMMENT ON COLUMN TB_SY_DSPT.DSPT_SCHE_RMK                                     IS '배치스케쥴비고';
COMMENT ON COLUMN TB_SY_DSPT.SMS_RCV_YN                                        IS 'SMS수신여부';
COMMENT ON COLUMN TB_SY_DSPT.USE_YN                                            IS '사용여부';
COMMENT ON COLUMN TB_SY_DSPT.FINA_ST_DTTM                                      IS '최종시작일시';
COMMENT ON COLUMN TB_SY_DSPT.FINA_END_DTTM                                     IS '최종종료일시';
COMMENT ON COLUMN TB_SY_DSPT.FINA_DIFF_TM                                      IS '최종차이시간';
COMMENT ON COLUMN TB_SY_DSPT.DSPT_WRK_NM                                       IS '배치업무명';
COMMENT ON COLUMN TB_SY_DSPT.SMS_RCV_CD                                        IS 'SMS수신코드';
COMMENT ON COLUMN TB_SY_DSPT.PARAM01                                           IS 'Parameter #1';
COMMENT ON COLUMN TB_SY_DSPT.PARAM02                                           IS 'Parameter #2';
COMMENT ON COLUMN TB_SY_DSPT.PARAM03                                           IS 'Parameter #3';
COMMENT ON COLUMN TB_SY_DSPT.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_SY_DSPT.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_SY_DSPT.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_SY_DSPT.UPDT_DTIME                                        IS '수정일시';


 /* TB_SY_DSPT_LOG */

DROP TABLE TB_SY_DSPT_LOG PURGE;

CREATE TABLE TB_SY_DSPT_LOG
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, DSPT_ID                        VARCHAR2(50)                                 NOT NULL       
, ST_DTTM                        VARCHAR2(20)                                 NOT NULL       
, END_DTTM                       VARCHAR2(20)                                 NULL           
, DSPT_STAT_CD                   VARCHAR2(30)                                 NULL           
, TARG_CNT                       VARCHAR2(200)                                NULL           
, SUCC_CNT                       VARCHAR2(200)                                NULL           
, FAIL_CNT                       VARCHAR2(200)                                NULL           
, ERR_CD                         VARCHAR2(30)                                 NULL           
, ERR_MSG                        VARCHAR2(4000)                               NULL           
, TEL_NO                         VARCHAR2(64)                                 NULL           
, FINA_DIFF_TM                   VARCHAR2(20)                                 NULL           
, ERR_LOG_SEQ                    NUMBER(20,0)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_DSPT_LOG PRIMARY KEY (
    BRND_CD, DSPT_ID, ST_DTTM
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_DSPT_LOG                                               IS '시스템배치로그';
COMMENT ON COLUMN TB_SY_DSPT_LOG.BRND_CD                                       IS '브랜드 코드';
COMMENT ON COLUMN TB_SY_DSPT_LOG.DSPT_ID                                       IS '배치ID';
COMMENT ON COLUMN TB_SY_DSPT_LOG.ST_DTTM                                       IS '시작일자';
COMMENT ON COLUMN TB_SY_DSPT_LOG.END_DTTM                                      IS '종료일자';
COMMENT ON COLUMN TB_SY_DSPT_LOG.DSPT_STAT_CD                                  IS '배치상태코드';
COMMENT ON COLUMN TB_SY_DSPT_LOG.TARG_CNT                                      IS '대상건수';
COMMENT ON COLUMN TB_SY_DSPT_LOG.SUCC_CNT                                      IS '성공건수';
COMMENT ON COLUMN TB_SY_DSPT_LOG.FAIL_CNT                                      IS '실패건수';
COMMENT ON COLUMN TB_SY_DSPT_LOG.ERR_CD                                        IS '오류코드';
COMMENT ON COLUMN TB_SY_DSPT_LOG.ERR_MSG                                       IS '오류메시지';
COMMENT ON COLUMN TB_SY_DSPT_LOG.TEL_NO                                        IS '전화번호';
COMMENT ON COLUMN TB_SY_DSPT_LOG.FINA_DIFF_TM                                  IS '최종차이시간';
COMMENT ON COLUMN TB_SY_DSPT_LOG.ERR_LOG_SEQ                                   IS '에러로그SEQ';
COMMENT ON COLUMN TB_SY_DSPT_LOG.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SY_DSPT_LOG.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SY_DSPT_LOG.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SY_DSPT_LOG.UPDT_DTIME                                    IS '수정일시';


 /* TB_SY_EAISEND_LOG */

DROP TABLE TB_SY_EAISEND_LOG PURGE;

CREATE TABLE TB_SY_EAISEND_LOG
(
  LOG_SEQ                        NUMBER(22)                                   NOT NULL       
, EAIF_DT                        VARCHAR2(8)                                  NOT NULL       
, EAIF_SN                        NUMBER(22)                                   NOT NULL       
, RESULT_CD                      VARCHAR2(4)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_EAISEND_LOG PRIMARY KEY (
    LOG_SEQ, EAIF_DT, EAIF_SN
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_EAISEND_LOG                                            IS 'EAI재전송로그';
COMMENT ON COLUMN TB_SY_EAISEND_LOG.LOG_SEQ                                    IS '로그일련번호';
COMMENT ON COLUMN TB_SY_EAISEND_LOG.EAIF_DT                                    IS 'EAI인터페이스일자';
COMMENT ON COLUMN TB_SY_EAISEND_LOG.EAIF_SN                                    IS 'EAI인터페이스순번';
COMMENT ON COLUMN TB_SY_EAISEND_LOG.RESULT_CD                                  IS '결과코드';
COMMENT ON COLUMN TB_SY_EAISEND_LOG.REGI_ID                                    IS '등록자ID';
COMMENT ON COLUMN TB_SY_EAISEND_LOG.REGI_DTIME                                 IS '등록일시';
COMMENT ON COLUMN TB_SY_EAISEND_LOG.UPDT_ID                                    IS '수정자ID';
COMMENT ON COLUMN TB_SY_EAISEND_LOG.UPDT_DTIME                                 IS '수정일시';


 /* TB_SY_LOGIN_LOG */

DROP TABLE TB_SY_LOGIN_LOG PURGE;

CREATE TABLE TB_SY_LOGIN_LOG
(
  LOG_SNO                        NUMBER(22)                                   NOT NULL       
, SYS_FG                         VARCHAR2(20)                                 NULL           
, RQST_ID                        VARCHAR2(100)                                NULL           
, RQST_IP                        VARCHAR2(40)                                 NULL           
, RQST_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, RESULT_CD                      VARCHAR2(10)                                 NULL           
, RESULT_MSG                     VARCHAR2(4000)                               NULL           
, RQST_POSVER                    VARCHAR2(20)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_LOGIN_LOG PRIMARY KEY (
    LOG_SNO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_LOGIN_LOG                                              IS '로그인 로그';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.LOG_SNO                                      IS '로그순번';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.SYS_FG                                       IS '시스템구분(BOS,POS)';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.RQST_ID                                      IS '요청ID';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.RQST_IP                                      IS '요청IP';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.RQST_DTIME                                   IS '요청일시';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.RESULT_CD                                    IS '처리결과코드';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.RESULT_MSG                                   IS '처리결과메시지';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.RQST_POSVER                                  IS 'POS버전';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_SY_LOGIN_LOG.UPDT_DTIME                                   IS '수정일시';


 /* TB_SY_MENU */

DROP TABLE TB_SY_MENU PURGE;

CREATE TABLE TB_SY_MENU
(
  SYS_FG                         VARCHAR2(20)                                 NOT NULL       
, MENU_ID                        VARCHAR2(20)                                 NOT NULL       
, MENU_NM                        VARCHAR2(100)                                NULL           
, PGM_ID                         VARCHAR2(20)                                 NULL           
, UP_MENU_ID                     VARCHAR2(20)                                 NOT NULL       
, MENU_IMG                       VARCHAR2(20)                                 NULL           
, SORT_ORD                       NUMBER(5,0)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_MENU PRIMARY KEY (
    SYS_FG, MENU_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_MENU                                                   IS '메뉴';
COMMENT ON COLUMN TB_SY_MENU.SYS_FG                                            IS '시스템구분 (공통코드: 9001)';
COMMENT ON COLUMN TB_SY_MENU.MENU_ID                                           IS '메뉴ID';
COMMENT ON COLUMN TB_SY_MENU.MENU_NM                                           IS '메뉴명';
COMMENT ON COLUMN TB_SY_MENU.PGM_ID                                            IS '프로그램ID';
COMMENT ON COLUMN TB_SY_MENU.UP_MENU_ID                                        IS '상위메뉴ID';
COMMENT ON COLUMN TB_SY_MENU.MENU_IMG                                          IS '메뉴이미지 (공통코드: 9005)';
COMMENT ON COLUMN TB_SY_MENU.SORT_ORD                                          IS '정렬순서';
COMMENT ON COLUMN TB_SY_MENU.USE_YN                                            IS '사용여부';
COMMENT ON COLUMN TB_SY_MENU.REGI_ID                                           IS '등록자ID';
COMMENT ON COLUMN TB_SY_MENU.REGI_DTIME                                        IS '등록일시';
COMMENT ON COLUMN TB_SY_MENU.UPDT_ID                                           IS '수정자ID';
COMMENT ON COLUMN TB_SY_MENU.UPDT_DTIME                                        IS '수정일시';


 /* TB_SY_MENU_LOG */

DROP TABLE TB_SY_MENU_LOG PURGE;

CREATE TABLE TB_SY_MENU_LOG
(
  LOG_SNO                        NUMBER(22)                                   NOT NULL       
, SYS_FG                         VARCHAR2(20)                                 NULL           
, RQST_ID                        VARCHAR2(100)                                NULL           
, RQST_IP                        VARCHAR2(40)                                 NULL           
, RQST_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, MENU_ID                        VARCHAR2(100)                                NULL           
, WORK_ID                        VARCHAR2(100)                                NULL           
, WORK_TXT                       VARCHAR2(4000)                               NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_MENU_LOG PRIMARY KEY (
    LOG_SNO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_MENU_LOG                                               IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.LOG_SNO                                       IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.SYS_FG                                        IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.RQST_ID                                       IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.RQST_IP                                       IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.RQST_DTIME                                    IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.MENU_ID                                       IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.WORK_ID                                       IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.WORK_TXT                                      IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.REGI_ID                                       IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.REGI_DTIME                                    IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.UPDT_ID                                       IS '';
COMMENT ON COLUMN TB_SY_MENU_LOG.UPDT_DTIME                                    IS '';


 /* TB_SY_MSG */

DROP TABLE TB_SY_MSG PURGE;

CREATE TABLE TB_SY_MSG
(
  MSG_ID                         VARCHAR2(20)                                 NOT NULL       
, MSG_NM                         VARCHAR2(1000)                               NOT NULL       
, MSG_CLAS                       VARCHAR2(20)                                 NULL           
, USE_YN                         VARCHAR2(1)                                  NULL           
, RMRK                           VARCHAR2(4000)                               NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_MSG PRIMARY KEY (
    MSG_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_MSG                                                    IS '메시지';
COMMENT ON COLUMN TB_SY_MSG.MSG_ID                                             IS '메시지ID';
COMMENT ON COLUMN TB_SY_MSG.MSG_NM                                             IS '메시지명';
COMMENT ON COLUMN TB_SY_MSG.MSG_CLAS                                           IS '메시지분류 (공통코드: 9007)';
COMMENT ON COLUMN TB_SY_MSG.USE_YN                                             IS '사용여부';
COMMENT ON COLUMN TB_SY_MSG.RMRK                                               IS '비고';
COMMENT ON COLUMN TB_SY_MSG.REGI_ID                                            IS '등록자ID';
COMMENT ON COLUMN TB_SY_MSG.REGI_DTIME                                         IS '등록일시';
COMMENT ON COLUMN TB_SY_MSG.UPDT_ID                                            IS '수정자ID';
COMMENT ON COLUMN TB_SY_MSG.UPDT_DTIME                                         IS '수정일시';


 /* TB_SY_PGM */

DROP TABLE TB_SY_PGM PURGE;

CREATE TABLE TB_SY_PGM
(
  SYS_FG                         VARCHAR2(20)                                 NOT NULL       
, PGM_ID                         VARCHAR2(20)                                 NOT NULL       
, PGM_NM                         VARCHAR2(100)                                NOT NULL       
, PGM_URL                        VARCHAR2(30)                                 NOT NULL       
, SAVE_AUTH_USE_YN               VARCHAR2(1)                                  NULL           
, DEL_AUTH_USE_YN                VARCHAR2(1)                                  NULL           
, PRNT_AUTH_USE_YN               VARCHAR2(1)                                  NULL           
, CLOS_AUTH_USE_YN               VARCHAR2(1)                                  NULL           
, EXCEL_AUTH_USE_YN              VARCHAR2(1)                                  NULL           
, EXTN_AUTH_USE_YN1              VARCHAR2(1)                                  NULL           
, EXTN_AUTH_NM1                  VARCHAR2(50)                                 NULL           
, EXTN_AUTH_USE_YN2              VARCHAR2(1)                                  NULL           
, EXTN_AUTH_NM2                  VARCHAR2(50)                                 NULL           
, EXTN_AUTH_USE_YN3              VARCHAR2(1)                                  NULL           
, EXTN_AUTH_NM3                  VARCHAR2(50)                                 NULL           
, EXTN_AUTH_USE_YN4              VARCHAR2(1)                                  NULL           
, EXTN_AUTH_NM4                  VARCHAR2(50)                                 NULL           
, EXTN_AUTH_USE_YN5              VARCHAR2(1)                                  NULL           
, EXTN_AUTH_NM5                  VARCHAR2(50)                                 NULL           
, EXTN_AUTH_USE_YN6              VARCHAR2(1)                                  NULL           
, EXTN_AUTH_NM6                  VARCHAR2(50)                                 NULL           
, EXTN_AUTH_USE_YN7              VARCHAR2(1)                                  NULL           
, EXTN_AUTH_NM7                  VARCHAR2(50)                                 NULL           
, EXTN_AUTH_USE_YN8              VARCHAR2(1)                                  NULL           
, EXTN_AUTH_NM8                  VARCHAR2(50)                                 NULL           
, EXTN_AUTH_USE_YN9              VARCHAR2(1)                                  NULL           
, EXTN_AUTH_NM9                  VARCHAR2(50)                                 NULL           
, EXTN_AUTH_USE_YN10             VARCHAR2(1)                                  NULL           
, EXTN_AUTH_NM10                 VARCHAR2(50)                                 NULL           
, OSIDE_LINK_URL                 VARCHAR2(500)                                NULL           
, INDVDLINFO_SRCH_YN             VARCHAR2(1)                                  NULL           
, POP_MENU_YN                    VARCHAR2(1)                                  NULL           
, USE_YN                         VARCHAR2(1)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_PGM PRIMARY KEY (
    SYS_FG, PGM_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_PGM                                                    IS '프로그램';
COMMENT ON COLUMN TB_SY_PGM.SYS_FG                                             IS '시스템구분 (공통코드: 9001)';
COMMENT ON COLUMN TB_SY_PGM.PGM_ID                                             IS '프로그램ID';
COMMENT ON COLUMN TB_SY_PGM.PGM_NM                                             IS '프로그램명';
COMMENT ON COLUMN TB_SY_PGM.PGM_URL                                            IS '프로그램URL';
COMMENT ON COLUMN TB_SY_PGM.SAVE_AUTH_USE_YN                                   IS '저장권한사용여부';
COMMENT ON COLUMN TB_SY_PGM.DEL_AUTH_USE_YN                                    IS '삭제권한사용여부';
COMMENT ON COLUMN TB_SY_PGM.PRNT_AUTH_USE_YN                                   IS '출력권한사용여부';
COMMENT ON COLUMN TB_SY_PGM.CLOS_AUTH_USE_YN                                   IS '마감권한사용여부';
COMMENT ON COLUMN TB_SY_PGM.EXCEL_AUTH_USE_YN                                  IS '엑셀권한사용여부';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_USE_YN1                                  IS '확장권한사용여부1';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_NM1                                      IS '확장권한명1';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_USE_YN2                                  IS '확장권한사용여부2';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_NM2                                      IS '확장권한명2';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_USE_YN3                                  IS '확장권한사용여부3';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_NM3                                      IS '확장권한명3';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_USE_YN4                                  IS '확장권한사용여부4';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_NM4                                      IS '확장권한명4';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_USE_YN5                                  IS '확장권한사용여부5';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_NM5                                      IS '확장권한명5';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_USE_YN6                                  IS '확장권한사용여부6';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_NM6                                      IS '확장권한명6';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_USE_YN7                                  IS '확장권한사용여부7';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_NM7                                      IS '확장권한명7';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_USE_YN8                                  IS '확장권한사용여부8';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_NM8                                      IS '확장권한명8';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_USE_YN9                                  IS '확장권한사용여부9';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_NM9                                      IS '확장권한명9';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_USE_YN10                                 IS '확장권한사용여부10';
COMMENT ON COLUMN TB_SY_PGM.EXTN_AUTH_NM10                                     IS '확장권한명10';
COMMENT ON COLUMN TB_SY_PGM.OSIDE_LINK_URL                                     IS '외부링크URL';
COMMENT ON COLUMN TB_SY_PGM.INDVDLINFO_SRCH_YN                                 IS '개인정보조회여부';
COMMENT ON COLUMN TB_SY_PGM.POP_MENU_YN                                        IS '팝업메뉴여부';
COMMENT ON COLUMN TB_SY_PGM.USE_YN                                             IS '사용여부';
COMMENT ON COLUMN TB_SY_PGM.REGI_ID                                            IS '등록자ID';
COMMENT ON COLUMN TB_SY_PGM.REGI_DTIME                                         IS '등록일시';
COMMENT ON COLUMN TB_SY_PGM.UPDT_ID                                            IS '수정자ID';
COMMENT ON COLUMN TB_SY_PGM.UPDT_DTIME                                         IS '수정일시';


 /* TB_SY_SP_JOB_LOG */

DROP TABLE TB_SY_SP_JOB_LOG PURGE;

CREATE TABLE TB_SY_SP_JOB_LOG
(
  LOG_SEQ                        VARCHAR2(20)                                 NOT NULL       
, SP_NM                          VARCHAR2(100)                                NOT NULL       
, INP_PARA_CNTNT                 VARCHAR2(1000)                               NULL           
, RESULT_CNTNT                   VARCHAR2(1000)                               NULL           
, ERR_CD                         VARCHAR2(100)                                NULL           
, ERR_MSG_CTNT                   VARCHAR2(4000)                               NULL           
, ERR_LOG_SEQ                    NUMBER(20,0)                                 NULL           
, RMK                            VARCHAR2(1000)                               NULL           
, ETC_CNTNT1                     VARCHAR2(1000)                               NULL           
, ETC_CNTNT2                     VARCHAR2(1000)                               NULL           
, ETC_CNTNT3                     VARCHAR2(1000)                               NULL           
, ETC_CNTNT4                     VARCHAR2(1000)                               NULL           
, ETC_CNTNT5                     VARCHAR2(1000)                               NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_SP_JOB_LOG PRIMARY KEY (
    LOG_SEQ
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_SP_JOB_LOG                                             IS '시스템프로시저작업LOG';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.LOG_SEQ                                     IS 'LOG SEQUENCE';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.SP_NM                                       IS '프로시저명';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.INP_PARA_CNTNT                              IS '입력 파라미터 내용';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.RESULT_CNTNT                                IS '결과 내용';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.ERR_CD                                      IS '에러 코드';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.ERR_MSG_CTNT                                IS '에러메시지 내용';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.ERR_LOG_SEQ                                 IS 'Error Log Sequence';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.RMK                                         IS '비고';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.ETC_CNTNT1                                  IS '기타 내용1';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.ETC_CNTNT2                                  IS '기타 내용2';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.ETC_CNTNT3                                  IS '기타 내용3';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.ETC_CNTNT4                                  IS '기타 내용4';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.ETC_CNTNT5                                  IS '기타 내용5';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.REGI_ID                                     IS '등록자ID';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.REGI_DTIME                                  IS '등록일시';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.UPDT_ID                                     IS '수정자ID';
COMMENT ON COLUMN TB_SY_SP_JOB_LOG.UPDT_DTIME                                  IS '수정일시';


 /* TB_SY_SYS_LOG */

DROP TABLE TB_SY_SYS_LOG PURGE;

CREATE TABLE TB_SY_SYS_LOG
(
  LOG_SNO                        NUMBER(22)                                   NOT NULL       
, SYS_FG                         VARCHAR2(20)                                 NULL           
, BIZ_SVC                        VARCHAR2(100)                                NULL           
, BIZ_MTHD                       VARCHAR2(100)                                NULL           
, PGM_ID                         VARCHAR2(100)                                NULL           
, RQST_URL                       VARCHAR2(500)                                NOT NULL       
, RQST_PARM                      VARCHAR2(4000)                               NULL           
, RQST_IP                        VARCHAR2(40)                                 NULL           
, RQST_DTIME                     TIMESTAMP(6)                                 NOT NULL       
, RSPONS_CD                      VARCHAR2(10)                                 NULL           
, RSPONS_DTIME                   TIMESTAMP(6)                                 NULL           
, ERR_MSG_ID                     VARCHAR2(20)                                 NULL           
, ERR_MSG_NM                     VARCHAR2(1000)                               NULL           
, ERR_CN                         CLOB                                         NULL           
, USER_ID                        VARCHAR2(20)                                 NULL           
, SVR_NO                         NUMBER(3,0)                                  NULL           
, BROW_FG                        VARCHAR2(50)                                 NULL           
, BROW_VER                       VARCHAR2(30)                                 NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_SYS_LOG PRIMARY KEY (
    LOG_SNO
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_SYS_LOG                                                IS '시스템로그';
COMMENT ON COLUMN TB_SY_SYS_LOG.LOG_SNO                                        IS '로그일련번호';
COMMENT ON COLUMN TB_SY_SYS_LOG.SYS_FG                                         IS '시스템구분 (공통코드: 9001)';
COMMENT ON COLUMN TB_SY_SYS_LOG.BIZ_SVC                                        IS '업무서비스';
COMMENT ON COLUMN TB_SY_SYS_LOG.BIZ_MTHD                                       IS '업무메소드';
COMMENT ON COLUMN TB_SY_SYS_LOG.PGM_ID                                         IS '프로그램ID';
COMMENT ON COLUMN TB_SY_SYS_LOG.RQST_URL                                       IS '요청URL';
COMMENT ON COLUMN TB_SY_SYS_LOG.RQST_PARM                                      IS '요청파라미터';
COMMENT ON COLUMN TB_SY_SYS_LOG.RQST_IP                                        IS '요청IP';
COMMENT ON COLUMN TB_SY_SYS_LOG.RQST_DTIME                                     IS '요청일시';
COMMENT ON COLUMN TB_SY_SYS_LOG.RSPONS_CD                                      IS '응답코드';
COMMENT ON COLUMN TB_SY_SYS_LOG.RSPONS_DTIME                                   IS '응답일시';
COMMENT ON COLUMN TB_SY_SYS_LOG.ERR_MSG_ID                                     IS '오류메시지ID';
COMMENT ON COLUMN TB_SY_SYS_LOG.ERR_MSG_NM                                     IS '오류메시지명';
COMMENT ON COLUMN TB_SY_SYS_LOG.ERR_CN                                         IS '오류상세정보';
COMMENT ON COLUMN TB_SY_SYS_LOG.USER_ID                                        IS '사용자ID';
COMMENT ON COLUMN TB_SY_SYS_LOG.SVR_NO                                         IS '서버번호';
COMMENT ON COLUMN TB_SY_SYS_LOG.BROW_FG                                        IS '브라우저구분';
COMMENT ON COLUMN TB_SY_SYS_LOG.BROW_VER                                       IS '브라우저버전';
COMMENT ON COLUMN TB_SY_SYS_LOG.REGI_ID                                        IS '등록자ID';
COMMENT ON COLUMN TB_SY_SYS_LOG.REGI_DTIME                                     IS '등록일시';
COMMENT ON COLUMN TB_SY_SYS_LOG.UPDT_ID                                        IS '수정자ID';
COMMENT ON COLUMN TB_SY_SYS_LOG.UPDT_DTIME                                     IS '수정일시';


 /* TB_SY_USER_AUTHSTORE */

DROP TABLE TB_SY_USER_AUTHSTORE PURGE;

CREATE TABLE TB_SY_USER_AUTHSTORE
(
  USER_ID                        VARCHAR2(20)                                 NOT NULL       
, BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, STORE_CD                       VARCHAR2(10)                                 NOT NULL       
, USE_YN                         VARCHAR2(1)                                  NOT NULL       
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, POS_UPDT_TSP                   TIMESTAMP(6)                                 NOT NULL       
, CONSTRAINT PK_TB_SY_USER_AUTHSTORE PRIMARY KEY (
    USER_ID, BRND_CD, STORE_CD
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_USER_AUTHSTORE                                         IS '사용자권한점포';
COMMENT ON COLUMN TB_SY_USER_AUTHSTORE.USER_ID                                 IS '사용자ID';
COMMENT ON COLUMN TB_SY_USER_AUTHSTORE.BRND_CD                                 IS '브랜드 코드';
COMMENT ON COLUMN TB_SY_USER_AUTHSTORE.STORE_CD                                IS '점포 코드';
COMMENT ON COLUMN TB_SY_USER_AUTHSTORE.USE_YN                                  IS '사용 여부';
COMMENT ON COLUMN TB_SY_USER_AUTHSTORE.REGI_ID                                 IS '등록자ID';
COMMENT ON COLUMN TB_SY_USER_AUTHSTORE.REGI_DTIME                              IS '등록일시';
COMMENT ON COLUMN TB_SY_USER_AUTHSTORE.UPDT_ID                                 IS '수정자ID';
COMMENT ON COLUMN TB_SY_USER_AUTHSTORE.UPDT_DTIME                              IS '수정일시';
COMMENT ON COLUMN TB_SY_USER_AUTHSTORE.POS_UPDT_TSP                            IS 'POS수정타임스템프';


 /* TB_SY_USER_CERT */

DROP TABLE TB_SY_USER_CERT PURGE;

CREATE TABLE TB_SY_USER_CERT
(
  USER_ID                        VARCHAR2(20)                                 NOT NULL       
, CERT_FG                        VARCHAR2(20)                                 NOT NULL       
, MBLPH_NO                       VARCHAR2(100)                                NULL           
, CERT_NO                        VARCHAR2(6)                                  NULL           
, CERT_ISSU_DTTM                 DATE                                         NULL           
, CERT_DTTM                      DATE                                         NULL           
, CERT_IP                        VARCHAR2(40)                                 NULL           
, EMAIL_AD                       VARCHAR2(100)                                NULL           
, REGI_ID                        VARCHAR2(20)                                 NULL           
, REGI_DTIME                     DATE                                         NULL           
, UPDT_ID                        VARCHAR2(20)                                 NULL           
, UPDT_DTIME                     DATE                                         NULL           
, CONSTRAINT PK_TB_SY_USER_CERT PRIMARY KEY (
    USER_ID, CERT_FG
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_USER_CERT                                              IS '사용자인증';
COMMENT ON COLUMN TB_SY_USER_CERT.USER_ID                                      IS '사용자ID';
COMMENT ON COLUMN TB_SY_USER_CERT.CERT_FG                                      IS '인증구분(LOGIN: 로그인)';
COMMENT ON COLUMN TB_SY_USER_CERT.MBLPH_NO                                     IS '휴대폰번호';
COMMENT ON COLUMN TB_SY_USER_CERT.CERT_NO                                      IS '인증번호';
COMMENT ON COLUMN TB_SY_USER_CERT.CERT_ISSU_DTTM                               IS '인증발급일시';
COMMENT ON COLUMN TB_SY_USER_CERT.CERT_DTTM                                    IS '인증일시';
COMMENT ON COLUMN TB_SY_USER_CERT.CERT_IP                                      IS '인증IP';
COMMENT ON COLUMN TB_SY_USER_CERT.EMAIL_AD                                     IS '이메일주소';
COMMENT ON COLUMN TB_SY_USER_CERT.REGI_ID                                      IS '등록자ID';
COMMENT ON COLUMN TB_SY_USER_CERT.REGI_DTIME                                   IS '등록일시';
COMMENT ON COLUMN TB_SY_USER_CERT.UPDT_ID                                      IS '수정자ID';
COMMENT ON COLUMN TB_SY_USER_CERT.UPDT_DTIME                                   IS '수정일시';


 /* TB_SY_USER_PGM */

DROP TABLE TB_SY_USER_PGM PURGE;

CREATE TABLE TB_SY_USER_PGM
(
  USER_ID                        VARCHAR2(20)                                 NOT NULL       
, SYS_FG                         VARCHAR2(20)                                 NOT NULL       
, PGM_ID                         VARCHAR2(20)                                 NOT NULL       
, SAVE_AUTH_YN                   VARCHAR2(1)                                  NULL           
, DEL_AUTH_YN                    VARCHAR2(1)                                  NULL           
, PRNT_AUTH_YN                   VARCHAR2(1)                                  NULL           
, CLOS_AUTH_YN                   VARCHAR2(1)                                  NULL           
, EXCEL_AUTH_YN                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN1                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN2                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN3                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN4                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN5                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN6                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN7                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN8                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN9                  VARCHAR2(1)                                  NULL           
, EXTN_AUTH_YN10                 VARCHAR2(1)                                  NULL           
, FAVO_YN                        VARCHAR2(1)                                  NULL           
, FAVO_SORT_ORD                  NUMBER(5,0)                                  NULL           
, REGI_ID                        VARCHAR2(20)                                 NOT NULL       
, REGI_DTIME                     DATE                                         NOT NULL       
, UPDT_ID                        VARCHAR2(20)                                 NOT NULL       
, UPDT_DTIME                     DATE                                         NOT NULL       
, CONSTRAINT PK_TB_SY_USER_PGM PRIMARY KEY (
    USER_ID, SYS_FG, PGM_ID
  ) USING INDEX TABLESPACE NARACELLAR_IDX VALIDATE 
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  TB_SY_USER_PGM                                               IS '사용자별프로그램';
COMMENT ON COLUMN TB_SY_USER_PGM.USER_ID                                       IS '사용자ID';
COMMENT ON COLUMN TB_SY_USER_PGM.SYS_FG                                        IS '시스템구분 (공통코드: 9001)';
COMMENT ON COLUMN TB_SY_USER_PGM.PGM_ID                                        IS '프로그램ID';
COMMENT ON COLUMN TB_SY_USER_PGM.SAVE_AUTH_YN                                  IS '저장권한여부';
COMMENT ON COLUMN TB_SY_USER_PGM.DEL_AUTH_YN                                   IS '삭제권한여부';
COMMENT ON COLUMN TB_SY_USER_PGM.PRNT_AUTH_YN                                  IS '출력권한여부';
COMMENT ON COLUMN TB_SY_USER_PGM.CLOS_AUTH_YN                                  IS '마감권한여부';
COMMENT ON COLUMN TB_SY_USER_PGM.EXCEL_AUTH_YN                                 IS '엑셀권한여부';
COMMENT ON COLUMN TB_SY_USER_PGM.EXTN_AUTH_YN1                                 IS '확장권한여부1';
COMMENT ON COLUMN TB_SY_USER_PGM.EXTN_AUTH_YN2                                 IS '확장권한여부2';
COMMENT ON COLUMN TB_SY_USER_PGM.EXTN_AUTH_YN3                                 IS '확장권한여부3';
COMMENT ON COLUMN TB_SY_USER_PGM.EXTN_AUTH_YN4                                 IS '확장권한여부4';
COMMENT ON COLUMN TB_SY_USER_PGM.EXTN_AUTH_YN5                                 IS '확장권한여부5';
COMMENT ON COLUMN TB_SY_USER_PGM.EXTN_AUTH_YN6                                 IS '확장권한여부6';
COMMENT ON COLUMN TB_SY_USER_PGM.EXTN_AUTH_YN7                                 IS '확장권한여부7';
COMMENT ON COLUMN TB_SY_USER_PGM.EXTN_AUTH_YN8                                 IS '확장권한여부8';
COMMENT ON COLUMN TB_SY_USER_PGM.EXTN_AUTH_YN9                                 IS '확장권한여부9';
COMMENT ON COLUMN TB_SY_USER_PGM.EXTN_AUTH_YN10                                IS '확장권한여부10';
COMMENT ON COLUMN TB_SY_USER_PGM.FAVO_YN                                       IS '즐겨찾기여부';
COMMENT ON COLUMN TB_SY_USER_PGM.FAVO_SORT_ORD                                 IS '즐겨찾기정렬순서';
COMMENT ON COLUMN TB_SY_USER_PGM.REGI_ID                                       IS '등록자ID';
COMMENT ON COLUMN TB_SY_USER_PGM.REGI_DTIME                                    IS '등록일시';
COMMENT ON COLUMN TB_SY_USER_PGM.UPDT_ID                                       IS '수정자ID';
COMMENT ON COLUMN TB_SY_USER_PGM.UPDT_DTIME                                    IS '수정일시';


 /* VW_PROMOTION_MENU */

DROP TABLE VW_PROMOTION_MENU PURGE;

CREATE TABLE VW_PROMOTION_MENU
(
  BRND_CD                        VARCHAR2(2)                                  NOT NULL       
, GRT_CD                         VARCHAR2(3)                                  NOT NULL       
, GRT_NM                         VARCHAR2(100)                                NOT NULL       
, MID_CD                         VARCHAR2(6)                                  NOT NULL       
, MID_NM                         VARCHAR2(100)                                NOT NULL       
, SML_CD                         VARCHAR2(9)                                  NOT NULL       
, SML_NM                         VARCHAR2(100)                                NOT NULL       
, UP_MENU_CD                     VARCHAR2(12)                                 NOT NULL       
, MENU_DIV_CD                    VARCHAR2(2)                                  NOT NULL       
, UP_MENU_NM                     VARCHAR2(500)                                NULL           
, OPT_GRP_CD_010                 VARCHAR2(1)                                  NULL           
, OPT_GRP_CD_020                 VARCHAR2(1)                                  NULL           
, OPT_GRP_CD_030                 VARCHAR2(1)                                  NULL           
, OPT_GRP_CD_040                 VARCHAR2(1)                                  NULL           
, MENU_CD                        VARCHAR2(12)                                 NOT NULL       
, MENU_NM                        VARCHAR2(500)                                NULL           
, REP_MENU_YN                    VARCHAR2(1)                                  NOT NULL       
, POS_KEY_YN                     VARCHAR2(1)                                  NOT NULL       
, BOM_CMPST_YN                   VARCHAR2(1)                                  NULL           
, SET_MENU_YN                    VARCHAR2(1)                                  NOT NULL       
, DC_IMPS_YN                     VARCHAR2(1)                                  NOT NULL       
, SALE_STP_DT                    VARCHAR2(8)                                  NULL           
, SALE_YN                        VARCHAR2(1)                                  NOT NULL       
, CUR_SALE_AMT                   NUMBER(22)                                   NULL           
, CUR_SALE_YN                    VARCHAR2(4000)                               NOT NULL       
)
TABLESPACE NARACELLAR_DAT;

COMMENT ON TABLE  VW_PROMOTION_MENU                                            IS '행사대상그룹메뉴';
COMMENT ON COLUMN VW_PROMOTION_MENU.BRND_CD                                    IS '브랜드 코드';
COMMENT ON COLUMN VW_PROMOTION_MENU.GRT_CD                                     IS '대분류코드';
COMMENT ON COLUMN VW_PROMOTION_MENU.GRT_NM                                     IS '대분류명';
COMMENT ON COLUMN VW_PROMOTION_MENU.MID_CD                                     IS '중분류코드';
COMMENT ON COLUMN VW_PROMOTION_MENU.MID_NM                                     IS '중분류명';
COMMENT ON COLUMN VW_PROMOTION_MENU.SML_CD                                     IS '소분류코드';
COMMENT ON COLUMN VW_PROMOTION_MENU.SML_NM                                     IS '소분류명';
COMMENT ON COLUMN VW_PROMOTION_MENU.UP_MENU_CD                                 IS '상위메뉴코드';
COMMENT ON COLUMN VW_PROMOTION_MENU.MENU_DIV_CD                                IS '메뉴구분코드';
COMMENT ON COLUMN VW_PROMOTION_MENU.UP_MENU_NM                                 IS '상위메뉴명';
COMMENT ON COLUMN VW_PROMOTION_MENU.OPT_GRP_CD_010                             IS '옵션그룹메뉴010';
COMMENT ON COLUMN VW_PROMOTION_MENU.OPT_GRP_CD_020                             IS '옵션그룹메뉴020';
COMMENT ON COLUMN VW_PROMOTION_MENU.OPT_GRP_CD_030                             IS '옵션그룹메뉴030';
COMMENT ON COLUMN VW_PROMOTION_MENU.OPT_GRP_CD_040                             IS '옵션그룹메뉴040';
COMMENT ON COLUMN VW_PROMOTION_MENU.MENU_CD                                    IS '메뉴코드';
COMMENT ON COLUMN VW_PROMOTION_MENU.MENU_NM                                    IS '메뉴명';
COMMENT ON COLUMN VW_PROMOTION_MENU.REP_MENU_YN                                IS '대표메뉴여부';
COMMENT ON COLUMN VW_PROMOTION_MENU.POS_KEY_YN                                 IS '포스키여부';
COMMENT ON COLUMN VW_PROMOTION_MENU.BOM_CMPST_YN                               IS 'BOM구성여부';
COMMENT ON COLUMN VW_PROMOTION_MENU.SET_MENU_YN                                IS '세트메뉴여부';
COMMENT ON COLUMN VW_PROMOTION_MENU.DC_IMPS_YN                                 IS '할인불가여부';
COMMENT ON COLUMN VW_PROMOTION_MENU.SALE_STP_DT                                IS '판매중지일자';
COMMENT ON COLUMN VW_PROMOTION_MENU.SALE_YN                                    IS '판매여부';
COMMENT ON COLUMN VW_PROMOTION_MENU.CUR_SALE_AMT                               IS '현재판매금액';
COMMENT ON COLUMN VW_PROMOTION_MENU.CUR_SALE_YN                                IS '현재판매여부';
