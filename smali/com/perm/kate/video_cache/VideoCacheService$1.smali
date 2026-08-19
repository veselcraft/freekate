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

    .line 57
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-static {v1}, Lcom/perm/kate/video_cache/VideoCacheService;->access$000(Lcom/perm/kate/video_cache/VideoCacheService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-static {v1}, Lcom/perm/kate/notifications/VideoCacheNotification;->cancel(Landroid/content/Context;)V

    .line 64
    iget-object v1, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    .line 65
    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCacheService;->access$102(Z)Z

    return-void

    :catchall_0
    move-exception v1

    .line 63
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-static {v2}, Lcom/perm/kate/notifications/VideoCacheNotification;->cancel(Landroid/content/Context;)V

    .line 64
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheService$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-virtual {v2}, Landroid/app/Service;->stopSelf()V

    .line 65
    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCacheService;->access$102(Z)Z

    .line 66
    throw v1
.end method
