.class abstract synthetic Lcom/perm/utils/AnswerParser$1;
.super Ljava/lang/Object;
.source "AnswerParser.java"


# static fields
.field static final synthetic $SwitchMap$com$perm$utils$AnswerType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    invoke-static {}, Lcom/perm/utils/AnswerType;->values()[Lcom/perm/utils/AnswerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    :try_start_0
    sget-object v1, Lcom/perm/utils/AnswerType;->FORGOT_PASSWORD:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    sget-object v1, Lcom/perm/utils/AnswerType;->BROKEN:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    sget-object v1, Lcom/perm/utils/AnswerType;->CANT_LOGIN:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    sget-object v1, Lcom/perm/utils/AnswerType;->NOTIFICATIONS:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    sget-object v1, Lcom/perm/utils/AnswerType;->BLOCKED:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    sget-object v1, Lcom/perm/utils/AnswerType;->MESSAGE_REMOVED:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    sget-object v1, Lcom/perm/utils/AnswerType;->CHANGE_NAME:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    sget-object v1, Lcom/perm/utils/AnswerType;->REMOVE_ACCOUNT:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    sget-object v1, Lcom/perm/utils/AnswerType;->HIDDEN_DIALOGS_PIN:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    sget-object v1, Lcom/perm/utils/AnswerType;->REPORT_PAGE:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    sget-object v1, Lcom/perm/utils/AnswerType;->NEW_OFFLINE:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/perm/utils/AnswerParser$1;->$SwitchMap$com$perm$utils$AnswerType:[I

    sget-object v1, Lcom/perm/utils/AnswerType;->CHANGE_PHONE:Lcom/perm/utils/AnswerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
