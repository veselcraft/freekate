.class public final enum Lcom/inmobi/ads/NativeStrandAsset$AssetType;
.super Ljava/lang/Enum;
.source "NativeStrandAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeStrandAsset$AssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeStrandAsset$AssetType;

.field public static final enum ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

.field public static final enum ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

.field public static final enum ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

.field public static final enum ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

.field public static final enum ASSET_TYPE_RATING:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

.field public static final enum ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeStrandAsset$AssetType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    new-instance v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    const-string v1, "ASSET_TYPE_CONTAINER"

    const-string v2, "CONTAINER"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/NativeStrandAsset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    .line 33
    new-instance v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    const-string v1, "ASSET_TYPE_TEXT"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/ads/NativeStrandAsset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    .line 34
    new-instance v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    const-string v1, "ASSET_TYPE_CTA"

    const-string v2, "CTA"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/ads/NativeStrandAsset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    .line 35
    new-instance v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    const-string v1, "ASSET_TYPE_IMAGE"

    const-string v2, "IMAGE"

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/ads/NativeStrandAsset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    .line 36
    new-instance v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    const-string v1, "ASSET_TYPE_ICON"

    const-string v2, "ICON"

    invoke-direct {v0, v1, v8, v2}, Lcom/inmobi/ads/NativeStrandAsset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    .line 37
    new-instance v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    const-string v1, "ASSET_TYPE_RATING"

    const/4 v2, 0x5

    const-string v3, "RATING"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/NativeStrandAsset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_RATING:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_RATING:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->$VALUES:[Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAsset$AssetType;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeStrandAsset$AssetType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->$VALUES:[Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeStrandAsset$AssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    return-object v0
.end method


# virtual methods
.method public isEqual(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 46
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
