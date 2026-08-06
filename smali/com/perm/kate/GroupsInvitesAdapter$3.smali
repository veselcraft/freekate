.class Lcom/perm/kate/GroupsInvitesAdapter$3;
.super Ljava/lang/Thread;
.source "GroupsInvitesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupsInvitesAdapter;->accept(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsInvitesAdapter;

.field final synthetic val$accept:Z

.field final synthetic val$group_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsInvitesAdapter;ZJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/GroupsInvitesAdapter;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesAdapter$3;->this$0:Lcom/perm/kate/GroupsInvitesAdapter;

    iput-boolean p2, p0, Lcom/perm/kate/GroupsInvitesAdapter$3;->val$accept:Z

    iput-wide p3, p0, Lcom/perm/kate/GroupsInvitesAdapter$3;->val$group_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-boolean v0, p0, Lcom/perm/kate/GroupsInvitesAdapter$3;->val$accept:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/GroupsInvitesAdapter$3;->val$group_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GroupsInvitesAdapter$3;->this$0:Lcom/perm/kate/GroupsInvitesAdapter;

    invoke-static {v2}, Lcom/perm/kate/GroupsInvitesAdapter;->access$100(Lcom/perm/kate/GroupsInvitesAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/perm/kate/session/Session;->joinGroup(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/GroupsInvitesAdapter$3;->val$group_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GroupsInvitesAdapter$3;->this$0:Lcom/perm/kate/GroupsInvitesAdapter;

    invoke-static {v2}, Lcom/perm/kate/GroupsInvitesAdapter;->access$100(Lcom/perm/kate/GroupsInvitesAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/perm/kate/session/Session;->leaveGroup(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
