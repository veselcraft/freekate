.class Lcom/perm/kate/CommentsActivity$23;
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

    .line 964
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$23;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 977
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 978
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$23;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 967
    check-cast p1, Lcom/perm/kate/api/CommentList;

    .line 968
    iget-object v0, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 969
    iget-object v0, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 970
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$23;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget v0, v0, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/perm/kate/data/PageCommentList;->reset(Lcom/perm/kate/api/CommentList;IZ)V

    .line 971
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$23;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {p1, v2}, Lcom/perm/kate/CommentsActivity;->access$800(Lcom/perm/kate/CommentsActivity;Z)V

    .line 972
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$23;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
