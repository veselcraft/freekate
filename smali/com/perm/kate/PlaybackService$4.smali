.class Lcom/perm/kate/PlaybackService$4;
.super Ljava/lang/Object;
.source "PlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlaybackService;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlaybackService;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$4;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Kate.PlaybackService"

    const-string v1, "message received"

    .line 1026
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1030
    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->trackAudioPlay(Ljava/lang/Long;)V

    .line 1031
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$4;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    :goto_0
    return-void
.end method
