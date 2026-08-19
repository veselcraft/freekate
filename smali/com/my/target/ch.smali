.class public abstract Lcom/my/target/ch;
.super Ljava/lang/Object;
.source "AdBanner.java"


# instance fields
.field protected ctaText:Ljava/lang/String;

.field protected directLink:Z

.field protected duration:F

.field protected height:I

.field protected id:Ljava/lang/String;

.field protected navigationType:Ljava/lang/String;

.field protected openInBrowser:Z

.field private paidType:Ljava/lang/String;

.field private final statHolder:Lcom/my/target/di;

.field protected type:Ljava/lang/String;

.field protected usePlayStoreAction:Z

.field protected votes:I

.field protected width:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/my/target/di;->cw()Lcom/my/target/di;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/ch;->statHolder:Lcom/my/target/di;

    const-string v0, "web"

    .line 39
    iput-object v0, p0, Lcom/my/target/ch;->navigationType:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/my/target/ca;->cZ:Lcom/my/target/ca;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/my/target/ch;->openInBrowser:Z

    .line 47
    iput-boolean v0, p0, Lcom/my/target/ch;->directLink:Z

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/my/target/ch;->type:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/my/target/ch;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCtaText()Ljava/lang/String;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/my/target/ch;->ctaText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/my/target/ch;->navigationType:Ljava/lang/String;

    const-string v1, "store"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Install"

    return-object v0

    :cond_0
    const-string v0, "Visit"

    :cond_1
    return-object v0
.end method

.method public getDuration()F
    .locals 1

    .line 333
    iget v0, p0, Lcom/my/target/ch;->duration:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/my/target/ch;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/my/target/ch;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPaidType()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/my/target/ch;->paidType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatHolder()Lcom/my/target/di;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/my/target/ch;->statHolder:Lcom/my/target/di;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/my/target/ch;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVotes()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/my/target/ch;->votes:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/my/target/ch;->width:I

    return v0
.end method

.method public isDirectLink()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/my/target/ch;->directLink:Z

    return v0
.end method

.method public isOpenInBrowser()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/my/target/ch;->openInBrowser:Z

    return v0
.end method

.method public isUsePlayStoreAction()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/my/target/ch;->usePlayStoreAction:Z

    return v0
.end method

.method public setAdChoices(Lcom/my/target/by;)V
    .locals 0

    return-void
.end method

.method public setAdvertisingLabel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAgeRestrictions(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setBundleId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setClickArea(Lcom/my/target/ca;)V
    .locals 0

    return-void
.end method

.method public setCtaText(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/my/target/ch;->ctaText:Ljava/lang/String;

    return-void
.end method

.method public setDeeplink(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDirectLink(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/my/target/ch;->directLink:Z

    return-void
.end method

.method public setDisclaimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDuration(F)V
    .locals 0

    .line 338
    iput p1, p0, Lcom/my/target/ch;->duration:F

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/my/target/ch;->height:I

    return-void
.end method

.method public setIcon(Lcom/my/target/common/models/ImageData;)V
    .locals 0

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/my/target/ch;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Lcom/my/target/common/models/ImageData;)V
    .locals 0

    return-void
.end method

.method public setNavigationType(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/my/target/ch;->navigationType:Ljava/lang/String;

    return-void
.end method

.method public setOpenInBrowser(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/my/target/ch;->openInBrowser:Z

    return-void
.end method

.method public setPaidType(Ljava/lang/String;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/my/target/ch;->paidType:Ljava/lang/String;

    return-void
.end method

.method public setRating(F)V
    .locals 0

    return-void
.end method

.method public setSubCategory(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTrackingLink(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/my/target/ch;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrlscheme(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUsePlayStoreAction(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/my/target/ch;->usePlayStoreAction:Z

    return-void
.end method

.method public setVotes(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/my/target/ch;->votes:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/my/target/ch;->width:I

    return-void
.end method
