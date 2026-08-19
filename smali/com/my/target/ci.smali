.class public Lcom/my/target/ci;
.super Lcom/my/target/ch;
.source "CompanionBanner.java"


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
.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/my/target/ch;-><init>()V

    const-string v0, "companion"

    .line 28
    iput-object v0, p0, Lcom/my/target/ch;->type:Ljava/lang/String;

    return-void
.end method

.method public static newBanner()Lcom/my/target/ci;
    .locals 1

    .line 10
    new-instance v0, Lcom/my/target/ci;

    invoke-direct {v0}, Lcom/my/target/ci;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAdSlotID()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/my/target/ci;->adSlotID:Ljava/lang/String;

    return-object v0
.end method

.method public getApiFramework()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/my/target/ci;->apiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetHeight()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/my/target/ci;->assetHeight:I

    return v0
.end method

.method public getAssetWidth()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/my/target/ci;->assetWidth:I

    return v0
.end method

.method public getExpandedHeight()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/my/target/ci;->expandedHeight:I

    return v0
.end method

.method public getExpandedWidth()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/my/target/ci;->expandedWidth:I

    return v0
.end method

.method public getHtmlResource()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/my/target/ci;->htmlResource:Ljava/lang/String;

    return-object v0
.end method

.method public getIframeResource()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/my/target/ci;->iframeResource:Ljava/lang/String;

    return-object v0
.end method

.method public getRequired()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/my/target/ci;->required:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticResource()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/my/target/ci;->staticResource:Ljava/lang/String;

    return-object v0
.end method

.method public setAdSlotID(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/my/target/ci;->adSlotID:Ljava/lang/String;

    return-void
.end method

.method public setApiFramework(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/my/target/ci;->apiFramework:Ljava/lang/String;

    return-void
.end method

.method public setAssetHeight(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/my/target/ci;->assetHeight:I

    return-void
.end method

.method public setAssetWidth(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/my/target/ci;->assetWidth:I

    return-void
.end method

.method public setExpandedHeight(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/my/target/ci;->expandedHeight:I

    return-void
.end method

.method public setExpandedWidth(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/my/target/ci;->expandedWidth:I

    return-void
.end method

.method public setHtmlResource(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/my/target/ci;->htmlResource:Ljava/lang/String;

    return-void
.end method

.method public setIframeResource(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/my/target/ci;->iframeResource:Ljava/lang/String;

    return-void
.end method

.method public setRequired(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/my/target/ci;->required:Ljava/lang/String;

    return-void
.end method

.method public setStaticResource(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/my/target/ci;->staticResource:Ljava/lang/String;

    return-void
.end method
