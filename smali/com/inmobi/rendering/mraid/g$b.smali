.class final Lcom/inmobi/rendering/mraid/g$b;
.super Landroid/os/Handler;
.source "MediaRenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/mraid/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/rendering/mraid/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/rendering/mraid/g;)V
    .locals 1

    .prologue
    .line 626
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 627
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g$b;->a:Ljava/lang/ref/WeakReference;

    .line 628
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 632
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/g;

    .line 633
    if-eqz v0, :cond_0

    .line 634
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 658
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 659
    :cond_1
    return-void

    .line 639
    :pswitch_0
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->b:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_1

    .line 643
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->getCurrentPosition()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 644
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 646
    iget v3, v0, Lcom/inmobi/rendering/mraid/g;->i:I

    if-eq v3, v1, :cond_2

    .line 647
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/rendering/mraid/g;->a(II)V

    .line 648
    iput v1, v0, Lcom/inmobi/rendering/mraid/g;->i:I

    .line 649
    iput v1, v0, Lcom/inmobi/rendering/mraid/g;->j:I

    .line 652
    :cond_2
    const/4 v0, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/rendering/mraid/g$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
