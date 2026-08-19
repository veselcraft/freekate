.class public Lcom/felipecsl/gifimageview/library/GifImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "GifImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;
    }
.end annotation


# instance fields
.field private animating:Z

.field private animationThread:Ljava/lang/Thread;

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

.field private framesDisplayDuration:J

.field private gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private shouldClear:Z

.field private tmpBitmap:Landroid/graphics/Bitmap;

.field private final updateResults:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    const-wide/16 p1, -0x1

    .line 23
    iput-wide p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    .line 25
    new-instance p1, Lcom/felipecsl/gifimageview/library/GifImageView$1;

    invoke-direct {p1, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$1;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 34
    new-instance p1, Lcom/felipecsl/gifimageview/library/GifImageView$2;

    invoke-direct {p1, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$2;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/felipecsl/gifimageview/library/GifImageView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/felipecsl/gifimageview/library/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/felipecsl/gifimageview/library/GifImageView;Lcom/felipecsl/gifimageview/library/GifDecoder;)Lcom/felipecsl/gifimageview/library/GifDecoder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/felipecsl/gifimageview/library/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$302(Lcom/felipecsl/gifimageview/library/GifImageView;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    return p1
.end method

.method private canStart()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    .line 113
    invoke-virtual {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->stopAnimation()V

    .line 114
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getFramesDisplayDuration()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    return-wide v0
.end method

.method public getGifHeight()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getHeight()I

    move-result v0

    return v0
.end method

.method public getGifWidth()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOnFrameAvailable()Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    return-object v0
.end method

.method public run()V
    .locals 8

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getFrameCount()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    .line 139
    iget-boolean v2, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    goto :goto_5

    :cond_2
    const-wide/16 v2, 0x0

    .line 144
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 145
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v6}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 146
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v6, v4
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    if-eqz v4, :cond_3

    .line 148
    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v4, v5}, Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;->onFrameAvailable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 151
    :cond_3
    iget-boolean v4, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-nez v4, :cond_4

    goto :goto_5

    .line 154
    :cond_4
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->updateResults:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v4

    :goto_1
    move-wide v6, v2

    :goto_2
    :try_start_3
    const-string v5, "GifDecoderView"

    .line 156
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :goto_3
    iget-boolean v4, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-nez v4, :cond_5

    goto :goto_5

    .line 161
    :cond_5
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v4}, Lcom/felipecsl/gifimageview/library/GifDecoder;->advance()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :try_start_4
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v4}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextDelay()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v6

    long-to-int v5, v4

    if-lez v5, :cond_7

    .line 170
    iget-wide v6, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    cmp-long v4, v6, v2

    if-lez v4, :cond_6

    goto :goto_4

    :cond_6
    int-to-long v6, v5

    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_4
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_8
    :goto_5
    :try_start_5
    iget-boolean v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_1

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 182
    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_9

    .line 184
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_9
    :goto_6
    return-void
.end method

.method public setBytes([B)V
    .locals 2

    .line 57
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-direct {v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;-><init>()V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    .line 59
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->read([B)I

    .line 60
    iget-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {p1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->advance()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->canStart()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifDecoderView"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setFramesDisplayDuration(J)V
    .locals 0

    .line 85
    iput-wide p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    return-void
.end method

.method public setOnFrameAvailable(Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    return-void
.end method

.method public startAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    .line 91
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->canStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    .line 104
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
