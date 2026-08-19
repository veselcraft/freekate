.class public final enum Lcom/perm/utils/AnswerType;
.super Ljava/lang/Enum;
.source "AnswerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perm/utils/AnswerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/utils/AnswerType;

.field public static final enum BLOCKED:Lcom/perm/utils/AnswerType;

.field public static final enum BROKEN:Lcom/perm/utils/AnswerType;

.field public static final enum CANT_LOGIN:Lcom/perm/utils/AnswerType;

.field public static final enum CHANGE_NAME:Lcom/perm/utils/AnswerType;

.field public static final enum CHANGE_PHONE:Lcom/perm/utils/AnswerType;

.field public static final enum FORGOT_PASSWORD:Lcom/perm/utils/AnswerType;

.field public static final enum HIDDEN_DIALOGS_PIN:Lcom/perm/utils/AnswerType;

.field public static final enum MESSAGE_REMOVED:Lcom/perm/utils/AnswerType;

.field public static final enum NEW_OFFLINE:Lcom/perm/utils/AnswerType;

.field public static final enum NOTIFICATIONS:Lcom/perm/utils/AnswerType;

.field public static final enum REMOVE_ACCOUNT:Lcom/perm/utils/AnswerType;

.field public static final enum REPORT_PAGE:Lcom/perm/utils/AnswerType;

.field public static final enum UNKNOWN:Lcom/perm/utils/AnswerType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/perm/utils/AnswerType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/utils/AnswerType;->UNKNOWN:Lcom/perm/utils/AnswerType;

    .line 5
    new-instance v1, Lcom/perm/utils/AnswerType;

    const-string v3, "FORGOT_PASSWORD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/utils/AnswerType;->FORGOT_PASSWORD:Lcom/perm/utils/AnswerType;

    .line 6
    new-instance v3, Lcom/perm/utils/AnswerType;

    const-string v5, "CANT_LOGIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/utils/AnswerType;->CANT_LOGIN:Lcom/perm/utils/AnswerType;

    .line 7
    new-instance v5, Lcom/perm/utils/AnswerType;

    const-string v7, "NOTIFICATIONS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perm/utils/AnswerType;->NOTIFICATIONS:Lcom/perm/utils/AnswerType;

    .line 8
    new-instance v7, Lcom/perm/utils/AnswerType;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/perm/utils/AnswerType;->BLOCKED:Lcom/perm/utils/AnswerType;

    .line 9
    new-instance v9, Lcom/perm/utils/AnswerType;

    const-string v11, "BROKEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/perm/utils/AnswerType;->BROKEN:Lcom/perm/utils/AnswerType;

    .line 10
    new-instance v11, Lcom/perm/utils/AnswerType;

    const-string v13, "MESSAGE_REMOVED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/perm/utils/AnswerType;->MESSAGE_REMOVED:Lcom/perm/utils/AnswerType;

    .line 11
    new-instance v13, Lcom/perm/utils/AnswerType;

    const-string v15, "CHANGE_NAME"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/perm/utils/AnswerType;->CHANGE_NAME:Lcom/perm/utils/AnswerType;

    .line 12
    new-instance v15, Lcom/perm/utils/AnswerType;

    const-string v14, "REMOVE_ACCOUNT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/perm/utils/AnswerType;->REMOVE_ACCOUNT:Lcom/perm/utils/AnswerType;

    .line 13
    new-instance v14, Lcom/perm/utils/AnswerType;

    const-string v12, "REPORT_PAGE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/perm/utils/AnswerType;->REPORT_PAGE:Lcom/perm/utils/AnswerType;

    .line 14
    new-instance v12, Lcom/perm/utils/AnswerType;

    const-string v10, "NEW_OFFLINE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/perm/utils/AnswerType;->NEW_OFFLINE:Lcom/perm/utils/AnswerType;

    .line 15
    new-instance v10, Lcom/perm/utils/AnswerType;

    const-string v8, "CHANGE_PHONE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/perm/utils/AnswerType;->CHANGE_PHONE:Lcom/perm/utils/AnswerType;

    .line 16
    new-instance v8, Lcom/perm/utils/AnswerType;

    const-string v6, "HIDDEN_DIALOGS_PIN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/perm/utils/AnswerType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/perm/utils/AnswerType;->HIDDEN_DIALOGS_PIN:Lcom/perm/utils/AnswerType;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/perm/utils/AnswerType;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 3
    sput-object v6, Lcom/perm/utils/AnswerType;->$VALUES:[Lcom/perm/utils/AnswerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/utils/AnswerType;
    .locals 1

    .line 3
    const-class v0, Lcom/perm/utils/AnswerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/utils/AnswerType;

    return-object p0
.end method

.method public static values()[Lcom/perm/utils/AnswerType;
    .locals 1

    .line 3
    sget-object v0, Lcom/perm/utils/AnswerType;->$VALUES:[Lcom/perm/utils/AnswerType;

    invoke-virtual {v0}, [Lcom/perm/utils/AnswerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/utils/AnswerType;

    return-object v0
.end method
