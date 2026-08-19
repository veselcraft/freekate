.class Lcom/perm/kate/GroupsFragment$15;
.super Ljava/lang/Thread;
.source "GroupsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$15;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 523
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$15;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v0}, Lcom/perm/kate/GroupsFragment;->access$000(Lcom/perm/kate/GroupsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "groups,publics,events"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 524
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$15;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v0}, Lcom/perm/kate/GroupsFragment;->access$100(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$15;->this$0:Lcom/perm/kate/GroupsFragment;

    iget v0, v0, Lcom/perm/kate/GroupsFragment;->page_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$15;->this$0:Lcom/perm/kate/GroupsFragment;

    iget v0, v0, Lcom/perm/kate/GroupsFragment;->offset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$15;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v7, v0, Lcom/perm/kate/GroupsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const-string v3, "start_date"

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getUserGroups(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
