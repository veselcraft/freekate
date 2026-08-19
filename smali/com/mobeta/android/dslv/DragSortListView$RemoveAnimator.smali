.class Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;
.super Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAnimator"
.end annotation


# instance fields
.field private mFirstChildHeight:I

.field private mFirstPos:I

.field private mFirstStartBlank:F

.field private mFloatLocX:F

.field private mSecondChildHeight:I

.field private mSecondPos:I

.field private mSecondStartBlank:F

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .locals 0

    .line 1317
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 1318
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    const/4 p1, -0x1

    .line 1310
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1311
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    const/4 v0, -0x1

    .line 1323
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1324
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1325
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$1300(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    .line 1326
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$1400(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    .line 1327
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$900(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 1328
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->access$102(Lcom/mobeta/android/dslv/DragSortListView;I)I

    .line 1330
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$500(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1331
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$1500(Lcom/mobeta/android/dslv/DragSortListView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1332
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    .line 1333
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v4}, Lcom/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 1334
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    mul-float v0, v0, v1

    invoke-static {v3, v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1602(Lcom/mobeta/android/dslv/DragSortListView;F)F

    goto :goto_1

    :cond_1
    mul-float v1, v1, v3

    .line 1337
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v0

    neg-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 1338
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->access$1602(Lcom/mobeta/android/dslv/DragSortListView;F)F

    goto :goto_1

    .line 1339
    :cond_2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 1340
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$1602(Lcom/mobeta/android/dslv/DragSortListView;F)F

    goto :goto_1

    .line 1343
    :cond_3
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1700(Lcom/mobeta/android/dslv/DragSortListView;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1900(Lcom/mobeta/android/dslv/DragSortListView;)V

    return-void
.end method

.method public onUpdate(FF)V
    .locals 9

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    .line 1351
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    .line 1352
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1356
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$1500(Lcom/mobeta/android/dslv/DragSortListView;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-nez v5, :cond_0

    return-void

    .line 1360
    :cond_0
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v5

    mul-float v5, v5, v1

    .line 1361
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    .line 1362
    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/mobeta/android/dslv/DragSortListView;)F

    move-result v8

    cmpl-float v4, v8, v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
    int-to-float v4, v4

    mul-float v4, v4, v1

    int-to-float v1, v6

    mul-float v4, v4, v1

    invoke-static {v7, v4}, Lcom/mobeta/android/dslv/DragSortListView;->access$1616(Lcom/mobeta/android/dslv/DragSortListView;F)F

    .line 1363
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1364
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {v4}, Lcom/mobeta/android/dslv/DragSortListView;->access$500(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v4

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    float-to-int v7, v5

    iput v7, v4, Landroid/graphics/Point;->x:I

    cmpg-float v1, v5, v1

    if-gez v1, :cond_2

    neg-int v1, v6

    int-to-float v1, v1

    cmpl-float v1, v5, v1

    if-lez v1, :cond_2

    .line 1366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mStartTime:J

    .line 1367
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-static {p1, v3}, Lcom/mobeta/android/dslv/DragSortListView;->access$700(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    return-void

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1373
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    if-ne v4, v2, :cond_3

    .line 1374
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    invoke-static {v4, v5, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$1800(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v4

    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1375
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    .line 1377
    :cond_3
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    mul-float v4, v4, p1

    float-to-int v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1378
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1379
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1380
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1382
    :cond_4
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    if-eq v0, v4, :cond_6

    .line 1383
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    sub-int/2addr v0, p2

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1385
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    if-ne v0, v2, :cond_5

    .line 1386
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    invoke-static {v0, v2, p2, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$1800(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1387
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    .line 1389
    :cond_5
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1390
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1391
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1392
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method
