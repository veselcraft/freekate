.class Lcom/perm/kate/GroupsFragment$8;
.super Ljava/lang/Thread;
.source "GroupsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 288
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-wide/32 v1, 0x18daf37

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v2}, Lcom/perm/kate/GroupsFragment;->access$2000(Lcom/perm/kate/GroupsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/perm/kate/session/Session;->joinGroup(Ljava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
