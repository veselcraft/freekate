.class final Lcom/my/target/core/controllers/b$1;
.super Ljava/lang/Object;
.source "InstreamAdVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/controllers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/controllers/b;


# direct methods
.method constructor <init>(Lcom/my/target/core/controllers/b;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const-wide/16 v6, 0xc8

    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    .line 40
    .line 45
    iget-object v0, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAdPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->b(Lcom/my/target/core/controllers/b;)Lcom/my/target/core/models/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->c(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;

    move-result-object v0

    if-nez v0, :cond_5

    .line 47
    :cond_0
    const-string v0, "unable to check time"

    .line 49
    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAdPlayer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->b(Lcom/my/target/core/controllers/b;)Lcom/my/target/core/models/c;

    move-result-object v1

    if-nez v1, :cond_2

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data not loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->d(Lcom/my/target/core/controllers/b;)Lcom/my/target/core/models/banners/m;

    move-result-object v1

    if-nez v1, :cond_3

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": current banner is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_3
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 131
    :cond_4
    :goto_0
    return-void

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->e(Lcom/my/target/core/controllers/b;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    iget-object v0, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAdPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getAdVideoDuration()F

    move-result v2

    .line 65
    iget-object v0, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->c(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;

    move-result-object v0

    iget v0, v0, Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;->duration:F

    .line 66
    iget-object v3, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v3}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAdPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getAdVideoTimeElapsed()F

    move-result v3

    .line 67
    sub-float v4, v0, v3

    .line 70
    :goto_1
    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v5}, Lcom/my/target/core/controllers/b;->e(Lcom/my/target/core/controllers/b;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v5}, Lcom/my/target/core/controllers/b;->f(Lcom/my/target/core/controllers/b;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 72
    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    const-string v8, "playbackStarted"

    invoke-static {v5, v8}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;Ljava/lang/String;)V

    .line 74
    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v5}, Lcom/my/target/core/controllers/b;->g(Lcom/my/target/core/controllers/b;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 77
    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    const-string v8, "impression"

    invoke-static {v5, v8}, Lcom/my/target/core/controllers/b;->b(Lcom/my/target/core/controllers/b;Ljava/lang/String;)V

    .line 78
    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v5}, Lcom/my/target/core/controllers/b;->h(Lcom/my/target/core/controllers/b;)Z

    .line 80
    :cond_6
    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v5}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 82
    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v5}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v5

    iget-object v8, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    .line 84
    invoke-static {v8}, Lcom/my/target/core/controllers/b;->j(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd;

    move-result-object v8

    .line 82
    invoke-interface {v5, v1, v2, v8}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onBannerTimeLeftChange(FFLcom/my/target/ads/instream/InstreamAd;)V

    .line 86
    :cond_7
    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v5, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;F)V

    .line 87
    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v5}, Lcom/my/target/core/controllers/b;->k(Lcom/my/target/core/controllers/b;)Z

    .line 90
    :cond_8
    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v5}, Lcom/my/target/core/controllers/b;->e(Lcom/my/target/core/controllers/b;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v5}, Lcom/my/target/core/controllers/b;->l(Lcom/my/target/core/controllers/b;)F

    move-result v5

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_d

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_d

    .line 92
    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->m(Lcom/my/target/core/controllers/b;)I

    .line 93
    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1, v3}, Lcom/my/target/core/controllers/b;->b(Lcom/my/target/core/controllers/b;F)F

    .line 95
    cmpg-float v1, v3, v0

    if-gez v1, :cond_b

    .line 97
    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1, v3}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;F)V

    .line 98
    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 99
    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    .line 101
    invoke-static {v2}, Lcom/my/target/core/controllers/b;->j(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd;

    move-result-object v2

    .line 99
    invoke-interface {v1, v4, v0, v2}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onBannerTimeLeftChange(FFLcom/my/target/ads/instream/InstreamAd;)V

    .line 102
    :cond_9
    mul-float v1, v3, v9

    mul-float v2, v0, v9

    const/high16 v4, 0x43480000    # 200.0f

    sub-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    .line 104
    sub-float/2addr v0, v3

    float-to-long v0, v0

    .line 120
    :goto_2
    iget-object v2, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v2}, Lcom/my/target/core/controllers/b;->p(Lcom/my/target/core/controllers/b;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v4}, Lcom/my/target/core/controllers/b;->q(Lcom/my/target/core/controllers/b;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_f

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video freeze more then "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->q(Lcom/my/target/core/controllers/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds, stopping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 124
    iget-object v0, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    const-string v1, "Timeout"

    iget-object v2, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v2}, Lcom/my/target/core/controllers/b;->j(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onError(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    .line 125
    :cond_a
    iget-object v0, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->n(Lcom/my/target/core/controllers/b;)V

    goto/16 :goto_0

    .line 108
    :cond_b
    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1, v0}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;F)V

    .line 109
    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 110
    iget-object v1, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    .line 112
    invoke-static {v2}, Lcom/my/target/core/controllers/b;->j(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd;

    move-result-object v2

    .line 110
    invoke-interface {v1, v0, v0, v2}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onBannerTimeLeftChange(FFLcom/my/target/ads/instream/InstreamAd;)V

    .line 113
    :cond_c
    iget-object v0, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->n(Lcom/my/target/core/controllers/b;)V

    move-wide v0, v6

    goto :goto_2

    .line 117
    :cond_d
    iget-object v0, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->o(Lcom/my/target/core/controllers/b;)I

    :cond_e
    move-wide v0, v6

    goto :goto_2

    .line 129
    :cond_f
    invoke-static {}, Lcom/my/target/core/controllers/b;->i()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 130
    invoke-static {}, Lcom/my/target/core/controllers/b;->i()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/my/target/core/controllers/b$1;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v3}, Lcom/my/target/core/controllers/b;->r(Lcom/my/target/core/controllers/b;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_10
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto/16 :goto_1
.end method
