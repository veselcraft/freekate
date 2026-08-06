.class final Lcom/my/target/core/ui/views/video/VideoTextureView$1;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/video/VideoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/video/VideoTextureView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/video/VideoTextureView;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/16 v2, 0x32

    .line 155
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;I)I

    .line 158
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->b(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/graphics/Bitmap;

    .line 160
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->c(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 162
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->d(Lcom/my/target/core/ui/views/video/VideoTextureView;)Lcom/my/target/core/ui/views/video/VideoTextureView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "VideoTextureView: lag common"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->e(Lcom/my/target/core/ui/views/video/VideoTextureView;)V

    .line 191
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Lcom/my/target/core/ui/views/video/VideoTextureView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->f(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    move-result v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->g(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    .line 170
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->b(Lcom/my/target/core/ui/views/video/VideoTextureView;I)I

    .line 171
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->c(Lcom/my/target/core/ui/views/video/VideoTextureView;I)I

    .line 172
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->d(Lcom/my/target/core/ui/views/video/VideoTextureView;)Lcom/my/target/core/ui/views/video/VideoTextureView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->d(Lcom/my/target/core/ui/views/video/VideoTextureView;)Lcom/my/target/core/ui/views/video/VideoTextureView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->f(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    move-result v1

    invoke-static {v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(I)F

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    .line 174
    invoke-static {v2}, Lcom/my/target/core/ui/views/video/VideoTextureView;->h(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    move-result v2

    invoke-static {v2}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(I)F

    move-result v2

    .line 173
    invoke-interface {v0, v1, v2}, Lcom/my/target/core/ui/views/video/VideoTextureView$a;->a(FF)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->i(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->j(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->c(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 183
    const-string v0, "VideoTextureView: lag on preparing"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->e(Lcom/my/target/core/ui/views/video/VideoTextureView;)V

    goto/16 :goto_0

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$1;->a:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->i(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    goto/16 :goto_0
.end method
