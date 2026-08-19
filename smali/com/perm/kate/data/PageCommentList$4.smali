.class Lcom/perm/kate/data/PageCommentList$4;
.super Ljava/lang/Thread;
.source "PageCommentList.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/data/PageCommentList;

.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$page_number:I


# direct methods
.method constructor <init>(Lcom/perm/kate/data/PageCommentList;Lcom/perm/kate/BaseActivity;ILcom/perm/kate/session/Callback;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/perm/kate/data/PageCommentList$4;->this$0:Lcom/perm/kate/data/PageCommentList;

    iput-object p2, p0, Lcom/perm/kate/data/PageCommentList$4;->val$activity:Lcom/perm/kate/BaseActivity;

    iput p3, p0, Lcom/perm/kate/data/PageCommentList$4;->val$page_number:I

    iput-object p4, p0, Lcom/perm/kate/data/PageCommentList$4;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList$4;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 179
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList$4;->this$0:Lcom/perm/kate/data/PageCommentList;

    iget v1, p0, Lcom/perm/kate/data/PageCommentList$4;->val$page_number:I

    iget v2, v0, Lcom/perm/kate/data/PageCommentList;->page_size:I

    mul-int v1, v1, v2

    iget-object v2, p0, Lcom/perm/kate/data/PageCommentList$4;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/data/PageCommentList;->downloadComments(ILcom/perm/kate/session/Callback;)V

    return-void
.end method
