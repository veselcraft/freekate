.class Lcom/perm/kate/WallFragment$18;
.super Ljava/lang/Thread;
.source "WallFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;

.field final synthetic val$archive:Z

.field final synthetic val$post_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;JZ)V
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    iput-wide p2, p0, Lcom/perm/kate/WallFragment$18;->val$post_id:J

    iput-boolean p4, p0, Lcom/perm/kate/WallFragment$18;->val$archive:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 936
    new-instance v0, Lcom/perm/kate/WallFragment$18$1;

    iget-object v1, p0, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/WallFragment$18$1;-><init>(Lcom/perm/kate/WallFragment$18;Landroid/app/Activity;)V

    .line 948
    iget-object v1, p0, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 949
    iget-boolean v1, p0, Lcom/perm/kate/WallFragment$18;->val$archive:Z

    if-eqz v1, :cond_0

    .line 950
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/WallFragment$18;->val$post_id:J

    iget-object v4, p0, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/perm/kate/session/Session;->archiveWallPost(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 952
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/WallFragment$18;->val$post_id:J

    iget-object v4, p0, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/perm/kate/session/Session;->revealWallPost(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 953
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
