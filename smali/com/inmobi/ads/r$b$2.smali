.class final enum Lcom/inmobi/ads/r$b$2;
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
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inmobi/ads/r$b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/inmobi/ads/r$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/inmobi/ads/r;)V
    .locals 4

    .prologue
    .line 138
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

    .line 139
    sget-object v0, Lcom/inmobi/ads/r$b;->b:Lcom/inmobi/ads/r$b;

    invoke-static {p1, v0}, Lcom/inmobi/ads/r;->a(Lcom/inmobi/ads/r;Lcom/inmobi/ads/r$b;)Lcom/inmobi/ads/r$b;

    .line 140
    invoke-virtual {p1}, Lcom/inmobi/ads/r;->j()V

    .line 141
    return-void
.end method

.method a(Lcom/inmobi/ads/r;Z)V
    .locals 4

    .prologue
    .line 155
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity in focus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/inmobi/ads/r;->j(Lcom/inmobi/ads/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/inmobi/ads/r$b;->a:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/r$b;->a(Lcom/inmobi/ads/r;)V

    .line 159
    :cond_0
    return-void
.end method

.method b(Lcom/inmobi/ads/r;Z)V
    .locals 4

    .prologue
    .line 163
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/inmobi/ads/r;->k(Lcom/inmobi/ads/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/inmobi/ads/r$b;->a:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/r$b;->a(Lcom/inmobi/ads/r;)V

    .line 167
    :cond_0
    return-void
.end method

.method c(Lcom/inmobi/ads/r;)V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/inmobi/ads/r$b;->c:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/r$b;->a(Lcom/inmobi/ads/r;)V

    .line 146
    return-void
.end method

.method d(Lcom/inmobi/ads/r;)V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/inmobi/ads/r$b$2;->d:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/r$b;->a(Lcom/inmobi/ads/r;)V

    .line 151
    return-void
.end method
