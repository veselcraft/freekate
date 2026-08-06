.class Lcom/perm/kate/PhotoRow;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"


# instance fields
.field photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/PhotoPlace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 4

    .prologue
    .line 1470
    const/4 v1, 0x0

    .line 1471
    .local v1, "sum":I
    iget-object v2, p0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/PhotoPlace;

    .line 1472
    .local v0, "place":Lcom/perm/kate/PhotoPlace;
    iget v3, v0, Lcom/perm/kate/PhotoPlace;->width:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 1473
    .end local v0    # "place":Lcom/perm/kate/PhotoPlace;
    :cond_0
    return v1
.end method
