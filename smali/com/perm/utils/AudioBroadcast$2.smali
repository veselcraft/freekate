.class Lcom/perm/utils/AudioBroadcast$2;
.super Ljava/lang/Thread;
.source "AudioBroadcast.java"


# instance fields
.field final synthetic val$target_ids:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/perm/utils/AudioBroadcast$2;->val$target_ids:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/perm/utils/AudioBroadcast$2;->val$target_ids:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v1, p0, Lcom/perm/utils/AudioBroadcast$2;->val$target_ids:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perm/utils/AudioBroadcast;->access$100(Lcom/perm/kate/api/Audio;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
