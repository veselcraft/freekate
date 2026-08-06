.class final enum Lcom/inmobi/ads/r$b$1;
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
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inmobi/ads/r$b;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/inmobi/ads/r$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/inmobi/ads/r;)V
    .locals 4

    .prologue
    .line 34
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

    .line 35
    sget-object v0, Lcom/inmobi/ads/r$b;->a:Lcom/inmobi/ads/r$b;

    invoke-static {p1, v0}, Lcom/inmobi/ads/r;->a(Lcom/inmobi/ads/r;Lcom/inmobi/ads/r$b;)Lcom/inmobi/ads/r$b;

    .line 37
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/inmobi/ads/r;->a(Lcom/inmobi/ads/r;I)I

    .line 38
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/r$b$1;->e(Lcom/inmobi/ads/r;)V

    .line 39
    return-void
.end method

.method a(Lcom/inmobi/ads/r;JZ)V
    .locals 2

    .prologue
    .line 123
    if-eqz p4, :cond_0

    invoke-static {p1}, Lcom/inmobi/ads/r;->f(Lcom/inmobi/ads/r;)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {p1}, Lcom/inmobi/ads/r;->i(Lcom/inmobi/ads/r;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/r$b$1$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/r$b$1$1;-><init>(Lcom/inmobi/ads/r$b$1;Lcom/inmobi/ads/r;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method a(Lcom/inmobi/ads/r;Z)V
    .locals 3

    .prologue
    .line 107
    if-nez p2, :cond_0

    .line 108
    sget-object v0, Lcom/inmobi/ads/r$b;->b:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/r$b;->a(Lcom/inmobi/ads/r;)V

    .line 109
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App went to background; stopping cache replenish handler"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method b(Lcom/inmobi/ads/r;)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/inmobi/ads/r$b$1;->a:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/r$b;->a(Lcom/inmobi/ads/r;)V

    .line 45
    return-void
.end method

.method b(Lcom/inmobi/ads/r;Z)V
    .locals 3

    .prologue
    .line 115
    if-nez p2, :cond_0

    .line 116
    sget-object v0, Lcom/inmobi/ads/r$b;->b:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/r$b;->a(Lcom/inmobi/ads/r;)V

    .line 117
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connectivity lost; stopping cache replenish handler"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method c(Lcom/inmobi/ads/r;)V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/inmobi/ads/r$b$1;->c:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/r$b;->a(Lcom/inmobi/ads/r;)V

    .line 50
    return-void
.end method

.method d(Lcom/inmobi/ads/r;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/inmobi/ads/r$b$1;->d:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/r$b;->a(Lcom/inmobi/ads/r;)V

    .line 55
    return-void
.end method

.method e(Lcom/inmobi/ads/r;)V
    .locals 3

    .prologue
    .line 59
    invoke-static {p1}, Lcom/inmobi/ads/r;->a(Lcom/inmobi/ads/r;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ignoring Ad load as there are no ad positions"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {p1}, Lcom/inmobi/ads/r;->b(Lcom/inmobi/ads/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 65
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Serving ad already in cache"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/r$b$1;->g(Lcom/inmobi/ads/r;)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {p1}, Lcom/inmobi/ads/r;->c(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/s;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p1}, Lcom/inmobi/ads/r;->c(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/s;->o()V

    goto :goto_0
.end method

.method f(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/q;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-static {p1}, Lcom/inmobi/ads/r;->b(Lcom/inmobi/ads/r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 78
    invoke-static {p1}, Lcom/inmobi/ads/r;->b(Lcom/inmobi/ads/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/q;

    .line 81
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/inmobi/ads/r$b$1;->a(Lcom/inmobi/ads/r;JZ)V

    .line 82
    return-object v0
.end method

.method g(Lcom/inmobi/ads/r;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/inmobi/ads/r;->a(Lcom/inmobi/ads/r;I)I

    .line 89
    invoke-static {p1}, Lcom/inmobi/ads/r;->d(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/r$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/r$a;->a()V

    .line 91
    return-void
.end method

.method h(Lcom/inmobi/ads/r;)V
    .locals 3

    .prologue
    .line 95
    invoke-static {p1}, Lcom/inmobi/ads/r;->e(Lcom/inmobi/ads/r;)I

    .line 96
    invoke-static {p1}, Lcom/inmobi/ads/r;->f(Lcom/inmobi/ads/r;)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 97
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/r;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exhausted retries for ad response; giving up"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {p1}, Lcom/inmobi/ads/r;->g(Lcom/inmobi/ads/r;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/inmobi/ads/r$b$1;->a(Lcom/inmobi/ads/r;JZ)V

    goto :goto_0
.end method
