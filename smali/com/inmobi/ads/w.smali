.class Lcom/inmobi/ads/w;
.super Lcom/inmobi/ads/ah;
.source "NativeStrandCtaAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/w$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 73
    const/4 v0, 0x0

    new-array v4, v0, [Lcom/inmobi/ads/ai;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/w;-><init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;[Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;[Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Lcom/inmobi/ads/t;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p4}, Lcom/inmobi/ads/w;->a([Lcom/inmobi/ads/ai;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/w;->g:Z

    .line 82
    if-eqz p6, :cond_0

    .line 83
    iput-object p5, p0, Lcom/inmobi/ads/w;->h:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    .line 84
    iput-object p6, p0, Lcom/inmobi/ads/w;->e:Lorg/json/JSONObject;

    .line 86
    :cond_0
    return-void
.end method
