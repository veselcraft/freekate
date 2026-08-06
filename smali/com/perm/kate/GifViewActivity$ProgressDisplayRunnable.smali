.class Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;
.super Ljava/lang/Object;
.source "GifViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GifViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressDisplayRunnable"
.end annotation


# instance fields
.field current:J

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
.method constructor <init>(JJLjava/lang/ref/WeakReference;)V
    .locals 1
    .param p1, "total"    # J
    .param p3, "current"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p5, "textView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-wide p1, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;->total:J

    .line 367
    iput-wide p3, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;->current:J

    .line 368
    iput-object p5, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;->textView:Ljava/lang/ref/WeakReference;

    .line 369
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 374
    :try_start_0
    iget-wide v4, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;->current:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;->total:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-long v0, v4

    .line 375
    .local v0, "progress":J
    const-wide/16 v4, 0x64

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 376
    const-wide/16 v0, 0x64

    .line 377
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v6, 0x7f070367

    invoke-virtual {v5, v6}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;->textView:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;->textView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 379
    iget-object v4, p0, Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;->textView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v0    # "progress":J
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v3

    .line 381
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 382
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
