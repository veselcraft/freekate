.class Lcom/inmobi/ads/NativeStrandAsset;
.super Ljava/lang/Object;
.source "NativeStrandAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;,
        Lcom/inmobi/ads/NativeStrandAsset$AssetType;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field protected a:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

.field protected b:Lcom/inmobi/ads/t;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/Object;

.field protected e:Lorg/json/JSONObject;

.field protected f:Ljava/lang/String;

.field protected g:Z

.field protected h:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Lcom/inmobi/ads/NativeStrandAsset;

.field protected l:[Lcom/inmobi/ads/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/inmobi/ads/NativeStrandAsset;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeStrandAsset;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "root"

    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/NativeStrandAsset;-><init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;)V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/inmobi/ads/t;

    invoke-direct {v0}, Lcom/inmobi/ads/t;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/inmobi/ads/NativeStrandAsset;-><init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Lcom/inmobi/ads/t;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Lcom/inmobi/ads/t;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/inmobi/ads/ai;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inmobi/ads/NativeStrandAsset;-><init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Lcom/inmobi/ads/t;[Lcom/inmobi/ads/ai;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Lcom/inmobi/ads/t;[Lcom/inmobi/ads/ai;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandAsset;->c:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/inmobi/ads/NativeStrandAsset;->a:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    .line 93
    iput-object p3, p0, Lcom/inmobi/ads/NativeStrandAsset;->b:Lcom/inmobi/ads/t;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->d:Ljava/lang/Object;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->f:Ljava/lang/String;

    .line 96
    iput-boolean v2, p0, Lcom/inmobi/ads/NativeStrandAsset;->g:Z

    .line 97
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_NO_ACTION:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->h:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->i:Ljava/lang/String;

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->e:Lorg/json/JSONObject;

    .line 100
    array-length v0, p4

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 101
    new-array v1, v0, [Lcom/inmobi/ads/ai;

    iput-object v1, p0, Lcom/inmobi/ads/NativeStrandAsset;->l:[Lcom/inmobi/ads/ai;

    .line 102
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandAsset;->l:[Lcom/inmobi/ads/ai;

    invoke-static {p4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    return-void
.end method


# virtual methods
.method public a()Lcom/inmobi/ads/NativeStrandAsset$AssetType;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->a:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    return-object v0
.end method

.method public a(Lcom/inmobi/ads/NativeStrandAsset;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandAsset;->k:Lcom/inmobi/ads/NativeStrandAsset;

    .line 194
    return-void
.end method

.method public a(Lcom/inmobi/ads/ai$a;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/ai$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->l:[Lcom/inmobi/ads/ai;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandAsset;->l:[Lcom/inmobi/ads/ai;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 118
    invoke-virtual {v3}, Lcom/inmobi/ads/ai;->b()Lcom/inmobi/ads/ai$a;

    move-result-object v4

    if-ne p1, v4, :cond_2

    .line 119
    invoke-virtual {p0, v3, p2}, Lcom/inmobi/ads/NativeStrandAsset;->a(Lcom/inmobi/ads/ai;Ljava/util/Map;)V

    .line 117
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/ai;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/ai;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandAsset;->l()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/inmobi/ads/ai;->a()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1, p2}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lcom/inmobi/ads/ai;->c()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 112
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandAsset;->f:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public a([Lcom/inmobi/ads/ai;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    array-length v0, p1

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 146
    new-array v1, v0, [Lcom/inmobi/ads/ai;

    iput-object v1, p0, Lcom/inmobi/ads/NativeStrandAsset;->l:[Lcom/inmobi/ads/ai;

    .line 147
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandAsset;->l:[Lcom/inmobi/ads/ai;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    return-void
.end method

.method public b()Lcom/inmobi/ads/t;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->b:Lcom/inmobi/ads/t;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->i:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->j:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->g:Z

    return v0
.end method

.method public h()Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->h:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/inmobi/ads/NativeStrandAsset;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAsset;->k:Lcom/inmobi/ads/NativeStrandAsset;

    return-object v0
.end method

.method l()Lcom/inmobi/rendering/a/c;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    return-object v0
.end method
