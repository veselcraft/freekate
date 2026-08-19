.class Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;
.super Ljava/lang/Object;
.source "PhotoViewerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field current:J

.field textView:Ljava/lang/ref/WeakReference;

.field total:J


# direct methods
.method constructor <init>(JJLjava/lang/ref/WeakReference;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-wide p1, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;->total:J

    .line 238
    iput-wide p3, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;->current:J

    .line 239
    iput-object p5, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;->textView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 245
    :try_start_0
    iget-wide v0, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;->current:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;->total:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 248
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v4, 0x7f0f03d0

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;->textView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;->textView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
