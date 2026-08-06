.class public final Lcom/my/target/core/models/banners/j;
.super Lcom/my/target/core/models/banners/a;
.source "StandardBanner.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/my/target/nativeads/models/ImageData;

.field private e:Lcom/my/target/nativeads/models/ImageData;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:F

.field private j:Lcom/my/target/nativeads/models/ImageData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/models/banners/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method


# virtual methods
.method public final a()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/my/target/core/models/banners/j;->j:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/my/target/core/models/banners/j;->i:F

    .line 125
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/my/target/core/models/banners/j;->f:I

    .line 135
    return-void
.end method

.method public final a(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/my/target/core/models/banners/j;->j:Lcom/my/target/nativeads/models/ImageData;

    .line 55
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/my/target/core/models/banners/j;->g:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/models/banners/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/my/target/core/models/banners/j;->e:Lcom/my/target/nativeads/models/ImageData;

    .line 115
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/my/target/core/models/banners/j;->b:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/my/target/core/models/banners/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/my/target/core/models/banners/j;->d:Lcom/my/target/nativeads/models/ImageData;

    .line 120
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/my/target/core/models/banners/j;->c:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/my/target/core/models/banners/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/my/target/core/models/banners/j;->h:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/my/target/core/models/banners/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/my/target/core/models/banners/j;->a:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public final f()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/my/target/core/models/banners/j;->d:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/my/target/core/models/banners/j;->i:F

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/my/target/core/models/banners/j;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StandardBanner{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/models/banners/j;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/models/banners/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
