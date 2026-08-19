.class Lcom/perm/kate/GroupTopicsActivity$10;
.super Lcom/perm/kate/session/Callback;
.source "GroupTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->closeAndOpenTopic(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;

.field final synthetic val$is_open:Z

.field final synthetic val$topic_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;JZ)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$10;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-wide p3, p0, Lcom/perm/kate/GroupTopicsActivity$10;->val$topic_id:J

    iput-boolean p5, p0, Lcom/perm/kate/GroupTopicsActivity$10;->val$is_open:Z

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 329
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 330
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$10;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$10;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 321
    check-cast p1, Ljava/lang/Boolean;

    .line 322
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 323
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity$10;->val$topic_id:J

    iget-boolean v2, p0, Lcom/perm/kate/GroupTopicsActivity$10;->val$is_open:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->updateTopicCloseFlag(JZ)V

    .line 324
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$10;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    :cond_0
    return-void
.end method
