.class public Lcom/yandex/mobile/ads/network/core/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/network/core/u;


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/network/core/e;-><init>(IIF)V

    .line 51
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/yandex/mobile/ads/network/core/e;->a:I

    .line 61
    iput p2, p0, Lcom/yandex/mobile/ads/network/core/e;->c:I

    .line 62
    iput p3, p0, Lcom/yandex/mobile/ads/network/core/e;->d:F

    .line 63
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/yandex/mobile/ads/network/core/e;->a:I

    return v0
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/network/core/error/h;
        }
    .end annotation

    .prologue
    .line 94
    iget v0, p0, Lcom/yandex/mobile/ads/network/core/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/mobile/ads/network/core/e;->b:I

    .line 95
    iget v0, p0, Lcom/yandex/mobile/ads/network/core/e;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yandex/mobile/ads/network/core/e;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yandex/mobile/ads/network/core/e;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/yandex/mobile/ads/network/core/e;->a:I

    .line 96
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    throw p1

    .line 99
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/yandex/mobile/ads/network/core/e;->b:I

    return v0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/yandex/mobile/ads/network/core/e;->b:I

    iget v1, p0, Lcom/yandex/mobile/ads/network/core/e;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
