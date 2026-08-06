.class final Lcom/inmobi/ads/InMobiNativeStrand$a;
.super Landroid/os/Handler;
.source "InMobiNativeStrand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiNativeStrand;
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
            "Lcom/inmobi/ads/InMobiNativeStrand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiNativeStrand;)V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 321
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand$a;->a:Ljava/lang/ref/WeakReference;

    .line 322
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNativeStrand;

    .line 327
    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiNativeStrand;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Lost reference to InMobiNativeStrand! callback cannot be given"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_0
    :pswitch_0
    return-void

    .line 331
    :cond_0
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNativeStrand;->access$500(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

    move-result-object v1

    .line 332
    if-nez v1, :cond_1

    .line 333
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiNativeStrand;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobiNative Strand is already destroyed ! callback cannot be given"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 358
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiNativeStrand;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unhandled ad lifecycle event! Ignoring ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_1
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNativeStrand;->access$500(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;->onAdLoadSucceeded(Lcom/inmobi/ads/InMobiNativeStrand;)V

    goto :goto_0

    .line 340
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 341
    invoke-static {v0}, Lcom/inmobi/ads/InMobiNativeStrand;->access$500(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;->onAdLoadFailed(Lcom/inmobi/ads/InMobiNativeStrand;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 344
    :pswitch_3
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;->onAdImpressed(Lcom/inmobi/ads/InMobiNativeStrand;)V

    goto :goto_0

    .line 347
    :pswitch_4
    invoke-interface {v1, v0}, Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;->onAdClicked(Lcom/inmobi/ads/InMobiNativeStrand;)V

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
