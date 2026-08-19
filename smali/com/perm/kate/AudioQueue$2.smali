.class Lcom/perm/kate/AudioQueue$2;
.super Ljava/lang/Thread;
.source "AudioQueue.java"


# instance fields
.field final synthetic val$audio_id:Ljava/lang/String;

.field final synthetic val$device_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioQueue;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p2, p0, Lcom/perm/kate/AudioQueue$2;->val$device_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/AudioQueue$2;->val$audio_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 301
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioQueue$2;->val$device_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/AudioQueue$2;->val$audio_id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/perm/kate/session/Session;->audioSendStartEvent(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
