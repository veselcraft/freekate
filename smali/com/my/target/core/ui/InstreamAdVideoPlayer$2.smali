.class final Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;
.super Ljava/lang/Object;
.source "InstreamAdVideoPlayer.java"

# interfaces
.implements Lcom/my/target/core/ui/views/video/VideoTextureView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/InstreamAdVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$000(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$100(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->e()I

    move-result v0

    .line 68
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    iget-object v1, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-virtual {v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$300(Lcom/my/target/core/ui/InstreamAdVideoPlayer;Landroid/content/Context;)V

    .line 75
    :cond_1
    cmpg-float v0, p1, v2

    if-gtz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    iget-object v1, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-virtual {v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$400(Lcom/my/target/core/ui/InstreamAdVideoPlayer;Landroid/content/Context;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;->onVolumeChanged(F)V

    .line 83
    :cond_3
    return-void
.end method

.method public final a(FF)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$202(Lcom/my/target/core/ui/InstreamAdVideoPlayer;Z)Z

    .line 130
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;->onAdVideoError(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$202(Lcom/my/target/core/ui/InstreamAdVideoPlayer;Z)Z

    .line 60
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$600(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;->onAdVideoStarted()V

    .line 91
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$602(Lcom/my/target/core/ui/InstreamAdVideoPlayer;Z)Z

    .line 93
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$200(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;->onAdVideoResumed()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$202(Lcom/my/target/core/ui/InstreamAdVideoPlayer;Z)Z

    .line 104
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$202(Lcom/my/target/core/ui/InstreamAdVideoPlayer;Z)Z

    .line 110
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;->onAdVideoPaused()V

    .line 112
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$202(Lcom/my/target/core/ui/InstreamAdVideoPlayer;Z)Z

    .line 138
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$2;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$500(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;->onAdVideoCompleted()V

    .line 140
    :cond_0
    return-void
.end method
