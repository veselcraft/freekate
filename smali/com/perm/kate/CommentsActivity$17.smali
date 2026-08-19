.class Lcom/perm/kate/CommentsActivity$17;
.super Lcom/perm/kate/session/Callback;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->refreshReplyInThread(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$parent_comment_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;J)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$17;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-wide p3, p0, Lcom/perm/kate/CommentsActivity$17;->val$parent_comment_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 778
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 779
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$17;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 767
    check-cast p1, Lcom/perm/kate/api/CommentList;

    .line 768
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$17;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 769
    iget-object v0, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 771
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 772
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$17;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v0, v0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget-wide v1, p0, Lcom/perm/kate/CommentsActivity$17;->val$parent_comment_id:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/perm/kate/data/PageCommentList;->addRepliesToComment(JLcom/perm/kate/api/CommentList;)V

    .line 773
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$17;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->access$300(Lcom/perm/kate/CommentsActivity;)V

    return-void
.end method
