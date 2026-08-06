.class final Lcom/yandex/mobile/ads/aq;
.super Lcom/yandex/mobile/ads/aw;
.source "SourceFile"


# instance fields
.field private h:Lcom/yandex/mobile/ads/InterstitialEventListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/yandex/mobile/ads/r;->b:Lcom/yandex/mobile/ads/r;

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/aw;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/r;)V

    .line 30
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aq;->z()V

    .line 31
    return-void
.end method


# virtual methods
.method protected E()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/InterstitialEventListener;->onInterstitialLoaded()V

    .line 175
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)Lcom/yandex/mobile/ads/g;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/yandex/mobile/ads/ap;

    invoke-direct {v0, p1, p0}, Lcom/yandex/mobile/ads/ap;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/aq;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/yandex/mobile/ads/aw;->a()V

    .line 148
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceiveResult(), resultCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clazz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 116
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/yandex/mobile/ads/aw;->a(ILandroid/os/Bundle;)V

    .line 120
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 83
    :pswitch_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aq;->a()V

    goto :goto_0

    .line 87
    :pswitch_3
    const-string v0, "extra_tracking_parameters"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/yandex/mobile/ads/aq;->a(Landroid/view/View;Ljava/util/Map;)V

    goto :goto_0

    .line 92
    :pswitch_4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aq;->I()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/InterstitialEventListener;->onInterstitialDismissed()V

    goto :goto_0

    .line 96
    :pswitch_5
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/aq;->b(I)V

    goto :goto_0

    .line 100
    :pswitch_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/aq;->b(I)V

    goto :goto_0

    .line 104
    :pswitch_7
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aq;->onAdOpened()V

    goto :goto_0

    .line 108
    :pswitch_8
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aq;->onAdClosed()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
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
    .line 138
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/InterstitialEventListener;->onInterstitialShown()V

    .line 142
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yandex/mobile/ads/aw;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/AdRequest;)V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aq;->H()V

    .line 46
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/aw;->a(Lcom/yandex/mobile/ads/AdRequest;)V

    .line 47
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/InterstitialEventListener;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    .line 134
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/n;)V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/aw;->a(Lcom/yandex/mobile/ads/n;)V

    .line 36
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/yandex/mobile/ads/n;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/aq;->a(Lcom/yandex/mobile/ads/n;)V

    return-void
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/yandex/mobile/ads/AdSize;)Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/AdSize;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/yandex/mobile/ads/aq;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/AdSize;->a(Landroid/content/Context;)I

    move-result v1

    .line 74
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 7

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aq;->L()Lcom/yandex/mobile/ads/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aq;->D()Lcom/yandex/mobile/ads/e;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/aq;->d:Lcom/yandex/mobile/ads/o;

    if-eqz v0, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/yandex/mobile/ads/AdActivity;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "window_type"

    const-string v6, "window_type_interstitial"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "extra_receiver"

    invoke-static {v3}, Lcom/yandex/mobile/ads/s;->a(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "extra_interstitial_response"

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_interstitial_isShouldOpenLinksInApp"

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/e;->i()Z

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to show Interstitial Ad. Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/logger/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aq;->m()Z

    move-result v0

    return v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method g()Lcom/yandex/mobile/ads/InterstitialEventListener;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    return-object v0
.end method

.method public onAdClosed()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/yandex/mobile/ads/aw;->onAdClosed()V

    .line 157
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/InterstitialEventListener;->onAdClosed()V

    .line 160
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V
    .locals 1
    .param p1, "error"    # Lcom/yandex/mobile/ads/AdRequestError;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/aw;->onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 180
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/aq;->I()V

    .line 181
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/InterstitialEventListener;->onInterstitialFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 184
    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/yandex/mobile/ads/aw;->onAdLeftApplication()V

    .line 189
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/InterstitialEventListener;->onAdLeftApplication()V

    .line 192
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/yandex/mobile/ads/aw;->onAdOpened()V

    .line 165
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/yandex/mobile/ads/aq;->h:Lcom/yandex/mobile/ads/InterstitialEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/InterstitialEventListener;->onAdOpened()V

    .line 168
    :cond_0
    return-void
.end method
