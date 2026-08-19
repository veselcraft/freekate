.class Lcom/perm/kate/MessageThreadFragment$26;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$mids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1714
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$26;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$26;->val$mids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1717
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 1719
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$26;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v0, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$26;->val$mids:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$26;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$1400(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$26;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->markAsRead(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
