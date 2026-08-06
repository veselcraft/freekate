.class Lcom/perm/kate/DialogAttachmentsFragment$5;
.super Ljava/lang/Thread;
.source "DialogAttachmentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DialogAttachmentsFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 248
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v12, v0

    .line 250
    .local v12, "offset":J
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$700(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$800(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    long-to-int v3, v12

    iget-object v4, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v4, v4, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v6}, Lcom/perm/kate/DialogAttachmentsFragment;->access$700(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v7, v7, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v8, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v8}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$900(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v7, v0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    const/4 v8, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v10, v0, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1000(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v0, v0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    neg-int v0, v0

    int-to-long v6, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v7, v0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1100(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v10, v0, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1200(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v7, v0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v10, v0, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 259
    :cond_3
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v5, v0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    const-string v6, "8"

    long-to-int v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v8, v0, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/session/Session;->getMessages(JZILjava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
