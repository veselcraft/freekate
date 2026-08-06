.class Lcom/perm/kate/audio_cache/AudioCacheActivity$2;
.super Ljava/lang/Object;
.source "AudioCacheActivity.java"

# interfaces
.implements Lcom/perm/kate/audio_cache/AudioCacheService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/audio_cache/AudioCacheActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/audio_cache/AudioCacheActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$2;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListChanged()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$2;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    new-instance v1, Lcom/perm/kate/audio_cache/AudioCacheActivity$2$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity$2$2;-><init>(Lcom/perm/kate/audio_cache/AudioCacheActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public onProgressChanged()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$2;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    new-instance v1, Lcom/perm/kate/audio_cache/AudioCacheActivity$2$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity$2$1;-><init>(Lcom/perm/kate/audio_cache/AudioCacheActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method
