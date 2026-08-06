.class public final Lcom/yandex/mobile/ads/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/AdRequest$Builder;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Landroid/location/Location;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/AdRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yandex/mobile/ads/AdRequest$Builder;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/yandex/mobile/ads/AdRequest$Builder;->a(Lcom/yandex/mobile/ads/AdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/AdRequest;->a:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/yandex/mobile/ads/AdRequest$Builder;->b(Lcom/yandex/mobile/ads/AdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/AdRequest;->b:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/yandex/mobile/ads/AdRequest$Builder;->c(Lcom/yandex/mobile/ads/AdRequest$Builder;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/AdRequest;->c:Landroid/location/Location;

    .line 35
    invoke-static {p1}, Lcom/yandex/mobile/ads/AdRequest$Builder;->d(Lcom/yandex/mobile/ads/AdRequest$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/AdRequest;->d:Ljava/util/Map;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/mobile/ads/AdRequest$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/yandex/mobile/ads/AdRequest$Builder;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/AdRequest;-><init>(Lcom/yandex/mobile/ads/AdRequest$Builder;)V

    return-void
.end method

.method public static builder()Lcom/yandex/mobile/ads/AdRequest$Builder;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/yandex/mobile/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/AdRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    if-ne p0, p1, :cond_1

    .line 133
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 125
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 127
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/AdRequest;

    .line 129
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/yandex/mobile/ads/AdRequest;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/yandex/mobile/ads/AdRequest;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/AdRequest;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 130
    goto :goto_0

    .line 129
    :cond_5
    iget-object v2, p1, Lcom/yandex/mobile/ads/AdRequest;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 131
    :cond_6
    iget-object v2, p0, Lcom/yandex/mobile/ads/AdRequest;->b:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yandex/mobile/ads/AdRequest;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/AdRequest;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 132
    goto :goto_0

    .line 131
    :cond_8
    iget-object v2, p1, Lcom/yandex/mobile/ads/AdRequest;->b:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 133
    :cond_9
    iget-object v2, p0, Lcom/yandex/mobile/ads/AdRequest;->d:Ljava/util/Map;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/yandex/mobile/ads/AdRequest;->d:Ljava/util/Map;

    iget-object v3, p1, Lcom/yandex/mobile/ads/AdRequest;->d:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/yandex/mobile/ads/AdRequest;->d:Ljava/util/Map;

    if-nez v2, :cond_a

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdRequest;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/AdRequest;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 140
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/AdRequest;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/AdRequest;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/AdRequest;->d:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/AdRequest;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 142
    return v0

    :cond_1
    move v0, v1

    .line 139
    goto :goto_0

    :cond_2
    move v0, v1

    .line 140
    goto :goto_1
.end method
