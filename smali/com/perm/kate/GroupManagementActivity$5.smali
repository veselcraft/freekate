.class Lcom/perm/kate/GroupManagementActivity$5;
.super Ljava/lang/Thread;
.source "GroupManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupManagementActivity;->dismissManager(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupManagementActivity;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupManagementActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupManagementActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity$5;->this$0:Lcom/perm/kate/GroupManagementActivity;

    iput-wide p2, p0, Lcom/perm/kate/GroupManagementActivity$5;->val$user_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    .line 165
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity$5;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupManagementActivity;->access$000(Lcom/perm/kate/GroupManagementActivity;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/GroupManagementActivity$5;->val$user_id:J

    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity$5;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupManagementActivity;->access$1000(Lcom/perm/kate/GroupManagementActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v11

    iget-object v12, p0, Lcom/perm/kate/GroupManagementActivity$5;->this$0:Lcom/perm/kate/GroupManagementActivity;

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    invoke-virtual/range {v1 .. v12}, Lcom/perm/kate/session/Session;->groupsEditManager(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
