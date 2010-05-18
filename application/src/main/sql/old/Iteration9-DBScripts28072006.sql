CREATE INDEX CUST_ACIVE_DATE_IDX ON CUSTOMER (CUSTOMER_ACTIVATION_DATE);

ALTER TABLE MEETING DROP COLUMN MEETING_PALACE;
ALTER TABLE MEETING ADD COLUMN MEETING_PLACE VARCHAR(200) NULL;

ALTER TABLE FEES DROP FOREIGN KEY fees_ibfk_7;
ALTER TABLE FEES DROP COLUMN UPDATED_OFFICE_ID;
ALTER TABLE FEES ADD COLUMN UPDATE_FLAG  SMALLINT  NULL;


ALTER TABLE FEE_FREQUENCY_TYPE ADD COLUMN LOOKUP_ID INTEGER NOT NULL;



ALTER TABLE FEES ADD COLUMN DISCRIMINATOR VARCHAR(20) NULL;



ALTER TABLE SAVINGS_ACCOUNT DROP FOREIGN KEY savings_account_ibfk_10;
ALTER TABLE SAVINGS_ACCOUNT DROP COLUMN FREQ_FOR_INT_POST;


CREATE TABLE  FEE_UPDATE_TYPE (
FEE_UPDATE_TYPE_ID SMALLINT NOT NULL AUTO_INCREMENT ,
LOOKUP_ID INTEGER NOT NULL,
PRIMARY KEY  (FEE_UPDATE_TYPE_ID),
FOREIGN KEY (LOOKUP_ID) REFERENCES LOOKUP_VALUE(LOOKUP_ID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
)TYPE=InnoDB CHARACTER SET utf8;



DROP TABLE IF EXISTS SAVINGS_PERFORMANCE_BCK;
CREATE TABLE SAVINGS_PERFORMANCE_BCK(
  ACCOUNT_ID INTEGER NOT NULL,
  TOTAL_DEPOSITS DECIMAL(10,3) NULL,
  TOTAL_DEPOSITS_CURRENCY_ID SMALLINT NULL,
  TOTAL_WITHDRAWALS DECIMAL(10,3) NULL,
  TOTAL_WITHDRAWALS_CURRENCY_ID SMALLINT NULL,
  TOTAL_INTEREST_EARNED DECIMAL(10,3) NULL,
  TOTAL_INTEREST_EARNED_CURRENCY_ID SMALLINT NULL,
  MISSED_DEPOSITS SMALLINT NULL,
  FOREIGN KEY(ACCOUNT_ID)
    REFERENCES ACCOUNT(ACCOUNT_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(TOTAL_DEPOSITS_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(TOTAL_WITHDRAWALS_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(TOTAL_INTEREST_EARNED_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION     
)
TYPE=InnoDB CHARACTER SET utf8
AS SELECT * FROM SAVINGS_PERFORMANCE;

DROP TABLE IF EXISTS SAVINGS_PERFORMANCE;
CREATE TABLE SAVINGS_PERFORMANCE(
  ID INT(11) NOT NULL AUTO_INCREMENT,
  ACCOUNT_ID INTEGER NOT NULL,
  TOTAL_DEPOSITS DECIMAL(10,3) NULL,
  TOTAL_DEPOSITS_CURRENCY_ID SMALLINT NULL,
  TOTAL_WITHDRAWALS DECIMAL(10,3) NULL,
  TOTAL_WITHDRAWALS_CURRENCY_ID SMALLINT NULL,
  TOTAL_INTEREST_EARNED DECIMAL(10,3) NULL,
  TOTAL_INTEREST_EARNED_CURRENCY_ID SMALLINT NULL,
  MISSED_DEPOSITS SMALLINT NULL,
  PRIMARY KEY(ID),
  FOREIGN KEY(ACCOUNT_ID)
    REFERENCES ACCOUNT(ACCOUNT_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(TOTAL_DEPOSITS_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(TOTAL_WITHDRAWALS_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(TOTAL_INTEREST_EARNED_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION     
)
TYPE=InnoDB CHARACTER SET utf8
AS SELECT * FROM SAVINGS_PERFORMANCE_BCK;


DROP TABLE SAVINGS_PERFORMANCE_BCK;





INSERT INTO LOOKUP_ENTITY
VALUES(89,'feeUpdationType',' fee updation can to applied to existing accounts or future accounts');
INSERT INTO LOOKUP_ENTITY(ENTITY_ID,ENTITY_NAME,DESCRIPTION)
VALUES(90,'Fee Frequency','Fee Frequency');

INSERT INTO LOOKUP_VALUE
VALUES(555,87," ");
INSERT INTO LOOKUP_VALUE
VALUES(556,89," ");
INSERT INTO LOOKUP_VALUE
VALUES(557,89," ");
INSERT INTO LOOKUP_VALUE 
VALUES(558,90," ");
INSERT INTO LOOKUP_VALUE 
VALUES(559,90," ");

INSERT INTO LOOKUP_VALUE_LOCALE
VALUES(893,1,555,'Can add notes to margin money account');
INSERT INTO LOOKUP_VALUE_LOCALE
VALUES(894,1,556,'Applies to existing & future accounts');
INSERT INTO LOOKUP_VALUE_LOCALE
VALUES(895,1,557,'Applies to future accounts');
INSERT INTO LOOKUP_VALUE_LOCALE 
VALUES(896,1,558,'Periodic');
INSERT INTO LOOKUP_VALUE_LOCALE 
VALUES(897,1,559,'One Time');


INSERT INTO ACTIVITY(ACTIVITY_ID,PARENT_ID,ACTIVITY_NAME_LOOKUP_ID,DESCRIPTION_LOOKUP_ID)
VALUES(191,136,555,555 );

INSERT INTO ROLES_ACTIVITY(ACTIVITY_ID,ROLE_ID,VERSION_NO)
VALUES(191,1,1);


INSERT INTO FEE_UPDATE_TYPE(LOOKUP_ID) VALUES(556);
INSERT INTO FEE_UPDATE_TYPE(LOOKUP_ID) VALUES(557);


update fees set discriminator="AMOUNT" where RATE_FLAT_FALG = 0;
update fees set discriminator="RATE" where RATE_FLAT_FALG = 1;
update fees set rate=RATE_OR_AMOUNT where RATE_FLAT_FALG = 1;
update fees set fee_amount=RATE_OR_AMOUNT where RATE_FLAT_FALG = 0;

UPDATE  FEE_FREQUENCY_TYPE SET LOOKUP_ID = 558 where  FEE_FREQUENCY_ID = 1;
UPDATE  FEE_FREQUENCY_TYPE SET LOOKUP_ID = 559 where  FEE_FREQUENCY_ID = 2;

ALTER TABLE FEE_FREQUENCY_TYPE ADD FOREIGN KEY(LOOKUP_ID) REFERENCES LOOKUP_VALUE(LOOKUP_ID);