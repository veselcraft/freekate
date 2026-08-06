.class Lcom/perm/kate/GroupsFragment$18;
.super Ljava/lang/Thread;
.source "GroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupsFragment;->loadMore()V
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
    .line 528
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$18;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 531
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment$18;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v1}, Lcom/perm/kate/GroupsFragment;->access$300(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "start_date"

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment$18;->this$0:Lcom/perm/kate/GroupsFragment;

    iget v3, v3, Lcom/perm/kate/GroupsFragment;->page_size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/GroupsFragment$18;->this$0:Lcom/perm/kate/GroupsFragment;

    iget v4, v4, Lcom/perm/kate/GroupsFragment;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/GroupsFragment$18;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v5, v5, Lcom/perm/kate/GroupsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v6, p0, Lcom/perm/kate/GroupsFragment$18;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v6}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getUserGroups(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 532
    return-void
.end method
