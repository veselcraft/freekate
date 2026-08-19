.class Lcom/perm/kate/CommentRepliesActivity$10;
.super Lcom/perm/kate/session/Callback;
.source "CommentRepliesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentRepliesActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentRepliesActivity;

.field final synthetic val$comment:Lcom/perm/kate/api/Comment;

.field final synthetic val$comment_id:Ljava/lang/Long;

.field final synthetic val$like:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;Ljava/lang/Long;ZLcom/perm/kate/api/Comment;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iput-object p3, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$comment_id:Ljava/lang/Long;

    iput-boolean p4, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$like:Z

    iput-object p5, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$comment:Lcom/perm/kate/api/Comment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 14

    .line 411
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 413
    instance-of v0, p1, Lcom/perm/kate/api/KException;

    if-eqz v0, :cond_1

    .line 414
    check-cast p1, Lcom/perm/kate/api/KException;

    iget p1, p1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v0, 0xe6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe7

    if-ne p1, v0, :cond_1

    .line 418
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$comment_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$700(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v4

    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v6

    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$600(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result p1

    int-to-long v8, p1

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$like:Z

    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$1200(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v12

    invoke-virtual/range {v1 .. v13}, Lcom/perm/kate/db/DataHelper;->updateCommentLikes(JJJJLjava/lang/Long;ZJ)V

    .line 419
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$300(Lcom/perm/kate/CommentRepliesActivity;)V

    :cond_1
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 13

    .line 399
    move-object v9, p1

    check-cast v9, Ljava/lang/Long;

    .line 400
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$comment_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$700(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v3

    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v5

    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$600(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result p1

    int-to-long v7, p1

    iget-boolean v10, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$like:Z

    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$1200(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v11

    invoke-virtual/range {v0 .. v12}, Lcom/perm/kate/db/DataHelper;->updateCommentLikes(JJJJLjava/lang/Long;ZJ)V

    .line 401
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$comment:Lcom/perm/kate/api/Comment;

    iget-boolean v0, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$like:Z

    iput-boolean v0, p1, Lcom/perm/kate/api/Comment;->user_like:Z

    if-eqz v0, :cond_0

    .line 403
    iget v0, p1, Lcom/perm/kate/api/Comment;->like_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/perm/kate/api/Comment;->like_count:I

    goto :goto_0

    .line 405
    :cond_0
    iget v0, p1, Lcom/perm/kate/api/Comment;->like_count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/perm/kate/api/Comment;->like_count:I

    .line 406
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentRepliesActivity;->access$300(Lcom/perm/kate/CommentRepliesActivity;)V

    return-void
.end method
