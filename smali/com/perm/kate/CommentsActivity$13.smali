.class Lcom/perm/kate/CommentsActivity$13;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
.method constructor <init>(Lcom/perm/kate/CommentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$13;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$13;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v1, Lcom/perm/kate/CommentsActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/data/PageCommentList$CommentData;

    .line 542
    .local v0, "commentData":Lcom/perm/kate/data/PageCommentList$CommentData;
    iget-object v1, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object v2, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->COMMENT:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne v1, v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$13;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/CommentTag;

    invoke-static {v2, v1}, Lcom/perm/kate/CommentsActivity;->access$1700(Lcom/perm/kate/CommentsActivity;Lcom/perm/kate/CommentTag;)V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object v2, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->EMPTY_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne v1, v2, :cond_0

    .line 545
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$13;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v1, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget v2, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->page_number:I

    iget-object v3, p0, Lcom/perm/kate/CommentsActivity$13;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/data/PageCommentList;->loadPage(ILcom/perm/kate/BaseActivity;)V

    goto :goto_0
.end method
