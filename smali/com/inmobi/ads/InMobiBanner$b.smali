.class final Lcom/inmobi/ads/InMobiBanner$b;
.super Landroid/os/Handler;
.source "InMobiBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/InMobiBanner$BannerAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/InMobiBanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V
    .locals 1

    .prologue
    .line 576
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 577
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner$b;->b:Ljava/lang/ref/WeakReference;

    .line 578
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner$b;->a:Ljava/lang/ref/WeakReference;

    .line 579
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V
    .locals 1

    .prologue
    .line 582
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner$b;->a:Ljava/lang/ref/WeakReference;

    .line 583
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 588
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiBanner;

    .line 589
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

    .line 590
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 591
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 626
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiBanner;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unhandled ad lifecycle event! Ignoring ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 593
    :pswitch_0
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiBanner$BannerAdListener;->onAdLoadSucceeded(Lcom/inmobi/ads/InMobiBanner;)V

    goto :goto_0

    .line 596
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 597
    invoke-interface {v1, v0, v2}, Lcom/inmobi/ads/InMobiBanner$BannerAdListener;->onAdLoadFailed(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 601
    :pswitch_2
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiBanner$BannerAdListener;->onAdDisplayed(Lcom/inmobi/ads/InMobiBanner;)V

    goto :goto_0

    .line 604
    :pswitch_3
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiBanner$BannerAdListener;->onAdDismissed(Lcom/inmobi/ads/InMobiBanner;)V

    goto :goto_0

    .line 608
    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 609
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 611
    :cond_1
    invoke-interface {v1, v0, v2}, Lcom/inmobi/ads/InMobiBanner$BannerAdListener;->onAdInteraction(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V

    goto :goto_0

    .line 615
    :pswitch_5
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiBanner$BannerAdListener;->onUserLeftApplication(Lcom/inmobi/ads/InMobiBanner;)V

    goto :goto_0

    .line 619
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 620
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 622
    :cond_2
    invoke-interface {v1, v0, v2}, Lcom/inmobi/ads/InMobiBanner$BannerAdListener;->onAdRewardActionCompleted(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V

    goto :goto_0

    .line 591
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
