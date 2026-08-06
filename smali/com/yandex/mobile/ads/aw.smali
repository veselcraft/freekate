.class abstract Lcom/yandex/mobile/ads/aw;
.super Lcom/yandex/mobile/ads/af;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/p;


# instance fields
.field private final h:Lcom/yandex/mobile/ads/as;

.field private final j:Lcom/yandex/mobile/ads/as$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/r;)V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/af;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/r;)V

    .line 145
    new-instance v0, Lcom/yandex/mobile/ads/aw$1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/aw$1;-><init>(Lcom/yandex/mobile/ads/aw;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/aw;->j:Lcom/yandex/mobile/ads/as$c;

    .line 36
    new-instance v0, Lcom/yandex/mobile/ads/as;

    iget-object v1, p0, Lcom/yandex/mobile/ads/aw;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/aw;->j:Lcom/yandex/mobile/ads/as$c;

    invoke-static {p0}, Lcom/yandex/mobile/ads/s;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/as;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/as$c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/aw;->h:Lcom/yandex/mobile/ads/as;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/aw;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yandex/mobile/ads/aw;->c()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aw;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method O()Z
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/yandex/mobile/ads/aw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aw;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized T()V
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackAdOnDisplayed(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v0, p0, Lcom/yandex/mobile/ads/aw;->h:Lcom/yandex/mobile/ads/as;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/as;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdClicked(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, p0, Lcom/yandex/mobile/ads/aw;->h:Lcom/yandex/mobile/ads/as;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/as;->c()V

    .line 87
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPhoneStateChanged(), intent.getAction = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAdVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aw;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    iget-object v0, p0, Lcom/yandex/mobile/ads/aw;->h:Lcom/yandex/mobile/ads/as;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aw;->e()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/as;->a(Landroid/content/Intent;Z)V

    .line 55
    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdDisplayed(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/aw;->f:Lcom/yandex/mobile/ads/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/aw;->f:Lcom/yandex/mobile/ads/n;

    invoke-static {v0, p2}, Lcom/yandex/mobile/ads/s;->a(Lcom/yandex/mobile/ads/n;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/aw;->h:Lcom/yandex/mobile/ads/as;

    iget-object v2, p0, Lcom/yandex/mobile/ads/aw;->f:Lcom/yandex/mobile/ads/n;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/yandex/mobile/ads/as;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aw;->T()V

    .line 99
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/n;)V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/aw;->b(Lcom/yandex/mobile/ads/n;)Z

    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/af;->a(Lcom/yandex/mobile/ads/n;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/AdRequestError;->d:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/aw;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/yandex/mobile/ads/n;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/aw;->a(Lcom/yandex/mobile/ads/n;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/aw;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method abstract a(I)Z
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/yandex/mobile/ads/aw;->h:Lcom/yandex/mobile/ads/as;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/as;->a()V

    .line 66
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 67
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/aw;->h:Lcom/yandex/mobile/ads/as;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/as;->b()V

    goto :goto_0
.end method

.method abstract e()Z
.end method

.method abstract f()Z
.end method

.method public h()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cleanOut(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-super {p0}, Lcom/yandex/mobile/ads/af;->h()V

    .line 74
    iget-object v0, p0, Lcom/yandex/mobile/ads/aw;->h:Lcom/yandex/mobile/ads/as;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/as;->b()V

    .line 75
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/yandex/mobile/ads/af;->onAdClosed()V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdClosed(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdOpened(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-super {p0}, Lcom/yandex/mobile/ads/af;->onAdOpened()V

    .line 115
    return-void
.end method
