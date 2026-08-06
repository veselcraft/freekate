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

.field public type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;


# direct methods
.method public constructor <init>(Lcom/perm/kate/api/Comment;)V
    .locals 1
    .param p1, "comment"    # Lcom/perm/kate/api/Comment;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    .line 155
    iput-object p1, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    .line 156
    sget-object v0, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->COMMENT:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    iput-object v0, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;I)V
    .locals 1
    .param p1, "type"    # Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;
    .param p2, "page_number"    # I

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    .line 159
    iput-object p1, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    .line 160
    iput p2, p0, Lcom/perm/kate/data/PageCommentList$CommentData;->page_number:I

    .line 161
    return-void
.end method
