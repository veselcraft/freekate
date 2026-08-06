.class public abstract Lcom/yandex/mobile/ads/nativeads/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/mobile/ads/nativeads/NativeAdView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/nativeads/NativeAdView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/nativeads/ay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/NativeAdView;Lcom/yandex/mobile/ads/nativeads/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/mobile/ads/nativeads/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ac;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdView;

    .line 46
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ac;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdView;

    invoke-virtual {p0, v0, p2}, Lcom/yandex/mobile/ads/nativeads/ac;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdView;Lcom/yandex/mobile/ads/nativeads/f;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ac;->b:Ljava/util/HashMap;

    .line 47
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ac;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/ay;

    .line 57
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ay;->a()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lcom/yandex/mobile/ads/nativeads/NativeAdView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ac;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdView;

    return-object v0
.end method

.method a(Lcom/yandex/mobile/ads/nativeads/c;)Lcom/yandex/mobile/ads/nativeads/ay;
    .locals 2

    .prologue
    .line 62
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ac;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/ay;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Lcom/yandex/mobile/ads/nativeads/NativeAdView;Lcom/yandex/mobile/ads/nativeads/f;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/mobile/ads/nativeads/f;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/nativeads/ay;",
            ">;"
        }
    .end annotation
.end method

.method b(Lcom/yandex/mobile/ads/nativeads/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/nativeads/ac;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
