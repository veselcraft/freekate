.class Lcom/perm/kate/CommentsActivity$16;
.super Lcom/perm/kate/session/Callback;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$comment:Lcom/perm/kate/api/Comment;

.field final synthetic val$comment_id:Ljava/lang/Long;

.field final synthetic val$like:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;Ljava/lang/Long;ZLcom/perm/kate/api/Comment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-object p3, p0, Lcom/perm/kate/CommentsActivity$16;->val$comment_id:Ljava/lang/Long;

    iput-boolean p4, p0, Lcom/perm/kate/CommentsActivity$16;->val$like:Z

    iput-object p5, p0, Lcom/perm/kate/CommentsActivity$16;->val$comment:Lcom/perm/kate/api/Comment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 14
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 649
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 651
    instance-of v1, p1, Lcom/perm/kate/api/KException;

    if-eqz v1, :cond_1

    .line 652
    check-cast p1, Lcom/perm/kate/api/KException;

    .end local p1    # "ex":Ljava/lang/Throwable;
    iget v0, p1, Lcom/perm/kate/api/KException;->error_code:I

    .line 655
    .local v0, "code":I
    const/16 v1, 0xe6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe7

    if-ne v0, v1, :cond_1

    .line 656
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$16;->val$comment_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v4}, Lcom/perm/kate/CommentsActivity;->access$200(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v6}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v8}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)I

    move-result v8

    int-to-long v8, v8

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/perm/kate/CommentsActivity$16;->val$like:Z

    iget-object v12, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v12}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v12

    invoke-virtual/range {v1 .. v13}, Lcom/perm/kate/db/DataHelper;->updateCommentLikes(JJJJLjava/lang/Long;ZJ)V

    .line 657
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentsActivity;->access$100(Lcom/perm/kate/CommentsActivity;)V

    .line 661
    .end local v0    # "code":I
    :cond_1
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 637
    move-object v10, p1

    check-cast v10, Ljava/lang/Long;

    .line 638
    .local v10, "likes":Ljava/lang/Long;
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$16;->val$comment_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$200(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    int-to-long v8, v0

    iget-boolean v11, p0, Lcom/perm/kate/CommentsActivity$16;->val$like:Z

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v12

    invoke-virtual/range {v1 .. v13}, Lcom/perm/kate/db/DataHelper;->updateCommentLikes(JJJJLjava/lang/Long;ZJ)V

    .line 639
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$16;->val$comment:Lcom/perm/kate/api/Comment;

    iget-boolean v1, p0, Lcom/perm/kate/CommentsActivity$16;->val$like:Z

    iput-boolean v1, v0, Lcom/perm/kate/api/Comment;->user_like:Z

    .line 640
    iget-boolean v0, p0, Lcom/perm/kate/CommentsActivity$16;->val$like:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$16;->val$comment:Lcom/perm/kate/api/Comment;

    iget v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    .line 644
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$16;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$100(Lcom/perm/kate/CommentsActivity;)V

    .line 645
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$16;->val$comment:Lcom/perm/kate/api/Comment;

    iget v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    goto :goto_0
.end method
