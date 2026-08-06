.class Lcom/perm/kate/GroupMembersActivity$1;
.super Ljava/lang/Thread;
.source "GroupMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupMembersActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupMembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity$1;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 78
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$1;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupMembersActivity;->access$000(Lcom/perm/kate/GroupMembersActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$1;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupMembersActivity;->access$100(Lcom/perm/kate/GroupMembersActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$1;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupMembersActivity;->access$200(Lcom/perm/kate/GroupMembersActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$1;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupMembersActivity;->access$300(Lcom/perm/kate/GroupMembersActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "photo_100,online"

    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$1;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupMembersActivity;->access$400(Lcom/perm/kate/GroupMembersActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    iget-object v10, p0, Lcom/perm/kate/GroupMembersActivity$1;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/session/Session;->getGroupsMembers(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
