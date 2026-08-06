.class public Lcom/yandex/metrica/PreloadInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/PreloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
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
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "trackingId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yandex/metrica/PreloadInfo$Builder;->a:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/PreloadInfo$Builder;->b:Ljava/util/Map;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/yandex/metrica/PreloadInfo$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/PreloadInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/PreloadInfo$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/metrica/PreloadInfo$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/PreloadInfo$Builder;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/yandex/metrica/PreloadInfo;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/yandex/metrica/PreloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/PreloadInfo;-><init>(Lcom/yandex/metrica/PreloadInfo$Builder;B)V

    return-object v0
.end method

.method public setAdditionalParams(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/PreloadInfo$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/PreloadInfo$Builder;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    return-object p0
.end method
