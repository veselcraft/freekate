.class final enum Lcom/inmobi/ads/r$b$4;
.super Lcom/inmobi/ads/r$b;
.source "NativeStrandAdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/r$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inmobi/ads/r$b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/inmobi/ads/r$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/inmobi/ads/r;)V
    .locals 4

    .prologue
    .line 196
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/inmobi/ads/r$b;->d:Lcom/inmobi/ads/r$b;

    invoke-static {p1, v0}, Lcom/inmobi/ads/r;->a(Lcom/inmobi/ads/r;Lcom/inmobi/ads/r$b;)Lcom/inmobi/ads/r$b;

    .line 198
    invoke-static {p1}, Lcom/inmobi/ads/r;->l(Lcom/inmobi/ads/r;)V

    .line 199
    invoke-virtual {p1}, Lcom/inmobi/ads/r;->j()V

    .line 200
    invoke-static {p1}, Lcom/inmobi/ads/r;->c(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/s;->y()V

    .line 201
    invoke-static {p1}, Lcom/inmobi/ads/r;->b(Lcom/inmobi/ads/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/q;

    .line 202
    invoke-virtual {v0}, Lcom/inmobi/ads/q;->c()V

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p1}, Lcom/inmobi/ads/r;->b(Lcom/inmobi/ads/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    return-void
.end method
