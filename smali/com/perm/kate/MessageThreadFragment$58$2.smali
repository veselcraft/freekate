.class Lcom/perm/kate/MessageThreadFragment$58$2;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$58;

.field final synthetic val$remove_member_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$58;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 3082
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$58$2;->this$1:Lcom/perm/kate/MessageThreadFragment$58;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$58$2;->val$remove_member_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 3085
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$58$2;->this$1:Lcom/perm/kate/MessageThreadFragment$58;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$58;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$58$2;->this$1:Lcom/perm/kate/MessageThreadFragment$58;

    iget-object v3, v3, Lcom/perm/kate/MessageThreadFragment$58;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v4, v3, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$58$2;->val$remove_member_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    move-wide v3, v4

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->removeUserFromChat(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
