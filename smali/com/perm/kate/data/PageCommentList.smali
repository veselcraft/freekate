.class public abstract Lcom/perm/kate/data/PageCommentList;
.super Lcom/perm/kate/data/NotifyObject;
.source "PageCommentList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/data/PageCommentList$CommentData;
    }
.end annotation


# instance fields
.field comment_ids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

.field public is_grouped:Z

.field page_size:I

.field pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/data/Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/perm/kate/data/NotifyObject;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/data/PageCommentList;->comment_ids:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/data/PageCommentList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/data/PageCommentList;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/perm/kate/data/PageCommentList;->processDuplicates(Ljava/util/ArrayList;)V

    return-void
.end method

.method private makeTree(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/data/PageCommentList$CommentData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "commentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/data/PageCommentList$CommentData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 124
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/data/PageCommentList$CommentData;

    .line 125
    .local v0, "child":Lcom/perm/kate/data/PageCommentList$CommentData;
    iget-object v4, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v4, v4, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 123
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 129
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/data/PageCommentList$CommentData;

    .line 130
    .local v3, "parent":Lcom/perm/kate/data/PageCommentList$CommentData;
    iget-object v4, v3, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v4, v4, Lcom/perm/kate/api/Comment;->cid:J

    iget-object v6, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v6, v6, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 133
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 134
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget v4, v4, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    iget v5, v3, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    if-gt v4, v5, :cond_2

    .line 135
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 136
    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    iget v4, v3, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    goto :goto_1

    .line 128
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 142
    .end local v0    # "child":Lcom/perm/kate/data/PageCommentList$CommentData;
    .end local v2    # "j":I
    .end local v3    # "parent":Lcom/perm/kate/data/PageCommentList$CommentData;
    :cond_4
    return-void
.end method

.method private processDuplicates(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Comment;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 182
    iget-object v3, p0, Lcom/perm/kate/data/PageCommentList;->comment_ids:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Comment;

    iget-wide v4, v2, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 181
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 187
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    iget-object v3, p0, Lcom/perm/kate/data/PageCommentList;->comment_ids:Ljava/util/HashSet;

    iget-wide v4, v0, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v0    # "comment":Lcom/perm/kate/api/Comment;
    :cond_2
    return-void
.end method


# virtual methods
.method public addPage(Lcom/perm/kate/api/CommentList;)V
    .locals 3
    .param p1, "comments"    # Lcom/perm/kate/api/CommentList;

    .prologue
    .line 46
    iget-object v0, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/perm/kate/data/PageCommentList;->processDuplicates(Ljava/util/ArrayList;)V

    .line 47
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    new-instance v1, Lcom/perm/kate/data/Page;

    iget-object v2, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/perm/kate/data/Page;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget v0, p1, Lcom/perm/kate/api/CommentList;->count:I

    iput v0, p0, Lcom/perm/kate/data/PageCommentList;->count:I

    .line 51
    return-void
.end method

.method public deleteComment(Ljava/lang/Long;)V
    .locals 8
    .param p1, "commentId"    # Ljava/lang/Long;

    .prologue
    .line 165
    iget-object v2, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/data/Page;

    .line 166
    .local v1, "page":Lcom/perm/kate/data/Page;
    iget-object v3, v1, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, v1, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 168
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    iget-wide v4, v0, Lcom/perm/kate/api/Comment;->cid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 169
    iget-object v2, v1, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    iget v2, p0, Lcom/perm/kate/data/PageCommentList;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/perm/kate/data/PageCommentList;->count:I

    .line 176
    .end local v0    # "comment":Lcom/perm/kate/api/Comment;
    .end local v1    # "page":Lcom/perm/kate/data/Page;
    :cond_2
    return-void
.end method

.method public abstract downloadComments(ILcom/perm/kate/session/Callback;)V
.end method

.method public getComments()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/data/PageCommentList$CommentData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 54
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/data/PageCommentList$CommentData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 56
    iget-object v7, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/data/Page;

    .line 57
    .local v4, "page":Lcom/perm/kate/data/Page;
    sget-object v7, Lcom/perm/kate/data/PageCommentList$3;->$SwitchMap$com$perm$kate$data$Page$PageStatus:[I

    iget-object v9, v4, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    invoke-virtual {v9}, Lcom/perm/kate/data/Page$PageStatus;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 55
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :pswitch_0
    add-int/lit8 v7, v2, 0x1

    iget-object v9, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    iget-object v7, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/data/Page;

    move-object v3, v7

    .line 61
    .local v3, "next_page":Lcom/perm/kate/data/Page;
    :goto_2
    add-int/lit8 v7, v2, -0x1

    if-ltz v7, :cond_3

    iget-object v7, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/data/Page;

    move-object v5, v7

    .line 62
    .local v5, "prev_page":Lcom/perm/kate/data/Page;
    :goto_3
    if-eqz v3, :cond_1

    iget-object v7, v3, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    sget-object v9, Lcom/perm/kate/data/Page$PageStatus;->FULL:Lcom/perm/kate/data/Page$PageStatus;

    if-eq v7, v9, :cond_1

    if-eqz v5, :cond_1

    iget-object v7, v5, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    sget-object v9, Lcom/perm/kate/data/Page$PageStatus;->FULL:Lcom/perm/kate/data/Page$PageStatus;

    if-ne v7, v9, :cond_0

    .line 63
    :cond_1
    new-instance v7, Lcom/perm/kate/data/PageCommentList$CommentData;

    sget-object v9, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->EMPTY_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    invoke-direct {v7, v9, v2}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "next_page":Lcom/perm/kate/data/Page;
    .end local v5    # "prev_page":Lcom/perm/kate/data/Page;
    :cond_2
    move-object v3, v8

    .line 60
    goto :goto_2

    .restart local v3    # "next_page":Lcom/perm/kate/data/Page;
    :cond_3
    move-object v5, v8

    .line 61
    goto :goto_3

    .line 66
    .end local v3    # "next_page":Lcom/perm/kate/data/Page;
    :pswitch_1
    new-instance v7, Lcom/perm/kate/data/PageCommentList$CommentData;

    sget-object v9, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->LOADING_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    invoke-direct {v7, v9, v2}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "commentDataPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/data/PageCommentList$CommentData;>;"
    iget-object v7, v4, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 73
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    invoke-static {v0}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Lcom/perm/kate/api/Comment;)V

    .line 74
    new-instance v9, Lcom/perm/kate/data/PageCommentList$CommentData;

    invoke-direct {v9, v0}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/api/Comment;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 77
    .end local v0    # "comment":Lcom/perm/kate/api/Comment;
    :cond_4
    iget-boolean v7, p0, Lcom/perm/kate/data/PageCommentList;->is_grouped:Z

    if-eqz v7, :cond_5

    .line 78
    invoke-direct {p0, v1}, Lcom/perm/kate/data/PageCommentList;->makeTree(Ljava/util/ArrayList;)V

    .line 79
    :cond_5
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 83
    .end local v1    # "commentDataPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/data/PageCommentList$CommentData;>;"
    .end local v4    # "page":Lcom/perm/kate/data/Page;
    :cond_6
    return-object v6

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initFromCache(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "old_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Comment;>;"
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    new-instance v1, Lcom/perm/kate/data/Page;

    invoke-direct {v1, p1}, Lcom/perm/kate/data/Page;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public loadPage(ILcom/perm/kate/BaseActivity;)V
    .locals 3
    .param p1, "page_number"    # I
    .param p2, "activity"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 87
    iget-object v2, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/data/Page;

    .line 88
    .local v1, "page":Lcom/perm/kate/data/Page;
    new-instance v0, Lcom/perm/kate/data/PageCommentList$1;

    invoke-direct {v0, p0, p2, v1, p2}, Lcom/perm/kate/data/PageCommentList$1;-><init>(Lcom/perm/kate/data/PageCommentList;Landroid/app/Activity;Lcom/perm/kate/data/Page;Lcom/perm/kate/BaseActivity;)V

    .line 108
    .local v0, "callback":Lcom/perm/kate/session/Callback;
    sget-object v2, Lcom/perm/kate/data/Page$PageStatus;->LOADING:Lcom/perm/kate/data/Page$PageStatus;

    iput-object v2, v1, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    .line 109
    invoke-virtual {p0}, Lcom/perm/kate/data/PageCommentList;->fireOnChange()V

    .line 110
    new-instance v2, Lcom/perm/kate/data/PageCommentList$2;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/perm/kate/data/PageCommentList$2;-><init>(Lcom/perm/kate/data/PageCommentList;Lcom/perm/kate/BaseActivity;ILcom/perm/kate/session/Callback;)V

    .line 117
    invoke-virtual {v2}, Lcom/perm/kate/data/PageCommentList$2;->start()V

    .line 118
    return-void
.end method

.method public reset(Lcom/perm/kate/api/CommentList;IZ)V
    .locals 6
    .param p1, "initial_page"    # Lcom/perm/kate/api/CommentList;
    .param p2, "page_size"    # I
    .param p3, "last_page"    # Z

    .prologue
    .line 24
    iput p2, p0, Lcom/perm/kate/data/PageCommentList;->page_size:I

    .line 25
    iget-object v2, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 26
    iget-object v2, p0, Lcom/perm/kate/data/PageCommentList;->comment_ids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 27
    iget-object v2, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/perm/kate/data/PageCommentList;->processDuplicates(Ljava/util/ArrayList;)V

    .line 28
    iget v2, p1, Lcom/perm/kate/api/CommentList;->count:I

    iput v2, p0, Lcom/perm/kate/data/PageCommentList;->count:I

    .line 31
    iget v2, p1, Lcom/perm/kate/api/CommentList;->count:I

    div-int v1, v2, p2

    .line 32
    .local v1, "page_count":I
    iget v2, p1, Lcom/perm/kate/api/CommentList;->count:I

    rem-int/2addr v2, p2

    if-eqz v2, :cond_0

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 36
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    new-instance v3, Lcom/perm/kate/data/Page;

    invoke-direct {v3}, Lcom/perm/kate/data/Page;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    if-nez p3, :cond_2

    .line 40
    iget-object v2, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lcom/perm/kate/data/Page;

    iget-object v5, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Lcom/perm/kate/data/Page;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 43
    :goto_1
    return-void

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Lcom/perm/kate/data/Page;

    iget-object v5, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Lcom/perm/kate/data/Page;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method
