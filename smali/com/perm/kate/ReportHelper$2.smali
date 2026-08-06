.class Lcom/perm/kate/ReportHelper$2;
.super Ljava/lang/Thread;
.source "ReportHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ReportHelper;->report(IJJILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ReportHelper;

.field final synthetic val$id:J

.field final synthetic val$owner_id:J

.field final synthetic val$reason:I

.field final synthetic val$report_type:I

.field final synthetic val$user_reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/ReportHelper;IJLjava/lang/String;JI)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ReportHelper;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    iput p2, p0, Lcom/perm/kate/ReportHelper$2;->val$report_type:I

    iput-wide p3, p0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iput-object p5, p0, Lcom/perm/kate/ReportHelper$2;->val$user_reason:Ljava/lang/String;

    iput-wide p6, p0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iput p8, p0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 45
    iget v0, p0, Lcom/perm/kate/ReportHelper$2;->val$report_type:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 47
    :pswitch_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-object v4, p0, Lcom/perm/kate/ReportHelper$2;->val$user_reason:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->reportUser(JLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v4, p0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v6, p0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->reportPost(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 51
    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    iget v1, p0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/ReportHelper;->access$300(Lcom/perm/kate/ReportHelper;IJJ)V

    goto :goto_0

    .line 54
    :pswitch_2
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v4, p0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v6, p0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->reportPostComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 57
    :pswitch_3
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v4, p0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v6, p0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/session/Session;->reportVideo(JJILjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 60
    :pswitch_4
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v4, p0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v6, p0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->reportVideoComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 63
    :pswitch_5
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v4, p0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v6, p0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->reportPhoto(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 66
    :pswitch_6
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v4, p0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v6, p0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->reportPhotoComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 69
    :pswitch_7
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$2;->val$id:J

    iget-wide v4, p0, Lcom/perm/kate/ReportHelper$2;->val$owner_id:J

    iget v6, p0, Lcom/perm/kate/ReportHelper$2;->val$reason:I

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/ReportHelper$2;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->reportMarketComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
