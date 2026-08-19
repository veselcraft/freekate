.class abstract Landroidx/lifecycle/LiveData$ObserverWrapper;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ObserverWrapper"
.end annotation


# instance fields
.field mActive:Z

.field mLastVersion:I

.field final mObserver:Landroidx/lifecycle/Observer;

.field final synthetic this$0:Landroidx/lifecycle/LiveData;


# virtual methods
.method activeStateChanged(Z)V
    .locals 4

    .line 409
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 414
    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    .line 415
    iget-object v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget v1, v0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    add-int/2addr v1, v2

    .line 416
    iput v1, v0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 418
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 420
    :cond_3
    iget-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget v0, p1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v0, :cond_4

    .line 421
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->onInactive()V

    .line 423
    :cond_4
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz p1, :cond_5

    .line 424
    iget-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    :cond_5
    return-void
.end method

.method abstract shouldBeActive()Z
.end method
