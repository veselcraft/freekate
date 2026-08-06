.class public abstract Lcom/perm/kate/chartview/AbstractSeries;
.super Ljava/lang/Object;
.source "AbstractSeries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;
    }
.end annotation


# instance fields
.field private drawPoint:Z

.field private mMaxX:D

.field private mMaxY:D

.field private mMinX:D

.field private mMinY:D

.field protected mPaint:Landroid/graphics/Paint;

.field private mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mPointsSorted:Z

.field private mRangeX:D

.field private mRangeY:D

.field protected mScaleX:F

.field protected mScaleY:F

.field private pointRadius:F


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPaint:Landroid/graphics/Paint;

    .line 14
    iput v1, p0, Lcom/perm/kate/chartview/AbstractSeries;->mScaleX:F

    .line 15
    iput v1, p0, Lcom/perm/kate/chartview/AbstractSeries;->mScaleY:F

    .line 18
    iput-boolean v8, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPointsSorted:Z

    .line 20
    iput-wide v6, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinX:D

    .line 21
    iput-wide v4, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxX:D

    .line 22
    iput-wide v6, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinY:D

    .line 23
    iput-wide v4, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxY:D

    .line 25
    iput-wide v2, p0, Lcom/perm/kate/chartview/AbstractSeries;->mRangeX:D

    .line 26
    iput-wide v2, p0, Lcom/perm/kate/chartview/AbstractSeries;->mRangeY:D

    .line 28
    iput-boolean v8, p0, Lcom/perm/kate/chartview/AbstractSeries;->drawPoint:Z

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->pointRadius:F

    .line 34
    iget-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    return-void
.end method

.method private extendRange(DD)V
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinX:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 99
    iput-wide p1, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinX:D

    .line 102
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxX:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 103
    iput-wide p1, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxX:D

    .line 106
    :cond_1
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinY:D

    cmpg-double v0, p3, v0

    if-gez v0, :cond_2

    .line 107
    iput-wide p3, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinY:D

    .line 110
    :cond_2
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxY:D

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    .line 111
    iput-wide p3, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxY:D

    .line 114
    :cond_3
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxX:D

    iget-wide v2, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinX:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mRangeX:D

    .line 115
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxY:D

    iget-wide v2, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinY:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mRangeY:D

    .line 116
    return-void
.end method

.method private sortPoints()V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPointsSorted:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPoints:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPointsSorted:Z

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V
    .locals 4
    .param p1, "point"    # Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPoints:Ljava/util/List;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPoints:Ljava/util/List;

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/perm/kate/chartview/AbstractSeries;->extendRange(DD)V

    .line 61
    invoke-virtual {p1}, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->getX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/perm/kate/chartview/AbstractSeries;->extendRange(DD)V

    .line 62
    iget-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPointsSorted:Z

    .line 65
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/perm/kate/chartview/RectD;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "gridBounds"    # Landroid/graphics/Rect;
    .param p3, "valueBounds"    # Lcom/perm/kate/chartview/RectD;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/perm/kate/chartview/AbstractSeries;->sortPoints()V

    .line 145
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lcom/perm/kate/chartview/RectD;->width()D

    move-result-wide v6

    double-to-float v1, v6

    div-float v3, v0, v1

    .line 146
    .local v3, "scaleX":F
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lcom/perm/kate/chartview/RectD;->height()D

    move-result-wide v6

    double-to-float v1, v6

    div-float v4, v0, v1

    .line 148
    .local v4, "scaleY":F
    iget-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;

    .line 149
    .local v2, "point":Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;
    iget-boolean v6, p0, Lcom/perm/kate/chartview/AbstractSeries;->drawPoint:Z

    iget v7, p0, Lcom/perm/kate/chartview/AbstractSeries;->pointRadius:F

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/chartview/AbstractSeries;->drawPoint(Landroid/graphics/Canvas;Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;FFLandroid/graphics/Rect;ZF)V

    goto :goto_0

    .line 152
    .end local v2    # "point":Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/chartview/AbstractSeries;->onDrawingComplete()V

    .line 153
    return-void
.end method

.method protected abstract drawPoint(Landroid/graphics/Canvas;Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;FFLandroid/graphics/Rect;ZF)V
.end method

.method getMaxX()D
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxX:D

    return-wide v0
.end method

.method getMaxY()D
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxY:D

    return-wide v0
.end method

.method getMinX()D
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinX:D

    return-wide v0
.end method

.method getMinY()D
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinY:D

    return-wide v0
.end method

.method protected onDrawingComplete()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public setDrawPoint(ZF)V
    .locals 0
    .param p1, "draw"    # Z
    .param p2, "radius"    # F

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/perm/kate/chartview/AbstractSeries;->drawPoint:Z

    .line 77
    iput p2, p0, Lcom/perm/kate/chartview/AbstractSeries;->pointRadius:F

    .line 78
    return-void
.end method

.method public setLineColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    return-void
.end method
