.class public Lcom/my/target/nativeads/views/StarsRatingView;
.super Landroid/view/View;
.source "StarsRatingView.java"


# instance fields
.field private drawable:Lcom/my/target/core/ui/drawables/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lcom/my/target/core/ui/drawables/a;

    invoke-direct {v0}, Lcom/my/target/core/ui/drawables/a;-><init>()V

    iput-object v0, p0, Lcom/my/target/nativeads/views/StarsRatingView;->drawable:Lcom/my/target/core/ui/drawables/a;

    .line 20
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    iget-object v0, p0, Lcom/my/target/nativeads/views/StarsRatingView;->drawable:Lcom/my/target/core/ui/drawables/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/drawables/a;->draw(Landroid/graphics/Canvas;)V

    .line 53
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 44
    iget-object v0, p0, Lcom/my/target/nativeads/views/StarsRatingView;->drawable:Lcom/my/target/core/ui/drawables/a;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/StarsRatingView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/drawables/a;->a(I)V

    .line 45
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/StarsRatingView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/StarsRatingView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/StarsRatingView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/StarsRatingView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/StarsRatingView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/StarsRatingView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setMeasuredDimension(II)V

    .line 46
    return-void
.end method

.method public setRating(D)V
    .locals 1

    .prologue
    .line 31
    double-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 32
    return-void
.end method

.method public setRating(F)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/StarsRatingView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/my/target/nativeads/views/StarsRatingView;->drawable:Lcom/my/target/core/ui/drawables/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/drawables/a;->a(F)V

    .line 26
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/StarsRatingView;->invalidate()V

    .line 27
    return-void
.end method

.method public setStarsPadding(F)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/my/target/nativeads/views/StarsRatingView;->drawable:Lcom/my/target/core/ui/drawables/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/drawables/a;->b(F)V

    .line 37
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/StarsRatingView;->invalidate()V

    .line 38
    return-void
.end method
