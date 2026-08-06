.class final Lcom/inmobi/rendering/a/c$c;
.super Ljava/lang/Object;
.source "ClickManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/inmobi/rendering/a/c$d;


# direct methods
.method public constructor <init>(Lcom/inmobi/rendering/a/c$d;)V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    .line 274
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/rendering/a/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 277
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    iget-object v2, p1, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 278
    invoke-virtual {v0, v4}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Z)V

    .line 279
    iget-object v1, p1, Lcom/inmobi/rendering/a/a;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->c(Ljava/util/Map;)V

    .line 280
    iget-boolean v1, p1, Lcom/inmobi/rendering/a/a;->i:Z

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->b(Z)V

    .line 281
    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/b$b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b$b;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->b(I)V

    .line 282
    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/b$b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b$b;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->c(I)V

    .line 283
    new-instance v1, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v1, v0}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->c()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkError;->a()Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    move-result-object v1

    .line 286
    iget-boolean v2, p1, Lcom/inmobi/rendering/a/a;->i:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->HTTP_SEE_OTHER:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->HTTP_MOVED_TEMP:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    if-ne v2, v1, :cond_1

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    invoke-interface {v0, p1}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;)V

    .line 296
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->c()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkError;->a()Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    invoke-interface {v0, p1}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;)V

    goto :goto_0
.end method
