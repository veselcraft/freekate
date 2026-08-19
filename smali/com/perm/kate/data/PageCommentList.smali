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

.field public count:I

.field public is_grouped:Z

.field public is_new:Z

.field public is_sorted:Z

.field public is_sorted_by_date:Z

.field page_size:I

.field pages:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/data/NotifyObject;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    .line 296
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/data/PageCommentList;->comment_ids:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/data/PageCommentList;Ljava/util/ArrayList;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/perm/kate/data/PageCommentList;->processDuplicates(Ljava/util/ArrayList;)V

    return-void
.end method

.method private makeTree(Ljava/util/ArrayList;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 187
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 188
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/data/PageCommentList$CommentData;

    .line 189
    iget-object v3, v2, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v3, v3, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 193
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/data/PageCommentList$CommentData;

    .line 194
    iget-object v5, v4, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v5, v5, Lcom/perm/kate/api/Comment;->cid:J

    iget-object v7, v2, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v7, v7, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 198
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget v5, v5, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    iget v6, v4, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    if-gt v5, v6, :cond_1

    .line 199
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    invoke-virtual {p1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 201
    iget v3, v4, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private makeTreeNew(Ljava/util/ArrayList;)V
    .locals 8

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 211
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 212
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/data/PageCommentList$CommentData;

    .line 213
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v4, v3, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-object v5, v4, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget v4, v4, Lcom/perm/kate/api/Comment;->thread_count:I

    if-lez v4, :cond_1

    const/4 v4, 0x0

    .line 215
    :goto_1
    iget-object v5, v3, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-object v5, v5, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 216
    new-instance v5, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object v6, v3, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-object v6, v6, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/api/Comment;

    invoke-direct {v5, v6}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/api/Comment;)V

    const/4 v6, 0x1

    .line 217
    iput v6, v5, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    .line 218
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 220
    :cond_0
    iget-object v4, v3, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget v5, v4, Lcom/perm/kate/api/Comment;->thread_count:I

    iget-object v4, v4, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v5, v4, :cond_1

    .line 221
    new-instance v4, Lcom/perm/kate/data/PageCommentList$CommentData;

    sget-object v5, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->SHOW_ALL_REPLIES:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    invoke-direct {v4, v5, v1}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;I)V

    .line 222
    new-instance v5, Lcom/perm/kate/api/Comment;

    invoke-direct {v5}, Lcom/perm/kate/api/Comment;-><init>()V

    iput-object v5, v4, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    const-wide/16 v6, 0x0

    .line 223
    iput-wide v6, v5, Lcom/perm/kate/api/Comment;->cid:J

    .line 224
    iget-object v3, v3, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v6, v3, Lcom/perm/kate/api/Comment;->cid:J

    iput-wide v6, v5, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    .line 225
    iput-wide v6, v4, Lcom/perm/kate/data/PageCommentList$CommentData;->parent_comment_id:J

    .line 226
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 231
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private processDuplicates(Ljava/util/ArrayList;)V
    .locals 4

    .line 299
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 300
    iget-object v1, p0, Lcom/perm/kate/data/PageCommentList;->comment_ids:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Comment;

    iget-wide v2, v2, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 305
    iget-object v1, p0, Lcom/perm/kate/data/PageCommentList;->comment_ids:Ljava/util/HashSet;

    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addPage(Lcom/perm/kate/api/CommentList;)V
    .locals 3

    .line 54
    iget-object v0, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/perm/kate/data/PageCommentList;->processDuplicates(Ljava/util/ArrayList;)V

    .line 55
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    new-instance v1, Lcom/perm/kate/data/Page;

    iget-object v2, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/perm/kate/data/Page;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget p1, p1, Lcom/perm/kate/api/CommentList;->count:I

    iput p1, p0, Lcom/perm/kate/data/PageCommentList;->count:I

    return-void
.end method

.method public addRepliesToComment(JLcom/perm/kate/api/CommentList;)V
    .locals 0

    .line 289
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/data/PageCommentList;->getComment(Ljava/lang/Long;)Lcom/perm/kate/api/Comment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 291
    iget p2, p3, Lcom/perm/kate/api/CommentList;->count:I

    iput p2, p1, Lcom/perm/kate/api/Comment;->thread_count:I

    .line 292
    iget-object p1, p1, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    iget-object p2, p3, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public deleteComment(Ljava/lang/Long;)V
    .locals 11

    .line 267
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/data/Page;

    .line 268
    iget-object v2, v1, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Comment;

    .line 270
    iget-wide v4, v3, Lcom/perm/kate/api/Comment;->cid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 271
    iget-object p1, v1, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 272
    iget p1, p0, Lcom/perm/kate/data/PageCommentList;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/perm/kate/data/PageCommentList;->count:I

    return-void

    .line 276
    :cond_2
    iget-object v4, v3, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Comment;

    .line 277
    iget-wide v6, v5, Lcom/perm/kate/api/Comment;->cid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    .line 278
    iget-object p1, v3, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 279
    iget p1, v3, Lcom/perm/kate/api/Comment;->thread_count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v3, Lcom/perm/kate/api/Comment;->thread_count:I

    :cond_4
    return-void
.end method

.method public abstract downloadComments(ILcom/perm/kate/session/Callback;)V
.end method

.method public getComment(Ljava/lang/Long;)Lcom/perm/kate/api/Comment;
    .locals 8

    .line 256
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/data/Page;

    .line 257
    iget-object v1, v1, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Comment;

    .line 259
    iget-wide v3, v2, Lcom/perm/kate/api/Comment;->cid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComments()Ljava/util/ArrayList;
    .locals 7

    .line 62
    iget-boolean v0, p0, Lcom/perm/kate/data/PageCommentList;->is_sorted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 65
    iget-object v3, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/data/Page;

    .line 66
    sget-object v4, Lcom/perm/kate/data/PageCommentList$5;->$SwitchMap$com$perm$kate$data$Page$PageStatus:[I

    iget-object v5, v3, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_0

    goto :goto_2

    .line 68
    :cond_0
    iget-object v3, v3, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Comment;

    .line 69
    invoke-static {v4}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Lcom/perm/kate/api/Comment;)V

    .line 70
    new-instance v5, Lcom/perm/kate/data/PageCommentList$CommentData;

    invoke-direct {v5, v4}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/api/Comment;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_2
    new-instance v1, Lcom/perm/kate/data/PageCommentList$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/data/PageCommentList$1;-><init>(Lcom/perm/kate/data/PageCommentList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    iget-boolean v1, p0, Lcom/perm/kate/data/PageCommentList;->is_new:Z

    if-eqz v1, :cond_3

    .line 83
    invoke-direct {p0, v0}, Lcom/perm/kate/data/PageCommentList;->makeTreeNew(Ljava/util/ArrayList;)V

    :cond_3
    return-object v0

    .line 87
    :cond_4
    iget-boolean v0, p0, Lcom/perm/kate/data/PageCommentList;->is_sorted_by_date:Z

    if-eqz v0, :cond_9

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    :goto_3
    iget-object v3, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 90
    iget-object v3, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/data/Page;

    .line 91
    sget-object v4, Lcom/perm/kate/data/PageCommentList$5;->$SwitchMap$com$perm$kate$data$Page$PageStatus:[I

    iget-object v5, v3, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_5

    goto :goto_5

    .line 93
    :cond_5
    iget-object v3, v3, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Comment;

    .line 94
    invoke-static {v4}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Lcom/perm/kate/api/Comment;)V

    .line 95
    new-instance v5, Lcom/perm/kate/data/PageCommentList$CommentData;

    invoke-direct {v5, v4}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/api/Comment;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v5, v4, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 97
    iget-object v4, v4, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Comment;

    .line 98
    invoke-static {v5}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Lcom/perm/kate/api/Comment;)V

    .line 99
    new-instance v6, Lcom/perm/kate/data/PageCommentList$CommentData;

    invoke-direct {v6, v5}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/api/Comment;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 106
    :cond_8
    new-instance v1, Lcom/perm/kate/data/PageCommentList$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/data/PageCommentList$2;-><init>(Lcom/perm/kate/data/PageCommentList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    .line 116
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    :goto_6
    iget-object v3, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_14

    .line 118
    iget-object v3, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/data/Page;

    .line 119
    sget-object v4, Lcom/perm/kate/data/PageCommentList$5;->$SwitchMap$com$perm$kate$data$Page$PageStatus:[I

    iget-object v5, v3, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_f

    const/4 v3, 0x2

    if-eq v4, v3, :cond_b

    const/4 v3, 0x3

    if-eq v4, v3, :cond_a

    goto/16 :goto_a

    .line 128
    :cond_a
    new-instance v3, Lcom/perm/kate/data/PageCommentList$CommentData;

    sget-object v4, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->LOADING_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    invoke-direct {v3, v4, v1}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_b
    add-int/lit8 v3, v1, 0x1

    .line 122
    iget-object v4, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/data/Page;

    goto :goto_7

    :cond_c
    move-object v3, v5

    :goto_7
    add-int/lit8 v4, v1, -0x1

    if-ltz v4, :cond_d

    .line 123
    iget-object v5, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/perm/kate/data/Page;

    :cond_d
    if-eqz v3, :cond_e

    .line 124
    iget-object v3, v3, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    sget-object v4, Lcom/perm/kate/data/Page$PageStatus;->FULL:Lcom/perm/kate/data/Page$PageStatus;

    if-eq v3, v4, :cond_e

    if-eqz v5, :cond_e

    iget-object v3, v5, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    if-ne v3, v4, :cond_13

    .line 125
    :cond_e
    new-instance v3, Lcom/perm/kate/data/PageCommentList$CommentData;

    sget-object v4, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->EMPTY_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    invoke-direct {v3, v4, v1}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 132
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v3, v3, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Comment;

    .line 135
    invoke-static {v5}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Lcom/perm/kate/api/Comment;)V

    .line 136
    new-instance v6, Lcom/perm/kate/data/PageCommentList$CommentData;

    invoke-direct {v6, v5}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/api/Comment;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 139
    :cond_10
    iget-boolean v3, p0, Lcom/perm/kate/data/PageCommentList;->is_new:Z

    if-eqz v3, :cond_11

    .line 140
    invoke-direct {p0, v4}, Lcom/perm/kate/data/PageCommentList;->makeTreeNew(Ljava/util/ArrayList;)V

    goto :goto_9

    .line 141
    :cond_11
    iget-boolean v3, p0, Lcom/perm/kate/data/PageCommentList;->is_grouped:Z

    if-eqz v3, :cond_12

    .line 142
    invoke-direct {p0, v4}, Lcom/perm/kate/data/PageCommentList;->makeTree(Ljava/util/ArrayList;)V

    .line 143
    :cond_12
    :goto_9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_13
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_14
    return-object v0
.end method

.method public initFromCache(Ljava/util/ArrayList;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    new-instance v1, Lcom/perm/kate/data/Page;

    invoke-direct {v1, p1}, Lcom/perm/kate/data/Page;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public loadPage(ILcom/perm/kate/BaseActivity;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/data/Page;

    .line 152
    new-instance v1, Lcom/perm/kate/data/PageCommentList$3;

    invoke-direct {v1, p0, p2, v0, p2}, Lcom/perm/kate/data/PageCommentList$3;-><init>(Lcom/perm/kate/data/PageCommentList;Landroid/app/Activity;Lcom/perm/kate/data/Page;Lcom/perm/kate/BaseActivity;)V

    .line 172
    sget-object v2, Lcom/perm/kate/data/Page$PageStatus;->LOADING:Lcom/perm/kate/data/Page$PageStatus;

    iput-object v2, v0, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    .line 173
    invoke-virtual {p0}, Lcom/perm/kate/data/NotifyObject;->fireOnChange()V

    .line 174
    new-instance v0, Lcom/perm/kate/data/PageCommentList$4;

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/perm/kate/data/PageCommentList$4;-><init>(Lcom/perm/kate/data/PageCommentList;Lcom/perm/kate/BaseActivity;ILcom/perm/kate/session/Callback;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public reset(Lcom/perm/kate/api/CommentList;IZ)V
    .locals 4

    .line 32
    iput p2, p0, Lcom/perm/kate/data/PageCommentList;->page_size:I

    .line 33
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    iget-object v0, p0, Lcom/perm/kate/data/PageCommentList;->comment_ids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 35
    iget-object v0, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/perm/kate/data/PageCommentList;->processDuplicates(Ljava/util/ArrayList;)V

    .line 36
    iget v0, p1, Lcom/perm/kate/api/CommentList;->count:I

    iput v0, p0, Lcom/perm/kate/data/PageCommentList;->count:I

    .line 39
    div-int v1, v0, p2

    .line 40
    rem-int/2addr v0, p2

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    new-instance v3, Lcom/perm/kate/data/Page;

    invoke-direct {v3}, Lcom/perm/kate/data/Page;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 48
    iget-object p3, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    new-instance v0, Lcom/perm/kate/data/Page;

    iget-object p1, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Lcom/perm/kate/data/Page;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p3, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 50
    :cond_2
    iget-object p2, p0, Lcom/perm/kate/data/PageCommentList;->pages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-instance v0, Lcom/perm/kate/data/Page;

    iget-object p1, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Lcom/perm/kate/data/Page;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p2, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method
