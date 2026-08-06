.class final Lcom/my/target/core/controllers/a$2;
.super Ljava/lang/Object;
.source "InstreamAdAudioController.java"

# interfaces
.implements Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;


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
    .line 139
    iput-object p1, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdAudioCompleted()V
    .locals 4

    .prologue
    .line 196
    const-string v0, "\u0441ontroller: onAdAudioCompleted"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->t(Lcom/my/target/core/controllers/a;)V

    .line 198
    const/high16 v0, -0x40800000    # -1.0f

    .line 199
    iget-object v1, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->c(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/banners/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->c(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/banners/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/c;->getDuration()F

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1, v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;F)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    .line 207
    invoke-static {v3}, Lcom/my/target/core/controllers/a;->i(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd;

    move-result-object v3

    .line 205
    invoke-interface {v1, v2, v0, v3}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onBannerTimeLeftChange(FFLcom/my/target/ads/instream/InstreamAudioAd;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->m(Lcom/my/target/core/controllers/a;)V

    .line 209
    return-void
.end method

.method public final onAdAudioError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 183
    const-string v0, "\u0441ontroller: onAdAudioError"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->i(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onError(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->m(Lcom/my/target/core/controllers/a;)V

    .line 191
    return-void
.end method

.method public final onAdAudioPaused()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "\u0441ontroller: onAdAudioPaused"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->t(Lcom/my/target/core/controllers/a;)V

    .line 157
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Z)Z

    .line 158
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    const-string v1, "playbackPaused"

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public final onAdAudioResumed()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "\u0441ontroller: onAdAudioResumed"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->s(Lcom/my/target/core/controllers/a;)V

    .line 167
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Z)Z

    .line 168
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    const-string v1, "playbackResumed"

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public final onAdAudioStarted()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "\u0441ontroller: onAdAudioStarted"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v1}, Lcom/my/target/core/controllers/a;->i(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v2}, Lcom/my/target/core/controllers/a;->c(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/banners/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onBannerStart(Lcom/my/target/ads/instream/InstreamAudioAd;Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdBanner;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->r(Lcom/my/target/core/controllers/a;)Z

    .line 147
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->s(Lcom/my/target/core/controllers/a;)V

    .line 148
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Z)Z

    .line 149
    return-void
.end method

.method public final onAdAudioStopped()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "\u0441ontroller: onAdAudioStopped"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->t(Lcom/my/target/core/controllers/a;)V

    .line 177
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Z)Z

    .line 178
    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_2

    .line 216
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

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->u(Lcom/my/target/core/controllers/a;)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->u(Lcom/my/target/core/controllers/a;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_4

    .line 224
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    const-string v1, "volumeOn"

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Ljava/lang/String;)V

    .line 233
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0, p1}, Lcom/my/target/core/controllers/a;->c(Lcom/my/target/core/controllers/a;F)F

    goto :goto_0

    .line 227
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    invoke-static {v0}, Lcom/my/target/core/controllers/a;->u(Lcom/my/target/core/controllers/a;)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_3

    .line 228
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/my/target/core/controllers/a$2;->a:Lcom/my/target/core/controllers/a;

    const-string v1, "volumeOff"

    invoke-static {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a;Ljava/lang/String;)V

    goto :goto_1
.end method
