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

    .line 602
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    move-object/from16 v0, p0

    .line 605
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    return-void

    .line 607
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_1

    return-void

    .line 609
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Video:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_2

    .line 610
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 611
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v6, v1, Lcom/perm/kate/SearchActivity;->video_page_size:Ljava/lang/Long;

    iget-wide v7, v1, Lcom/perm/kate/SearchActivity;->offset:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$900(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$5500(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v10

    iget-object v11, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v11}, Lcom/perm/kate/session/Session;->searchVideo(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 613
    :cond_2
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->User:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_3

    .line 614
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 616
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v5, v1, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    iget-wide v6, v1, Lcom/perm/kate/SearchActivity;->offset:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    .line 617
    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v9

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v11

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v12

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v13

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    .line 618
    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v15

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v17

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v18

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v19

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v20

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    .line 619
    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v21

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v22

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v23

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v24

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v25

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v26

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    .line 620
    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3100(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v27

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3200(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v28

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3300(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v29

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3400(Lcom/perm/kate/SearchActivity;)J

    move-result-wide v30

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v32

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v34, v1

    iget-object v1, v1, Lcom/perm/kate/SearchActivity;->callback_load_more_users:Lcom/perm/kate/session/Callback;

    move-object/from16 v33, v1

    const-string v4, "photo_100,online"

    .line 616
    invoke-virtual/range {v2 .. v34}, Lcom/perm/kate/session/Session;->searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 622
    :cond_3
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Group:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_4

    .line 623
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    .line 624
    iget-object v3, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 625
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v6, v3, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$5600(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    iget-object v10, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    const-string v8, "members_count"

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/session/Session;->searchGroup(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 627
    :cond_4
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_6

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$MessagesSearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$MessagesSearchType;->MessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v1, v2, :cond_5

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    .line 628
    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$MessagesSearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-ne v1, v2, :cond_6

    .line 629
    :cond_5
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 630
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 631
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$5800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v4

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$5900(Lcom/perm/kate/SearchActivity;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$6000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    iget-object v10, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/session/Session;->searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 633
    :cond_6
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->News:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_7

    .line 634
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 635
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3800(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$6100(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v14

    iget-object v15, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v15}, Lcom/perm/kate/session/Session;->searchNews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDDLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 637
    :cond_7
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Mentions:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_8

    .line 638
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 639
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/SearchedNewsAdapter;

    iget-object v1, v1, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 640
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-wide/16 v4, 0x32

    int-to-long v6, v1

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$6200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v9, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->newsfeedGetMentions(Ljava/lang/String;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 642
    :cond_8
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/SearchActivity$SearchType;->Doc:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v1, v2, :cond_9

    .line 643
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 644
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity;->docs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 645
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$6300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->searchDocs(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 647
    :cond_9
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$14;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
