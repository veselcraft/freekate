.class final Lcom/my/target/core/ui/views/video/VideoTextureView$2;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/video/VideoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/my/target/core/ui/views/video/VideoTextureView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/video/VideoTextureView;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    iput-object p2, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: Surface available from callback, playing  force state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    .line 285
    invoke-static {v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->j(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->a:Landroid/net/Uri;

    .line 287
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->j(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 311
    :pswitch_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->l(Lcom/my/target/core/ui/views/video/VideoTextureView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v2, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->a:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;Landroid/view/Surface;Landroid/net/Uri;)V

    .line 322
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 293
    :pswitch_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->g()V

    .line 297
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 298
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->j(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->k(Lcom/my/target/core/ui/views/video/VideoTextureView;)V

    .line 301
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 302
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->d(Lcom/my/target/core/ui/views/video/VideoTextureView;)Lcom/my/target/core/ui/views/video/VideoTextureView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->d(Lcom/my/target/core/ui/views/video/VideoTextureView;)Lcom/my/target/core/ui/views/video/VideoTextureView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView$a;->f()V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->h()V

    goto :goto_1

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->i()V

    .line 316
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->d(Lcom/my/target/core/ui/views/video/VideoTextureView;)Lcom/my/target/core/ui/views/video/VideoTextureView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->d(Lcom/my/target/core/ui/views/video/VideoTextureView;)Lcom/my/target/core/ui/views/video/VideoTextureView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView$a;->h()V

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoTextureView: Surface destroyed, state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->j(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 338
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->j(Lcom/my/target/core/ui/views/video/VideoTextureView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 358
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->n(Lcom/my/target/core/ui/views/video/VideoTextureView;)V

    .line 360
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "Release MediaPlayer"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 364
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->m(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;I)I

    .line 372
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 341
    :pswitch_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 342
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;I)I

    .line 343
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->d(Lcom/my/target/core/ui/views/video/VideoTextureView;)Lcom/my/target/core/ui/views/video/VideoTextureView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->d(Lcom/my/target/core/ui/views/video/VideoTextureView;)Lcom/my/target/core/ui/views/video/VideoTextureView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView$a;->h()V

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 351
    const-string v0, "Release MediaPlayer"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 353
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->m(Lcom/my/target/core/ui/views/video/VideoTextureView;)Landroid/media/MediaPlayer;

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoTextureView$2;->b:Lcom/my/target/core/ui/views/video/VideoTextureView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;I)I

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method
