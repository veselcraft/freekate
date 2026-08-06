.class final Lcom/inmobi/ads/InMobiInterstitial$a;
.super Landroid/os/Handler;
.source "InMobiInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/InMobiInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;)V
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial$a;->c:Z

    .line 245
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$a;->b:Ljava/lang/ref/WeakReference;

    .line 246
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$a;->a:Ljava/lang/ref/WeakReference;

    .line 247
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial$a;->c:Z

    .line 251
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiInterstitial;

    .line 256
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;

    .line 257
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 258
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 296
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiInterstitial;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unhandled ad lifecycle event! Ignoring ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-boolean v2, p0, Lcom/inmobi/ads/InMobiInterstitial$a;->c:Z

    if-nez v2, :cond_0

    .line 261
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/inmobi/ads/InMobiInterstitial$a;->c:Z

    .line 262
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;->onAdLoadSucceeded(Lcom/inmobi/ads/InMobiInterstitial;)V

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 267
    invoke-interface {v1, v0, v2}, Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;->onAdLoadFailed(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 271
    :pswitch_2
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;->onAdDisplayed(Lcom/inmobi/ads/InMobiInterstitial;)V

    goto :goto_0

    .line 274
    :pswitch_3
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;->onAdDismissed(Lcom/inmobi/ads/InMobiInterstitial;)V

    goto :goto_0

    .line 278
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 279
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 281
    :cond_1
    invoke-interface {v1, v0, v2}, Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;->onAdInteraction(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V

    goto :goto_0

    .line 285
    :pswitch_5
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;->onUserLeftApplication(Lcom/inmobi/ads/InMobiInterstitial;)V

    goto :goto_0

    .line 289
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 290
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 292
    :cond_2
    invoke-interface {v1, v0, v2}, Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;->onAdRewardActionCompleted(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
