.class public Lcom/my/target/core/models/banners/m;
.super Lcom/my/target/core/models/banners/a;
.source "VideoBanner.java"


# instance fields
.field private a:F

.field private b:Z

.field private c:F

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Lcom/my/target/nativeads/models/ImageData;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/models/banners/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-boolean v0, p0, Lcom/my/target/core/models/banners/m;->g:Z

    .line 45
    iput-boolean v0, p0, Lcom/my/target/core/models/banners/m;->h:Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/banners/m;->d:Ljava/util/List;

    .line 102
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/my/target/core/models/banners/m;->e:F

    return v0
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/my/target/core/models/banners/m;->e:F

    .line 37
    return-void
.end method

.method public final a(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/my/target/core/models/banners/m;->i:Lcom/my/target/nativeads/models/ImageData;

    .line 167
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/my/target/core/models/banners/m;->j:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/VideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    iput-object p1, p0, Lcom/my/target/core/models/banners/m;->d:Ljava/util/List;

    .line 197
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/m;->m:Z

    .line 67
    return-void
.end method

.method public declared-synchronized addStat(Lcom/my/target/core/models/k;)Z
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/my/target/core/models/k;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playheadReachedValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    check-cast p1, Lcom/my/target/core/models/i;

    .line 215
    invoke-virtual {p1}, Lcom/my/target/core/models/i;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/my/target/core/models/i;->b()F

    move-result v0

    iget v1, p0, Lcom/my/target/core/models/banners/m;->a:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 217
    invoke-virtual {p1, v0}, Lcom/my/target/core/models/i;->a(F)V

    .line 221
    :cond_0
    invoke-super {p0, p1}, Lcom/my/target/core/models/banners/a;->addStat(Lcom/my/target/core/models/k;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 224
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Lcom/my/target/core/models/banners/a;->addStat(Lcom/my/target/core/models/k;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/my/target/core/models/banners/m;->f:F

    return v0
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/my/target/core/models/banners/m;->f:F

    .line 42
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/my/target/core/models/banners/m;->k:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/m;->n:Z

    .line 72
    return-void
.end method

.method public final c(F)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/my/target/core/models/banners/m;->a:F

    .line 117
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/m;->o:Z

    .line 77
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/m;->m:Z

    return v0
.end method

.method public final d(F)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/my/target/core/models/banners/m;->c:F

    .line 137
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/m;->b:Z

    .line 127
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/m;->n:Z

    return v0
.end method

.method public final e(Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/m;->g:Z

    .line 147
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/m;->o:Z

    return v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/my/target/core/models/banners/m;->a:F

    return v0
.end method

.method public final f(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/m;->h:Z

    .line 157
    return-void
.end method

.method public final g(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/m;->l:Z

    .line 207
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/m;->b:Z

    return v0
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/my/target/core/models/banners/m;->c:F

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/m;->g:Z

    return v0
.end method

.method public final j()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/my/target/core/models/banners/m;->i:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/my/target/core/models/banners/m;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/my/target/core/models/banners/m;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/VideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/my/target/core/models/banners/m;->d:Ljava/util/List;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/m;->l:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoBanner{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/models/banners/m;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/my/target/core/models/banners/m;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ", allowClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/my/target/core/models/banners/m;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ", allowCloseDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/my/target/core/models/banners/m;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, ", videoDatas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/models/banners/m;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, ", autoPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/my/target/core/models/banners/m;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, ", hasCtaButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/my/target/core/models/banners/m;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, ", preview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/models/banners/m;->i:Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
