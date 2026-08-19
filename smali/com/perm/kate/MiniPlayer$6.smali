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

    .line 253
    iput-object p1, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 258
    :try_start_0
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$500(Lcom/perm/kate/MiniPlayer;)V

    return-void

    .line 260
    :cond_0
    :try_start_1
    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_2

    goto :goto_0

    .line 265
    :cond_2
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v0}, Lcom/perm/kate/Player;->getDuration()I

    move-result v0

    .line 266
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v1}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v1

    .line 267
    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v2}, Lcom/perm/kate/Player;->getBufferPercents()I

    move-result v2

    if-nez v0, :cond_3

    goto :goto_0

    .line 271
    :cond_3
    iget-object v3, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    new-instance v4, Lcom/perm/kate/MiniPlayer$6$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/perm/kate/MiniPlayer$6$1;-><init>(Lcom/perm/kate/MiniPlayer$6;III)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$500(Lcom/perm/kate/MiniPlayer;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v1}, Lcom/perm/kate/MiniPlayer;->access$500(Lcom/perm/kate/MiniPlayer;)V

    .line 280
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
