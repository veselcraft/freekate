.class Lcom/perm/kate/data/PageCommentList$3;
.super Lcom/perm/kate/session/Callback;
.source "PageCommentList.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/data/PageCommentList;

.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$page:Lcom/perm/kate/data/Page;


# direct methods
.method constructor <init>(Lcom/perm/kate/data/PageCommentList;Landroid/app/Activity;Lcom/perm/kate/data/Page;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/perm/kate/data/PageCommentList$3;->this$0:Lcom/perm/kate/data/PageCommentList;

    iput-object p3, p0, Lcom/perm/kate/data/PageCommentList$3;->val$page:Lcom/perm/kate/data/Page;

    iput-object p4, p0, Lcom/perm/kate/data/PageCommentList$3;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 166
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 167
    iget-object p1, p0, Lcom/perm/kate/data/PageCommentList$3;->val$page:Lcom/perm/kate/data/Page;

    sget-object v0, Lcom/perm/kate/data/Page$PageStatus;->EMPTY:Lcom/perm/kate/data/Page$PageStatus;

    iput-object v0, p1, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    .line 168
    iget-object p1, p0, Lcom/perm/kate/data/PageCommentList$3;->this$0:Lcom/perm/kate/data/PageCommentList;

    invoke-virtual {p1}, Lcom/perm/kate/data/NotifyObject;->fireOnChange()V

    .line 169
    iget-object p1, p0, Lcom/perm/kate/data/PageCommentList$3;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 155
    check-cast p1, Lcom/perm/kate/api/CommentList;

    .line 156
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList$3;->this$0:Lcom/perm/kate/data/PageCommentList;

    iget-object v1, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/data/PageCommentList;->access$000(Lcom/perm/kate/data/PageCommentList;Ljava/util/ArrayList;)V

    .line 157
    iget-object v0, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 158
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList$3;->val$page:Lcom/perm/kate/data/Page;

    iget-object v1, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    .line 159
    sget-object v1, Lcom/perm/kate/data/Page$PageStatus;->FULL:Lcom/perm/kate/data/Page$PageStatus;

    iput-object v1, v0, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    .line 160
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList$3;->this$0:Lcom/perm/kate/data/PageCommentList;

    iget p1, p1, Lcom/perm/kate/api/CommentList;->count:I

    iput p1, v0, Lcom/perm/kate/data/PageCommentList;->count:I

    .line 161
    invoke-virtual {v0}, Lcom/perm/kate/data/NotifyObject;->fireOnChange()V

    .line 162
    iget-object p1, p0, Lcom/perm/kate/data/PageCommentList$3;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
