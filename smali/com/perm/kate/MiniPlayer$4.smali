.class Lcom/perm/kate/MiniPlayer$4;
.super Lcom/perm/kate/Player$PlayerCallback;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/perm/kate/MiniPlayer;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$200(Lcom/perm/kate/MiniPlayer;)V

    return-void
.end method

.method public onError()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$200(Lcom/perm/kate/MiniPlayer;)V

    return-void
.end method

.method public onNextEpisode()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/MiniPlayer;->access$300(Lcom/perm/kate/MiniPlayer;Landroid/view/View;)V

    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$200(Lcom/perm/kate/MiniPlayer;)V

    return-void
.end method

.method public onStartBuffering()V
    .locals 0

    return-void
.end method

.method public onStateChanged()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    iget-boolean v1, v0, Lcom/perm/kate/MiniPlayer;->is_active:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/MiniPlayer;->access$300(Lcom/perm/kate/MiniPlayer;Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$200(Lcom/perm/kate/MiniPlayer;)V

    return-void
.end method
