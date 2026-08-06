.class public final Lcom/my/target/core/models/sections/h;
.super Lcom/my/target/core/models/sections/a;
.source "NativeAdSection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/models/sections/a",
        "<",
        "Lcom/my/target/core/models/banners/h;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 41
    const-string v0, "nativeads"

    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/core/models/sections/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/models/sections/h;->k:Z

    .line 43
    const-string v0, "Close"

    iput-object v0, p0, Lcom/my/target/core/models/sections/h;->i:Ljava/lang/String;

    .line 44
    const-string v0, "Replay"

    iput-object v0, p0, Lcom/my/target/core/models/sections/h;->j:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/models/sections/h;->l:Z

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/h;->l:Z

    .line 31
    return-void
.end method

.method public final a(ILcom/my/target/core/models/banners/d;)Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p2}, Lcom/my/target/core/models/sections/h;->a(Lcom/my/target/core/models/banners/d;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/my/target/core/models/banners/d;)Z
    .locals 1

    .prologue
    .line 51
    instance-of v0, p1, Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p1}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/models/sections/h;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    check-cast p1, Lcom/my/target/core/models/banners/h;

    .line 56
    iget-object v0, p0, Lcom/my/target/core/models/sections/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget v0, p0, Lcom/my/target/core/models/sections/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/models/sections/h;->d:I

    .line 58
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/h;->k:Z

    .line 78
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/my/target/core/models/sections/h;->i:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/my/target/core/models/sections/h;->j:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/h;->l:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/h;->k:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/my/target/core/models/sections/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/my/target/core/models/sections/h;->j:Ljava/lang/String;

    return-object v0
.end method
