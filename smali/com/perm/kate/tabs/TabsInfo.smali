.class public Lcom/perm/kate/tabs/TabsInfo;
.super Ljava/lang/Object;
.source "TabsInfo.java"


# instance fields
.field private tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/tabs/TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/tabs/TabsInfo;->tabs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/perm/kate/tabs/TabsInfo;->tabs:Ljava/util/ArrayList;

    new-instance v1, Lcom/perm/kate/tabs/TabInfo;

    invoke-direct {v1, p1}, Lcom/perm/kate/tabs/TabInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    return-void
.end method

.method public add(Ljava/lang/String;I)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # I

    .prologue
    .line 13
    iget-object v0, p0, Lcom/perm/kate/tabs/TabsInfo;->tabs:Ljava/util/ArrayList;

    new-instance v1, Lcom/perm/kate/tabs/TabInfo;

    invoke-direct {v1, p1, p2}, Lcom/perm/kate/tabs/TabInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public get(I)Lcom/perm/kate/tabs/TabInfo;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/tabs/TabsInfo;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/tabs/TabInfo;

    return-object v0
.end method

.method public getTabIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/tabs/TabsInfo;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/perm/kate/tabs/TabsInfo;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/tabs/TabInfo;

    iget-object v1, v1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 25
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/tabs/TabsInfo;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
