.class Lcom/perm/kate/CommentsActivity$5;
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

    .line 206
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 220
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 221
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 209
    check-cast p1, Lcom/perm/kate/api/CommentList;

    .line 210
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 211
    iget-object v0, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 214
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v0, v0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    invoke-virtual {v0, p1}, Lcom/perm/kate/data/PageCommentList;->addPage(Lcom/perm/kate/api/CommentList;)V

    .line 215
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$5;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/perm/kate/CommentsActivity;->access$800(Lcom/perm/kate/CommentsActivity;Z)V

    return-void
.end method
