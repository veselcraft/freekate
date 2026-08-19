.class public Lcom/perm/kate/VideoViewActivity;
.super Landroid/app/Activity;
.source "VideoViewActivity.java"


# instance fields
.field private mVideoView:Landroid/widget/VideoView;

.field private path:Ljava/lang/String;

.field proxy:Lorg/npr/android/news/StreamProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/perm/kate/VideoViewActivity;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    const p1, 0x7f0c013c

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "video_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/VideoViewActivity;->path:Ljava/lang/String;

    const p1, 0x7f090314

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/perm/kate/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    .line 27
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/VideoViewActivity;->path:Ljava/lang/String;

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    new-instance p1, Lorg/npr/android/news/StreamProxy;

    invoke-direct {p1}, Lorg/npr/android/news/StreamProxy;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/VideoViewActivity;->proxy:Lorg/npr/android/news/StreamProxy;

    .line 29
    invoke-virtual {p1}, Lorg/npr/android/news/StreamProxy;->init()V

    .line 30
    iget-object p1, p0, Lcom/perm/kate/VideoViewActivity;->proxy:Lorg/npr/android/news/StreamProxy;

    invoke-virtual {p1}, Lorg/npr/android/news/StreamProxy;->start()V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/perm/kate/VideoViewActivity;->proxy:Lorg/npr/android/news/StreamProxy;

    invoke-virtual {v1}, Lorg/npr/android/news/StreamProxy;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/perm/kate/VideoViewActivity;->path:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "http://127.0.0.1:%d/%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/perm/kate/VideoViewActivity;->path:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/perm/kate/VideoViewActivity;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/perm/kate/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 43
    iget-object p1, p0, Lcom/perm/kate/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 44
    iget-object p1, p0, Lcom/perm/kate/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 50
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->increment()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 56
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->decrement()V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/perm/kate/VideoViewActivity;->proxy:Lorg/npr/android/news/StreamProxy;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lorg/npr/android/news/StreamProxy;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/perm/kate/VideoViewActivity;->proxy:Lorg/npr/android/news/StreamProxy;

    :cond_1
    return-void
.end method
