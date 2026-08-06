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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/GifViewActivity;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    .line 33
    const-string v0, "Gif"

    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->title:Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GifViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GifViewActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/perm/kate/GifViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GifViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/perm/kate/GifViewActivity;->cache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/GifViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GifViewActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->downloadOrDisplayOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/GifViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GifViewActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->downloadOrDisplay()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GifViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GifViewActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/GifViewActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GifViewActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/GifViewActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GifViewActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/GifViewActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GifViewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/GifViewActivity;->displayInUIThread(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/GifViewActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GifViewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/GifViewActivity;->display(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/GifViewActivity;Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GifViewActivity;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/GifViewActivity;->startVideoPlayback(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public static addToMyDocs(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 8
    .param p0, "owner_id"    # J
    .param p2, "document_id"    # J
    .param p4, "access_key"    # Ljava/lang/String;
    .param p5, "activity"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 434
    new-instance v0, Lcom/perm/kate/GifViewActivity$6;

    move-object v1, p5

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/GifViewActivity$6;-><init>(Lcom/perm/kate/BaseActivity;JJLjava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Lcom/perm/kate/GifViewActivity$6;->start()V

    .line 446
    return-void
.end method

.method private adjustSize(Landroid/media/MediaPlayer;)V
    .locals 11
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v7

    .line 311
    .local v7, "videoWidth":I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v6

    .line 313
    .local v6, "videoHeight":I
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 314
    .local v5, "screenWidth":I
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 317
    .local v4, "screenHeight":I
    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v8

    sub-int/2addr v4, v8

    .line 319
    int-to-float v8, v5

    int-to-float v9, v7

    div-float v2, v8, v9

    .line 320
    .local v2, "ratio1":F
    int-to-float v8, v4

    int-to-float v9, v6

    div-float v3, v8, v9

    .line 321
    .local v3, "ratio2":F
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 323
    .local v1, "ratio":F
    iget-object v8, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 325
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v8, v7

    mul-float/2addr v8, v1

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 326
    int-to-float v8, v6

    mul-float/2addr v8, v1

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 327
    const-string v8, "Kate.GifViewActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lp.width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lp.height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v8, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    return-void
.end method

.method private display(Z)V
    .locals 10
    .param p1, "success"    # Z

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 204
    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    :cond_0
    const/4 p1, 0x0

    .line 206
    :cond_1
    if-eqz p1, :cond_4

    .line 208
    :try_start_0
    const-string v3, "Kate.GifViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gif_file.length()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-boolean v3, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 211
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->displayVideo()V

    .line 244
    :cond_2
    :goto_0
    return-void

    .line 214
    :cond_3
    const-string v3, "Kate.GifViewActivity"

    const-string v4, "displaying gif"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v3, v4

    new-array v0, v3, [B

    .line 217
    .local v0, "b":[B
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 220
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_6

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    const/16 v4, 0x44

    if-ne v3, v4, :cond_6

    .line 221
    const/4 p1, 0x0

    .line 222
    const-string v3, "Kate.GifViewActivity"

    const-string v4, "html found insted of gif"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "b":[B
    .end local v1    # "f":Ljava/io/RandomAccessFile;
    :cond_4
    :goto_2
    if-nez p1, :cond_2

    .line 237
    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 238
    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    const v4, 0x7f0700a2

    invoke-virtual {p0, v4}, Lcom/perm/kate/GifViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_5
    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 224
    .restart local v0    # "b":[B
    .restart local v1    # "f":Ljava/io/RandomAccessFile;
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    check-cast v3, Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-virtual {v3, v0}, Lcom/felipecsl/gifimageview/library/GifImageView;->setBytes([B)V

    .line 225
    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 229
    .end local v0    # "b":[B
    .end local v1    # "f":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .line 230
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " link="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/GifViewActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 232
    const/4 p1, 0x0

    goto :goto_2
.end method

.method private displayInUIThread(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perm/kate/GifViewActivity;->showProgressBar(Z)V

    .line 195
    new-instance v0, Lcom/perm/kate/GifViewActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GifViewActivity$4;-><init>(Lcom/perm/kate/GifViewActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GifViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayVideo()V
    .locals 2

    .prologue
    .line 251
    const-string v0, "Kate.GifViewActivity"

    const-string v1, "playing video"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const v0, 0x7f0e01ba

    invoke-virtual {p0, v0}, Lcom/perm/kate/GifViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 253
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/GifViewActivity$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/GifViewActivity$5;-><init>(Lcom/perm/kate/GifViewActivity;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 270
    return-void
.end method

.method private downloadOrDisplay()V
    .locals 3

    .prologue
    .line 149
    const-string v0, "Kate.GifViewActivity"

    const-string v1, "downloadOrDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "Kate.GifViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUrl()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    .line 154
    const-string v0, "Kate.GifViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gif_file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/GifViewActivity;->display(Z)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->loadGifByUrl()V

    goto :goto_0
.end method

.method private downloadOrDisplayOnUiThread()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/perm/kate/GifViewActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/GifViewActivity$2;-><init>(Lcom/perm/kate/GifViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GifViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    .line 166
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    goto :goto_0
.end method

.method private getVideoInThread(Ljava/lang/String;)V
    .locals 2
    .param p1, "doc"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, "Kate.GifViewActivity"

    const-string v1, "getVideoInThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lcom/perm/kate/GifViewActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GifViewActivity$1;-><init>(Lcom/perm/kate/GifViewActivity;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lcom/perm/kate/GifViewActivity$1;->start()V

    .line 135
    return-void
.end method

.method static isGifOptimizationEnabled()Z
    .locals 3

    .prologue
    .line 490
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

    .prologue
    .line 170
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 173
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GifViewActivity;->showProgressBar(Z)V

    .line 174
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/GifViewActivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/GifViewActivity$3;-><init>(Lcom/perm/kate/GifViewActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    return-void
.end method

.method public static sendToFriend(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 4
    .param p0, "owner_id"    # J
    .param p2, "document_id"    # J
    .param p4, "access_key"    # Ljava/lang/String;
    .param p5, "activity"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "doc_attachment":Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 453
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v1, p5, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 454
    const-string v2, "com.perm.kate.only_members"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const-string v2, "com.perm.kate.new_message"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    const-string v2, "com.perm.kate.doc_attachment"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    invoke-virtual {p5, v1}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 458
    return-void
.end method

.method public static startGifActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "document_id"    # J
    .param p5, "owner_id"    # J
    .param p7, "access_key"    # Ljava/lang/String;

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/GifViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v0, "gif_intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v1, "com.perm.kate.url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v1, "document_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 392
    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 393
    const-string v1, "access_key"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 395
    return-void
.end method

.method private startVideoPlayback(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    .line 281
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 282
    const-string v1, "Kate.GifViewActivity"

    const-string v2, "MediaPlayer create failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 287
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "mp failed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 291
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    .line 292
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->downloadOrDisplay()V

    .line 307
    :goto_0
    return-void

    .line 295
    :cond_1
    const-string v1, "Kate.GifViewActivity"

    const-string v2, "MediaPlayer created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 300
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/perm/kate/GifViewActivity;->adjustSize(Landroid/media/MediaPlayer;)V

    .line 301
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 410
    const v0, 0x7f070203

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 411
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 412
    const v0, 0x7f070023

    invoke-interface {p1, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 413
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0701df

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 414
    return v5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    :try_start_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v2, 0x7f030081

    invoke-virtual {p0, v2}, Lcom/perm/kate/GifViewActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->setupMenuButton()V

    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_title":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 55
    iput-object v0, p0, Lcom/perm/kate/GifViewActivity;->title:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/perm/kate/GifViewActivity;->setHeaderTitle(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->finish()V

    .line 102
    .end local v0    # "_title":Ljava/lang/String;
    :goto_0
    return-void

    .line 62
    .restart local v0    # "_title":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "document_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GifViewActivity;->document_id:Ljava/lang/Long;

    .line 63
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "owner_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    .line 64
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "access_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GifViewActivity;->access_key:Ljava/lang/String;

    .line 65
    const v2, 0x7f0e01b9

    invoke-virtual {p0, v2}, Lcom/perm/kate/GifViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f0e01b8

    invoke-virtual {p0, v2}, Lcom/perm/kate/GifViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    .line 67
    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-static {}, Lcom/perm/kate/GifViewActivity;->isGifOptimizationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_3

    .line 71
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    .line 73
    :cond_3
    iget-boolean v2, p0, Lcom/perm/kate/GifViewActivity;->force_gif:Z

    if-eqz v2, :cond_4

    .line 74
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->downloadOrDisplay()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v0    # "_title":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "_title":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->access_key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->access_key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    .line 84
    :cond_5
    sget-object v2, Lcom/perm/kate/GifViewActivity;->cache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 85
    sget-object v2, Lcom/perm/kate/GifViewActivity;->cache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/perm/kate/GifViewActivity;->video:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/perm/kate/GifViewActivity;->downloadOrDisplay()V

    goto/16 :goto_0

    .line 97
    :cond_6
    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->doc:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/perm/kate/GifViewActivity;->getVideoInThread(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 400
    invoke-virtual {p0, p1}, Lcom/perm/kate/GifViewActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 419
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->url:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    .line 422
    const/4 v0, 0x1

    goto :goto_1

    .line 424
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GifViewActivity;->access_key:Ljava/lang/String;

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/GifViewActivity;->addToMyDocs(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto :goto_0

    .line 427
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/GifViewActivity;->document_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GifViewActivity;->access_key:Ljava/lang/String;

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/GifViewActivity;->sendToFriend(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 462
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onPause()V

    .line 464
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    check-cast v0, Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifImageView;->clear()V

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/GifViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iput-object v1, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    .line 469
    iput-object v1, p0, Lcom/perm/kate/GifViewActivity;->gif_file:Ljava/io/File;

    .line 470
    iput-object v1, p0, Lcom/perm/kate/GifViewActivity;->tv_gif:Landroid/widget/TextView;

    .line 471
    iput-object v1, p0, Lcom/perm/kate/GifViewActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 472
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/perm/kate/GifViewActivity;->mp:Landroid/media/MediaPlayer;

    .line 474
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 477
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onStart()V

    .line 478
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    check-cast v0, Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifImageView;->startAnimation()V

    .line 480
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 484
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onStop()V

    .line 485
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity;->gifView:Landroid/view/View;

    check-cast v0, Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifImageView;->stopAnimation()V

    .line 487
    :cond_0
    return-void
.end method
