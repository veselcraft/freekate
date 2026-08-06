.class Lcom/perm/kate/GroupsFragment$20;
.super Ljava/lang/Thread;
.source "GroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupsFragment;->deleteSelectedGroups()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;

.field final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$20;->this$0:Lcom/perm/kate/GroupsFragment;

    iput-object p2, p0, Lcom/perm/kate/GroupsFragment$20;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 592
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$20;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 593
    .local v0, "group_id":J
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/GroupsFragment$20;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v4}, Lcom/perm/kate/GroupsFragment;->access$300(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/perm/kate/db/DataHelper;->deleteUserGroup(JJ)Z

    goto :goto_0

    .line 594
    .end local v0    # "group_id":J
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$20;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v2}, Lcom/perm/kate/GroupsFragment;->access$600(Lcom/perm/kate/GroupsFragment;)V

    .line 595
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$20;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/perm/kate/GroupsFragment;->showProgressBar(Z)V

    .line 596
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment$20;->val$ids:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/GroupsFragment$20;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v5}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/session/Session;->deleteGroups(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 598
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$20;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/GroupsFragment;->showProgressBar(Z)V

    .line 599
    return-void
.end method
