.class Lcom/inmobi/ads/k;
.super Lcom/inmobi/ads/AdUnit;
.source "BannerAdUnit.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/ads/InMobiBanner;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/InMobiBanner;Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/k;->c:Z

    .line 23
    iput-boolean v1, p0, Lcom/inmobi/ads/k;->d:Z

    .line 24
    iput v1, p0, Lcom/inmobi/ads/k;->e:I

    .line 28
    iput-object p1, p0, Lcom/inmobi/ads/k;->b:Lcom/inmobi/ads/InMobiBanner;

    .line 29
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "banner"

    return-object v0
.end method

.method public a(Lcom/inmobi/ads/a;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)V

    .line 87
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/k;->b(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/inmobi/ads/k;->c:Z

    .line 41
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->o()V

    .line 42
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/inmobi/ads/k;->b:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiBanner;->getFrameSizeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/rendering/RenderView;)V

    .line 97
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->u()V

    .line 99
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/k;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 100
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->w()V

    .line 102
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->a()V

    .line 103
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->r()V

    .line 105
    :cond_0
    return-void
.end method

.method protected d()Lcom/inmobi/rendering/RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->INLINE:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    return-object v0
.end method

.method public d(Lcom/inmobi/rendering/RenderView;)V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->d(Lcom/inmobi/rendering/RenderView;)V

    .line 111
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 112
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/k;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/k;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdRendered"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    const-string v2, "u-rt"

    iget-boolean v0, p0, Lcom/inmobi/ads/k;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "mk-ad-slot"

    iget-object v2, p0, Lcom/inmobi/ads/k;->b:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v2}, Lcom/inmobi/ads/InMobiBanner;->getFrameSizeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-object v1

    .line 79
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized e(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->e(Lcom/inmobi/rendering/RenderView;)V

    .line 127
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 128
    iget v0, p0, Lcom/inmobi/ads/k;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/k;->e:I

    .line 129
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/k;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 130
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 132
    iget v0, p0, Lcom/inmobi/ads/k;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/k;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 140
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 141
    iget v0, p0, Lcom/inmobi/ads/k;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/k;->e:I

    .line 143
    iget v0, p0, Lcom/inmobi/ads/k;->e:I

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/k;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 145
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->q()V

    .line 55
    iget-boolean v0, p0, Lcom/inmobi/ads/k;->d:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->n()V

    .line 58
    :cond_0
    return-void
.end method

.method x()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/k;->d:Z

    .line 34
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->n()V

    .line 37
    :cond_0
    return-void
.end method

.method y()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/inmobi/ads/k;->d:Z

    return v0
.end method

.method z()Z
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/inmobi/ads/k;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
