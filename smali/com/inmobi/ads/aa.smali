.class Lcom/inmobi/ads/aa;
.super Lcom/inmobi/ads/NativeStrandAsset;
.source "NativeStrandImageAsset.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v4, v0, [Lcom/inmobi/ads/ai;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/aa;-><init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;[Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;[Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/inmobi/ads/NativeStrandAsset;-><init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Lcom/inmobi/ads/t;[Lcom/inmobi/ads/ai;)V

    .line 39
    iput-object p3, p0, Lcom/inmobi/ads/aa;->d:Ljava/lang/Object;

    .line 40
    if-eqz p6, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/aa;->g:Z

    .line 42
    iput-object p5, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    .line 43
    iput-object p6, p0, Lcom/inmobi/ads/aa;->e:Lorg/json/JSONObject;

    .line 45
    :cond_0
    return-void
.end method
