.class Lcom/perm/kate/GroupBanActivity$5$1;
.super Ljava/lang/Thread;
.source "GroupBanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBanActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupBanActivity$5;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$comment_visible:Z

.field final synthetic val$end_date:Ljava/lang/Long;

.field final synthetic val$reason:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBanActivity$5;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$5$1;->this$1:Lcom/perm/kate/GroupBanActivity$5;

    iput-object p2, p0, Lcom/perm/kate/GroupBanActivity$5$1;->val$end_date:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/GroupBanActivity$5$1;->val$reason:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/perm/kate/GroupBanActivity$5$1;->val$comment:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/perm/kate/GroupBanActivity$5$1;->val$comment_visible:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 203
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity$5$1;->this$1:Lcom/perm/kate/GroupBanActivity$5;

    iget-object v1, v1, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupBanActivity;->access$100(Lcom/perm/kate/GroupBanActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/GroupBanActivity$5$1;->this$1:Lcom/perm/kate/GroupBanActivity$5;

    iget-object v3, v3, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v3}, Lcom/perm/kate/GroupBanActivity;->access$200(Lcom/perm/kate/GroupBanActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/GroupBanActivity$5$1;->val$end_date:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/GroupBanActivity$5$1;->val$reason:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/perm/kate/GroupBanActivity$5$1;->val$comment:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/perm/kate/GroupBanActivity$5$1;->val$comment_visible:Z

    iget-object v9, p0, Lcom/perm/kate/GroupBanActivity$5$1;->this$1:Lcom/perm/kate/GroupBanActivity$5;

    iget-object v9, v9, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v9}, Lcom/perm/kate/GroupBanActivity;->access$1200(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    iget-object v10, p0, Lcom/perm/kate/GroupBanActivity$5$1;->this$1:Lcom/perm/kate/GroupBanActivity$5;

    iget-object v10, v10, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/session/Session;->addGroupBanUser(JJLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
