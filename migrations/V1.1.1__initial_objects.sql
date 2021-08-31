CREATE OR REPLACE TABLE support.Type_Type_LNK (
		Left_Type_ID BIGINT NOT NULL,
		Right_Type_ID BIGINT NOT NULL,
		Nature_ID BIGINT NOT NULL,
		Load_TS TIMESTAMP_TZ NOT NULL,
		Population_Info_SHA1 BINARY NOT NULL,
		Valid_From_TS TIMESTAMP_TZ NOT NULL,
		Deleted_IND BOOLEAN
	);

CREATE OR REPLACE TABLE support.Link_Type_REF (
		Nature_ID BIGINT NOT NULL,
		Left_Parent_Type_ID BIGINT NOT NULL,
		Right_Parent_Type_ID BIGINT NOT NULL,
		Parent_Nature_ID BIGINT,
		Name_TXT VARCHAR NOT NULL,
		Description_TXT VARCHAR NOT NULL,
		Left_Right_Max_Cardinality_NUM INTEGER NOT NULL,
		Right_Left_Max_Cardinality_NUM INTEGER NOT NULL,
		Left_Right_Name_TXT VARCHAR,
		Right_Left_Name_TXT VARCHAR,
		Left_Right_Min_Cardinality_NUM INTEGER NOT NULL,
		Right_Left_Min_Cardinality_NUM INTEGER NOT NULL,
		Population_Info_SHA1 BINARY NOT NULL,
		Valid_From_TS TIMESTAMP_TZ NOT NULL
	);

CREATE OR REPLACE TABLE support.Type_REF (
		Type_ID BIGINT NOT NULL,
		Parent_Type_ID BIGINT,
		Name_TXT VARCHAR NOT NULL,
		Description_TXT VARCHAR NOT NULL,
		Population_Info_SHA1 BINARY NOT NULL,
		Valid_From_TS TIMESTAMP_TZ NOT NULL
	);

CREATE OR REPLACE TABLE support.Code_REF (
		Code_ID BIGINT NOT NULL,
		Parent_Code_ID BIGINT,
		Code_Value_TXT VARCHAR,
		Code_Label_TXT VARCHAR,
		Description_TXT VARCHAR,
		Code_Scheme_TXT VARCHAR,
		Code_Scheme_Value_TXT VARCHAR,
		Code_Length_NUM INTEGER,
		Code_Value_Seq_NUM INTEGER,
		Number_Code_IND BOOLEAN,
		Population_Info_SHA1 BINARY NOT NULL,
		Valid_From_TS TIMESTAMP_TZ NOT NULL
	);
