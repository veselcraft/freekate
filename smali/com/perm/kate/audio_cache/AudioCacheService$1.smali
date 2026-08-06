.class Lcom/perm/kate/audio_cache/AudioCacheService$1;
.super Ljava/lang/Thread;
.source "AudioCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/audio_cache/AudioCacheService;->startDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/audio_cache/AudioCacheService;


# direct methods
.method constructor <init>(Lcom/perm/kate/audio_cache/AudioCacheService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/audio_cache/AudioCacheService;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/perm/kate/audio_cache/AudioCacheService$1;->this$0:Lcom/perm/kate/audio_cache/AudioCacheService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheService$1;->this$0:Lcom/perm/kate/audio_cache/AudioCacheService;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCacheService;->access$000(Lcom/perm/kate/audio_cache/AudioCacheService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheService$1;->this$0:Lcom/perm/kate/audio_cache/AudioCacheService;

    invoke-static {v0}, Lcom/perm/kate/notifications/AudioCacheNotification;->cancel(Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheService$1;->this$0:Lcom/perm/kate/audio_cache/AudioCacheService;

    invoke-virtual {v0}, Lcom/perm/kate/audio_cache/AudioCacheService;->stopSelf()V

    .line 68
    invoke-static {v2}, Lcom/perm/kate/audio_cache/AudioCacheService;->access$102(Z)Z

    .line 70
    return-void

    .line 66
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheService$1;->this$0:Lcom/perm/kate/audio_cache/AudioCacheService;

    invoke-static {v1}, Lcom/perm/kate/notifications/AudioCacheNotification;->cancel(Landroid/content/Context;)V

    .line 67
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheService$1;->this$0:Lcom/perm/kate/audio_cache/AudioCacheService;

    invoke-virtual {v1}, Lcom/perm/kate/audio_cache/AudioCacheService;->stopSelf()V

    .line 68
    invoke-static {v2}, Lcom/perm/kate/audio_cache/AudioCacheService;->access$102(Z)Z

    throw v0
.end method
