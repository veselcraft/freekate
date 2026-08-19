.class Lcom/perm/kate/DialogAttachmentsFragment$5;
.super Ljava/lang/Thread;
.source "DialogAttachmentsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    .line 287
    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    .line 289
    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$800(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v5, 0x0

    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$900(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    long-to-int v7, v1

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v8, v1, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    const/4 v9, 0x0

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$800(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v11, v1, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual/range {v4 .. v12}, Lcom/perm/kate/session/Session;->searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 291
    :cond_0
    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1000(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v5

    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v10, v1, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    const/4 v11, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v13, v1, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    invoke-virtual/range {v4 .. v14}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 293
    :cond_1
    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1100(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v5

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v7

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v1, v1, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    neg-int v1, v1

    int-to-long v1, v1

    const-wide/16 v9, 0x2

    div-long/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v10, v1, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1200(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v13, v1, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    invoke-virtual/range {v4 .. v14}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1300(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 296
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v5

    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v10, v1, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v1, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    invoke-virtual/range {v4 .. v14}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 298
    :cond_3
    sget-object v15, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-wide/16 v16, 0x0

    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget v3, v3, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$5;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v2, v1, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v22

    const-string v19, "8"

    move/from16 v18, v3

    move-object/from16 v21, v2

    invoke-virtual/range {v15 .. v22}, Lcom/perm/kate/session/Session;->getMessages(JILjava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
