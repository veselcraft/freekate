.class final Lcom/yandex/mobile/ads/nativeads/template/e;
.super Landroid/widget/RatingBar;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/Rating;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public getRating()F
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    return v0
.end method

.method public setRating(Ljava/lang/Float;)V
    .locals 1
    .param p1, "rating"    # Ljava/lang/Float;

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 35
    return-void
.end method
