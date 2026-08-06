.class Lcom/perm/kate/AudioFragment$25;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioFragment;->audioReorder(Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$a:Lcom/perm/kate/api/Audio;

.field final synthetic val$after_audio_id:Ljava/lang/Long;

.field final synthetic val$before_audio_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$25;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$25;->val$a:Lcom/perm/kate/api/Audio;

    iput-object p3, p0, Lcom/perm/kate/AudioFragment$25;->val$before_audio_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/AudioFragment$25;->val$after_audio_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 831
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$25;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v0, Lcom/perm/kate/api/Audio;->aid:J

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$25;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-object v6, p0, Lcom/perm/kate/AudioFragment$25;->val$before_audio_id:Ljava/lang/Long;

    iget-object v7, p0, Lcom/perm/kate/AudioFragment$25;->val$after_audio_id:Ljava/lang/Long;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$25;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$2700(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$25;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/session/Session;->audioReorder(JJLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 832
    return-void
.end method
