.class Lcom/perm/kate/CommentsActivity$22;
.super Lcom/perm/kate/session/Callback;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->downloadParentCommentById(Lcom/perm/kate/api/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$child:Lcom/perm/kate/api/Comment;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;Lcom/perm/kate/api/Comment;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-object p3, p0, Lcom/perm/kate/CommentsActivity$22;->val$child:Lcom/perm/kate/api/Comment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 946
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 947
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 918
    check-cast p1, Lcom/perm/kate/api/Comment;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 921
    iget-object v1, p1, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Comment;

    .line 922
    iget-wide v4, v2, Lcom/perm/kate/api/Comment;->cid:J

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$22;->val$child:Lcom/perm/kate/api/Comment;

    iget-wide v6, v2, Lcom/perm/kate/api/Comment;->cid:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 928
    iget-object v1, p1, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$22;->val$child:Lcom/perm/kate/api/Comment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 930
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-static {v1}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 932
    new-instance p1, Lcom/perm/kate/api/CommentList;

    invoke-direct {p1}, Lcom/perm/kate/api/CommentList;-><init>()V

    .line 934
    iput v3, p1, Lcom/perm/kate/api/CommentList;->count:I

    .line 935
    iput-object v1, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    .line 937
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v2, v1, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget v1, v1, Lcom/perm/kate/CommentsActivity;->page_size:I

    invoke-virtual {v2, p1, v1, v3}, Lcom/perm/kate/data/PageCommentList;->reset(Lcom/perm/kate/api/CommentList;IZ)V

    .line 938
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1, v3}, Lcom/perm/kate/CommentsActivity;->access$800(Lcom/perm/kate/CommentsActivity;Z)V

    .line 939
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 941
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$22;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
