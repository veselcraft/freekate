.class Lcom/perm/kate/AudioFragment$10;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 456
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 457
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v5, v0, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v7, v0, Lcom/perm/kate/AudioFragment;->access_key:Ljava/lang/String;

    iget-object v8, v0, Lcom/perm/kate/AudioFragment;->addPlaylistCallback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->audioFollowPlaylist(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 458
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$10;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
