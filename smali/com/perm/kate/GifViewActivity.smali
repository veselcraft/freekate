.class public Lcom/perm/kate/GifViewActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GifViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/GifViewActivity$ProgressDisplayRunnable;,
        Lcom/perm/kate/GifViewActivity$ProgressDisplayer;
    }
.end annotation


# static fields
.field private static cache:Ljava/util/HashMap;


# instance fields
.field private access_key:Ljava/lang/String;

.field doc:Ljava/lang/String;

.field private document_id:Ljava/lang/Long;

.field force_gif:Z

.field private gifView:Landroid/view/View;

.field private gif_file:Ljava/io/File;

.field mp:Landroid/media/MediaPlayer;

.field private owner_id:Ljava/lang/Long;

.field surfaceView:Landroid/view/SurfaceView;

.field private title:Ljava/lang/String;

.field private tv_gif:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private video:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/GifViewActivity;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    const-string v0, "Gif"

    .line 33
    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->title:Ljava/lang/String;

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GifViewActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/perm/kate/GifViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 29
    sget-object v0, Lcom/perm/kate/GifViewActivity;->cache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/GifViewActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->downloadOrDisplayOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/GifViewActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->downloadOrDisplay()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GifViewActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/GifViewActivity;)Ljava/io/File;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/GifViewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/GifViewActivity;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/GifViewActivity;->displayInUIThread(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/GifViewActivity;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/GifViewActivity;->display(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/GifViewActivity;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/GifViewActivity;->startVideoPlayback(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public static addToMyDocs(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 8

    .line 433
    new-instance v7, Lcom/perm/kate/GifViewActivity$6;

    move-object v0, v7

    move-object v1, p5

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/GifViewActivity$6;-><init>(Lcom/perm/kate/BaseActivity;JJLjava/lang/String;)V

    .line 444
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private adjustSize(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 309
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 310
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    .line 312
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 313
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    const-wide/high16 v3, 0x4050000000000000L    # 64.0

    .line 316
    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 320
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 322
    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 324
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 325
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lp.width="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " lp.height="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kate.GifViewActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private display(Z)V
    .locals 7

    const-string v0, "Kate.GifViewActivity"

    .line 203
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    const/16 v1, 0x8

    if-eqz p1, :cond_4

    .line 207
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gif_file.length()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-boolean v3, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->displayVideo()V

    return-void

    :cond_2
    const-string v3, "displaying gif"

    .line 213
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v5, v4

    new-array v4, v5, [B

    .line 216
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 219
    aget-byte v5, v4, v2

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v4, v5

    const/16 v6, 0x21

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    aget-byte v5, v4, v5

    const/16 v6, 0x44

    if-ne v5, v6, :cond_3

    const-string p1, "html found insted of gif"

    .line 221
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    check-cast v0, Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-virtual {v0, v4}, Lcom/felipecsl/gifimageview/library/GifImageView;->setBytes([B)V

    .line 224
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :goto_0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " link="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_4
    :goto_1
    if-nez p1, :cond_6

    .line 236
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 237
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 241
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private displayInUIThread(Z)V
    .locals 1

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 194
    new-instance v0, Lcom/perm/kate/GifViewActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GifViewActivity$4;-><init>(Lcom/perm/kate/GifViewActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayVideo()V
    .locals 2

    const-string v0, "Kate.GifViewActivity"

    const-string v1, "playing video"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f090314

    .line 251
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    .line 252
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/GifViewActivity$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/GifViewActivity$5;-><init>(Lcom/perm/kate/GifViewActivity;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private downloadOrDisplay()V
    .locals 3

    const-string v0, "Kate.GifViewActivity"

    const-string v1, "downloadOrDisplay"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUrl()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gif_file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 155
    invoke-direct {p0, v0}, Lcom/perm/kate/GifViewActivity;->display(Z)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->loadGifByUrl()V

    :goto_0
    return-void
.end method

.method private downloadOrDisplayOnUiThread()V
    .locals 1

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/perm/kate/GifViewActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/GifViewActivity$2;-><init>(Lcom/perm/kate/GifViewActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    return-object v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    return-object v0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    return-object v0
.end method

.method private getVideoInThread(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Kate.GifViewActivity"

    const-string v1, "getVideoInThread"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Lcom/perm/kate/GifViewActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GifViewActivity$1;-><init>(Lcom/perm/kate/GifViewActivity;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static isGifOptimizationEnabled()Z
    .locals 3

    .line 489
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gif_opimization"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadGifByUrl()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 173
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/GifViewActivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/GifViewActivity$3;-><init>(Lcom/perm/kate/GifViewActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static sendToFriend(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 451
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 452
    const-class p2, Lcom/perm/kate/MembersActivity;

    invoke-virtual {p0, p5, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p2, 0x0

    const-string p3, "com.perm.kate.only_members"

    .line 453
    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string p3, "com.perm.kate.new_message"

    .line 454
    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.perm.kate.photo_attachment"

    .line 455
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    invoke-virtual {p5, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startGifActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 2

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/GifViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.title"

    .line 388
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.perm.kate.url"

    .line 389
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "document_id"

    .line 390
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "owner_id"

    .line 391
    invoke-virtual {v0, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "access_key"

    .line 392
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startVideoPlayback(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 278
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const-string v1, "Kate.GifViewActivity"

    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "MediaPlayer create failed"

    .line 281
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_0

    .line 286
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "mp failed"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 290
    :cond_0
    iput-boolean v0, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    .line 291
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->downloadOrDisplay()V

    return-void

    :cond_1
    const-string p1, "MediaPlayer created"

    .line 294
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 299
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1}, Lcom/perm/kate/GifViewActivity;->adjustSize(Landroid/media/MediaPlayer;)V

    .line 300
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 303
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 304
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7f0f025d

    .line 409
    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 410
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    const v1, 0x7f0f003b

    .line 411
    invoke-interface {p1, v0, v5, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f0f023a

    .line 412
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "_"

    .line 50
    :try_start_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c008e

    .line 51
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.perm.kate.title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->title:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.perm.kate.url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "document_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->document_id:Ljava/lang/Long;

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "owner_id"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "access_key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->access_key:Ljava/lang/String;

    const p1, 0x7f09036f

    .line 65
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    const p1, 0x7f090157

    .line 66
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    const/16 v1, 0x8

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-static {}, Lcom/perm/kate/GifViewActivity;->isGifOptimizationEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    .line 72
    :cond_2
    iget-boolean p1, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    if-eqz p1, :cond_3

    .line 73
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->downloadOrDisplay()V

    return-void

    .line 77
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity;->access_key:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->access_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    .line 83
    :cond_4
    sget-object p1, Lcom/perm/kate/GifViewActivity;->cache:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 84
    sget-object p1, Lcom/perm/kate/GifViewActivity;->cache:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->downloadOrDisplay()V

    return-void

    .line 96
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/perm/kate/GifViewActivity;->getVideoInThread(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 398
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 399
    invoke-virtual {p0, p1}, Lcom/perm/kate/GifViewActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 418
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/GifViewActivity;->access_key:Ljava/lang/String;

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/GifViewActivity;->sendToFriend(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/GifViewActivity;->access_key:Ljava/lang/String;

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/GifViewActivity;->addToMyDocs(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    .line 429
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 420
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    return v1
.end method

.method public onPause()V
    .locals 2

    .line 461
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onPause()V

    .line 463
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    check-cast v0, Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifImageView;->clear()V

    .line 466
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 467
    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    .line 468
    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    .line 469
    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    .line 470
    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 471
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 476
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onStart()V

    .line 477
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 478
    check-cast v0, Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifImageView;->startAnimation()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 483
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onStop()V

    .line 484
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 485
    check-cast v0, Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifImageView;->stopAnimation()V

    :cond_0
    return-void
.end method
