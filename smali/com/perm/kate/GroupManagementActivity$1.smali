.class Lcom/perm/kate/GroupManagementActivity$1;
.super Ljava/lang/Thread;
.source "GroupManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupManagementActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupManagementActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupManagementActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity$1;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 56
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity$1;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupManagementActivity;->access$000(Lcom/perm/kate/GroupManagementActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/GroupManagementActivity$1;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v3}, Lcom/perm/kate/GroupManagementActivity;->access$100(Lcom/perm/kate/GroupManagementActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perm/kate/GroupManagementActivity$1;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v6}, Lcom/perm/kate/GroupManagementActivity;->access$200(Lcom/perm/kate/GroupManagementActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/GroupManagementActivity$1;->this$0:Lcom/perm/kate/GroupManagementActivity;

    const-string v6, "managers"

    const-string v7, "photo_100,online"

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->getGroupsMembers(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
