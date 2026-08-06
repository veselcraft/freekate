.class Lcom/perm/kate/audio_cache/AudioCacheActivity$2$1;
.super Ljava/lang/Object;
.source "AudioCacheActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/audio_cache/AudioCacheActivity$2;->onProgressChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/audio_cache/AudioCacheActivity$2;


# direct methods
.method constructor <init>(Lcom/perm/kate/audio_cache/AudioCacheActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/audio_cache/AudioCacheActivity$2;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$2$1;->this$1:Lcom/perm/kate/audio_cache/AudioCacheActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    .local v0, "now":J
    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$2$1;->this$1:Lcom/perm/kate/audio_cache/AudioCacheActivity$2;

    iget-object v2, v2, Lcom/perm/kate/audio_cache/AudioCacheActivity$2;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    iget-wide v2, v2, Lcom/perm/kate/audio_cache/AudioCacheActivity;->last_notify:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$2$1;->this$1:Lcom/perm/kate/audio_cache/AudioCacheActivity$2;

    iget-object v2, v2, Lcom/perm/kate/audio_cache/AudioCacheActivity$2;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-static {v2}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$100(Lcom/perm/kate/audio_cache/AudioCacheActivity;)Lcom/perm/kate/AudioListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/AudioListAdapter;->notifyDataSetChanged()V

    .line 102
    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$2$1;->this$1:Lcom/perm/kate/audio_cache/AudioCacheActivity$2;

    iget-object v2, v2, Lcom/perm/kate/audio_cache/AudioCacheActivity$2;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    iput-wide v0, v2, Lcom/perm/kate/audio_cache/AudioCacheActivity;->last_notify:J

    .line 104
    :cond_0
    return-void
.end method
