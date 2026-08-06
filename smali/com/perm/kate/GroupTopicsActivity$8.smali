.class Lcom/perm/kate/GroupTopicsActivity$8;
.super Lcom/perm/kate/session/Callback;
.source "GroupTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->removeGroupTopic(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;

.field final synthetic val$topic_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/GroupTopicsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$8;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-wide p3, p0, Lcom/perm/kate/GroupTopicsActivity$8;->val$topic_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 251
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$8;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->showProgressBar(Z)V

    .line 252
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$8;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupTopicsActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 242
    check-cast v0, Ljava/lang/Boolean;

    .line 243
    .local v0, "removed":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/GroupTopicsActivity$8;->val$topic_id:J

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteGroupTopic(J)Z

    .line 245
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$8;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    .line 247
    :cond_0
    return-void
.end method
