.class Lcom/perm/kate/PlayerActivity$7;
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
    .param p1, "this$0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const-wide/16 v6, 0x3e8

    .line 370
    :try_start_0
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v3, v3, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v4, v4, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    :goto_0
    return-void

    .line 372
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

    .line 394
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v3, v3, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v4, v4, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 374
    :cond_1
    :try_start_2
    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    .line 394
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v3, v3, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v4, v4, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 377
    :cond_2
    :try_start_3
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v3}, Lcom/perm/kate/Player;->getDuration()I

    move-result v1

    .line 378
    .local v1, "dur":I
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v3}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v2

    .line 379
    .local v2, "pos":I
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v3}, Lcom/perm/kate/Player;->getBufferPercents()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 381
    .local v0, "buffer":I
    if-nez v1, :cond_3

    .line 394
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v3, v3, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v4, v4, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 383
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget v3, v3, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    if-eq v3, v5, :cond_4

    iget-object v3, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget v3, v3, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_4

    .line 394
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v3, v3, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v4, v4, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 385
    :cond_4
    :try_start_5
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    const/4 v4, -0x1

    iput v4, v3, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    .line 386
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    new-instance v4, Lcom/perm/kate/PlayerActivity$7$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/perm/kate/PlayerActivity$7$1;-><init>(Lcom/perm/kate/PlayerActivity$7;III)V

    invoke-virtual {v3, v4}, Lcom/perm/kate/PlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 394
    iget-object v3, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v3, v3, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v4, v4, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .end local v0    # "buffer":I
    .end local v1    # "dur":I
    .end local v2    # "pos":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v4, v4, Lcom/perm/kate/PlayerActivity;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v5, v5, Lcom/perm/kate/PlayerActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v3
.end method
