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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 4
    .param p1, "this$0"    # Lcom/perm/kate/PaintActivity;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    iput-object p1, p0, Lcom/perm/kate/PaintActivity$MyView;->this$0:Lcom/perm/kate/PaintActivity;

    .line 192
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    iput-boolean v3, p0, Lcom/perm/kate/PaintActivity$MyView;->isClean:Z

    .line 103
    iput-boolean v2, p0, Lcom/perm/kate/PaintActivity$MyView;->bitmapChanged:Z

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    .line 193
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    .line 194
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mCanvas:Landroid/graphics/Canvas;

    .line 195
    iput-boolean v3, p0, Lcom/perm/kate/PaintActivity$MyView;->isClean:Z

    .line 196
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 198
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    .line 199
    return-void
.end method

.method private getPreviuosBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 137
    :goto_0
    return-object v0

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 132
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 137
    goto :goto_0
.end method

.method private saveCurrentBitmap()V
    .locals 5

    .prologue
    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    .line 116
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 117
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 118
    .local v0, "old":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v0    # "old":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private touch_move(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 223
    iget v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 224
    .local v0, "dx":F
    iget v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 225
    .local v1, "dy":F
    cmpl-float v2, v0, v7

    if-gez v2, :cond_0

    cmpl-float v2, v1, v7

    if-ltz v2, :cond_1

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/perm/kate/PaintActivity$MyView;->mX:F

    iget v4, p0, Lcom/perm/kate/PaintActivity$MyView;->mY:F

    iget v5, p0, Lcom/perm/kate/PaintActivity$MyView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/perm/kate/PaintActivity$MyView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 227
    iput p1, p0, Lcom/perm/kate/PaintActivity$MyView;->mX:F

    .line 228
    iput p2, p0, Lcom/perm/kate/PaintActivity$MyView;->mY:F

    .line 229
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/perm/kate/PaintActivity$MyView;->isClean:Z

    .line 230
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/perm/kate/PaintActivity$MyView;->bitmapChanged:Z

    .line 232
    :cond_1
    return-void
.end method

.method private touch_start(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 217
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 218
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 219
    iput p1, p0, Lcom/perm/kate/PaintActivity$MyView;->mX:F

    .line 220
    iput p2, p0, Lcom/perm/kate/PaintActivity$MyView;->mY:F

    .line 221
    return-void
.end method

.method private touch_up()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/perm/kate/PaintActivity$MyView;->mX:F

    iget v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-static {v2}, Lcom/perm/kate/PaintActivity;->access$000(Lcom/perm/kate/PaintActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 238
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 239
    return-void
.end method


# virtual methods
.method public clearCanvas()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 175
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/perm/kate/PaintActivity$MyView;->isClean:Z

    .line 176
    iput-boolean v4, p0, Lcom/perm/kate/PaintActivity$MyView;->bitmapChanged:Z

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    .line 181
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 182
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 188
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {p0}, Lcom/perm/kate/PaintActivity$MyView;->invalidate()V

    .line 189
    return-void

    .line 183
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIsClean()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/perm/kate/PaintActivity$MyView;->isClean:Z

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 268
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 274
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 278
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 282
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 283
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 285
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-void

    .line 279
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/PaintActivity$MyView;->history_bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 208
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 209
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 210
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MyView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MyView;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-static {v1}, Lcom/perm/kate/PaintActivity;->access$000(Lcom/perm/kate/PaintActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 211
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 204
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 244
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 246
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 263
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 248
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/PaintActivity$MyView;->touch_start(FF)V

    .line 249
    invoke-virtual {p0}, Lcom/perm/kate/PaintActivity$MyView;->invalidate()V

    goto :goto_0

    .line 252
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/PaintActivity$MyView;->touch_move(FF)V

    .line 253
    invoke-virtual {p0}, Lcom/perm/kate/PaintActivity$MyView;->invalidate()V

    goto :goto_0

    .line 256
    :pswitch_2
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity$MyView;->touch_up()V

    .line 257
    invoke-virtual {p0}, Lcom/perm/kate/PaintActivity$MyView;->invalidate()V

    .line 258
    iget-boolean v2, p0, Lcom/perm/kate/PaintActivity$MyView;->bitmapChanged:Z

    if-eqz v2, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/perm/kate/PaintActivity$MyView;->saveCurrentBitmap()V

    .line 260
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/perm/kate/PaintActivity$MyView;->bitmapChanged:Z

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setPreviousBitmap()V
    .locals 18

    .prologue
    .line 143
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/PaintActivity$MyView;->getPreviuosBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    .local v1, "b":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 159
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 146
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 147
    .local v4, "orgWidth":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 148
    .local v8, "orgHeight":I
    mul-int v3, v4, v8

    new-array v2, v3, [I

    .line 149
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 150
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/PaintActivity$MyView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v2

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    :cond_1
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/perm/kate/PaintActivity$MyView;->copy_mBitmap:Landroid/graphics/Bitmap;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/PaintActivity$MyView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "pixels":[I
    .end local v4    # "orgWidth":I
    .end local v8    # "orgHeight":I
    :catch_0
    move-exception v17

    .line 156
    .local v17, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    invoke-static/range {v17 .. v17}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
