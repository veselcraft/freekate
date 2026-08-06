.class Lcom/yandex/mobile/ads/nativeads/p$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/nativeads/p;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/nativeads/p;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/p$3;->a:Lcom/yandex/mobile/ads/nativeads/p;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p$3;->a:Lcom/yandex/mobile/ads/nativeads/p;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/p;->a(Lcom/yandex/mobile/ads/nativeads/p;)V

    .line 106
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p$3;->a:Lcom/yandex/mobile/ads/nativeads/p;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/p;->a(Lcom/yandex/mobile/ads/nativeads/p;)V

    .line 94
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p$3;->a:Lcom/yandex/mobile/ads/nativeads/p;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/p;->b(Lcom/yandex/mobile/ads/nativeads/p;)V

    .line 100
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
