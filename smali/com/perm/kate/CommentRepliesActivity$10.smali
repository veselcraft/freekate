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
    .param p1, "this$0"    # Lcom/perm/kate/CommentRepliesActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 368
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
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 385
    instance-of v1, p1, Lcom/perm/kate/api/KException;

    if-eqz v1, :cond_1

    .line 386
    check-cast p1, Lcom/perm/kate/api/KException;

    .end local p1    # "ex":Ljava/lang/Throwable;
    iget v0, p1, Lcom/perm/kate/api/KException;->error_code:I

    .line 389
    .local v0, "code":I
    const/16 v1, 0xe6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe7

    if-ne v0, v1, :cond_1

    .line 390
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$comment_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v4}, Lcom/perm/kate/CommentRepliesActivity;->access$600(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v6}, Lcom/perm/kate/CommentRepliesActivity;->access$400(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v8}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result v8

    int-to-long v8, v8

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$like:Z

    iget-object v12, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v12}, Lcom/perm/kate/CommentRepliesActivity;->access$1100(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v12

    invoke-virtual/range {v1 .. v13}, Lcom/perm/kate/db/DataHelper;->updateCommentLikes(JJJJLjava/lang/Long;ZJ)V

    .line 391
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentRepliesActivity;->access$000(Lcom/perm/kate/CommentRepliesActivity;)V

    .line 395
    .end local v0    # "code":I
    :cond_1
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 371
    move-object v10, p1

    check-cast v10, Ljava/lang/Long;

    .line 372
    .local v10, "likes":Ljava/lang/Long;
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$comment_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$600(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$400(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result v0

    int-to-long v8, v0

    iget-boolean v11, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$like:Z

    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$1100(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v12

    invoke-virtual/range {v1 .. v13}, Lcom/perm/kate/db/DataHelper;->updateCommentLikes(JJJJLjava/lang/Long;ZJ)V

    .line 373
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$comment:Lcom/perm/kate/api/Comment;

    iget-boolean v1, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$like:Z

    iput-boolean v1, v0, Lcom/perm/kate/api/Comment;->user_like:Z

    .line 374
    iget-boolean v0, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$like:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$comment:Lcom/perm/kate/api/Comment;

    iget v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$10;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$000(Lcom/perm/kate/CommentRepliesActivity;)V

    .line 379
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$10;->val$comment:Lcom/perm/kate/api/Comment;

    iget v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    goto :goto_0
.end method
