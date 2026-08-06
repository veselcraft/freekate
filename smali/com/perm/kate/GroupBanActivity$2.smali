.class Lcom/perm/kate/GroupBanActivity$2;
.super Ljava/lang/Thread;
.source "GroupBanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBanActivity;->getBannedStatusForUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBanActivity;

.field final synthetic val$banned_status_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$2;->this$0:Lcom/perm/kate/GroupBanActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupBanActivity$2;->val$banned_status_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 101
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$2;->this$0:Lcom/perm/kate/GroupBanActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupBanActivity;->showProgressBar(Z)V

    .line 102
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$2;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$100(Lcom/perm/kate/GroupBanActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$2;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$200(Lcom/perm/kate/GroupBanActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/GroupBanActivity$2;->val$banned_status_callback:Lcom/perm/kate/session/Callback;

    iget-object v8, p0, Lcom/perm/kate/GroupBanActivity$2;->this$0:Lcom/perm/kate/GroupBanActivity;

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getGroupBannedUsers(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 103
    return-void
.end method
