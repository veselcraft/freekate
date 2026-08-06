.class Lcom/perm/kate/GroupsFragment$4;
.super Ljava/lang/Thread;
.source "GroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupsFragment;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 137
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupsFragment;->showProgressBar(Z)V

    .line 138
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v1}, Lcom/perm/kate/GroupsFragment;->access$300(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "start_date"

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    iget v3, v3, Lcom/perm/kate/GroupsFragment;->page_size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v5}, Lcom/perm/kate/GroupsFragment;->access$400(Lcom/perm/kate/GroupsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v6}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getUserGroups(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 139
    return-void
.end method
