.class final Lcom/my/target/core/controllers/a$1;
.super Ljava/lang/Object;
.source "InstreamAdAudioController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/controllers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/controllers/a;


# direct methods
.method constructor <init>(Lcom/my/target/core/controllers/a;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

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

    .line 42
    .line 48
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->c(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/banners/c;

    move-result-object v0

    if-nez v0, :cond_5

    .line 50
    :cond_0
    const-string v0, "unable to check time"

    .line 52
    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/c;

    move-result-object v1

    if-nez v1, :cond_2

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data not loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->c(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/banners/c;

    move-result-object v1

    if-nez v1, :cond_3

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": current banner is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_3
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 134
    :cond_4
    :goto_0
    return-void

    .line 65
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->d(Lcom/my/target/core/controllers/a;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 67
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getAdAudioDuration()F

    move-result v2

    .line 68
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->c(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/banners/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/c;->getDuration()F

    move-result v0

    .line 69
    iget-object v3, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v3}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getAdAudioTimeElapsed()F

    move-result v3

    .line 70
    sub-float v4, v0, v3

    .line 73
    :goto_1
    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v5}, Lcom/my/target/core/controllers/a;->d(Lcom/my/target/core/controllers/a;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v5}, Lcom/my/target/core/controllers/a;->e(Lcom/my/target/core/controllers/a;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 75
    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    const-string v8, "playbackStarted"

    invoke-static {v5, v8}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Ljava/lang/String;)V

    .line 77
    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v5}, Lcom/my/target/core/controllers/a;->f(Lcom/my/target/core/controllers/a;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 80
    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    const-string v8, "impression"

    invoke-static {v5, v8}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;Ljava/lang/String;)V

    .line 81
    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v5}, Lcom/my/target/core/controllers/a;->g(Lcom/my/target/core/controllers/a;)Z

    .line 83
    :cond_6
    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v5}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 85
    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v5}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v5

    iget-object v8, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    .line 87
    invoke-static {v8}, Lcom/my/target/core/controllers/a;->i(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd;

    move-result-object v8

    .line 85
    invoke-interface {v5, v1, v2, v8}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onBannerTimeLeftChange(FFLcom/my/target/ads/instream/InstreamAudioAd;)V

    .line 89
    :cond_7
    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v5, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;F)V

    .line 90
    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v5}, Lcom/my/target/core/controllers/a;->j(Lcom/my/target/core/controllers/a;)Z

    .line 93
    :cond_8
    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v5}, Lcom/my/target/core/controllers/a;->d(Lcom/my/target/core/controllers/a;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v5}, Lcom/my/target/core/controllers/a;->k(Lcom/my/target/core/controllers/a;)F

    move-result v5

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_d

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_d

    .line 95
    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->l(Lcom/my/target/core/controllers/a;)I

    .line 96
    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1, v3}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/controllers/a;F)F

    .line 98
    cmpg-float v1, v3, v0

    if-gez v1, :cond_b

    .line 100
    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1, v3}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;F)V

    .line 101
    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 102
    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    .line 104
    invoke-static {v2}, Lcom/my/target/core/controllers/a;->i(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd;

    move-result-object v2

    .line 102
    invoke-interface {v1, v4, v0, v2}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onBannerTimeLeftChange(FFLcom/my/target/ads/instream/InstreamAudioAd;)V

    .line 105
    :cond_9
    mul-float v1, v3, v9

    mul-float v2, v0, v9

    const/high16 v4, 0x43480000    # 200.0f

    sub-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    .line 107
    sub-float/2addr v0, v3

    float-to-long v0, v0

    .line 123
    :goto_2
    iget-object v2, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v2}, Lcom/my/target/core/controllers/a;->o(Lcom/my/target/core/controllers/a;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v4}, Lcom/my/target/core/controllers/a;->p(Lcom/my/target/core/controllers/a;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_f

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio freeze more then "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->p(Lcom/my/target/core/controllers/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds, stopping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 127
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v0

    const-string v1, "Timeout"

    iget-object v2, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v2}, Lcom/my/target/core/controllers/a;->i(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onError(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    .line 128
    :cond_a
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->m(Lcom/my/target/core/controllers/a;)V

    goto/16 :goto_0

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1, v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;F)V

    .line 112
    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 113
    iget-object v1, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    .line 115
    invoke-static {v2}, Lcom/my/target/core/controllers/a;->i(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd;

    move-result-object v2

    .line 113
    invoke-interface {v1, v0, v0, v2}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onBannerTimeLeftChange(FFLcom/my/target/ads/instream/InstreamAudioAd;)V

    .line 116
    :cond_c
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->m(Lcom/my/target/core/controllers/a;)V

    move-wide v0, v6

    goto :goto_2

    .line 120
    :cond_d
    iget-object v0, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->n(Lcom/my/target/core/controllers/a;)I

    :cond_e
    move-wide v0, v6

    goto :goto_2

    .line 132
    :cond_f
    invoke-static {}, Lcom/my/target/core/controllers/a;->h()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 133
    invoke-static {}, Lcom/my/target/core/controllers/a;->h()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/my/target/core/controllers/a$1;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v3}, Lcom/my/target/core/controllers/a;->q(Lcom/my/target/core/controllers/a;)Ljava/lang/Runnable;

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
