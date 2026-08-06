.class Lcom/yandex/mobile/ads/nativeads/template/a$a;
.super Lcom/yandex/mobile/ads/nativeads/template/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/template/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/template/a;-><init>(F)V

    .line 86
    return-void
.end method


# virtual methods
.method protected a(F)F
    .locals 2

    .prologue
    const/high16 v0, 0x41200000    # 10.0f

    .line 101
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method public a(Landroid/content/Context;III)Lcom/yandex/mobile/ads/nativeads/template/a$d;
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/a$a;->a:F

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    .line 92
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 93
    int-to-float v1, v0

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 94
    int-to-float v2, p4

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 96
    new-instance v2, Lcom/yandex/mobile/ads/nativeads/template/a$d;

    invoke-direct {v2, v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/a$d;-><init>(II)V

    return-object v2
.end method
