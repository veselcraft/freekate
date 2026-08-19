.class Lcom/perm/kate/PlayerActivity$8;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$8;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v0, 0x3e8

    .line 397
    :try_start_0
    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 421
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/PlayerActivity$8;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v3, v2, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v2, v2, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 399
    :cond_0
    :try_start_1
    iget v2, v2, Lcom/perm/kate/Player;->state:I

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 401
    :cond_1
    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v2, :cond_2

    goto :goto_0

    .line 404
    :cond_2
    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v2}, Lcom/perm/kate/Player;->getDuration()I

    move-result v2

    .line 405
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v3}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v3

    .line 406
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v4}, Lcom/perm/kate/Player;->getBufferPercents()I

    move-result v4

    if-nez v2, :cond_3

    goto :goto_0

    .line 410
    :cond_3
    iget-object v5, p0, Lcom/perm/kate/PlayerActivity$8;->this$0:Lcom/perm/kate/PlayerActivity;

    iget v5, v5, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v7, 0x5

    if-le v5, v7, :cond_4

    goto :goto_0

    .line 412
    :cond_4
    iget-object v5, p0, Lcom/perm/kate/PlayerActivity$8;->this$0:Lcom/perm/kate/PlayerActivity;

    iput v6, v5, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    .line 413
    new-instance v6, Lcom/perm/kate/PlayerActivity$8$1;

    invoke-direct {v6, p0, v2, v3, v4}, Lcom/perm/kate/PlayerActivity$8$1;-><init>(Lcom/perm/kate/PlayerActivity$8;III)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    iget-object v2, p0, Lcom/perm/kate/PlayerActivity$8;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v3, v2, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v2, v2, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/perm/kate/PlayerActivity$8;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v4, v3, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v3, v3, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v4, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method
