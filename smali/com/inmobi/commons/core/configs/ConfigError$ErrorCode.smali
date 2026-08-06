.class public final enum Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;
.super Ljava/lang/Enum;
.source "ConfigError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/ConfigError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

.field public static final enum CONFIG_SERVER_INTERNAL_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

.field public static final enum PARSING_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    .line 10
    new-instance v0, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    const-string v1, "CONFIG_SERVER_INTERNAL_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->CONFIG_SERVER_INTERNAL_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    .line 11
    new-instance v0, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    const-string v1, "PARSING_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->PARSING_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    sget-object v1, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->CONFIG_SERVER_INTERNAL_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->PARSING_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->$VALUES:[Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->$VALUES:[Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    invoke-virtual {v0}, [Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    return-object v0
.end method
