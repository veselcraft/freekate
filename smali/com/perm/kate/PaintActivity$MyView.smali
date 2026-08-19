.class public Lcom/perm/kate/PaintActivity$MyView;
.super Landroid/view/View;
.source "PaintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PaintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field private bitmapChanged:Z

.field private copy_mBitmap:Landroid/graphics/Bitmap;

.field private history_bitmaps:Ljava/util/ArrayList;

.field private isClean:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPath:Landroid/graphics/Path;

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/perm/kate/PaintActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/PaintActivity;Landroid/content/Context;II)V
    .locals 1

    .line 192
    iput-object p1, p0, Lcom/perm/kate/PaintActivity$MyView;->this$0:Lcom/perm/kate/PaintActivity;

    .line 193
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/perm/kate/PaintActivity$MyView;->isClean:Z

    const/4 p2, 0x0

    .line 104
    iput-boolean p2, p0, Lcom/perm/kate/PaintActivity$MyView;->bitmapChanged:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    .line 194
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    .line 195
    new-instance p3, Landroid/graphics/Canvas;

    iget-object p4, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p3, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/perm/kate/PaintActivity$MyView;->mCanvas:Landroid/graphics/Canvas;

    .line 196
    iput-boolean p1, p0, Lcom/perm/kate/PaintActivity$MyView;->isClean:Z

    .line 197
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    .line 198
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 199
    iget-object p1, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getPreviuosBitmap()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 133
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private saveCurrentBitmap()V
    .locals 3

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 114
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    .line 117
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 119
    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private touch_move(FF)V
    .locals 6

    .line 224
    iget v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 225
    iget v1, p0, Lcom/perm/kate/PaintActivity$MyView;->mY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/perm/kate/PaintActivity$MyView;->mX:F

    iget v3, p0, Lcom/perm/kate/PaintActivity$MyView;->mY:F

    add-float v4, p1, v1

    div-float/2addr v4, v2

    add-float v5, p2, v3

    div-float/2addr v5, v2

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 228
    iput p1, p0, Lcom/perm/kate/PaintActivity$MyView;->mX:F

    .line 229
    iput p2, p0, Lcom/perm/kate/PaintActivity$MyView;->mY:F

    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Lcom/perm/kate/PaintActivity$MyView;->isClean:Z

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/perm/kate/PaintActivity$MyView;->bitmapChanged:Z

    :cond_1
    return-void
.end method

.method private touch_start(FF)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 219
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 220
    iput p1, p0, Lcom/perm/kate/PaintActivity$MyView;->mX:F

    .line 221
    iput p2, p0, Lcom/perm/kate/PaintActivity$MyView;->mY:F

    return-void
.end method

.method private touch_up()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/perm/kate/PaintActivity$MyView;->mX:F

    iget v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 237
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-static {v2}, Lcom/perm/kate/PaintActivity;->access$000(Lcom/perm/kate/PaintActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method


# virtual methods
.method public clearCanvas()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/perm/kate/PaintActivity$MyView;->isClean:Z

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/perm/kate/PaintActivity$MyView;->bitmapChanged:Z

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    .line 182
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 183
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 189
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIsClean()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/perm/kate/PaintActivity$MyView;->isClean:Z

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    iput-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    iput-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 280
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, -0x1

    .line 209
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 210
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-static {v1}, Lcom/perm/kate/PaintActivity;->access$000(Lcom/perm/kate/PaintActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/PaintActivity$MyView;->touch_move(FF)V

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 258
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity$MyView;->touch_up()V

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 260
    iget-boolean p1, p0, Lcom/perm/kate/PaintActivity$MyView;->bitmapChanged:Z

    if-eqz p1, :cond_2

    .line 261
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity$MyView;->saveCurrentBitmap()V

    :cond_2
    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lcom/perm/kate/PaintActivity$MyView;->bitmapChanged:Z

    goto :goto_0

    .line 250
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/PaintActivity$MyView;->touch_start(FF)V

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return v2
.end method

.method public setPreviousBitmap()V
    .locals 12

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity$MyView;->getPreviuosBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 148
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v0, v9, v10

    .line 149
    new-array v11, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v11

    move v3, v9

    move v6, v9

    move v7, v10

    .line 150
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 151
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v11

    move v3, v9

    move v6, v9

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 152
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    :cond_1
    iput-object v8, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
