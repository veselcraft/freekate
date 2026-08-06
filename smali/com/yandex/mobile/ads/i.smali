.class public Lcom/yandex/mobile/ads/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/o$a;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/o;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yandex/mobile/ads/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/j;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/i;->b:Ljava/lang/ref/WeakReference;

    .line 24
    new-instance v0, Lcom/yandex/mobile/ads/o;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/o;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/i;->a:Lcom/yandex/mobile/ads/o;

    .line 25
    iget-object v0, p0, Lcom/yandex/mobile/ads/i;->a:Lcom/yandex/mobile/ads/o;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/o;->a(Lcom/yandex/mobile/ads/o$a;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/mobile/ads/o;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yandex/mobile/ads/i;->a:Lcom/yandex/mobile/ads/o;

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yandex/mobile/ads/i;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/j;

    .line 31
    if-eqz v0, :cond_0

    .line 32
    packed-switch p1, :pswitch_data_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 34
    :pswitch_0
    invoke-interface {v0}, Lcom/yandex/mobile/ads/j;->onAdOpened()V

    goto :goto_0

    .line 38
    :pswitch_1
    invoke-interface {v0}, Lcom/yandex/mobile/ads/j;->onAdClosed()V

    goto :goto_0

    .line 42
    :pswitch_2
    invoke-interface {v0}, Lcom/yandex/mobile/ads/j;->onAdLeftApplication()V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
