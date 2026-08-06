.class public Lcom/felipecsl/gifimageview/library/GifImageView;
.super Landroid/widget/ImageView;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    .line 25
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$1;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$1;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$2;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$2;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    .line 25
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$1;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$1;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$2;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$2;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/felipecsl/gifimageview/library/GifImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/felipecsl/gifimageview/library/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/felipecsl/gifimageview/library/GifImageView;Lcom/felipecsl/gifimageview/library/GifDecoder;)Lcom/felipecsl/gifimageview/library/GifDecoder;
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Lcom/felipecsl/gifimageview/library/GifDecoder;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/felipecsl/gifimageview/library/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$302(Lcom/felipecsl/gifimageview/library/GifImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    return p1
.end method

.method private canStart()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    .line 113
    invoke-virtual {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->stopAnimation()V

    .line 114
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method public getFramesDisplayDuration()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    return-wide v0
.end method

.method public getGifHeight()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getHeight()I

    move-result v0

    return v0
.end method

.method public getGifWidth()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOnFrameAvailable()Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    return-object v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 131
    :try_start_0
    iget-boolean v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    if-eqz v9, :cond_1

    .line 132
    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v9}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getFrameCount()I

    move-result v7

    .line 138
    .local v7, "n":I
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_3

    .line 139
    iget-boolean v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-nez v9, :cond_4

    .line 176
    :cond_3
    iget-boolean v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v9, :cond_2

    goto :goto_0

    .line 142
    :cond_4
    const-wide/16 v4, 0x0

    .line 144
    .local v4, "frame_decode_time":J
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 145
    .local v0, "before":J
    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v9}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 146
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v0

    const-wide/32 v12, 0xf4240

    div-long v4, v10, v12

    .line 147
    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    if-eqz v9, :cond_5

    .line 148
    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    iget-object v10, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v9, v10}, Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;->onFrameAvailable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 151
    :cond_5
    iget-boolean v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-eqz v9, :cond_3

    .line 154
    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->updateResults:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    .end local v0    # "before":J
    :goto_2
    :try_start_2
    iget-boolean v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-eqz v9, :cond_3

    .line 161
    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v9}, Lcom/felipecsl/gifimageview/library/GifDecoder;->advance()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    :try_start_3
    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v9}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextDelay()I

    move-result v2

    .line 167
    .local v2, "delay":I
    int-to-long v10, v2

    sub-long/2addr v10, v4

    long-to-int v2, v10

    .line 168
    if-lez v2, :cond_6

    .line 169
    iget-wide v10, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_7

    iget-wide v10, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    .line 170
    :goto_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 138
    .end local v2    # "delay":I
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 155
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 156
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_5
    :try_start_4
    const-string v9, "GifDecoderView"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 178
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "frame_decode_time":J
    .end local v6    # "i":I
    .end local v7    # "n":I
    :catch_1
    move-exception v8

    .line 179
    .local v8, "th":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    invoke-static {v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 182
    instance-of v9, v8, Ljava/lang/OutOfMemoryError;

    if-eqz v9, :cond_0

    .line 184
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto/16 :goto_0

    .line 169
    .end local v8    # "th":Ljava/lang/Throwable;
    .restart local v2    # "delay":I
    .restart local v4    # "frame_decode_time":J
    .restart local v6    # "i":I
    .restart local v7    # "n":I
    :cond_7
    int-to-long v10, v2

    goto :goto_3

    .line 155
    .end local v2    # "delay":I
    :catch_2
    move-exception v9

    move-object v3, v9

    goto :goto_5

    .line 171
    :catch_3
    move-exception v9

    goto :goto_4
.end method

.method public setBytes([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 57
    new-instance v1, Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-direct {v1}, Lcom/felipecsl/gifimageview/library/GifDecoder;-><init>()V

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v1, p1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->read([B)I

    .line 60
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->advance()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->canStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 69
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    .line 63
    const-string v1, "GifDecoderView"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFramesDisplayDuration(J)V
    .locals 1
    .param p1, "framesDisplayDuration"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    .line 86
    return-void
.end method

.method public setOnFrameAvailable(Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;)V
    .locals 0
    .param p1, "frameProcessor"    # Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .line 194
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

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
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    .line 104
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 108
    :cond_0
    return-void
.end method
