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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/perm/kate/MenuItemDetails;->textId:I

    .line 14
    iput p2, p0, Lcom/perm/kate/MenuItemDetails;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/perm/kate/MenuItemDetails;->text:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/perm/kate/MenuItemDetails;->code:I

    return-void
.end method

.method public static toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;
    .locals 4

    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 24
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/MenuItemDetails;

    .line 25
    iget-object v3, v2, Lcom/perm/kate/MenuItemDetails;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 26
    aput-object v3, v0, v1

    goto :goto_1

    .line 27
    :cond_0
    iget v2, v2, Lcom/perm/kate/MenuItemDetails;->textId:I

    if-eqz v2, :cond_1

    .line 28
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 30
    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
