.class Lcom/perm/kate/MessageThreadFragment$22;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$22;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 1177
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$22;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v12, v0

    .line 1178
    .local v12, "offset":J
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$22;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v0, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v1

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$22;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1100(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$22;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$22;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget v7, v0, Lcom/perm/kate/MessageThreadFragment;->page_size:I

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$22;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v10, v0, Lcom/perm/kate/MessageThreadFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$22;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    move-object v9, v8

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1179
    return-void
.end method
