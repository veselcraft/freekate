.class Lcom/perm/kate/SearchActivity$14;
.super Ljava/lang/Thread;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 585
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v2, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    sget-object v4, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    if-eq v2, v4, :cond_0

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    sget-object v4, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v2, v4, :cond_2

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "query":Ljava/lang/String;
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v4}, Lcom/perm/kate/SearchActivity;->access$600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v6}, Lcom/perm/kate/SearchActivity;->access$700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v6, v6, Lcom/perm/kate/SearchActivity;->video_page_size:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-wide v8, v7, Lcom/perm/kate/SearchActivity;->offset:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v8}, Lcom/perm/kate/SearchActivity;->access$800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v9}, Lcom/perm/kate/SearchActivity;->access$900(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v10}, Lcom/perm/kate/SearchActivity;->access$5400(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v11}, Lcom/perm/kate/session/Session;->searchVideo(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 593
    .end local v3    # "query":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    sget-object v4, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v2, v4, :cond_3

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 596
    .restart local v3    # "query":Ljava/lang/String;
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v4, "photo_100,online"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v5, v6, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-wide v6, v6, Lcom/perm/kate/SearchActivity;->offset:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$1100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    .line 597
    invoke-static {v8}, Lcom/perm/kate/SearchActivity;->access$1200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v9}, Lcom/perm/kate/SearchActivity;->access$1300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v10}, Lcom/perm/kate/SearchActivity;->access$1400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v11}, Lcom/perm/kate/SearchActivity;->access$1500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v12}, Lcom/perm/kate/SearchActivity;->access$1600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v13}, Lcom/perm/kate/SearchActivity;->access$1700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    .line 598
    invoke-static {v14}, Lcom/perm/kate/SearchActivity;->access$1800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v15}, Lcom/perm/kate/SearchActivity;->access$1900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/perm/kate/SearchActivity;->access$2000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/perm/kate/SearchActivity;->access$2100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/perm/kate/SearchActivity;->access$2200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/perm/kate/SearchActivity;->access$2300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/perm/kate/SearchActivity;->access$2400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v21, v0

    .line 599
    invoke-static/range {v21 .. v21}, Lcom/perm/kate/SearchActivity;->access$2500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/perm/kate/SearchActivity;->access$2600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/perm/kate/SearchActivity;->access$2700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/perm/kate/SearchActivity;->access$2800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/perm/kate/SearchActivity;->access$2900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/perm/kate/SearchActivity;->access$3000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v27, v0

    .line 600
    invoke-static/range {v27 .. v27}, Lcom/perm/kate/SearchActivity;->access$3100(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/perm/kate/SearchActivity;->access$3200(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/perm/kate/SearchActivity;->access$3300(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/perm/kate/SearchActivity;->access$3400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/perm/kate/SearchActivity;->access$3500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->callback_load_more_users:Lcom/perm/kate/session/Callback;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v33, v0

    .line 596
    invoke-virtual/range {v2 .. v33}, Lcom/perm/kate/session/Session;->searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 602
    .end local v3    # "query":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    sget-object v4, Lcom/perm/kate/SearchActivity$SearchType;->Group:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v2, v4, :cond_4

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v2, v2, Lcom/perm/kate/SearchActivity;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v34, v0

    .line 604
    .local v34, "offset":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    .restart local v3    # "query":Ljava/lang/String;
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v4, v4, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "members_count"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$5500(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->searchGroup(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 607
    .end local v3    # "query":Ljava/lang/String;
    .end local v34    # "offset":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    sget-object v4, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v2, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$MessagesSearchType;

    move-result-object v2

    sget-object v4, Lcom/perm/kate/SearchActivity$MessagesSearchType;->MessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    .line 608
    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$MessagesSearchType;

    move-result-object v2

    sget-object v4, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-ne v2, v4, :cond_6

    .line 609
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 610
    .restart local v3    # "query":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$5600(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 611
    .local v5, "offset":I
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v4}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v6}, Lcom/perm/kate/SearchActivity;->access$5800(Lcom/perm/kate/SearchActivity;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v9}, Lcom/perm/kate/SearchActivity;->access$5900(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/session/Session;->searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 613
    .end local v3    # "query":Ljava/lang/String;
    .end local v5    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    sget-object v4, Lcom/perm/kate/SearchActivity$SearchType;->News:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v2, v4, :cond_7

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    .restart local v3    # "query":Ljava/lang/String;
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$3800(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$3900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$6000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v19, v0

    move-object v7, v3

    invoke-virtual/range {v6 .. v19}, Lcom/perm/kate/session/Session;->searchNews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDDLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 617
    .end local v3    # "query":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    sget-object v4, Lcom/perm/kate/SearchActivity$SearchType;->Doc:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v2, v4, :cond_0

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 619
    .restart local v3    # "query":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v2, v2, Lcom/perm/kate/SearchActivity;->docs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 620
    .restart local v5    # "offset":I
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$6100(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/perm/kate/session/Session;->searchDocs(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
