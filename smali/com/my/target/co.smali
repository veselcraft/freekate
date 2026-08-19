.class public final Lcom/my/target/co;
.super Lcom/my/target/ch;
.source "MediaBanner.java"


# instance fields
.field private adText:Ljava/lang/String;

.field private allowClose:Z

.field private allowCloseDelay:F

.field private allowPause:Z

.field private allowSeek:Z

.field private allowSkip:Z

.field private allowTrackChange:Z

.field private autoPlay:Z

.field private final companionBanners:Ljava/util/ArrayList;

.field private hasCtaButton:Z

.field private mediaData:Lcom/my/target/cd;

.field private point:F

.field private pointP:F

.field private final shareButtonDatas:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/my/target/ch;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/co;->companionBanners:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/co;->shareButtonDatas:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/my/target/co;->autoPlay:Z

    .line 58
    iput-boolean v0, p0, Lcom/my/target/co;->hasCtaButton:Z

    .line 61
    iput-boolean v0, p0, Lcom/my/target/co;->allowClose:Z

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/my/target/co;->allowSeek:Z

    .line 63
    iput-boolean v1, p0, Lcom/my/target/co;->allowSkip:Z

    .line 64
    iput-boolean v1, p0, Lcom/my/target/co;->allowTrackChange:Z

    .line 65
    iput-boolean v0, p0, Lcom/my/target/co;->allowPause:Z

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/my/target/co;->allowCloseDelay:F

    return-void
.end method

.method public static newAudioBanner()Lcom/my/target/co;
    .locals 1

    .line 34
    invoke-static {}, Lcom/my/target/co;->newBanner()Lcom/my/target/co;

    move-result-object v0

    return-object v0
.end method

.method public static newBanner()Lcom/my/target/co;
    .locals 1

    .line 39
    new-instance v0, Lcom/my/target/co;

    invoke-direct {v0}, Lcom/my/target/co;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addCompanion(Lcom/my/target/ci;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/my/target/co;->companionBanners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addShareButtonData(Lcom/my/target/common/models/ShareButtonData;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/my/target/co;->shareButtonDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAdText()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/my/target/co;->adText:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowCloseDelay()F
    .locals 1

    .line 172
    iget v0, p0, Lcom/my/target/co;->allowCloseDelay:F

    return v0
.end method

.method public getCompanionBanners()Ljava/util/ArrayList;
    .locals 2

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/co;->companionBanners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/my/target/co;->mediaData:Lcom/my/target/cd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/cd;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMediaData()Lcom/my/target/cd;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/my/target/co;->mediaData:Lcom/my/target/cd;

    return-object v0
.end method

.method public getPoint()F
    .locals 1

    .line 187
    iget v0, p0, Lcom/my/target/co;->point:F

    return v0
.end method

.method public getPointP()F
    .locals 1

    .line 192
    iget v0, p0, Lcom/my/target/co;->pointP:F

    return v0
.end method

.method public getShareButtonDatas()Ljava/util/ArrayList;
    .locals 2

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/co;->shareButtonDatas:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/my/target/co;->mediaData:Lcom/my/target/cd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/cd;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllowClose()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/my/target/co;->allowClose:Z

    return v0
.end method

.method public isAllowPause()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/my/target/co;->allowPause:Z

    return v0
.end method

.method public isAllowSeek()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/my/target/co;->allowSeek:Z

    return v0
.end method

.method public isAllowSkip()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/my/target/co;->allowSkip:Z

    return v0
.end method

.method public isAllowTrackChange()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/my/target/co;->allowTrackChange:Z

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/my/target/co;->autoPlay:Z

    return v0
.end method

.method public isHasCtaButton()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/my/target/co;->hasCtaButton:Z

    return v0
.end method

.method public setAdText(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/my/target/co;->adText:Ljava/lang/String;

    return-void
.end method

.method public setAllowClose(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/my/target/co;->allowClose:Z

    return-void
.end method

.method public setAllowCloseDelay(F)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/my/target/co;->allowCloseDelay:F

    return-void
.end method

.method public setAllowPause(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lcom/my/target/co;->allowPause:Z

    return-void
.end method

.method public setAllowSeek(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/my/target/co;->allowSeek:Z

    return-void
.end method

.method public setAllowSkip(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lcom/my/target/co;->allowSkip:Z

    return-void
.end method

.method public setAllowTrackChange(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/my/target/co;->allowTrackChange:Z

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/my/target/co;->autoPlay:Z

    return-void
.end method

.method public setCloseActionText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setHasCtaButton(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/my/target/co;->hasCtaButton:Z

    return-void
.end method

.method public setMediaData(Lcom/my/target/cd;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/my/target/co;->mediaData:Lcom/my/target/cd;

    return-void
.end method

.method public setPoint(F)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/my/target/co;->point:F

    return-void
.end method

.method public setPointP(F)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/my/target/co;->pointP:F

    return-void
.end method
