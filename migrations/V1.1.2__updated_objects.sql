CREATE OR REPLACE TABLE account.Monetary_Account_SAT (
		Account_HUB_SHA1 BINARY NOT NULL,
		Load_TS TIMESTAMP_TZ NOT NULL,
		Type_ID BIGINT NOT NULL,
		Name_TXT VARCHAR NOT NULL,
		Opening_DT DATE,
		Closing_DT DATE,
		Description_TXT VARCHAR,
		External_Reference_TXT VARCHAR NOT NULL,
		Status_TXT VARCHAR NOT NULL,
		Status_DT DATE NOT NULL,
		Status_Reason_TXT VARCHAR,
		Basic_Data_Incomplete_IND BOOLEAN NOT NULL,
		Population_Info_SHA1 BINARY NOT NULL,
		Valid_From_TS TIMESTAMP_TZ NOT NULL,
		Deleted_IND BOOLEAN
	);

CREATE OR REPLACE TABLE account.Account_Role_Player_LNK (
		Account_HUB_SHA1 BINARY NOT NULL,
		Role_Player_HUB_SHA1 BINARY NOT NULL,
		Nature_ID BIGINT NOT NULL,
		Load_TS TIMESTAMP_TZ NOT NULL,
		Population_Info_SHA1 BINARY NOT NULL,
		Valid_From_TS TIMESTAMP_TZ NOT NULL,
		Payee_Link_Type_Code_ID BIGINT,
		Deleted_IND BOOLEAN
	);

CREATE OR REPLACE TABLE account.Account_Account_LNK (
		Left_Account_HUB_SHA1 BINARY NOT NULL,
		Right_Account_HUB_SHA1 BINARY NOT NULL,
		Nature_ID BIGINT NOT NULL,
		Load_TS TIMESTAMP_TZ NOT NULL,
		Population_Info_SHA1 BINARY NOT NULL,
		Valid_From_TS TIMESTAMP_TZ NOT NULL,
		Deleted_IND BOOLEAN
	);

CREATE OR REPLACE TABLE account.Account_HUB (
		Account_HUB_SHA1 BINARY NOT NULL,
		Type_ID BIGINT NOT NULL,
		Population_Info_SHA1 BINARY NOT NULL,
		Load_TS TIMESTAMP_TZ NOT NULL,
		Tenant_ID CHAR(5)
	);

CREATE OR REPLACE TABLE account.Account_Entry_SAT (
		Account_HUB_SHA1 BINARY NOT NULL,
		Load_TS TIMESTAMP_TZ NOT NULL,
		Type_ID BIGINT NOT NULL,
		Value_DT DATE,
		Value_AMT DECIMAL(14 , 2),
		External_Reference_TXT VARCHAR,
		Action_Type_TXT VARCHAR,
		Posting_Status_TXT VARCHAR,
		Posting_DT DATE,
		Debit_Credit_TXT VARCHAR,
		Description_TXT VARCHAR,
		Basic_Data_Incomplete_IND BOOLEAN NOT NULL,
		Population_Info_SHA1 BINARY NOT NULL,
		Valid_From_TS TIMESTAMP_TZ NOT NULL,
		Policy_Age_AMT INTEGER,
		Calc_Policy_Age_AMT INTEGER,
		Control_NUM VARCHAR,
		Affected_Account_NUM VARCHAR,
		Tax_Year_NUM INTEGER,
		Tax_Qualify_Code_ID BIGINT,
		Tax_Source_Code_ID BIGINT,
		Agent_Level_Desc_Code_ID BIGINT,
		Transaction_Code_ID BIGINT,
		Deleted_IND BOOLEAN
	);

CREATE OR REPLACE TABLE account.Account_Agreement_LNK (
		Account_HUB_SHA1 BINARY NOT NULL,
		Agreement_HUB_SHA1 BINARY NOT NULL,
		Nature_ID BIGINT NOT NULL,
		Load_TS TIMESTAMP_TZ NOT NULL,
		Population_Info_SHA1 BINARY NOT NULL,
		Valid_From_TS TIMESTAMP_TZ NOT NULL,
		Deleted_IND BOOLEAN
	);
