.class Lcom/perm/kate/GifViewActivity$ProgressDisplayer;
.super Ljava/lang/Object;
.source "GifViewActivity.java"

# interfaces
.implements Lcom/perm/utils/UploadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GifViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressDisplayer"
.end annotation


# instance fields
.field textView:Ljava/lang/ref/WeakReference;

.field total:J


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    const-wide/32 v0, 0xc350

    .line 333
    iput-wide v0, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->total:J

    if-eqz p1, :cond_0

    .line 337
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public publishProgress(J)V
    .locals 8

    .line 350
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v7, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;

    iget-wide v2, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->total:J

    iget-object v6, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    move-object v1, v7

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;-><init>(JJLjava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setTotalAmount(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 345
    iput-wide p1, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->total:J

    :cond_0
    return-void
.end method
