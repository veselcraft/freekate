.class Lcom/perm/kate/FaveGroupsFragment$7$1;
.super Ljava/lang/Thread;
.source "FaveGroupsFragment.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/FaveGroupsFragment$7;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveGroupsFragment$7;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$7$1;->this$1:Lcom/perm/kate/FaveGroupsFragment$7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 186
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FaveGroupsFragment$7$1;->this$1:Lcom/perm/kate/FaveGroupsFragment$7;

    iget-wide v1, v1, Lcom/perm/kate/FaveGroupsFragment$7;->val$group_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FaveGroupsFragment$7$1;->this$1:Lcom/perm/kate/FaveGroupsFragment$7;

    iget-object v3, v2, Lcom/perm/kate/FaveGroupsFragment$7;->val$fave_remove_user_callback:Lcom/perm/kate/session/Callback;

    iget-object v2, v2, Lcom/perm/kate/FaveGroupsFragment$7;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/perm/kate/session/Session;->faveRemovePage(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
