.class Lcom/perm/kate/audio_cache/AudioCacheActivity$5;
.super Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;
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
    .line 161
    iput-object p1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$5;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-direct {p0}, Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public audioDeletedFromCache(J)V
    .locals 1
    .param p1, "audio_id"    # J

    .prologue
    .line 164
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$5;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$200(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V

    .line 165
    return-void
.end method
