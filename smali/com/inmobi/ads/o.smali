.class Lcom/inmobi/ads/o;
.super Lcom/inmobi/ads/AdUnit;
.source "InterstitialAdUnit.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Z

.field private d:I

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/inmobi/ads/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V

    .line 29
    iput v0, p0, Lcom/inmobi/ads/o;->b:I

    .line 30
    iput-boolean v0, p0, Lcom/inmobi/ads/o;->c:Z

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/o;->d:I

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/o;->e:J

    .line 36
    return-void
.end method

.method static synthetic B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method A()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/o;->c:Z

    .line 141
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->n()V

    .line 144
    :cond_0
    return-void
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "int"

    return-object v0
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 110
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 112
    iput p1, p0, Lcom/inmobi/ads/o;->d:I

    .line 113
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/inmobi/rendering/RenderView;->setFullScreenExitAnimation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->x()V

    .line 118
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    const-string v3, "The supplied resource id with show for animations is invalid"

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/a;)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)V

    .line 164
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->b(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public a(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/rendering/RenderView;)V

    .line 174
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->u()V

    .line 176
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 177
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->w()V

    .line 179
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->a()V

    .line 180
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->r()V

    .line 182
    :cond_0
    return-void
.end method

.method public b(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->b(Lcom/inmobi/rendering/RenderView;)V

    .line 197
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->u()V

    .line 199
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 200
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/rendering/RenderView;)V

    .line 188
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 189
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 191
    :cond_0
    return-void
.end method

.method protected d()Lcom/inmobi/rendering/RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    return-object v0
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
    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v2, "preload-request"

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-object v1

    .line 71
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized e(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->e(Lcom/inmobi/rendering/RenderView;)V

    .line 210
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_2

    .line 211
    iget v0, p0, Lcom/inmobi/ads/o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/o;->b:I

    .line 212
    iget v0, p0, Lcom/inmobi/ads/o;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :cond_1
    :try_start_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 217
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 218
    iget v0, p0, Lcom/inmobi/ads/o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/o;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized f(Lcom/inmobi/rendering/RenderView;)V
    .locals 4

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 226
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 227
    iget v0, p0, Lcom/inmobi/ads/o;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/o;->b:I

    .line 228
    iget v0, p0, Lcom/inmobi/ads/o;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 231
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 232
    iget v0, p0, Lcom/inmobi/ads/o;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/o;->b:I

    .line 233
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    const-string v1, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "IntClosed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 239
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->c()V

    .line 240
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 48
    iget-wide v0, p0, Lcom/inmobi/ads/o;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->l()Lcom/inmobi/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->f()I

    move-result v0

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/o;->e:J

    sub-long/2addr v2, v4

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 51
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad cannot be refreshed before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 52
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad cannot be refreshed before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " seconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 57
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v0, v6}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 58
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    const-string v2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/o;->e:J

    .line 64
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->o()V

    goto :goto_0
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->q()V

    .line 41
    iget-boolean v0, p0, Lcom/inmobi/ads/o;->c:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->n()V

    .line 44
    :cond_0
    return-void
.end method

.method protected t()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->t()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/o;->d:I

    .line 79
    return-void
.end method

.method protected v()V
    .locals 3

    .prologue
    .line 246
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    const-string v2, "Renderview timed out."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "RenderTimeOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->c(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 250
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 251
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 253
    :cond_0
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/o$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/o$1;-><init>(Lcom/inmobi/ads/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method y()V
    .locals 4

    .prologue
    .line 121
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/o;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> Starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to display interstitial ad ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/rendering/RenderView;)I

    move-result v0

    .line 123
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/inmobi/ads/o;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v2, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_RENDERVIEW_INDEX"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->f()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/o;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->f()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/inmobi/ads/o;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 132
    :cond_0
    return-void
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
