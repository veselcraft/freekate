.class public Lcom/perm/kate/VideoViewActivity;
.super Landroid/app/Activity;
.source "VideoViewActivity.java"


# instance fields
.field private mVideoView:Landroid/widget/VideoView;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/perm/kate/VideoViewActivity;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    .line 18
    const v0, 0x7f03011c

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoViewActivity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcom/perm/kate/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/VideoViewActivity;->path:Ljava/lang/String;

    .line 20
    const v0, 0x7f0e01ba

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/perm/kate/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    .line 27
    iget-object v0, p0, Lcom/perm/kate/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/perm/kate/VideoViewActivity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/perm/kate/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 29
    iget-object v0, p0, Lcom/perm/kate/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 30
    iget-object v0, p0, Lcom/perm/kate/VideoViewActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 31
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 36
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->increment()V

    .line 37
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 42
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->decrement()V

    .line 43
    return-void
.end method
