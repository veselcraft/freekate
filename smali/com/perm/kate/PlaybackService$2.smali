.class Lcom/perm/kate/PlaybackService$2;
.super Ljava/lang/Object;
.source "PlaybackService.java"

# interfaces
.implements Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;


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
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 313
    iput-boolean p1, p0, Lcom/perm/kate/PlaybackService$2;->banner_started:Z

    .line 328
    iput-boolean p1, p0, Lcom/perm/kate/PlaybackService$2;->progress_25_sent:Z

    iput-boolean p1, p0, Lcom/perm/kate/PlaybackService$2;->progress_50_sent:Z

    iput-boolean p1, p0, Lcom/perm/kate/PlaybackService$2;->progress_75_sent:Z

    return-void
.end method


# virtual methods
.method public onBannerComplete(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;)V
    .locals 0

    .line 325
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string p2, "completed"

    invoke-static {p1, p2}, Lcom/perm/kate/PlaybackService;->access$400(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerStart(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;)V
    .locals 0

    .line 317
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string p2, "started"

    invoke-static {p1, p2}, Lcom/perm/kate/PlaybackService;->access$400(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 318
    iput-boolean p1, p0, Lcom/perm/kate/PlaybackService$2;->banner_started:Z

    .line 319
    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->adPlayed()V

    return-void
.end method

.method public onBannerTimeLeftChange(FFLcom/my/target/instreamads/InstreamAudioAd;)V
    .locals 5

    sub-float p1, p2, p1

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    float-to-double v0, p1

    float-to-double p1, p2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    .line 337
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    const/4 p3, 0x1

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    iget-boolean v2, p0, Lcom/perm/kate/PlaybackService$2;->progress_25_sent:Z

    if-nez v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string v3, "progress_25"

    invoke-static {v2, v3}, Lcom/perm/kate/PlaybackService;->access$400(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    .line 339
    iput-boolean p3, p0, Lcom/perm/kate/PlaybackService$2;->progress_25_sent:Z

    :cond_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 341
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    iget-boolean v2, p0, Lcom/perm/kate/PlaybackService$2;->progress_50_sent:Z

    if-nez v2, :cond_2

    .line 342
    iget-object v2, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string v3, "progress_50"

    invoke-static {v2, v3}, Lcom/perm/kate/PlaybackService;->access$400(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    .line 343
    iput-boolean p3, p0, Lcom/perm/kate/PlaybackService$2;->progress_50_sent:Z

    :cond_2
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 345
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    cmpl-double v2, v0, p1

    if-ltz v2, :cond_3

    iget-boolean p1, p0, Lcom/perm/kate/PlaybackService$2;->progress_75_sent:Z

    if-nez p1, :cond_3

    .line 346
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string p2, "progress_75"

    invoke-static {p1, p2}, Lcom/perm/kate/PlaybackService;->access$400(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    .line 347
    iput-boolean p3, p0, Lcom/perm/kate/PlaybackService$2;->progress_75_sent:Z

    :cond_3
    return-void
.end method

.method public onComplete(Ljava/lang/String;Lcom/my/target/instreamads/InstreamAudioAd;)V
    .locals 0

    const/4 p1, 0x0

    .line 354
    sput-boolean p1, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    .line 355
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz p1, :cond_0

    .line 356
    iget-object p2, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p2, p1}, Lcom/perm/kate/PlaybackService;->access$500(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/api/Audio;)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->access$600(Lcom/perm/kate/PlaybackService;)Z

    .line 360
    :goto_0
    iget-boolean p1, p0, Lcom/perm/kate/PlaybackService$2;->banner_started:Z

    if-nez p1, :cond_1

    .line 361
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string p2, "error"

    invoke-static {p1, p2}, Lcom/perm/kate/PlaybackService;->access$400(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/my/target/instreamads/InstreamAudioAd;)V
    .locals 1

    .line 305
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlaybackServiceAds"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 306
    sput-boolean p1, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    .line 307
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz p1, :cond_0

    .line 308
    iget-object p2, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p2, p1}, Lcom/perm/kate/PlaybackService;->access$500(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/api/Audio;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->access$600(Lcom/perm/kate/PlaybackService;)Z

    :goto_0
    return-void
.end method

.method public onLoad(Lcom/my/target/instreamads/InstreamAudioAd;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    const-string v1, "received"

    invoke-static {v0, v1}, Lcom/perm/kate/PlaybackService;->access$400(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 289
    sput-boolean v0, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    .line 290
    invoke-virtual {p1}, Lcom/my/target/instreamads/InstreamAudioAd;->startPreroll()V

    return-void
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/instreamads/InstreamAudioAd;)V
    .locals 0

    const-string p1, "PlaybackServiceAds"

    const-string p2, "onNoAd"

    .line 295
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 296
    sput-boolean p1, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    .line 297
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz p1, :cond_0

    .line 298
    iget-object p2, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p2, p1}, Lcom/perm/kate/PlaybackService;->access$500(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/api/Audio;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$2;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->access$600(Lcom/perm/kate/PlaybackService;)Z

    :goto_0
    return-void
.end method
