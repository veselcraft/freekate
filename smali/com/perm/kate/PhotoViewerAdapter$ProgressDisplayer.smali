.class Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;
.super Ljava/lang/Object;
.source "PhotoViewerAdapter.java"

# interfaces
.implements Lcom/perm/utils/UploadProgressListener;


# instance fields
.field textView:Ljava/lang/ref/WeakReference;

.field total:J

.field value:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    const-wide/32 v0, 0xc350

    .line 191
    iput-wide v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->total:J

    const-wide/16 v0, 0x0

    .line 192
    iput-wide v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->value:J

    .line 195
    invoke-virtual {p0, p1}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->setView(Landroid/view/View;)V

    return-void
.end method

.method private displayProgress()V
    .locals 8

    .line 225
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v7, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;

    iget-wide v2, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->total:J

    iget-wide v4, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->value:J

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;-><init>(JJLjava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public publishProgress(J)V
    .locals 0

    .line 215
    iput-wide p1, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->value:J

    .line 216
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->displayProgress()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTotalAmount(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 210
    iput-wide p1, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->total:J

    :cond_0
    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/ref/WeakReference;

    const v1, 0x7f090284

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    .line 201
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->value:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->displayProgress()V

    :cond_1
    return-void
.end method
