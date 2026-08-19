.class Lcom/perm/kate/AudioFragment$25;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$a:Lcom/perm/kate/api/Audio;

.field final synthetic val$after_audio_id:Ljava/lang/Long;

.field final synthetic val$before_audio_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$25;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$25;->val$a:Lcom/perm/kate/api/Audio;

    iput-object p3, p0, Lcom/perm/kate/AudioFragment$25;->val$before_audio_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/AudioFragment$25;->val$after_audio_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 966
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$25;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v0, v0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    move-object v8, v0

    .line 967
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$25;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v0, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-object v6, p0, Lcom/perm/kate/AudioFragment$25;->val$before_audio_id:Ljava/lang/Long;

    iget-object v7, p0, Lcom/perm/kate/AudioFragment$25;->val$after_audio_id:Ljava/lang/Long;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$25;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$3200(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$25;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/session/Session;->audioReorder(JJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
