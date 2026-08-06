.class Lcom/perm/kate/audio_cache/AudioCacheActivity$2$2;
.super Ljava/lang/Object;
.source "AudioCacheActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/audio_cache/AudioCacheActivity$2;->onListChanged()V
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
    .line 110
    iput-object p1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$2$2;->this$1:Lcom/perm/kate/audio_cache/AudioCacheActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$2$2;->this$1:Lcom/perm/kate/audio_cache/AudioCacheActivity$2;

    iget-object v0, v0, Lcom/perm/kate/audio_cache/AudioCacheActivity$2;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$200(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V

    .line 114
    return-void
.end method
