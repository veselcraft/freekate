.class Lcom/inmobi/ads/v;
.super Lcom/inmobi/ads/NativeStrandAsset;
.source "NativeStrandContainerAsset.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inmobi/ads/NativeStrandAsset;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/inmobi/ads/NativeStrandAsset;",
        ">;"
    }
.end annotation


# instance fields
.field private m:J

.field private n:[Lcom/inmobi/ads/NativeStrandAsset;

.field private o:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/t;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/inmobi/ads/ai;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/inmobi/ads/v;-><init>(Ljava/lang/String;Lcom/inmobi/ads/t;[Lcom/inmobi/ads/ai;Lorg/json/JSONObject;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/t;[Lcom/inmobi/ads/ai;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/inmobi/ads/NativeStrandAsset;-><init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Lcom/inmobi/ads/t;[Lcom/inmobi/ads/ai;)V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/v;->m:J

    .line 48
    iput-object p4, p0, Lcom/inmobi/ads/v;->e:Lorg/json/JSONObject;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/inmobi/ads/NativeStrandAsset;

    iput-object v0, p0, Lcom/inmobi/ads/v;->n:[Lcom/inmobi/ads/NativeStrandAsset;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/v;->o:I

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/v;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/inmobi/ads/v;->o:I

    return v0
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    new-array v0, p1, [Lcom/inmobi/ads/NativeStrandAsset;

    .line 80
    iget-object v1, p0, Lcom/inmobi/ads/v;->n:[Lcom/inmobi/ads/NativeStrandAsset;

    iget v2, p0, Lcom/inmobi/ads/v;->o:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput-object v0, p0, Lcom/inmobi/ads/v;->n:[Lcom/inmobi/ads/NativeStrandAsset;

    .line 82
    return-void
.end method

.method static synthetic b(Lcom/inmobi/ads/v;)[Lcom/inmobi/ads/NativeStrandAsset;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/inmobi/ads/v;->n:[Lcom/inmobi/ads/NativeStrandAsset;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/inmobi/ads/NativeStrandAsset;
    .locals 1

    .prologue
    .line 63
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/v;->n()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/v;->n:[Lcom/inmobi/ads/NativeStrandAsset;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/inmobi/ads/v;->m:J

    .line 29
    return-void
.end method

.method public b(Lcom/inmobi/ads/NativeStrandAsset;)Z
    .locals 3

    .prologue
    .line 54
    iget v0, p0, Lcom/inmobi/ads/v;->o:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 55
    iget v0, p0, Lcom/inmobi/ads/v;->o:I

    iget-object v1, p0, Lcom/inmobi/ads/v;->n:[Lcom/inmobi/ads/NativeStrandAsset;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/v;->n:[Lcom/inmobi/ads/NativeStrandAsset;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/inmobi/ads/v;->b(I)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/v;->n:[Lcom/inmobi/ads/NativeStrandAsset;

    iget v1, p0, Lcom/inmobi/ads/v;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/inmobi/ads/v;->o:I

    aput-object p1, v0, v1

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/inmobi/ads/NativeStrandAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/inmobi/ads/v$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/v$a;-><init>(Lcom/inmobi/ads/v;)V

    return-object v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/inmobi/ads/v;->m:J

    return-wide v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/inmobi/ads/v;->o:I

    return v0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 71
    const-string v0, "root"

    iget-object v1, p0, Lcom/inmobi/ads/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 75
    const-string v0, "card_scrollable"

    iget-object v1, p0, Lcom/inmobi/ads/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
