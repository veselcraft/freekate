.class Lcom/perm/kate/SearchActivity$4;
.super Ljava/lang/Thread;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity;->doSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;

.field final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 38

    move-object/from16 v0, p0

    .line 310
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 311
    sget-object v1, Lcom/perm/kate/SearchActivity$45;->$SwitchMap$com$perm$kate$SearchActivity$SearchType:[I

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 316
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 335
    :pswitch_0
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v5, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v9, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/session/Session;->searchDocs(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 332
    :pswitch_1
    sget-object v10, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v11, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    const-wide/16 v12, 0x32

    const-wide/16 v14, 0x0

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4100(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v16

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v17, v1

    invoke-virtual/range {v10 .. v17}, Lcom/perm/kate/session/Session;->newsfeedGetMentions(Ljava/lang/String;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 329
    :pswitch_2
    sget-object v17, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchActivity;->access$3800(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchActivity;->access$3900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchActivity;->access$4000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v29

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v18, v1

    move-object/from16 v30, v3

    invoke-virtual/range {v17 .. v30}, Lcom/perm/kate/session/Session;->searchNews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDDLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 326
    :pswitch_3
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v6, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v7, v1, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3700(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v10

    iget-object v11, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    const-string v9, "members_count"

    move-object v8, v3

    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/session/Session;->searchGroup(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 319
    :pswitch_4
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v6, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v8, v1, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v10

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    .line 320
    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v11

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v12

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v15

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    .line 321
    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v17

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v18

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v19

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v20

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v21

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v22

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v23

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    .line 322
    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v24

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v25

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v26

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v27

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$2900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v28

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v29

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    .line 323
    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3100(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v30

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3200(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v31

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3300(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v32

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3400(Lcom/perm/kate/SearchActivity;)J

    move-result-wide v33

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v35

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$3600(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v36

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v37, v1

    const-string v7, "photo_100,online"

    move-object v9, v3

    .line 319
    invoke-virtual/range {v5 .. v37}, Lcom/perm/kate/session/Session;->searchUserExtended(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 316
    :pswitch_5
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v6, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v9, v1, Lcom/perm/kate/SearchActivity;->video_page_size:Ljava/lang/Long;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v11

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$900(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$1000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v13

    iget-object v14, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object v10, v3

    invoke-virtual/range {v5 .. v14}, Lcom/perm/kate/session/Session;->searchVideo(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 313
    :pswitch_6
    sget-object v15, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    const/16 v18, 0x0

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchActivity;->access$400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v19

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x0

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchActivity;->access$500(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v22

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    const-string v17, "2"

    move-object/from16 v16, v1

    move-object/from16 v23, v3

    invoke-virtual/range {v15 .. v23}, Lcom/perm/kate/session/Session;->searchAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 338
    :goto_0
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
