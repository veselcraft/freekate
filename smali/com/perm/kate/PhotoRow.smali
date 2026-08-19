.class Lcom/perm/kate/PhotoRow;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"


# instance fields
.field photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 3

    .line 1991
    iget-object v0, p0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/PhotoPlace;

    .line 1992
    iget v2, v2, Lcom/perm/kate/PhotoPlace;->width:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
