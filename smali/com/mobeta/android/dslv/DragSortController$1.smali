.class Lcom/mobeta/android/dslv/DragSortController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortController;


# direct methods
.method constructor <init>(Lcom/mobeta/android/dslv/DragSortController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobeta/android/dslv/DragSortController;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 450
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortController;->access$000(Lcom/mobeta/android/dslv/DragSortController;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortController;->access$100(Lcom/mobeta/android/dslv/DragSortController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortController;->access$200(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v1

    .line 452
    .local v1, "w":I
    div-int/lit8 v0, v1, 0x5

    .line 453
    .local v0, "minPos":I
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortController;->access$300(Lcom/mobeta/android/dslv/DragSortController;)F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2

    .line 454
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortController;->access$400(Lcom/mobeta/android/dslv/DragSortController;)I

    move-result v2

    neg-int v3, v0

    if-le v2, v3, :cond_0

    .line 455
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortController;->access$200(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Lcom/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 462
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v2, v4}, Lcom/mobeta/android/dslv/DragSortController;->access$102(Lcom/mobeta/android/dslv/DragSortController;Z)Z

    .line 464
    .end local v0    # "minPos":I
    .end local v1    # "w":I
    :cond_1
    return v4

    .line 457
    .restart local v0    # "minPos":I
    .restart local v1    # "w":I
    :cond_2
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortController;->access$300(Lcom/mobeta/android/dslv/DragSortController;)F

    move-result v2

    neg-float v2, v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortController;->access$400(Lcom/mobeta/android/dslv/DragSortController;)I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 459
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortController;->access$200(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Lcom/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    goto :goto_0
.end method
