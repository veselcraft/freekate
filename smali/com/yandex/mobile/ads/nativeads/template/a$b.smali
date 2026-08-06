.class Lcom/yandex/mobile/ads/nativeads/template/a$b;
.super Lcom/yandex/mobile/ads/nativeads/template/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/template/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/template/a;-><init>(F)V

    .line 113
    return-void
.end method


# virtual methods
.method protected a(F)F
    .locals 2

    .prologue
    .line 126
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/a$b;->a(FFF)F

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;III)Lcom/yandex/mobile/ads/nativeads/template/a$d;
    .locals 3

    .prologue
    .line 117
    int-to-float v0, p2

    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/template/a$b;->a:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 118
    int-to-float v1, v0

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 119
    int-to-float v2, p4

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 121
    new-instance v2, Lcom/yandex/mobile/ads/nativeads/template/a$d;

    invoke-direct {v2, v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/a$d;-><init>(II)V

    return-object v2
.end method
