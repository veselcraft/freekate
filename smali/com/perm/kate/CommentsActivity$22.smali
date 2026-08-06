.class Lcom/perm/kate/CommentsActivity$22;
.super Lcom/perm/kate/session/Callback;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 790
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 811
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 812
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/CommentsActivity;->showProgressBar(Z)V

    .line 813
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/CommentsActivity;->access$2600(Lcom/perm/kate/CommentsActivity;Z)V

    .line 814
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 793
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 795
    .local v0, "status_res":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 796
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentsActivity;->access$2500(Lcom/perm/kate/CommentsActivity;)V

    .line 797
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/CommentsActivity;->showProgressBar(Z)V

    .line 798
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/perm/kate/CommentsActivity;->access$2600(Lcom/perm/kate/CommentsActivity;Z)V

    .line 799
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    new-instance v3, Lcom/perm/kate/CommentsActivity$22$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/CommentsActivity$22$1;-><init>(Lcom/perm/kate/CommentsActivity$22;)V

    invoke-virtual {v2, v3}, Lcom/perm/kate/CommentsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 804
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-object v4, v2, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    .line 805
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-object v4, v2, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    .line 806
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v2, v2, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 807
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v2, v2, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 808
    return-void
.end method
