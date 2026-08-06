.class public abstract Lcom/my/target/core/models/banners/a;
.super Lcom/my/target/core/models/b;
.source "AbstractBanner.java"

# interfaces
.implements Lcom/my/target/core/models/banners/d;


# static fields
.field private static final DEFAULT_CTA_TEXT_STORE:Ljava/lang/String; = "Install"

.field private static final DEFAULT_CTA_TEXT_WEB:Ljava/lang/String; = "Visit"

.field public static final DEFAULT_NAVIGATION_TYPE:Ljava/lang/String; = "web"

.field public static final DEFAULT_OPEN_IN_BROWSER:Z

.field public static final DEFAULT_USE_PLAY_ACTION:Z


# instance fields
.field protected advertisingLabel:Ljava/lang/String;

.field protected ageRestrictions:Ljava/lang/String;

.field protected appInstalled:Z

.field protected bundleId:Ljava/lang/String;

.field protected ctaText:Ljava/lang/String;

.field protected deepLink:Ljava/lang/String;

.field protected finalLink:Ljava/lang/String;

.field protected height:I

.field protected id:Ljava/lang/String;

.field protected navigationType:Ljava/lang/String;

.field protected openInBrowser:Z

.field protected stats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;"
        }
    .end annotation
.end field

.field protected timeout:I

.field protected trackingLink:Ljava/lang/String;

.field protected final type:Ljava/lang/String;

.field protected urlScheme:Ljava/lang/String;

.field private usePlayStoreAction:Z

.field protected width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/my/target/core/models/b;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/banners/a;->stats:Ljava/util/ArrayList;

    .line 238
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->id:Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lcom/my/target/core/models/banners/a;->type:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public static getDefaultCtaText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "store"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "Install"

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Visit"

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addStat(Lcom/my/target/core/models/k;)Z
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->stats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->stats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addStats(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/k;

    .line 264
    invoke-virtual {p0, v0}, Lcom/my/target/core/models/banners/a;->addStat(Lcom/my/target/core/models/k;)Z

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method public getAdvertisingLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->advertisingLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAgeRestrictions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->ageRestrictions:Ljava/lang/String;

    return-object v0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getCtaText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->ctaText:Ljava/lang/String;

    return-object v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->deepLink:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->finalLink:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/my/target/core/models/banners/a;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->navigationType:Ljava/lang/String;

    return-object v0
.end method

.method public getStats()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/core/models/banners/a;->stats:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/my/target/core/models/banners/a;->timeout:I

    return v0
.end method

.method public getTrackingLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->trackingLink:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/my/target/core/models/banners/a;->urlScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUsePlayStoreAction()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/a;->usePlayStoreAction:Z

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/my/target/core/models/banners/a;->width:I

    return v0
.end method

.method public isAppInstalled()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/a;->appInstalled:Z

    return v0
.end method

.method public isOpenInBrowser()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/my/target/core/models/banners/a;->openInBrowser:Z

    return v0
.end method

.method public setAdvertisingLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->advertisingLabel:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setAgeRestrictions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->ageRestrictions:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setAppInstalled(Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/a;->appInstalled:Z

    .line 100
    return-void
.end method

.method public setBundleId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->bundleId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setCtaText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->ctaText:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setDeepLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->deepLink:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setFinalLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->finalLink:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lcom/my/target/core/models/banners/a;->height:I

    .line 155
    return-void
.end method

.method public setNavigationType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->navigationType:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setOpenInBrowser(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/a;->openInBrowser:Z

    .line 207
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/my/target/core/models/banners/a;->timeout:I

    .line 125
    return-void
.end method

.method public setTrackingLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->trackingLink:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setUrlScheme(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/my/target/core/models/banners/a;->urlScheme:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setUsePlayStoreAction(Z)V
    .locals 0

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/my/target/core/models/banners/a;->usePlayStoreAction:Z

    .line 225
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/my/target/core/models/banners/a;->width:I

    .line 145
    return-void
.end method
