.class Lcom/perm/kate/ReportHelper$2;
.super Ljava/lang/Thread;
.source "ReportHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ReportHelper;

.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$from_news:Z

.field final synthetic val$id:J

.field final synthetic val$owner_id:J

.field final synthetic val$reason:I

.field final synthetic val$report_type:I

.field final synthetic val$user_reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/ReportHelper;IJLjava/lang/String;JIZLjava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    iput p2, p0, Lcom/perm/kate/ReportHelper$2;->val$report_type:I

    iput-wide p3, p0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iput-object p5, p0, Lcom/perm/kate/ReportHelper$2;->val$user_reason:Ljava/lang/String;

    iput-wide p6, p0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iput p8, p0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iput-boolean p9, p0, Lcom/perm/kate/ReportHelper$2;->val$from_news:Z

    iput-object p10, p0, Lcom/perm/kate/ReportHelper$2;->val$ad_data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    move-object/from16 v0, p0

    .line 46
    iget v1, v0, Lcom/perm/kate/ReportHelper$2;->val$report_type:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 73
    :pswitch_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, v0, Lcom/perm/kate/ReportHelper$2;->val$ad_data:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/ReportHelper$2;->val$user_reason:Ljava/lang/String;

    iget-object v4, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v4}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v5}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/session/Session;->reportAd(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 70
    :pswitch_1
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v7, v0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v9, v0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v11, v0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v1, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v1}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v12

    iget-object v1, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v1}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {v6 .. v13}, Lcom/perm/kate/session/Session;->reportMarketComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 67
    :pswitch_2
    sget-object v14, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v3, v0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v5, v0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v6, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v6}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v20

    iget-object v6, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v6}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v21

    move-wide v15, v1

    move-wide/from16 v17, v3

    move/from16 v19, v5

    invoke-virtual/range {v14 .. v21}, Lcom/perm/kate/session/Session;->reportPhotoComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 64
    :pswitch_3
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v7, v0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v9, v0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v11, v0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v1, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v1}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v12

    iget-object v1, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v1}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {v6 .. v13}, Lcom/perm/kate/session/Session;->reportPhoto(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 61
    :pswitch_4
    sget-object v14, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v3, v0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v5, v0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v6, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v6}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v20

    iget-object v6, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v6}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v21

    move-wide v15, v1

    move-wide/from16 v17, v3

    move/from16 v19, v5

    invoke-virtual/range {v14 .. v21}, Lcom/perm/kate/session/Session;->reportVideoComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 58
    :pswitch_5
    sget-object v22, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v3, v0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v5, v0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    iget-object v6, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v6}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v30

    iget-object v6, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v6}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v31

    move-wide/from16 v23, v1

    move-wide/from16 v25, v3

    move/from16 v27, v5

    invoke-virtual/range {v22 .. v31}, Lcom/perm/kate/session/Session;->reportVideo(JJILjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 55
    :pswitch_6
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v7, v0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v9, v0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v11, v0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v1, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v1}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v12

    iget-object v1, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v1}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {v6 .. v13}, Lcom/perm/kate/session/Session;->reportPostComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 51
    :pswitch_7
    sget-object v14, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v3, v0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v5, v0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v6, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v6}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v20

    iget-object v6, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v6}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v21

    move-wide v15, v1

    move-wide/from16 v17, v3

    move/from16 v19, v5

    invoke-virtual/range {v14 .. v21}, Lcom/perm/kate/session/Session;->reportPost(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 52
    iget-object v6, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    iget v7, v0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-wide v8, v0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget-wide v10, v0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-boolean v12, v0, Lcom/perm/kate/ReportHelper$2;->val$from_news:Z

    invoke-static/range {v6 .. v12}, Lcom/perm/kate/ReportHelper;->access$300(Lcom/perm/kate/ReportHelper;IJJZ)V

    goto :goto_0

    .line 48
    :pswitch_8
    sget-object v13, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v14, v0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-object v1, v0, Lcom/perm/kate/ReportHelper$2;->val$user_reason:Ljava/lang/String;

    const/16 v17, 0x0

    iget-object v2, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v2}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v18

    iget-object v2, v0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v2}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v16, v1

    invoke-virtual/range {v13 .. v19}, Lcom/perm/kate/session/Session;->reportUser(JLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
