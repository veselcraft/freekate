.class public final Lcom/my/target/a;
.super Ljava/lang/Object;
.source "AdConfig.java"


# instance fields
.field private autoLoadVideo:Z

.field private bannersCount:I

.field private bidId:Ljava/lang/String;

.field private final customParams:Lcom/my/target/common/CustomParams;

.field private final format:Ljava/lang/String;

.field private final slotId:I

.field private trackingEnvironmentEnabled:Z

.field private trackingLocationEnabled:Z

.field private videoQuality:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/my/target/common/CustomParams;

    invoke-direct {v0}, Lcom/my/target/common/CustomParams;-><init>()V

    iput-object v0, p0, Lcom/my/target/a;->customParams:Lcom/my/target/common/CustomParams;

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/my/target/a;->trackingLocationEnabled:Z

    .line 29
    iput-boolean v0, p0, Lcom/my/target/a;->trackingEnvironmentEnabled:Z

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/my/target/a;->autoLoadVideo:Z

    const/16 v0, 0x168

    .line 34
    iput v0, p0, Lcom/my/target/a;->videoQuality:I

    .line 162
    iput p1, p0, Lcom/my/target/a;->slotId:I

    .line 163
    iput-object p2, p0, Lcom/my/target/a;->format:Ljava/lang/String;

    return-void
.end method

.method public static newConfig(ILjava/lang/String;)Lcom/my/target/a;
    .locals 1

    .line 21
    new-instance v0, Lcom/my/target/a;

    invoke-direct {v0, p0, p1}, Lcom/my/target/a;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBannersCount()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/my/target/a;->bannersCount:I

    return v0
.end method

.method public getBidId()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/my/target/a;->bidId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomParams()Lcom/my/target/common/CustomParams;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/my/target/a;->customParams:Lcom/my/target/common/CustomParams;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/my/target/a;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/my/target/a;->slotId:I

    return v0
.end method

.method public getVideoQuality()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/my/target/a;->videoQuality:I

    return v0
.end method

.method public isAutoLoadVideo()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/my/target/a;->autoLoadVideo:Z

    return v0
.end method

.method public isTrackingEnvironmentEnabled()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/my/target/a;->trackingEnvironmentEnabled:Z

    return v0
.end method

.method public isTrackingLocationEnabled()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/my/target/a;->trackingLocationEnabled:Z

    return v0
.end method

.method public setTrackingEnvironmentEnabled(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/my/target/a;->trackingEnvironmentEnabled:Z

    return-void
.end method
