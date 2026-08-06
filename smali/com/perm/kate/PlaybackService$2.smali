.class Lcom/perm/kate/PlaybackService$2;
.super Ljava/lang/Object;
.source "PlaybackService.java"

# interfaces
.implements Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PlaybackService;->initAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field banner_started:Z

.field progress_25_sent:Z

.field progress_50_sent:Z

.field progress_75_sent:Z

.field final synthetic this$0:Lcom/perm/kate/PlaybackService;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlaybackService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/PlaybackService;

    .prologue
    const/4 v0, 0x0

    .line 272
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-boolean v0, p0, Lcom/perm/kate/PlaybackService$2;->banner_started:Z

    .line 318
    iput-boolean v0, p0, Lcom/perm/kate/PlaybackService$2;->progress_25_sent:Z

    iput-boolean v0, p0, Lcom/perm/kate/PlaybackService$2;->progress_50_sent:Z

    iput-boolean v0, p0, Lcom/perm/kate/PlaybackService$2;->progress_75_sent:Z

    return-void
.end method


# virtual methods
.method public onBannerComplete(Lcom/my/target/ads/instream/InstreamAudioAd;Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdBanner;)V
    .locals 2
    .param p1, "instreamAudioAd"    # Lcom/my/target/ads/instream/InstreamAudioAd;
    .param p2, "instreamAudioAdBanner"    # Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdBanner;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string v1, "completed"

    invoke-static {v0, v1}, Lcom/perm/kate/PlaybackService;->access$500(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public onBannerStart(Lcom/my/target/ads/instream/InstreamAudioAd;Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdBanner;)V
    .locals 2
    .param p1, "instreamAudioAd"    # Lcom/my/target/ads/instream/InstreamAudioAd;
    .param p2, "instreamAudioAdBanner"    # Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdBanner;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string v1, "started"

    invoke-static {v0, v1}, Lcom/perm/kate/PlaybackService;->access$500(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/PlaybackService$2;->banner_started:Z

    .line 309
    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->adPlayed()V

    .line 310
    return-void
.end method

.method public onBannerTimeLeftChange(FFLcom/my/target/ads/instream/InstreamAudioAd;)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "length"    # F
    .param p3, "instreamAudioAd"    # Lcom/my/target/ads/instream/InstreamAudioAd;

    .prologue
    const/4 v8, 0x1

    .line 323
    sub-float v0, p2, p1

    .line 325
    .local v0, "pos":F
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    float-to-double v2, v0

    float-to-double v4, p2

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/perm/kate/PlaybackService$2;->progress_25_sent:Z

    if-nez v1, :cond_2

    .line 328
    iget-object v1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string v2, "progress_25"

    invoke-static {v1, v2}, Lcom/perm/kate/PlaybackService;->access$500(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    .line 329
    iput-boolean v8, p0, Lcom/perm/kate/PlaybackService$2;->progress_25_sent:Z

    .line 331
    :cond_2
    float-to-double v2, v0

    float-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_3

    iget-boolean v1, p0, Lcom/perm/kate/PlaybackService$2;->progress_50_sent:Z

    if-nez v1, :cond_3

    .line 332
    iget-object v1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string v2, "progress_50"

    invoke-static {v1, v2}, Lcom/perm/kate/PlaybackService;->access$500(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    .line 333
    iput-boolean v8, p0, Lcom/perm/kate/PlaybackService$2;->progress_50_sent:Z

    .line 335
    :cond_3
    float-to-double v2, v0

    float-to-double v4, p2

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lcom/perm/kate/PlaybackService$2;->progress_75_sent:Z

    if-nez v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string v2, "progress_75"

    invoke-static {v1, v2}, Lcom/perm/kate/PlaybackService;->access$500(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    .line 337
    iput-boolean v8, p0, Lcom/perm/kate/PlaybackService$2;->progress_75_sent:Z

    goto :goto_0
.end method

.method public onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "instreamAudioAd"    # Lcom/my/target/ads/instream/InstreamAudioAd;

    .prologue
    .line 344
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    .line 345
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v0, v1}, Lcom/perm/kate/PlaybackService;->access$600(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/api/Audio;)V

    .line 350
    :goto_0
    iget-boolean v0, p0, Lcom/perm/kate/PlaybackService$2;->banner_started:Z

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/perm/kate/PlaybackService;->access$500(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$700(Lcom/perm/kate/PlaybackService;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "instreamAudioAd"    # Lcom/my/target/ads/instream/InstreamAudioAd;

    .prologue
    .line 295
    const-string v0, "PlaybackServiceAds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    .line 297
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v0, v1}, Lcom/perm/kate/PlaybackService;->access$600(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/api/Audio;)V

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$700(Lcom/perm/kate/PlaybackService;)V

    goto :goto_0
.end method

.method public onLoad(Lcom/my/target/ads/instream/InstreamAudioAd;)V
    .locals 2
    .param p1, "instreamAudioAd"    # Lcom/my/target/ads/instream/InstreamAudioAd;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string v1, "received"

    invoke-static {v0, v1}, Lcom/perm/kate/PlaybackService;->access$500(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x1

    sput-boolean v0, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    .line 280
    invoke-virtual {p1}, Lcom/my/target/ads/instream/InstreamAudioAd;->startPreroll()V

    .line 281
    return-void
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "instreamAudioAd"    # Lcom/my/target/ads/instream/InstreamAudioAd;

    .prologue
    .line 285
    const-string v0, "PlaybackServiceAds"

    const-string v1, "onNoAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    .line 287
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v0, v1}, Lcom/perm/kate/PlaybackService;->access$600(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/api/Audio;)V

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$700(Lcom/perm/kate/PlaybackService;)V

    goto :goto_0
.end method
