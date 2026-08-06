.class Lcom/perm/kate/MessagesFragment$15;
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
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$15;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 647
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$15;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$15;->this$0:Lcom/perm/kate/MessagesFragment;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/MessagesFragment;->account_id:J

    .line 652
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$15;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v0, v0, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v1

    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$15;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v2, v0, Lcom/perm/kate/MessagesFragment;->offset:J

    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$15;->this$0:Lcom/perm/kate/MessagesFragment;

    iget v4, v0, Lcom/perm/kate/MessagesFragment;->page_size:I

    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$15;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v5, v0, Lcom/perm/kate/MessagesFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$15;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->getMessagesDialogs(JILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
