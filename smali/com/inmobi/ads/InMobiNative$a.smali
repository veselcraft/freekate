.class final Lcom/inmobi/ads/InMobiNative$a;
.super Landroid/os/Handler;
.source "InMobiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiNative;
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
            "Lcom/inmobi/ads/InMobiNative$NativeAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/InMobiNative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiNative;Lcom/inmobi/ads/InMobiNative$NativeAdListener;)V
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative$a;->b:Ljava/lang/ref/WeakReference;

    .line 259
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative$a;->a:Ljava/lang/ref/WeakReference;

    .line 260
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative;

    .line 265
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/InMobiNative$NativeAdListener;

    .line 266
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 267
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 286
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unhandled ad lifecycle event! Ignoring ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 269
    :pswitch_0
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiNative$NativeAdListener;->onAdLoadSucceeded(Lcom/inmobi/ads/InMobiNative;)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 273
    invoke-interface {v1, v0, v2}, Lcom/inmobi/ads/InMobiNative$NativeAdListener;->onAdLoadFailed(Lcom/inmobi/ads/InMobiNative;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 277
    :pswitch_2
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiNative$NativeAdListener;->onAdDisplayed(Lcom/inmobi/ads/InMobiNative;)V

    goto :goto_0

    .line 280
    :pswitch_3
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiNative$NativeAdListener;->onAdDismissed(Lcom/inmobi/ads/InMobiNative;)V

    goto :goto_0

    .line 283
    :pswitch_4
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiNative$NativeAdListener;->onUserLeftApplication(Lcom/inmobi/ads/InMobiNative;)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
