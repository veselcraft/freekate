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
    .param p1, "this$0"    # Lcom/perm/kate/MiniPlayer;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$200(Lcom/perm/kate/MiniPlayer;)V

    .line 182
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$200(Lcom/perm/kate/MiniPlayer;)V

    .line 187
    return-void
.end method

.method public onNextEpisode()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    iget-object v1, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/MiniPlayer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/MiniPlayer;->access$300(Lcom/perm/kate/MiniPlayer;Landroid/view/View;)V

    .line 196
    return-void
.end method

.method public onPrepared()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$200(Lcom/perm/kate/MiniPlayer;)V

    .line 177
    return-void
.end method

.method public onStartBuffering()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onStateChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    iget-boolean v0, v0, Lcom/perm/kate/MiniPlayer;->is_active:Z

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-virtual {v0, v2}, Lcom/perm/kate/MiniPlayer;->setVisibility(I)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    iget-object v1, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-virtual {v1, v2}, Lcom/perm/kate/MiniPlayer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/MiniPlayer;->access$300(Lcom/perm/kate/MiniPlayer;Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$4;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$200(Lcom/perm/kate/MiniPlayer;)V

    .line 205
    return-void
.end method
