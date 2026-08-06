.class public final enum Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;
.super Ljava/lang/Enum;
.source "NativeStrandAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetInteractionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

.field public static final enum ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

.field public static final enum ASSET_INTERACTION_MODE_DEEP_LINK:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

.field public static final enum ASSET_INTERACTION_MODE_IN_APP:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

.field public static final enum ASSET_INTERACTION_MODE_NO_ACTION:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    const-string v1, "ASSET_INTERACTION_MODE_NO_ACTION"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_NO_ACTION:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    .line 52
    new-instance v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    const-string v1, "ASSET_INTERACTION_MODE_IN_APP"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_IN_APP:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    .line 53
    new-instance v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    const-string v1, "ASSET_INTERACTION_MODE_BROWSER"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    .line 54
    new-instance v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    const-string v1, "ASSET_INTERACTION_MODE_DEEP_LINK"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_DEEP_LINK:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_NO_ACTION:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_IN_APP:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_DEEP_LINK:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->$VALUES:[Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->$VALUES:[Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    return-object v0
.end method
