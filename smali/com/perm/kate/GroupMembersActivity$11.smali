.class Lcom/perm/kate/GroupMembersActivity$11;
.super Lcom/perm/kate/session/Callback;
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

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupMembersActivity;Landroid/app/Activity;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/GroupMembersActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity$11;->this$0:Lcom/perm/kate/GroupMembersActivity;

    iput-wide p3, p0, Lcom/perm/kate/GroupMembersActivity$11;->val$user_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 355
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 356
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity$11;->this$0:Lcom/perm/kate/GroupMembersActivity;

    iget-wide v2, p0, Lcom/perm/kate/GroupMembersActivity$11;->val$user_id:J

    invoke-static {v1, v2, v3}, Lcom/perm/kate/GroupMembersActivity;->access$1400(Lcom/perm/kate/GroupMembersActivity;J)V

    .line 358
    :cond_0
    return-void
.end method
