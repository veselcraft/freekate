.class Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;
.super Ljava/lang/Object;
.source "PhotoViewerAdapter.java"

# interfaces
.implements Lcom/perm/utils/UploadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoViewerAdapter;
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

.field value:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    .line 191
    const-wide/32 v0, 0xc350

    iput-wide v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->total:J

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->value:J

    .line 195
    invoke-virtual {p0, p1}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->setView(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method private displayProgress()V
    .locals 7

    .prologue
    .line 225
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;

    iget-wide v2, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->total:J

    iget-wide v4, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->value:J

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;-><init>(JJLjava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method


# virtual methods
.method public publishProgress(J)V
    .locals 1
    .param p1, "currentValue"    # J

    .prologue
    .line 215
    iput-wide p1, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->value:J

    .line 216
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->displayProgress()V

    goto :goto_0
.end method

.method public setTotalAmount(J)V
    .locals 3
    .param p1, "totalAmount"    # J

    .prologue
    .line 209
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 210
    iput-wide p1, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->total:J

    .line 211
    :cond_0
    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    new-instance v1, Ljava/lang/ref/WeakReference;

    const v0, 0x7f0e009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->textView:Ljava/lang/ref/WeakReference;

    .line 201
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->value:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->displayProgress()V

    .line 203
    :cond_1
    return-void
.end method
