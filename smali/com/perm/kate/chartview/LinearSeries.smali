.class public Lcom/perm/kate/chartview/LinearSeries;
.super Lcom/perm/kate/chartview/AbstractSeries;
.source "LinearSeries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/chartview/LinearSeries$LinearPoint;
    }
.end annotation


# instance fields
.field private mLastPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/perm/kate/chartview/AbstractSeries;-><init>()V

    return-void
.end method


# virtual methods
.method public drawPoint(Landroid/graphics/Canvas;Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;FFLandroid/graphics/Rect;ZF)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "point"    # Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F
    .param p5, "gridBounds"    # Landroid/graphics/Rect;
    .param p6, "drawPoint"    # Z
    .param p7, "pointRadius"    # F

    .prologue
    .line 12
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    move/from16 v0, p3

    float-to-double v8, v0

    invoke-virtual/range {p2 .. p2}, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->getX()D

    move-result-wide v10

    invoke-virtual {p0}, Lcom/perm/kate/chartview/LinearSeries;->getMinX()D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    double-to-float v5, v2

    .line 13
    .local v5, "x":F
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v2, v2

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-virtual/range {p2 .. p2}, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->getY()D

    move-result-wide v10

    invoke-virtual {p0}, Lcom/perm/kate/chartview/LinearSeries;->getMinY()D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v2, v8

    double-to-float v6, v2

    .line 15
    .local v6, "y":F
    iget-object v2, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    .line 16
    iget-object v2, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/perm/kate/chartview/LinearSeries;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 17
    if-eqz p6, :cond_0

    .line 18
    iget-object v2, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/perm/kate/chartview/LinearSeries;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, p7

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 20
    iget-object v2, p0, Lcom/perm/kate/chartview/LinearSeries;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, p7

    invoke-virtual {p1, v5, v6, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 27
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 28
    return-void

    .line 24
    :cond_1
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    goto :goto_0
.end method

.method protected onDrawingComplete()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    .line 33
    return-void
.end method
