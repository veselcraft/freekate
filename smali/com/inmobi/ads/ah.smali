.class Lcom/inmobi/ads/ah;
.super Lcom/inmobi/ads/NativeStrandAsset;
.source "NativeStrandTextAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ah$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Lcom/inmobi/ads/t;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/NativeStrandAsset;-><init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Lcom/inmobi/ads/t;)V

    .line 150
    iput-object p4, p0, Lcom/inmobi/ads/ah;->d:Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    invoke-direct {p0, p1, v0, p2}, Lcom/inmobi/ads/NativeStrandAsset;-><init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Lcom/inmobi/ads/t;)V

    .line 145
    iput-object p3, p0, Lcom/inmobi/ads/ah;->d:Ljava/lang/Object;

    .line 146
    return-void
.end method
