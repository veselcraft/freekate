.class Lcom/perm/kate/GroupsInvitesAdapter$4;
.super Ljava/lang/Thread;
.source "GroupsInvitesAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsInvitesAdapter;

.field final synthetic val$accept:Z

.field final synthetic val$group_id:J

.field final synthetic val$not_sure:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsInvitesAdapter;ZJZ)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesAdapter$4;->this$0:Lcom/perm/kate/GroupsInvitesAdapter;

    iput-boolean p2, p0, Lcom/perm/kate/GroupsInvitesAdapter$4;->val$accept:Z

    iput-wide p3, p0, Lcom/perm/kate/GroupsInvitesAdapter$4;->val$group_id:J

    iput-boolean p5, p0, Lcom/perm/kate/GroupsInvitesAdapter$4;->val$not_sure:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 143
    iget-boolean v0, p0, Lcom/perm/kate/GroupsInvitesAdapter$4;->val$accept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/GroupsInvitesAdapter$4;->val$group_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-boolean v3, p0, Lcom/perm/kate/GroupsInvitesAdapter$4;->val$not_sure:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iget-object v4, p0, Lcom/perm/kate/GroupsInvitesAdapter$4;->this$0:Lcom/perm/kate/GroupsInvitesAdapter;

    invoke-static {v4}, Lcom/perm/kate/GroupsInvitesAdapter;->access$100(Lcom/perm/kate/GroupsInvitesAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/perm/kate/session/Session;->joinGroup(Ljava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    .line 146
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/GroupsInvitesAdapter$4;->val$group_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/GroupsInvitesAdapter$4;->this$0:Lcom/perm/kate/GroupsInvitesAdapter;

    invoke-static {v3}, Lcom/perm/kate/GroupsInvitesAdapter;->access$100(Lcom/perm/kate/GroupsInvitesAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/perm/kate/session/Session;->leaveGroup(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_1
    return-void
.end method
