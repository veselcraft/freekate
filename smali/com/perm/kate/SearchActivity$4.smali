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
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 297
    sget-object v2, Lcom/perm/kate/SearchActivity$43;->$SwitchMap$com$perm$kate$SearchActivity$SearchType:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/SearchActivity$SearchType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 299
    :pswitch_0
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    const-string v4, "2"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v6}, Lcom/perm/kate/SearchActivity;->access$400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v9}, Lcom/perm/kate/SearchActivity;->access$500(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/session/Session;->searchAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 302
    :pswitch_1
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v4}, Lcom/perm/kate/SearchActivity;->access$600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v5}, Lcom/perm/kate/SearchActivity;->access$700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v6, v6, Lcom/perm/kate/SearchActivity;->video_page_size:Ljava/lang/Long;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v8}, Lcom/perm/kate/SearchActivity;->access$800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v9}, Lcom/perm/kate/SearchActivity;->access$900(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v10}, Lcom/perm/kate/SearchActivity;->access$1000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v11}, Lcom/perm/kate/session/Session;->searchVideo(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 305
    :pswitch_2
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    const-string v4, "photo_100,online"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v5, v5, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$1100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    .line 306
    invoke-static {v8}, Lcom/perm/kate/SearchActivity;->access$1200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v9}, Lcom/perm/kate/SearchActivity;->access$1300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v10}, Lcom/perm/kate/SearchActivity;->access$1400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v11}, Lcom/perm/kate/SearchActivity;->access$1500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v12}, Lcom/perm/kate/SearchActivity;->access$1600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v13}, Lcom/perm/kate/SearchActivity;->access$1700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    .line 307
    invoke-static {v14}, Lcom/perm/kate/SearchActivity;->access$1800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v15}, Lcom/perm/kate/SearchActivity;->access$1900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/perm/kate/SearchActivity;->access$2000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/perm/kate/SearchActivity;->access$2100(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/perm/kate/SearchActivity;->access$2200(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/perm/kate/SearchActivity;->access$2300(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/perm/kate/SearchActivity;->access$2400(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v21, v0

    .line 308
    invoke-static/range {v21 .. v21}, Lcom/perm/kate/SearchActivity;->access$2500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/perm/kate/SearchActivity;->access$2600(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/perm/kate/SearchActivity;->access$2700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/perm/kate/SearchActivity;->access$2800(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/perm/kate/SearchActivity;->access$2900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/perm/kate/SearchActivity;->access$3000(Lcom/perm/kate/SearchActivity;)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v27, v0

    .line 309
    invoke-static/range {v27 .. v27}, Lcom/perm/kate/SearchActivity;->access$3100(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/perm/kate/SearchActivity;->access$3200(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/perm/kate/SearchActivity;->access$3300(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/perm/kate/SearchActivity;->access$3400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/perm/kate/SearchActivity;->access$3500(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/perm/kate/SearchActivity;->access$3600(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    move-object/from16 v33, v0

    .line 305
    invoke-virtual/range {v2 .. v33}, Lcom/perm/kate/session/Session;->searchUserExtended(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 312
    :pswitch_3
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v4, v4, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "members_count"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$3700(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->searchGroup(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 315
    :pswitch_4
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v4}, Lcom/perm/kate/SearchActivity;->access$3800(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v8}, Lcom/perm/kate/SearchActivity;->access$3900(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v14}, Lcom/perm/kate/SearchActivity;->access$4000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v15}, Lcom/perm/kate/session/Session;->searchNews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDDLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 318
    :pswitch_5
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$4;->val$q:Ljava/lang/String;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v6}, Lcom/perm/kate/SearchActivity;->access$4100(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/SearchActivity$4;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->searchDocs(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
