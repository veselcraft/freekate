.class final Lcom/inmobi/ads/d;
.super Ljava/lang/Object;
.source "AdNetworkClient.java"

# interfaces
.implements Lcom/inmobi/commons/core/network/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/ads/e;

.field private c:Lcom/inmobi/ads/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/inmobi/ads/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/e;Lcom/inmobi/ads/d$a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/inmobi/ads/d;->b:Lcom/inmobi/ads/e;

    .line 25
    iput-object p2, p0, Lcom/inmobi/ads/d;->c:Lcom/inmobi/ads/d$a;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/inmobi/commons/core/network/a;

    iget-object v1, p0, Lcom/inmobi/ads/d;->b:Lcom/inmobi/ads/e;

    invoke-direct {v0, v1, p0}, Lcom/inmobi/commons/core/network/a;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;Lcom/inmobi/commons/core/network/a$a;)V

    .line 30
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/a;->a()V

    .line 31
    return-void
.end method

.method public a(Lcom/inmobi/commons/core/network/c;)V
    .locals 5

    .prologue
    .line 35
    new-instance v0, Lcom/inmobi/ads/f;

    iget-object v1, p0, Lcom/inmobi/ads/d;->b:Lcom/inmobi/ads/e;

    invoke-direct {v0, v1, p1}, Lcom/inmobi/ads/f;-><init>(Lcom/inmobi/ads/e;Lcom/inmobi/commons/core/network/c;)V

    .line 36
    iget-object v1, p0, Lcom/inmobi/ads/d;->c:Lcom/inmobi/ads/d$a;

    invoke-interface {v1, v0}, Lcom/inmobi/ads/d$a;->a(Lcom/inmobi/ads/f;)V

    .line 37
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad fetch succeeded. Response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/ads/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public b(Lcom/inmobi/commons/core/network/c;)V
    .locals 5

    .prologue
    .line 42
    new-instance v0, Lcom/inmobi/ads/f;

    iget-object v1, p0, Lcom/inmobi/ads/d;->b:Lcom/inmobi/ads/e;

    invoke-direct {v0, v1, p1}, Lcom/inmobi/ads/f;-><init>(Lcom/inmobi/ads/e;Lcom/inmobi/commons/core/network/c;)V

    .line 43
    iget-object v1, p0, Lcom/inmobi/ads/d;->c:Lcom/inmobi/ads/d$a;

    invoke-interface {v1, v0}, Lcom/inmobi/ads/d$a;->b(Lcom/inmobi/ads/f;)V

    .line 44
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad fetch failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/ads/f;->d()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkError;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
