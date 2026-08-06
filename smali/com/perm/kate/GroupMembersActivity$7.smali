.class Lcom/perm/kate/GroupMembersActivity$7;
.super Ljava/lang/Thread;
.source "GroupMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupMembersActivity;->loadMore()V
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
    .line 221
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity$7;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 224
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity$7;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupMembersActivity;->access$500(Lcom/perm/kate/GroupMembersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 227
    .local v0, "offset":I
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity$7;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupMembersActivity;->access$000(Lcom/perm/kate/GroupMembersActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GroupMembersActivity$7;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v4}, Lcom/perm/kate/GroupMembersActivity;->access$100(Lcom/perm/kate/GroupMembersActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/GroupMembersActivity$7;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v6}, Lcom/perm/kate/GroupMembersActivity;->access$200(Lcom/perm/kate/GroupMembersActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/GroupMembersActivity$7;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v7}, Lcom/perm/kate/GroupMembersActivity;->access$300(Lcom/perm/kate/GroupMembersActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "photo_100,online"

    iget-object v9, p0, Lcom/perm/kate/GroupMembersActivity$7;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v9}, Lcom/perm/kate/GroupMembersActivity;->access$1100(Lcom/perm/kate/GroupMembersActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    iget-object v10, p0, Lcom/perm/kate/GroupMembersActivity$7;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/session/Session;->getGroupsMembers(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
