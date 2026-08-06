.class Lcom/perm/kate/video_cache/VideoCacheService$1;
.super Ljava/lang/Thread;
.source "VideoCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/video_cache/VideoCacheService;->startDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/video_cache/VideoCacheService;


# direct methods
.method constructor <init>(Lcom/perm/kate/video_cache/VideoCacheService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/video_cache/VideoCacheService;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCacheService;->access$000(Lcom/perm/kate/video_cache/VideoCacheService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-static {v0}, Lcom/perm/kate/notifications/VideoCacheNotification;->cancel(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-virtual {v0}, Lcom/perm/kate/video_cache/VideoCacheService;->stopSelf()V

    .line 69
    invoke-static {v2}, Lcom/perm/kate/video_cache/VideoCacheService;->access$102(Z)Z

    .line 71
    return-void

    .line 67
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-static {v1}, Lcom/perm/kate/notifications/VideoCacheNotification;->cancel(Landroid/content/Context;)V

    .line 68
    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-virtual {v1}, Lcom/perm/kate/video_cache/VideoCacheService;->stopSelf()V

    .line 69
    invoke-static {v2}, Lcom/perm/kate/video_cache/VideoCacheService;->access$102(Z)Z

    throw v0
.end method
