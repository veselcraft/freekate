.class public final Lcom/my/target/core/models/sections/d;
.super Lcom/my/target/core/models/sections/a;
.source "FullscreenSection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/models/sections/a",
        "<",
        "Lcom/my/target/core/models/banners/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lcom/my/target/core/models/l;

.field private j:Lcom/my/target/nativeads/models/ImageData;

.field private k:Lcom/my/target/nativeads/models/ImageData;

.field private l:Lcom/my/target/nativeads/models/ImageData;

.field private m:Z

.field private n:Z

.field private o:F

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 194
    const-string v0, "fullscreen"

    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/core/models/sections/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/d;->p:Z

    .line 45
    const-string v0, "Replay"

    iput-object v0, p0, Lcom/my/target/core/models/sections/d;->q:Ljava/lang/String;

    .line 46
    const-string v0, "Close"

    iput-object v0, p0, Lcom/my/target/core/models/sections/d;->r:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/d;->s:Z

    .line 48
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/d;->t:Z

    .line 195
    new-instance v0, Lcom/my/target/core/models/l;

    invoke-direct {v0}, Lcom/my/target/core/models/l;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/sections/d;->i:Lcom/my/target/core/models/l;

    .line 196
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/my/target/core/models/sections/d;->o:F

    .line 137
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lcom/my/target/core/models/sections/d;->u:I

    .line 187
    return-void
.end method

.method public final a(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/my/target/core/models/sections/d;->j:Lcom/my/target/nativeads/models/ImageData;

    .line 152
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/d;->v:Z

    .line 122
    return-void
.end method

.method public final a(ILcom/my/target/core/models/banners/d;)Z
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0, p2}, Lcom/my/target/core/models/sections/d;->a(Lcom/my/target/core/models/banners/d;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/my/target/core/models/banners/d;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 203
    instance-of v1, p1, Lcom/my/target/core/models/banners/f;

    if-eqz v1, :cond_0

    .line 205
    invoke-interface {p1}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/core/models/sections/d;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v1

    if-nez v1, :cond_1

    .line 207
    check-cast p1, Lcom/my/target/core/models/banners/f;

    .line 208
    iget-object v1, p0, Lcom/my/target/core/models/sections/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget v1, p0, Lcom/my/target/core/models/sections/d;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/my/target/core/models/sections/d;->d:I

    .line 221
    :goto_0
    return v0

    .line 212
    :cond_0
    instance-of v1, p1, Lcom/my/target/core/models/banners/g;

    if-eqz v1, :cond_1

    .line 213
    invoke-interface {p1}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/core/models/sections/d;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v1

    if-nez v1, :cond_1

    .line 215
    check-cast p1, Lcom/my/target/core/models/banners/g;

    .line 216
    iget-object v1, p0, Lcom/my/target/core/models/sections/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget v1, p0, Lcom/my/target/core/models/sections/d;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/my/target/core/models/sections/d;->d:I

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/my/target/core/models/sections/d;->k:Lcom/my/target/nativeads/models/ImageData;

    .line 167
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/d;->s:Z

    .line 132
    return-void
.end method

.method public final c(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/my/target/core/models/sections/d;->l:Lcom/my/target/nativeads/models/ImageData;

    .line 182
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/my/target/core/models/sections/d;->r:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/d;->t:Z

    .line 142
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/my/target/core/models/sections/d;->q:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/d;->n:Z

    .line 157
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/d;->m:Z

    .line 162
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/my/target/core/models/sections/d;->p:Z

    .line 177
    return-void
.end method

.method public final i()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/my/target/core/models/sections/d;->o:F

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/my/target/core/models/sections/d;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/my/target/core/models/sections/d;->j:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final l()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/my/target/core/models/sections/d;->k:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/my/target/core/models/sections/d;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/my/target/core/models/sections/d;->l:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/my/target/core/models/sections/d;->u:I

    return v0
.end method

.method public final p()Lcom/my/target/core/models/l;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/my/target/core/models/sections/d;->i:Lcom/my/target/core/models/l;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/d;->s:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/d;->t:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/d;->v:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/d;->n:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/d;->m:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/d;->p:Z

    return v0
.end method
