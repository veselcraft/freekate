.class Lcom/perm/kate/GroupMembersActivity$12;
.super Ljava/lang/Thread;
.source "GroupMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupMembersActivity;->removeUserFromGroup(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupMembersActivity;

.field final synthetic val$group_id:J

.field final synthetic val$remove_user_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupMembersActivity;JJLcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity$12;->this$0:Lcom/perm/kate/GroupMembersActivity;

    iput-wide p2, p0, Lcom/perm/kate/GroupMembersActivity$12;->val$group_id:J

    iput-wide p4, p0, Lcom/perm/kate/GroupMembersActivity$12;->val$user_id:J

    iput-object p6, p0, Lcom/perm/kate/GroupMembersActivity$12;->val$remove_user_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 364
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 366
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/GroupMembersActivity$12;->val$group_id:J

    iget-wide v4, p0, Lcom/perm/kate/GroupMembersActivity$12;->val$user_id:J

    iget-object v6, p0, Lcom/perm/kate/GroupMembersActivity$12;->val$remove_user_callback:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/GroupMembersActivity$12;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->removeUserFromGroup(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 368
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$12;->this$0:Lcom/perm/kate/GroupMembersActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupMembersActivity;->showProgressBar(Z)V

    goto :goto_0
.end method
