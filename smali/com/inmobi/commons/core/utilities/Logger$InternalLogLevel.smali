.class public final enum Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/utilities/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InternalLogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

.field public static final enum DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

.field public static final enum ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

.field public static final enum INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

.field public static final enum NONE:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->NONE:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    .line 16
    new-instance v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    .line 17
    new-instance v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    .line 18
    new-instance v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->NONE:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->$VALUES:[Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->$VALUES:[Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-virtual {v0}, [Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    return-object v0
.end method
