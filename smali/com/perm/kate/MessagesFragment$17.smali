.class Lcom/perm/kate/MessagesFragment$17;
.super Ljava/lang/Thread;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 779
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v1, v0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    return-void

    .line 781
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_1

    return-void

    .line 784
    :cond_1
    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/MessagesFragment;->account_id:J

    .line 786
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v0, v0, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v3, v0, Lcom/perm/kate/MessagesFragment;->offset:J

    iget v5, v0, Lcom/perm/kate/MessagesFragment;->page_size:I

    iget-boolean v6, v0, Lcom/perm/kate/MessagesFragment;->unread:Z

    iget-object v7, v0, Lcom/perm/kate/MessagesFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->getMessagesDialogs(JIZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 787
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v0, v0, Lcom/perm/kate/MessagesFragment;->group_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 788
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->setOffline()V

    :cond_2
    return-void
.end method
