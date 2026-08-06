.class public final Lcom/my/target/core/models/banners/e;
.super Lcom/my/target/core/models/banners/a;
.source "CompanionBanner.java"

# interfaces
.implements Lcom/my/target/ads/instream/models/InstreamAdCompanionBanner;


# instance fields
.field private adSlotID:Ljava/lang/String;

.field private apiFramework:Ljava/lang/String;

.field private assetHeight:I

.field private assetWidth:I

.field private expandedHeight:I

.field private expandedWidth:I

.field private htmlResource:Ljava/lang/String;

.field private iframeResource:Ljava/lang/String;

.field private required:Ljava/lang/String;

.field private staticResource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/models/banners/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final getAdSlotID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/my/target/core/models/banners/e;->adSlotID:Ljava/lang/String;

    return-object v0
.end method

.method public final getApiFramework()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/my/target/core/models/banners/e;->apiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public final getAssetHeight()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/my/target/core/models/banners/e;->assetHeight:I

    return v0
.end method

.method public final getAssetWidth()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/my/target/core/models/banners/e;->assetWidth:I

    return v0
.end method

.method public final getExpandedHeight()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/my/target/core/models/banners/e;->expandedHeight:I

    return v0
.end method

.method public final getExpandedWidth()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/my/target/core/models/banners/e;->expandedWidth:I

    return v0
.end method

.method public final getHtmlResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/my/target/core/models/banners/e;->htmlResource:Ljava/lang/String;

    return-object v0
.end method

.method public final getIframeResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/my/target/core/models/banners/e;->iframeResource:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequired()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/my/target/core/models/banners/e;->required:Ljava/lang/String;

    return-object v0
.end method

.method public final getStaticResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/my/target/core/models/banners/e;->staticResource:Ljava/lang/String;

    return-object v0
.end method

.method public final setAdSlotID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/my/target/core/models/banners/e;->adSlotID:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public final setApiFramework(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/my/target/core/models/banners/e;->apiFramework:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public final setAssetHeight(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/my/target/core/models/banners/e;->assetHeight:I

    .line 41
    return-void
.end method

.method public final setAssetWidth(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/my/target/core/models/banners/e;->assetWidth:I

    .line 31
    return-void
.end method

.method public final setExpandedHeight(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/my/target/core/models/banners/e;->expandedHeight:I

    .line 61
    return-void
.end method

.method public final setExpandedWidth(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/my/target/core/models/banners/e;->expandedWidth:I

    .line 51
    return-void
.end method

.method public final setHtmlResource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/my/target/core/models/banners/e;->htmlResource:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public final setIframeResource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/my/target/core/models/banners/e;->iframeResource:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public final setRequired(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/my/target/core/models/banners/e;->required:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public final setStaticResource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/my/target/core/models/banners/e;->staticResource:Ljava/lang/String;

    .line 71
    return-void
.end method
