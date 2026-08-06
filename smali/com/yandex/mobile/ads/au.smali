.class abstract Lcom/yandex/mobile/ads/au;
.super Lcom/yandex/mobile/ads/aw;
.source "SourceFile"


# instance fields
.field private h:Z

.field j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/r;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/aw;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/r;)V

    .line 60
    new-instance v0, Lcom/yandex/mobile/ads/au$1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/au$1;-><init>(Lcom/yandex/mobile/ads/au;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/au;->j:Ljava/lang/Runnable;

    .line 27
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/au;->h:Z

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method protected E()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/yandex/mobile/ads/aw;->E()V

    .line 109
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->S()V

    .line 110
    return-void
.end method

.method P()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->Q()V

    .line 48
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->L()Lcom/yandex/mobile/ads/n;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/n;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/au;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/yandex/mobile/ads/au;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/mobile/ads/au;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    :cond_0
    return-void
.end method

.method Q()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yandex/mobile/ads/au;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/mobile/ads/au;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method R()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->S()V

    .line 70
    return-void
.end method

.method S()V
    .locals 6

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->Q()V

    .line 87
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->L()Lcom/yandex/mobile/ads/n;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/n;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/au;->h:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->O()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/yandex/mobile/ads/au;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yandex/mobile/ads/au;->j:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/n;->j()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/n;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 92
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/aw;->a(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->R()V

    .line 104
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/aw;->a(Ljava/util/Map;)V

    .line 43
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->P()V

    .line 44
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/aw;->b(I)V

    .line 97
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->R()V

    .line 98
    return-void
.end method

.method b(Lcom/yandex/mobile/ads/AdRequestError;)V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/AdRequestError;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/AdRequestError;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->S()V

    goto :goto_0
.end method

.method b(Z)V
    .locals 1

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/au;->h:Z

    .line 76
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/au;->h:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->S()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/au;->Q()V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/yandex/mobile/ads/aw;->h()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/au;->b(Z)V

    .line 36
    return-void
.end method

.method public onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V
    .locals 0
    .param p1, "error"    # Lcom/yandex/mobile/ads/AdRequestError;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/aw;->onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/au;->b(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 116
    return-void
.end method
