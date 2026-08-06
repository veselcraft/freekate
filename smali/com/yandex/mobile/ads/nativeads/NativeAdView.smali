.class public abstract Lcom/yandex/mobile/ads/nativeads/NativeAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/mobile/ads/nativeads/ao;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/mobile/ads/nativeads/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    .local p0, "this":Lcom/yandex/mobile/ads/nativeads/NativeAdView;, "Lcom/yandex/mobile/ads/nativeads/NativeAdView<TT;>;"
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    .local p0, "this":Lcom/yandex/mobile/ads/nativeads/NativeAdView;, "Lcom/yandex/mobile/ads/nativeads/NativeAdView<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/yandex/mobile/ads/nativeads/NativeAdView;, "Lcom/yandex/mobile/ads/nativeads/NativeAdView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/nativeads/ao;->a(I)V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/mobile/ads/nativeads/ao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    if-eq v0, p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ao;->d()V

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    .line 41
    return-void
.end method

.method public getNativeAd()Lcom/yandex/mobile/ads/nativeads/ao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 47
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ao;->b()V

    .line 50
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ao;->c()V

    .line 58
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 59
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "viewVisibility"    # I

    .prologue
    .line 74
    .local p0, "this":Lcom/yandex/mobile/ads/nativeads/NativeAdView;, "Lcom/yandex/mobile/ads/nativeads/NativeAdView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVisibilityChanged(), changedView = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewVisibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    if-ne p0, p1, :cond_0

    .line 78
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a(I)V

    .line 80
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "windowVisibility"    # I

    .prologue
    .line 63
    .local p0, "this":Lcom/yandex/mobile/ads/nativeads/NativeAdView;, "Lcom/yandex/mobile/ads/nativeads/NativeAdView<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowVisibilityChanged(), windowVisibility = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this.getVisibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    if-nez p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->a(I)V

    .line 69
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 70
    return-void

    .line 67
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
