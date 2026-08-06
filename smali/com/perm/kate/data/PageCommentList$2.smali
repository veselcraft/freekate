.class Lcom/perm/kate/data/PageCommentList$2;
.super Ljava/lang/Thread;
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

.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$page_number:I


# direct methods
.method constructor <init>(Lcom/perm/kate/data/PageCommentList;Lcom/perm/kate/BaseActivity;ILcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/data/PageCommentList;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/perm/kate/data/PageCommentList$2;->this$0:Lcom/perm/kate/data/PageCommentList;

    iput-object p2, p0, Lcom/perm/kate/data/PageCommentList$2;->val$activity:Lcom/perm/kate/BaseActivity;

    iput p3, p0, Lcom/perm/kate/data/PageCommentList$2;->val$page_number:I

    iput-object p4, p0, Lcom/perm/kate/data/PageCommentList$2;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList$2;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 115
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList$2;->this$0:Lcom/perm/kate/data/PageCommentList;

    iget v1, p0, Lcom/perm/kate/data/PageCommentList$2;->val$page_number:I

    iget-object v2, p0, Lcom/perm/kate/data/PageCommentList$2;->this$0:Lcom/perm/kate/data/PageCommentList;

    iget v2, v2, Lcom/perm/kate/data/PageCommentList;->page_size:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/perm/kate/data/PageCommentList$2;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/data/PageCommentList;->downloadComments(ILcom/perm/kate/session/Callback;)V

    .line 116
    return-void
.end method
