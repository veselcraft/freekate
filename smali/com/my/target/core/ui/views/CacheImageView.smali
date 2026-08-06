.class public Lcom/my/target/core/ui/views/CacheImageView;
.super Landroid/widget/ImageView;
.source "CacheImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/ui/views/CacheImageView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/GradientDrawable;

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private e:Lcom/my/target/nativeads/models/ImageData;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private i:Lcom/my/target/core/ui/views/CacheImageView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->f:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->h:Landroid/graphics/Rect;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/CacheImageView;)Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->e:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->a:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/my/target/core/ui/views/CacheImageView;->g:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/my/target/core/ui/views/CacheImageView;->h:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/my/target/core/ui/views/CacheImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 250
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 252
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->a:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 256
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 257
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 258
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 259
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v1, -0x80000000

    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 188
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 189
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 190
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 192
    if-nez v3, :cond_a

    move v6, v1

    .line 195
    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/my/target/core/ui/views/CacheImageView;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 201
    iget-object v3, p0, Lcom/my/target/core/ui/views/CacheImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 202
    iget-object v3, p0, Lcom/my/target/core/ui/views/CacheImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v5, v4

    move v4, v3

    .line 213
    :goto_1
    if-eqz v4, :cond_9

    .line 214
    int-to-float v3, v5

    int-to-float v9, v4

    div-float/2addr v3, v9

    .line 216
    :goto_2
    if-eqz v8, :cond_1

    .line 217
    int-to-float v2, v7

    int-to-float v9, v8

    div-float/2addr v2, v9

    .line 219
    :cond_1
    if-ne v6, v10, :cond_5

    if-ne v0, v10, :cond_5

    .line 221
    invoke-virtual {p0, v7, v8}, Lcom/my/target/core/ui/views/CacheImageView;->setMeasuredDimension(II)V

    .line 245
    :cond_2
    :goto_3
    return-void

    .line 203
    :cond_3
    iget v3, p0, Lcom/my/target/core/ui/views/CacheImageView;->d:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/my/target/core/ui/views/CacheImageView;->c:I

    if-eqz v3, :cond_4

    .line 205
    iget v4, p0, Lcom/my/target/core/ui/views/CacheImageView;->c:I

    .line 206
    iget v3, p0, Lcom/my/target/core/ui/views/CacheImageView;->d:I

    move v5, v4

    move v4, v3

    goto :goto_1

    .line 209
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_3

    .line 222
    :cond_5
    if-ne v6, v1, :cond_7

    if-ne v0, v1, :cond_7

    .line 225
    cmpg-float v0, v3, v2

    if-gez v0, :cond_6

    .line 227
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 228
    int-to-float v1, v0

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 229
    invoke-virtual {p0, v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setMeasuredDimension(II)V

    goto :goto_3

    .line 232
    :cond_6
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 233
    int-to-float v1, v0

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setMeasuredDimension(II)V

    goto :goto_3

    .line 236
    :cond_7
    if-ne v6, v1, :cond_8

    if-ne v0, v10, :cond_8

    .line 238
    int-to-float v0, v8

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 239
    invoke-virtual {p0, v0, v8}, Lcom/my/target/core/ui/views/CacheImageView;->setMeasuredDimension(II)V

    goto :goto_3

    .line 240
    :cond_8
    if-ne v6, v10, :cond_2

    if-ne v0, v1, :cond_2

    .line 242
    int-to-float v0, v7

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 243
    invoke-virtual {p0, v7, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_9
    move v3, v2

    goto :goto_2

    :cond_a
    move v6, v3

    goto :goto_0
.end method

.method public setBorder(II)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->a:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->a:Landroid/graphics/drawable/GradientDrawable;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 156
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->invalidate()V

    .line 157
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    iput-object p1, p0, Lcom/my/target/core/ui/views/CacheImageView;->b:Landroid/graphics/Bitmap;

    .line 94
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, v3}, Lcom/my/target/core/ui/views/CacheImageView;->setBackgroundColor(I)V

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->g:Landroid/graphics/Rect;

    .line 100
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->requestLayout()V

    .line 101
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->invalidate()V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 4

    .prologue
    .line 82
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setAlpha(F)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageData(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iput-object p1, p0, Lcom/my/target/core/ui/views/CacheImageView;->e:Lcom/my/target/nativeads/models/ImageData;

    .line 45
    if-nez p1, :cond_0

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->b:Landroid/graphics/Bitmap;

    .line 52
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView$a;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/CacheImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/my/target/core/ui/views/CacheImageView$a;-><init>(Lcom/my/target/core/ui/views/CacheImageView;Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->i:Lcom/my/target/core/ui/views/CacheImageView$a;

    .line 59
    iget-object v0, p0, Lcom/my/target/core/ui/views/CacheImageView;->i:Lcom/my/target/core/ui/views/CacheImageView$a;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 65
    const-string v0, "Unable to set custom image drawable to generated view"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "Unable to set custom image resource to generated view"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 77
    const-string v0, "Unable to set custom image uri to generated view"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public setPlaceholderHeight(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/my/target/core/ui/views/CacheImageView;->d:I

    .line 167
    return-void
.end method

.method public setPlaceholderWidth(I)V
    .locals 0

    .prologue
    .line 161
    iput p1, p0, Lcom/my/target/core/ui/views/CacheImageView;->c:I

    .line 162
    return-void
.end method
