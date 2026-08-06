.class public Lcom/perm/kate/MenuItemDetails;
.super Ljava/lang/Object;
.source "MenuItemDetails.java"


# instance fields
.field public code:I

.field public text:Ljava/lang/String;

.field public textId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "text_id"    # I
    .param p2, "code"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/perm/kate/MenuItemDetails;->textId:I

    .line 14
    iput p2, p0, Lcom/perm/kate/MenuItemDetails;->code:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/perm/kate/MenuItemDetails;->text:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/perm/kate/MenuItemDetails;->code:I

    .line 10
    return-void
.end method

.method public static toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/MenuItemDetails;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 23
    .local v2, "items":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    .line 25
    .local v1, "item":Lcom/perm/kate/MenuItemDetails;
    iget-object v3, v1, Lcom/perm/kate/MenuItemDetails;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 26
    iget-object v3, v1, Lcom/perm/kate/MenuItemDetails;->text:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 23
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iget v3, v1, Lcom/perm/kate/MenuItemDetails;->textId:I

    if-eqz v3, :cond_1

    .line 28
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget v4, v1, Lcom/perm/kate/MenuItemDetails;->textId:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 30
    :cond_1
    const-string v3, ""

    aput-object v3, v2, v0

    goto :goto_1

    .line 32
    .end local v1    # "item":Lcom/perm/kate/MenuItemDetails;
    :cond_2
    return-object v2
.end method
