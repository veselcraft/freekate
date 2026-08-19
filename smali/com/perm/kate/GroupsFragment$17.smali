.class Lcom/perm/kate/GroupsFragment$17;
.super Ljava/lang/Thread;
.source "GroupsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;

.field final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$17;->this$0:Lcom/perm/kate/GroupsFragment;

    iput-object p2, p0, Lcom/perm/kate/GroupsFragment$17;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 585
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$17;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 586
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/GroupsFragment$17;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v4}, Lcom/perm/kate/GroupsFragment;->access$100(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/perm/kate/db/DataHelper;->deleteUserGroup(JJ)Z

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$17;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v0}, Lcom/perm/kate/GroupsFragment;->access$400(Lcom/perm/kate/GroupsFragment;)V

    .line 588
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$17;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 589
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment$17;->val$ids:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment$17;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->deleteGroups(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 591
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$17;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
