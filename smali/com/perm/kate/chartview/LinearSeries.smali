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

    .line 7
    invoke-direct {p0}, Lcom/perm/kate/chartview/AbstractSeries;-><init>()V

    return-void
.end method


# virtual methods
.method public drawPoint(Landroid/graphics/Canvas;Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;FFLandroid/graphics/Rect;ZF)V
    .locals 8

    .line 12
    iget v0, p5, Landroid/graphics/Rect;->left:I

    int-to-double v0, v0

    float-to-double v2, p3

    invoke-virtual {p2}, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->getX()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/perm/kate/chartview/AbstractSeries;->getMinX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float p3, v0

    .line 13
    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    int-to-double v0, p5

    float-to-double p4, p4

    invoke-virtual {p2}, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/perm/kate/chartview/AbstractSeries;->getMinY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p4, p4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, p4

    double-to-float p2, v0

    .line 15
    iget-object p4, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    if-eqz p4, :cond_0

    .line 16
    iget v3, p4, Landroid/graphics/PointF;->x:F

    iget v4, p4, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, p3

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    if-eqz p6, :cond_1

    .line 18
    iget-object p4, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    iget p5, p4, Landroid/graphics/PointF;->x:F

    iget p4, p4, Landroid/graphics/PointF;->y:F

    iget-object p6, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p4, p7, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 20
    iget-object p4, p0, Lcom/perm/kate/chartview/AbstractSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p7, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    .line 27
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method protected onDrawingComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/perm/kate/chartview/LinearSeries;->mLastPoint:Landroid/graphics/PointF;

    return-void
.end method
