.class Lcom/inmobi/commons/core/configs/ConfigError;
.super Ljava/lang/Object;
.source "ConfigError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;
    }
.end annotation


# instance fields
.field private a:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/ConfigError;->a:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    .line 19
    iput-object p2, p0, Lcom/inmobi/commons/core/configs/ConfigError;->b:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/ConfigError;->a:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/ConfigError;->b:Ljava/lang/String;

    return-object v0
.end method
