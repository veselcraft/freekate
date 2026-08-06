.class Lcom/perm/utils/RepostHelper$3;
.super Ljava/lang/Thread;
.source "RepostHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/RepostHelper;->repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/utils/RepostHelper;

.field final synthetic val$group_id:Ljava/lang/Long;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$wall_object:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/utils/RepostHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/utils/RepostHelper;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/perm/utils/RepostHelper$3;->this$0:Lcom/perm/utils/RepostHelper;

    iput-object p2, p0, Lcom/perm/utils/RepostHelper$3;->val$wall_object:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/utils/RepostHelper$3;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/utils/RepostHelper$3;->val$group_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 77
    iget-object v0, p0, Lcom/perm/utils/RepostHelper$3;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {v0}, Lcom/perm/utils/RepostHelper;->access$100(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 78
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/utils/RepostHelper$3;->val$wall_object:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/utils/RepostHelper$3;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/utils/RepostHelper$3;->val$group_id:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/utils/RepostHelper$3;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {v4}, Lcom/perm/utils/RepostHelper;->access$200(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/utils/RepostHelper$3;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {v5}, Lcom/perm/utils/RepostHelper;->access$100(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 79
    iget-object v0, p0, Lcom/perm/utils/RepostHelper$3;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {v0}, Lcom/perm/utils/RepostHelper;->access$100(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 80
    return-void
.end method
