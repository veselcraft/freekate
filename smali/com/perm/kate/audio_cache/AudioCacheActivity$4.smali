.class Lcom/perm/kate/audio_cache/AudioCacheActivity$4;
.super Lcom/perm/kate/Player$PlayerCallback;
.source "AudioCacheActivity.java"


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
    .line 131
    iput-object p1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$4;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$4;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$100(Lcom/perm/kate/audio_cache/AudioCacheActivity;)Lcom/perm/kate/AudioListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/AudioListAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method

.method public onNextEpisode()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$4;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$100(Lcom/perm/kate/audio_cache/AudioCacheActivity;)Lcom/perm/kate/AudioListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/AudioListAdapter;->notifyDataSetChanged()V

    .line 153
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onStartBuffering()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$4;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$100(Lcom/perm/kate/audio_cache/AudioCacheActivity;)Lcom/perm/kate/AudioListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/AudioListAdapter;->notifyDataSetChanged()V

    .line 158
    return-void
.end method
