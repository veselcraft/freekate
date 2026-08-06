.class Lcom/perm/kate/CommentsActivity$4;
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
    .line 158
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 173
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/CommentsActivity;->showProgressBar(Z)V

    .line 174
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 161
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/CommentList;

    .line 162
    .local v0, "comments":Lcom/perm/kate/api/CommentList;
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/CommentsActivity;->showProgressBar(Z)V

    .line 163
    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 166
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v1, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    invoke-virtual {v1, v0}, Lcom/perm/kate/data/PageCommentList;->addPage(Lcom/perm/kate/api/CommentList;)V

    .line 167
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$4;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;Z)V

    goto :goto_0
.end method
