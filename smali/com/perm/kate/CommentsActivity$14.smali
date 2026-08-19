.class Lcom/perm/kate/CommentsActivity$14;
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

    .line 636
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$14;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 639
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$14;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p1, p1, Lcom/perm/kate/CommentsActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/data/PageCommentList$CommentData;

    .line 640
    iget-object p3, p1, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object p4, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->COMMENT:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne p3, p4, :cond_0

    .line 641
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity$14;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/CommentTag;

    invoke-static {p1, p2}, Lcom/perm/kate/CommentsActivity;->access$1900(Lcom/perm/kate/CommentsActivity;Lcom/perm/kate/CommentTag;)V

    goto :goto_0

    .line 642
    :cond_0
    sget-object p2, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->EMPTY_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne p3, p2, :cond_1

    .line 643
    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$14;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object p3, p2, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget p1, p1, Lcom/perm/kate/data/PageCommentList$CommentData;->page_number:I

    invoke-virtual {p3, p1, p2}, Lcom/perm/kate/data/PageCommentList;->loadPage(ILcom/perm/kate/BaseActivity;)V

    goto :goto_0

    .line 644
    :cond_1
    sget-object p2, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->SHOW_ALL_REPLIES:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne p3, p2, :cond_2

    .line 645
    iget-object p2, p0, Lcom/perm/kate/CommentsActivity$14;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-wide p3, p1, Lcom/perm/kate/data/PageCommentList$CommentData;->parent_comment_id:J

    invoke-static {p2, p3, p4}, Lcom/perm/kate/CommentsActivity;->access$2000(Lcom/perm/kate/CommentsActivity;J)V

    :cond_2
    :goto_0
    return-void
.end method
