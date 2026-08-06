.class final Lcom/perm/utils/AudioBroadcast$1;
.super Ljava/lang/Thread;
.source "AudioBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/AudioBroadcast;->broadcastInThread(Lcom/perm/kate/api/Audio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$audio:Lcom/perm/kate/api/Audio;


# direct methods
.method constructor <init>(Lcom/perm/kate/api/Audio;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/perm/utils/AudioBroadcast$1;->val$audio:Lcom/perm/kate/api/Audio;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->access$000()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "target_ids":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/utils/AudioBroadcast$1;->val$audio:Lcom/perm/kate/api/Audio;

    invoke-static {v1, v0}, Lcom/perm/utils/AudioBroadcast;->access$100(Lcom/perm/kate/api/Audio;Ljava/lang/String;)V

    .line 108
    return-void
.end method
