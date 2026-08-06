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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field total:J


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    .line 334
    const-wide/32 v0, 0xc350

    iput-wide v0, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->total:J

    .line 337
    if-eqz p1, :cond_0

    .line 338
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method public publishProgress(J)V
    .locals 7
    .param p1, "currentValue"    # J

    .prologue
    .line 351
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;

    iget-wide v2, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->total:J

    iget-object v6, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;-><init>(JJLjava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setTotalAmount(J)V
    .locals 3
    .param p1, "totalAmount"    # J

    .prologue
    .line 345
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 346
    iput-wide p1, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;->total:J

    .line 347
    :cond_0
    return-void
.end method
