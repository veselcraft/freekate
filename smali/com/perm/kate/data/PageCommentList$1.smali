.class Lcom/perm/kate/data/PageCommentList$1;
.super Lcom/perm/kate/session/Callback;
.source "PageCommentList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/data/PageCommentList;->loadPage(ILcom/perm/kate/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/data/PageCommentList;

.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$page:Lcom/perm/kate/data/Page;


# direct methods
.method constructor <init>(Lcom/perm/kate/data/PageCommentList;Landroid/app/Activity;Lcom/perm/kate/data/Page;Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/data/PageCommentList;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/perm/kate/data/PageCommentList$1;->this$0:Lcom/perm/kate/data/PageCommentList;

    iput-object p3, p0, Lcom/perm/kate/data/PageCommentList$1;->val$page:Lcom/perm/kate/data/Page;

    iput-object p4, p0, Lcom/perm/kate/data/PageCommentList$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 103
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList$1;->val$page:Lcom/perm/kate/data/Page;

    sget-object v1, Lcom/perm/kate/data/Page$PageStatus;->EMPTY:Lcom/perm/kate/data/Page$PageStatus;

    iput-object v1, v0, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    .line 104
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList$1;->this$0:Lcom/perm/kate/data/PageCommentList;

    invoke-virtual {v0}, Lcom/perm/kate/data/PageCommentList;->fireOnChange()V

    .line 105
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 106
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 91
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/CommentList;

    .line 92
    .local v0, "commentList":Lcom/perm/kate/api/CommentList;
    iget-object v1, p0, Lcom/perm/kate/data/PageCommentList$1;->this$0:Lcom/perm/kate/data/PageCommentList;

    iget-object v2, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/perm/kate/data/PageCommentList;->access$000(Lcom/perm/kate/data/PageCommentList;Ljava/util/ArrayList;)V

    .line 93
    iget-object v1, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 94
    iget-object v1, p0, Lcom/perm/kate/data/PageCommentList$1;->val$page:Lcom/perm/kate/data/Page;

    iget-object v2, v0, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    iput-object v2, v1, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    .line 95
    iget-object v1, p0, Lcom/perm/kate/data/PageCommentList$1;->val$page:Lcom/perm/kate/data/Page;

    sget-object v2, Lcom/perm/kate/data/Page$PageStatus;->FULL:Lcom/perm/kate/data/Page$PageStatus;

    iput-object v2, v1, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    .line 96
    iget-object v1, p0, Lcom/perm/kate/data/PageCommentList$1;->this$0:Lcom/perm/kate/data/PageCommentList;

    iget v2, v0, Lcom/perm/kate/api/CommentList;->count:I

    iput v2, v1, Lcom/perm/kate/data/PageCommentList;->count:I

    .line 97
    iget-object v1, p0, Lcom/perm/kate/data/PageCommentList$1;->this$0:Lcom/perm/kate/data/PageCommentList;

    invoke-virtual {v1}, Lcom/perm/kate/data/PageCommentList;->fireOnChange()V

    .line 98
    iget-object v1, p0, Lcom/perm/kate/data/PageCommentList$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 99
    return-void
.end method
