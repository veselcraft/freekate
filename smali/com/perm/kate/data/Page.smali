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

.field status:Lcom/perm/kate/data/Page$PageStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    sget-object v0, Lcom/perm/kate/data/Page$PageStatus;->EMPTY:Lcom/perm/kate/data/Page$PageStatus;

    iput-object v0, p0, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    sget-object v0, Lcom/perm/kate/data/Page$PageStatus;->EMPTY:Lcom/perm/kate/data/Page$PageStatus;

    iput-object v0, p0, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    .line 322
    iput-object p1, p0, Lcom/perm/kate/data/Page;->comments:Ljava/util/ArrayList;

    .line 323
    sget-object p1, Lcom/perm/kate/data/Page$PageStatus;->FULL:Lcom/perm/kate/data/Page$PageStatus;

    iput-object p1, p0, Lcom/perm/kate/data/Page;->status:Lcom/perm/kate/data/Page$PageStatus;

    return-void
.end method
