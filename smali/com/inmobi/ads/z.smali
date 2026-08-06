.class Lcom/inmobi/ads/z;
.super Lcom/inmobi/ads/NativeStrandAsset;
.source "NativeStrandIconAsset.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    invoke-direct {p0, p1, v0, p2}, Lcom/inmobi/ads/NativeStrandAsset;-><init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Lcom/inmobi/ads/t;)V

    .line 17
    iput-object p3, p0, Lcom/inmobi/ads/z;->d:Ljava/lang/Object;

    .line 18
    return-void
.end method
