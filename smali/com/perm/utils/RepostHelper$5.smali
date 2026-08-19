.class Lcom/perm/utils/RepostHelper$5;
.super Ljava/lang/Thread;
.source "RepostHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/utils/RepostHelper;

.field final synthetic val$group_id:Ljava/lang/Long;

.field final synthetic val$publish_date:Ljava/lang/Long;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$wall_object:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/utils/RepostHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/perm/utils/RepostHelper$5;->this$0:Lcom/perm/utils/RepostHelper;

    iput-object p2, p0, Lcom/perm/utils/RepostHelper$5;->val$wall_object:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/utils/RepostHelper$5;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/utils/RepostHelper$5;->val$group_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/utils/RepostHelper$5;->val$publish_date:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 146
    iget-object v0, p0, Lcom/perm/utils/RepostHelper$5;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {v0}, Lcom/perm/utils/RepostHelper;->access$200(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 147
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/utils/RepostHelper$5;->val$wall_object:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/utils/RepostHelper$5;->val$text:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/utils/RepostHelper$5;->val$group_id:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/utils/RepostHelper$5;->val$publish_date:Ljava/lang/Long;

    iget-object v0, p0, Lcom/perm/utils/RepostHelper$5;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {v0}, Lcom/perm/utils/RepostHelper;->access$300(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/utils/RepostHelper$5;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {v0}, Lcom/perm/utils/RepostHelper;->access$200(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 148
    iget-object v0, p0, Lcom/perm/utils/RepostHelper$5;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {v0}, Lcom/perm/utils/RepostHelper;->access$200(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
