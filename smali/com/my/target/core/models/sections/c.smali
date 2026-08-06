.class public final Lcom/my/target/core/models/sections/c;
.super Lcom/my/target/core/models/sections/a;
.source "AudioAdSection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/models/sections/a",
        "<",
        "Lcom/my/target/core/models/banners/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lcom/my/target/core/models/f;

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
    .line 36
    const-string v0, "audio"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/my/target/core/models/sections/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/sections/c;->j:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/sections/c;->k:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/my/target/core/models/f;

    invoke-direct {v0}, Lcom/my/target/core/models/f;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/sections/c;->i:Lcom/my/target/core/models/f;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(ILcom/my/target/core/models/banners/d;)Z
    .locals 2

    .prologue
    .line 59
    const-string v0, "audio"

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

    .line 61
    :cond_0
    invoke-interface {p2}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/models/sections/c;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 65
    :cond_1
    check-cast p2, Lcom/my/target/core/models/banners/c;

    .line 66
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 67
    iget v0, p0, Lcom/my/target/core/models/sections/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/models/sections/c;->d:I

    .line 68
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/my/target/core/models/banners/d;)Z
    .locals 2

    .prologue
    .line 43
    const-string v0, "audio"

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

    .line 45
    :cond_0
    invoke-interface {p1}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/models/sections/c;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    check-cast p1, Lcom/my/target/core/models/banners/c;

    .line 48
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget v0, p0, Lcom/my/target/core/models/sections/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/models/sections/c;->d:I

    .line 50
    const/4 v0, 0x1

    .line 53
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

    .line 76
    invoke-virtual {p1}, Lcom/my/target/core/models/d;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/my/target/core/models/sections/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/my/target/core/models/sections/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_0
    return v0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/core/models/d;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/my/target/core/models/sections/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/my/target/core/models/sections/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
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
    .line 21
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->j:Ljava/util/ArrayList;

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
    .line 26
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final k()Lcom/my/target/core/models/f;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->i:Lcom/my/target/core/models/f;

    return-object v0
.end method

.method public final l()Lcom/my/target/core/models/d;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/my/target/core/models/sections/c;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/d;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
