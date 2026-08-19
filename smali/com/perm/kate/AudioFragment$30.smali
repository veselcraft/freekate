.class Lcom/perm/kate/AudioFragment$30;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 1158
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$30;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$30;->val$_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1161
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$30;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/AudioFragment$30;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v4, v3, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v6, p0, Lcom/perm/kate/AudioFragment$30;->val$_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    move-wide v3, v4

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getPlaylistById(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
