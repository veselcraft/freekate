.class public final Lcom/my/target/core/models/sections/e;
.super Lcom/my/target/core/models/sections/a;
.source "FullscreenSliderSection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/models/sections/a",
        "<",
        "Lcom/my/target/core/models/banners/f;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Lcom/my/target/nativeads/models/ImageData;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 63
    const-string v0, "fullscreenslider"

    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/core/models/sections/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/my/target/core/models/sections/e;->j:I

    .line 18
    const v0, -0xe0414d

    iput v0, p0, Lcom/my/target/core/models/sections/e;->k:I

    .line 19
    const v0, -0xf9c399

    iput v0, p0, Lcom/my/target/core/models/sections/e;->l:I

    .line 64
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/my/target/core/models/sections/e;->k:I

    .line 44
    return-void
.end method

.method public final a(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/my/target/core/models/sections/e;->i:Lcom/my/target/nativeads/models/ImageData;

    .line 54
    return-void
.end method

.method public final a(ILcom/my/target/core/models/banners/d;)Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p2}, Lcom/my/target/core/models/sections/e;->a(Lcom/my/target/core/models/banners/d;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/my/target/core/models/banners/d;)Z
    .locals 1

    .prologue
    .line 69
    instance-of v0, p1, Lcom/my/target/core/models/banners/f;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {p1}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/models/sections/e;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    check-cast p1, Lcom/my/target/core/models/banners/f;

    .line 74
    iget-object v0, p0, Lcom/my/target/core/models/sections/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget v0, p0, Lcom/my/target/core/models/sections/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/models/sections/e;->d:I

    .line 76
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/my/target/core/models/sections/e;->l:I

    .line 49
    return-void
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/my/target/core/models/sections/e;->j:I

    .line 59
    return-void
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/my/target/core/models/sections/e;->k:I

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/my/target/core/models/sections/e;->l:I

    return v0
.end method

.method public final k()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/my/target/core/models/sections/e;->i:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/my/target/core/models/sections/e;->j:I

    return v0
.end method
