.class Lcom/perm/kate/GroupTopicsActivity$17;
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
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$17;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-wide p3, p0, Lcom/perm/kate/GroupTopicsActivity$17;->val$topic_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 434
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 435
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$17;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$17;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 426
    check-cast p1, Ljava/lang/Boolean;

    .line 427
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 428
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity$17;->val$topic_id:J

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->deleteGroupTopic(J)Z

    .line 429
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$17;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    :cond_0
    return-void
.end method
