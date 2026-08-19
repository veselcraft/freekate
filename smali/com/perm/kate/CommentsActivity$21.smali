.class Lcom/perm/kate/CommentsActivity$21;
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

    .line 884
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$21;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 906
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 907
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$21;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 887
    check-cast p1, Lcom/perm/kate/api/Comment;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 889
    iget-wide v1, p1, Lcom/perm/kate/api/Comment;->parent_stack:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 890
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$21;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/CommentsActivity;->access$2700(Lcom/perm/kate/CommentsActivity;Lcom/perm/kate/api/Comment;)V

    goto :goto_0

    .line 893
    :cond_0
    new-instance v1, Lcom/perm/kate/api/CommentList;

    invoke-direct {v1}, Lcom/perm/kate/api/CommentList;-><init>()V

    const/4 v2, 0x1

    .line 894
    iput v2, v1, Lcom/perm/kate/api/CommentList;->count:I

    .line 895
    iget-object v3, v1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$21;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v3, p1, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget p1, p1, Lcom/perm/kate/CommentsActivity;->page_size:I

    invoke-virtual {v3, v1, p1, v2}, Lcom/perm/kate/data/PageCommentList;->reset(Lcom/perm/kate/api/CommentList;IZ)V

    .line 897
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$21;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/CommentsActivity;->access$800(Lcom/perm/kate/CommentsActivity;Z)V

    .line 898
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$21;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    goto :goto_0

    .line 901
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$21;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :goto_0
    return-void
.end method
