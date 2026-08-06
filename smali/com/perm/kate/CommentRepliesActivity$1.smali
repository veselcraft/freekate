.class Lcom/perm/kate/CommentRepliesActivity$1;
.super Lcom/perm/kate/session/Callback;
.source "CommentRepliesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentRepliesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentRepliesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentRepliesActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$1;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 90
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$1;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/CommentRepliesActivity;->showProgressBar(Z)V

    .line 91
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 63
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/CommentList;

    .line 64
    .local v0, "comments":Lcom/perm/kate/api/CommentList;
    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$1;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-virtual {v1, v6}, Lcom/perm/kate/CommentRepliesActivity;->showProgressBar(Z)V

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Comment;

    iget-wide v2, v1, Lcom/perm/kate/api/Comment;->cid:J

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$1;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-wide v4, v1, Lcom/perm/kate/CommentRepliesActivity;->requested_comment:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$1;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-virtual {v1, v6}, Lcom/perm/kate/CommentRepliesActivity;->showProgressBar(Z)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 74
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$1;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    .line 75
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$1;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object v2, v1, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    new-instance v3, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Comment;

    invoke-direct {v3, v1}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/api/Comment;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$1;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentRepliesActivity;->access$000(Lcom/perm/kate/CommentRepliesActivity;)V

    .line 79
    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Comment;

    invoke-static {v1}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Lcom/perm/kate/api/Comment;)V

    .line 80
    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Comment;

    iget-wide v2, v1, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 82
    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity$1;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$1;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentRepliesActivity;->access$100(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Comment;

    iget-wide v4, v1, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    invoke-static {v2, v6, v3, v4, v5}, Lcom/perm/kate/CommentRepliesActivity;->access$200(Lcom/perm/kate/CommentRepliesActivity;ILcom/perm/kate/session/Callback;J)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$1;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-virtual {v1, v6}, Lcom/perm/kate/CommentRepliesActivity;->showProgressBar(Z)V

    goto :goto_0
.end method
