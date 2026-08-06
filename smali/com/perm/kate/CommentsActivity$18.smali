.class Lcom/perm/kate/CommentsActivity$18;
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
    .line 725
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 738
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 739
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/CommentsActivity;->showProgressBar(Z)V

    .line 740
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 728
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/CommentList;

    .line 729
    .local v0, "comments":Lcom/perm/kate/api/CommentList;
    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 730
    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 731
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v1, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    iget v2, v2, Lcom/perm/kate/CommentsActivity;->page_size:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/data/PageCommentList;->reset(Lcom/perm/kate/api/CommentList;IZ)V

    .line 732
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v1, v3}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;Z)V

    .line 733
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/CommentsActivity;->showProgressBar(Z)V

    .line 734
    return-void
.end method
