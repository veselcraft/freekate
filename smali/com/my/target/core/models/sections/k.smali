.class public final Lcom/my/target/core/models/sections/k;
.super Lcom/my/target/core/models/sections/a;
.source "VideoAdSection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/models/sections/a",
        "<",
        "Lcom/my/target/core/models/banners/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lcom/my/target/core/models/l;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    const-string v0, "video"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/my/target/core/models/sections/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/sections/k;->j:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/sections/k;->k:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/my/target/core/models/l;

    invoke-direct {v0}, Lcom/my/target/core/models/l;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/sections/k;->i:Lcom/my/target/core/models/l;

    .line 54
    return-void
.end method


# virtual methods
.method public final a(ILcom/my/target/core/models/banners/d;)Z
    .locals 2

    .prologue
    .line 79
    const-string v0, "video"

    invoke-interface {p2}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "statistics"

    invoke-interface {p2}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    :cond_0
    invoke-interface {p2}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/models/sections/k;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/my/target/core/models/sections/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/models/sections/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 85
    :cond_1
    check-cast p2, Lcom/my/target/core/models/banners/m;

    .line 86
    iget-object v0, p0, Lcom/my/target/core/models/sections/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 87
    iget v0, p0, Lcom/my/target/core/models/sections/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/models/sections/k;->d:I

    .line 88
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/my/target/core/models/banners/d;)Z
    .locals 2

    .prologue
    .line 63
    const-string v0, "video"

    invoke-interface {p1}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "statistics"

    invoke-interface {p1}, Lcom/my/target/core/models/banners/d;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    invoke-interface {p1}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/models/sections/k;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 67
    check-cast p1, Lcom/my/target/core/models/banners/m;

    .line 68
    iget-object v0, p0, Lcom/my/target/core/models/sections/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget v0, p0, Lcom/my/target/core/models/sections/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/models/sections/k;->d:I

    .line 70
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/my/target/core/models/d;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1}, Lcom/my/target/core/models/d;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/my/target/core/models/sections/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/my/target/core/models/sections/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_0
    return v0

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/core/models/d;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/my/target/core/models/sections/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/my/target/core/models/sections/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/my/target/core/models/sections/k;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final j()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/core/models/sections/k;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final k()Lcom/my/target/core/models/l;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/my/target/core/models/sections/k;->i:Lcom/my/target/core/models/l;

    return-object v0
.end method

.method public final l()Lcom/my/target/core/models/d;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/my/target/core/models/sections/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/my/target/core/models/sections/k;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/d;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
