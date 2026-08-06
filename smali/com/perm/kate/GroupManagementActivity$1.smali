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
    .param p1, "this$0"    # Lcom/perm/kate/GroupManagementActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity$1;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 56
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity$1;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupManagementActivity;->access$000(Lcom/perm/kate/GroupManagementActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity$1;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupManagementActivity;->access$100(Lcom/perm/kate/GroupManagementActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "managers"

    const-string v8, "photo_100,online"

    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity$1;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupManagementActivity;->access$200(Lcom/perm/kate/GroupManagementActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    iget-object v10, p0, Lcom/perm/kate/GroupManagementActivity$1;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/session/Session;->getGroupsMembers(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
