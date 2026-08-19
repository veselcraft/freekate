.class Lcom/perm/kate/data/PageCommentList$1;
.super Ljava/lang/Object;
.source "PageCommentList.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/perm/kate/data/PageCommentList;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/perm/kate/data/PageCommentList$CommentData;Lcom/perm/kate/data/PageCommentList$CommentData;)I
    .locals 0

    .line 77
    iget-object p1, p1, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget p1, p1, Lcom/perm/kate/api/Comment;->like_count:I

    iget-object p2, p2, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget p2, p2, Lcom/perm/kate/api/Comment;->like_count:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 75
    check-cast p1, Lcom/perm/kate/data/PageCommentList$CommentData;

    check-cast p2, Lcom/perm/kate/data/PageCommentList$CommentData;

    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/data/PageCommentList$1;->compare(Lcom/perm/kate/data/PageCommentList$CommentData;Lcom/perm/kate/data/PageCommentList$CommentData;)I

    move-result p1

    return p1
.end method
