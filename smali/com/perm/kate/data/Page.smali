.class Lcom/perm/kate/data/Page;
.super Ljava/lang/Object;
.source "PageCommentList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/data/Page$PageStatus;
    }
.end annotation


# instance fields
.field comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Comment;",
            ">;"
        }
    .end annotation
.end field

.field status:Lcom/perm/kate/data/Page$PageStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    sget-object v0, Lcom/perm/kate/data/Page$PageStatus;->EMPTY:Lcom/perm/kate/data/Page$PageStatus;

    iput-object v0, p0, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 203
    .local p1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Comment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    sget-object v0, Lcom/perm/kate/data/Page$PageStatus;->EMPTY:Lcom/perm/kate/data/Page$PageStatus;

    iput-object v0, p0, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    .line 204
    iput-object p1, p0, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    .line 205
    sget-object v0, Lcom/perm/kate/data/Page$PageStatus;->FULL:Lcom/perm/kate/data/Page$PageStatus;

    iput-object v0, p0, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    .line 206
    return-void
.end method
