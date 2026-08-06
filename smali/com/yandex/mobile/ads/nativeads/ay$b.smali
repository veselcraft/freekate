.class public Lcom/yandex/mobile/ads/nativeads/ay$b;
.super Lcom/yandex/mobile/ads/nativeads/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ":",
        "Lcom/yandex/mobile/ads/nativeads/Rating;",
        ">",
        "Lcom/yandex/mobile/ads/nativeads/ay",
        "<TV;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/ay;-><init>(Landroid/view/View;)V

    .line 123
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p1

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/Rating;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/nativeads/Rating;->setRating(Ljava/lang/Float;)V

    .line 128
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/nativeads/ay;->a(Landroid/view/View;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/ay$b;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 135
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/Rating;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/nativeads/Rating;->setRating(Ljava/lang/Float;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    const-string v0, "Could not parse rating value. Rating value is %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic b(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/ay$b;->b()Z

    move-result v0

    return v0
.end method
