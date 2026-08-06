.class final Lcom/my/target/core/controllers/b$2;
.super Ljava/lang/Object;
.source "InstreamAdVideoController.java"

# interfaces
.implements Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;


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
    .line 136
    iput-object p1, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdVideoCompleted()V
    .locals 4

    .prologue
    .line 193
    const-string v0, "\u0441ontroller: onAdVideoCompleted"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->u(Lcom/my/target/core/controllers/b;)V

    .line 195
    const/high16 v0, -0x40800000    # -1.0f

    .line 196
    iget-object v1, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->c(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->c(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;

    move-result-object v0

    iget v0, v0, Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;->duration:F

    .line 199
    iget-object v1, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1, v0}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;F)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    .line 205
    invoke-static {v3}, Lcom/my/target/core/controllers/b;->j(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd;

    move-result-object v3

    .line 203
    invoke-interface {v1, v2, v0, v3}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onBannerTimeLeftChange(FFLcom/my/target/ads/instream/InstreamAd;)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->n(Lcom/my/target/core/controllers/b;)V

    .line 207
    return-void
.end method

.method public final onAdVideoError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 180
    const-string v0, "\u0441ontroller: onAdVideoError"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->j(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onError(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->n(Lcom/my/target/core/controllers/b;)V

    .line 188
    return-void
.end method

.method public final onAdVideoPaused()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "\u0441ontroller: onAdVideoPaused"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->u(Lcom/my/target/core/controllers/b;)V

    .line 154
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;Z)Z

    .line 155
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    const-string v1, "playbackPaused"

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public final onAdVideoResumed()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "\u0441ontroller: onAdVideoResumed"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->t(Lcom/my/target/core/controllers/b;)V

    .line 164
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;Z)Z

    .line 165
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    const-string v1, "playbackResumed"

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public final onAdVideoStarted()V
    .locals 3

    .prologue
    .line 140
    const-string v0, "\u0441ontroller: onAdVideoStarted"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v1}, Lcom/my/target/core/controllers/b;->j(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v2}, Lcom/my/target/core/controllers/b;->c(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onBannerStart(Lcom/my/target/ads/instream/InstreamAd;Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->s(Lcom/my/target/core/controllers/b;)Z

    .line 144
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->t(Lcom/my/target/core/controllers/b;)V

    .line 145
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;Z)Z

    .line 146
    return-void
.end method

.method public final onAdVideoStopped()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "\u0441ontroller: onAdVideoStopped"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->u(Lcom/my/target/core/controllers/b;)V

    .line 174
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;Z)Z

    .line 175
    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_2

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wrong volume got from onVolumeChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume must be in range [0..1]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->v(Lcom/my/target/core/controllers/b;)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->v(Lcom/my/target/core/controllers/b;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_4

    .line 222
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    const-string v1, "volumeOn"

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;Ljava/lang/String;)V

    .line 231
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0, p1}, Lcom/my/target/core/controllers/b;->c(Lcom/my/target/core/controllers/b;F)F

    goto :goto_0

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    invoke-static {v0}, Lcom/my/target/core/controllers/b;->v(Lcom/my/target/core/controllers/b;)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_3

    .line 226
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/my/target/core/controllers/b$2;->a:Lcom/my/target/core/controllers/b;

    const-string v1, "volumeOff"

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b;Ljava/lang/String;)V

    goto :goto_1
.end method
