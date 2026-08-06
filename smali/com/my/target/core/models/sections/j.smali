.class public final Lcom/my/target/core/models/sections/j;
.super Lcom/my/target/core/models/sections/a;
.source "StandardSection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/models/sections/a",
        "<",
        "Lcom/my/target/core/models/banners/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lcom/my/target/core/models/j;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    const-string v0, "standard"

    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/core/models/sections/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/j;->n:Z

    .line 72
    new-instance v0, Lcom/my/target/core/models/j;

    invoke-direct {v0}, Lcom/my/target/core/models/j;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/sections/j;->i:Lcom/my/target/core/models/j;

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/my/target/core/models/sections/j;->j:I

    .line 75
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/j;->k:Z

    .line 76
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/j;->l:Z

    .line 77
    iput v1, p0, Lcom/my/target/core/models/sections/j;->m:I

    .line 78
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/my/target/core/models/sections/j;->j:I

    .line 108
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/j;->n:Z

    .line 64
    return-void
.end method

.method public final a(ILcom/my/target/core/models/banners/d;)Z
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p2}, Lcom/my/target/core/models/sections/j;->a(Lcom/my/target/core/models/banners/d;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/my/target/core/models/banners/d;)Z
    .locals 1

    .prologue
    .line 86
    instance-of v0, p1, Lcom/my/target/core/models/banners/j;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {p1}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/models/sections/j;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    check-cast p1, Lcom/my/target/core/models/banners/j;

    .line 91
    iget-object v0, p0, Lcom/my/target/core/models/sections/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget v0, p0, Lcom/my/target/core/models/sections/j;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/models/sections/j;->d:I

    .line 93
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/my/target/core/models/sections/j;->m:I

    .line 123
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/j;->k:Z

    .line 113
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/j;->l:Z

    .line 118
    return-void
.end method

.method public final i()Lcom/my/target/core/models/j;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/my/target/core/models/sections/j;->i:Lcom/my/target/core/models/j;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/j;->n:Z

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/my/target/core/models/sections/j;->j:I

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/j;->k:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/j;->l:Z

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/my/target/core/models/sections/j;->m:I

    return v0
.end method
