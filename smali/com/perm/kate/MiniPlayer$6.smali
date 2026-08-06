.class Lcom/perm/kate/MiniPlayer$6;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 248
    iput-object p1, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 253
    :try_start_0
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v3}, Lcom/perm/kate/MiniPlayer;->access$500(Lcom/perm/kate/MiniPlayer;)V

    .line 276
    :goto_0
    return-void

    .line 255
    :cond_0
    :try_start_1
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v3, v3, Lcom/perm/kate/Player;->state:I

    if-eqz v3, :cond_1

    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v3, v3, Lcom/perm/kate/Player;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 274
    iget-object v3, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v3}, Lcom/perm/kate/MiniPlayer;->access$500(Lcom/perm/kate/MiniPlayer;)V

    goto :goto_0

    .line 257
    :cond_1
    :try_start_2
    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    .line 274
    iget-object v3, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v3}, Lcom/perm/kate/MiniPlayer;->access$500(Lcom/perm/kate/MiniPlayer;)V

    goto :goto_0

    .line 260
    :cond_2
    :try_start_3
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v3}, Lcom/perm/kate/Player;->getDuration()I

    move-result v1

    .line 261
    .local v1, "dur":I
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v3}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v2

    .line 262
    .local v2, "pos":I
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v3}, Lcom/perm/kate/Player;->getBufferPercents()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 264
    .local v0, "buffer":I
    if-nez v1, :cond_3

    .line 274
    iget-object v3, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v3}, Lcom/perm/kate/MiniPlayer;->access$500(Lcom/perm/kate/MiniPlayer;)V

    goto :goto_0

    .line 266
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    new-instance v4, Lcom/perm/kate/MiniPlayer$6$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/perm/kate/MiniPlayer$6$1;-><init>(Lcom/perm/kate/MiniPlayer$6;III)V

    invoke-virtual {v3, v4}, Lcom/perm/kate/MiniPlayer;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    iget-object v3, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v3}, Lcom/perm/kate/MiniPlayer;->access$500(Lcom/perm/kate/MiniPlayer;)V

    goto :goto_0

    .end local v0    # "buffer":I
    .end local v1    # "dur":I
    .end local v2    # "pos":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v4}, Lcom/perm/kate/MiniPlayer;->access$500(Lcom/perm/kate/MiniPlayer;)V

    throw v3
.end method
