.class public Lcom/perm/utils/ScrollPauser;
.super Ljava/lang/Object;
.source "ScrollPauser.java"


# instance fields
.field handler:Landroid/os/Handler;

.field resumeImageLoader:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/ScrollPauser;->handler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/perm/utils/ScrollPauser$1;

    invoke-direct {v0, p0}, Lcom/perm/utils/ScrollPauser$1;-><init>(Lcom/perm/utils/ScrollPauser;)V

    iput-object v0, p0, Lcom/perm/utils/ScrollPauser;->resumeImageLoader:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public scrollStateChanged(I)V
    .locals 4
    .param p1, "scrollState"    # I

    .prologue
    const/4 v2, 0x1

    .line 13
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v2, :cond_2

    .line 14
    :cond_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->pause()V

    .line 23
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 24
    if-ne p1, v2, :cond_3

    .line 25
    iget-object v0, p0, Lcom/perm/utils/ScrollPauser;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/utils/ScrollPauser;->resumeImageLoader:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    :cond_1
    :goto_1
    return-void

    .line 16
    :cond_2
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->resume()V

    goto :goto_0

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/perm/utils/ScrollPauser;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/utils/ScrollPauser;->resumeImageLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
