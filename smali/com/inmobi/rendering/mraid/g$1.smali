.class Lcom/inmobi/rendering/mraid/g$1;
.super Ljava/lang/Object;
.source "MediaRenderView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/mraid/g;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/mraid/g;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/mraid/g;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/g$1;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    .prologue
    .line 210
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/mraid/g;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>> onVideoSizeChanged"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$1;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/g;->b(Lcom/inmobi/rendering/mraid/g;)Lcom/inmobi/rendering/mraid/g$a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$1;->a:Lcom/inmobi/rendering/mraid/g;

    iget-object v0, v0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-boolean v0, v0, Lcom/inmobi/rendering/mraid/f;->e:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$1;->a:Lcom/inmobi/rendering/mraid/g;

    new-instance v1, Lcom/inmobi/rendering/mraid/g$a;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/g$1;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v2}, Lcom/inmobi/rendering/mraid/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inmobi/rendering/mraid/g$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(Lcom/inmobi/rendering/mraid/g;Lcom/inmobi/rendering/mraid/g$a;)Lcom/inmobi/rendering/mraid/g$a;

    .line 213
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$1;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/g;->b(Lcom/inmobi/rendering/mraid/g;)Lcom/inmobi/rendering/mraid/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g$1;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g$a;->setAnchorView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$1;->a:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g$1;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-static {v1}, Lcom/inmobi/rendering/mraid/g;->b(Lcom/inmobi/rendering/mraid/g;)Lcom/inmobi/rendering/mraid/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g;->setMediaController(Landroid/widget/MediaController;)V

    .line 215
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$1;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->requestLayout()V

    .line 216
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$1;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->requestFocus()Z

    .line 218
    :cond_0
    return-void
.end method
