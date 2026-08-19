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

    .line 162
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity$5;->this$0:Lcom/perm/kate/GroupManagementActivity;

    iput-wide p2, p0, Lcom/perm/kate/GroupManagementActivity$5;->val$user_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 165
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity$5;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupManagementActivity;->access$000(Lcom/perm/kate/GroupManagementActivity;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/perm/kate/GroupManagementActivity$5;->val$user_id:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/perm/kate/GroupManagementActivity$5;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v10}, Lcom/perm/kate/GroupManagementActivity;->access$1000(Lcom/perm/kate/GroupManagementActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v10

    iget-object v11, p0, Lcom/perm/kate/GroupManagementActivity$5;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-virtual/range {v0 .. v11}, Lcom/perm/kate/session/Session;->groupsEditManager(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
