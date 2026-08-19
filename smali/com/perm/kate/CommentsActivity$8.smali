.class Lcom/perm/kate/CommentsActivity$8;
.super Lcom/perm/kate/session/Callback;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->removeComment(Ljava/lang/Long;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$commentId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$8;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-object p3, p0, Lcom/perm/kate/CommentsActivity$8;->val$commentId:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 505
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 506
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$8;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 11

    .line 483
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$8;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 484
    check-cast p1, Ljava/lang/Boolean;

    .line 485
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 486
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$8;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v3

    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$8;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result p1

    int-to-long v5, p1

    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$8;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v7

    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$8;->val$commentId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/db/DataHelper;->deleteComment(JJJJ)Z

    .line 488
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$8;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p1, p1, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$8;->val$commentId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/perm/kate/data/PageCommentList;->getComment(Ljava/lang/Long;)Lcom/perm/kate/api/Comment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 490
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$8;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-boolean v2, v0, Lcom/perm/kate/CommentsActivity;->is_new:Z

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/perm/kate/api/Comment;->thread_count:I

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p1, Lcom/perm/kate/api/Comment;->deleted:Z

    const-wide/16 v2, 0x0

    .line 492
    iput-wide v2, p1, Lcom/perm/kate/api/Comment;->from_id:J

    const-string v0, ""

    .line 493
    iput-object v0, p1, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 494
    iget-object v0, p1, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 495
    iput v1, p1, Lcom/perm/kate/api/Comment;->like_count:I

    goto :goto_0

    .line 497
    :cond_0
    iget-object p1, v0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$8;->val$commentId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/perm/kate/data/PageCommentList;->deleteComment(Ljava/lang/Long;)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$8;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p1, p1, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$8;->val$commentId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/perm/kate/data/PageCommentList;->deleteComment(Ljava/lang/Long;)V

    .line 500
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$8;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)V

    :cond_2
    return-void
.end method
