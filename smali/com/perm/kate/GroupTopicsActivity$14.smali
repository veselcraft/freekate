.class Lcom/perm/kate/GroupTopicsActivity$14;
.super Lcom/perm/kate/session/Callback;
.source "GroupTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->editTopicTitle(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$topic_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;JLjava/lang/String;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$14;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-wide p3, p0, Lcom/perm/kate/GroupTopicsActivity$14;->val$topic_id:J

    iput-object p5, p0, Lcom/perm/kate/GroupTopicsActivity$14;->val$title:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 392
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 393
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$14;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$14;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 384
    check-cast p1, Ljava/lang/Boolean;

    .line 385
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 386
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity$14;->val$topic_id:J

    iget-object v2, p0, Lcom/perm/kate/GroupTopicsActivity$14;->val$title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->updateTopicTitle(JLjava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$14;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    :cond_0
    return-void
.end method
