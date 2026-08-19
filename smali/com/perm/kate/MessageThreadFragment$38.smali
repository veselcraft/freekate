.class Lcom/perm/kate/MessageThreadFragment$38;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 2084
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$38;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2087
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$38;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$38;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v0, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$38;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$38;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->setMessageActivity(Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 2090
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$38;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v0, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$38;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$38;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->setMessageActivity(Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
