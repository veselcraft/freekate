.class public Lcom/my/target/core/models/banners/c;
.super Lcom/my/target/core/models/banners/a;
.source "AudioBanner.java"

# interfaces
.implements Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdBanner;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/my/target/core/models/e;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/models/banners/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-boolean v1, p0, Lcom/my/target/core/models/banners/c;->d:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/models/banners/c;->e:Z

    .line 27
    iput-boolean v1, p0, Lcom/my/target/core/models/banners/c;->f:Z

    .line 151
    return-void
.end method


# virtual methods
.method public final a()Lcom/my/target/core/models/e;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/my/target/core/models/banners/c;->h:Lcom/my/target/core/models/e;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/my/target/core/models/banners/c;->a:F

    .line 131
    return-void
.end method

.method public final a(Lcom/my/target/core/models/e;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/my/target/core/models/banners/c;->h:Lcom/my/target/core/models/e;

    .line 121
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/my/target/core/models/banners/c;->g:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lcom/my/target/core/models/banners/c;->i:Ljava/util/ArrayList;

    .line 126
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/c;->d:Z

    .line 106
    return-void
.end method

.method public declared-synchronized addStat(Lcom/my/target/core/models/k;)Z
    .locals 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/my/target/core/models/k;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playheadReachedValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    check-cast p1, Lcom/my/target/core/models/i;

    .line 171
    invoke-virtual {p1}, Lcom/my/target/core/models/i;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/my/target/core/models/i;->b()F

    move-result v0

    iget v1, p0, Lcom/my/target/core/models/banners/c;->a:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 173
    invoke-virtual {p1, v0}, Lcom/my/target/core/models/i;->a(F)V

    .line 177
    :cond_0
    invoke-super {p0, p1}, Lcom/my/target/core/models/banners/a;->addStat(Lcom/my/target/core/models/k;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 180
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

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/my/target/core/models/banners/c;->b:F

    return v0
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/my/target/core/models/banners/c;->b:F

    .line 136
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/my/target/core/models/banners/c;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/my/target/core/models/banners/c;->i:Ljava/util/ArrayList;

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/models/banners/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/c;->e:Z

    .line 111
    return-void
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/my/target/core/models/banners/c;->c:F

    return v0
.end method

.method public final c(F)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/my/target/core/models/banners/c;->c:F

    .line 141
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/c;->f:Z

    .line 116
    return-void
.end method

.method public getAdText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/my/target/core/models/banners/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/my/target/core/models/banners/c;->a:F

    return v0
.end method

.method public getInstreamAdCompanionBanners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/ads/instream/models/InstreamAdCompanionBanner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/my/target/core/models/banners/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/my/target/core/models/banners/c;->i:Ljava/util/ArrayList;

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowSeek()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/c;->d:Z

    return v0
.end method

.method public isAllowSkip()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/c;->e:Z

    return v0
.end method

.method public isAllowTrackChange()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/c;->f:Z

    return v0
.end method
