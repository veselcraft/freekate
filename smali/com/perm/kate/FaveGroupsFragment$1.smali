.class Lcom/perm/kate/FaveGroupsFragment$1;
.super Ljava/lang/Thread;
.source "FaveGroupsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveGroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveGroupsFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$1;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 66
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, p0, Lcom/perm/kate/FaveGroupsFragment$1;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveGroupsFragment;->access$000(Lcom/perm/kate/FaveGroupsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v1, p0, Lcom/perm/kate/FaveGroupsFragment$1;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getFaveGroups(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
