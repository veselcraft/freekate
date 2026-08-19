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

.field private mPointsSorted:Z

.field private pointRadius:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPointsSorted:Z

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 20
    iput-wide v2, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinX:D

    const-wide/16 v4, 0x1

    .line 21
    iput-wide v4, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxX:D

    .line 22
    iput-wide v2, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinY:D

    .line 23
    iput-wide v4, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxY:D

    .line 28
    iput-boolean v1, p0, Lcom/perm/kate/chartview/AbstractSeries;->drawPoint:Z

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/perm/kate/chartview/AbstractSeries;->pointRadius:F

    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private extendRange(DD)V
    .locals 3

    .line 98
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinX:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 99
    iput-wide p1, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinX:D

    .line 102
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxX:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    .line 103
    iput-wide p1, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxX:D

    .line 106
    :cond_1
    iget-wide p1, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinY:D

    cmpg-double v0, p3, p1

    if-gez v0, :cond_2

    .line 107
    iput-wide p3, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinY:D

    .line 110
    :cond_2
    iget-wide p1, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxY:D

    cmpl-double v0, p3, p1

    if-lez v0, :cond_3

    .line 111
    iput-wide p3, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxY:D

    :cond_3
    return-void
.end method

.method private sortPoints()V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPointsSorted:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPoints:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPointsSorted:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V
    .locals 4

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

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPointsSorted:Z

    return-void
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/perm/kate/chartview/RectD;)V
    .locals 10

    .line 143
    invoke-direct {p0}, Lcom/perm/kate/chartview/AbstractSeries;->sortPoints()V

    .line 145
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lcom/perm/kate/chartview/RectD;->width()D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    .line 146
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/perm/kate/chartview/RectD;->height()D

    move-result-wide v2

    double-to-float p3, v2

    div-float/2addr v1, p3

    .line 148
    iget-object p3, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPoints:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;

    .line 149
    iget-boolean v8, p0, Lcom/perm/kate/chartview/AbstractSeries;->drawPoint:Z

    iget v9, p0, Lcom/perm/kate/chartview/AbstractSeries;->pointRadius:F

    move-object v2, p0

    move-object v3, p1

    move v5, v0

    move v6, v1

    move-object v7, p2

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/chartview/AbstractSeries;->drawPoint(Landroid/graphics/Canvas;Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;FFLandroid/graphics/Rect;ZF)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/chartview/AbstractSeries;->onDrawingComplete()V

    return-void
.end method

.method protected abstract drawPoint(Landroid/graphics/Canvas;Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;FFLandroid/graphics/Rect;ZF)V
.end method

.method getMaxX()D
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxX:D

    return-wide v0
.end method

.method getMaxY()D
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMaxY:D

    return-wide v0
.end method

.method getMinX()D
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinX:D

    return-wide v0
.end method

.method getMinY()D
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mMinY:D

    return-wide v0
.end method

.method protected abstract onDrawingComplete()V
.end method

.method public setDrawPoint(ZF)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/perm/kate/chartview/AbstractSeries;->drawPoint:Z

    .line 77
    iput p2, p0, Lcom/perm/kate/chartview/AbstractSeries;->pointRadius:F

    return-void
.end method

.method public setLineColor(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
