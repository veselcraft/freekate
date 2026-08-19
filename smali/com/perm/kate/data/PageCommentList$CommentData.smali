.class public Lcom/perm/kate/data/PageCommentList$CommentData;
.super Ljava/lang/Object;
.source "PageCommentList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/data/PageCommentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;
    }
.end annotation


# instance fields
.field public comment:Lcom/perm/kate/api/Comment;

.field public offset:I

.field public page_number:I

.field public parent_comment_id:J

.field public type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;


# direct methods
.method public constructor <init>(Lcom/perm/kate/api/Comment;)V
    .locals 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    const-wide/16 v0, 0x0

    .line 244
    iput-wide v0, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->parent_comment_id:J

    .line 246
    iput-object p1, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    .line 247
    sget-object p1, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->COMMENT:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    iput-object p1, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;I)V
    .locals 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    const-wide/16 v0, 0x0

    .line 244
    iput-wide v0, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->parent_comment_id:J

    .line 250
    iput-object p1, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    .line 251
    iput p2, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->page_number:I

    return-void
.end method
