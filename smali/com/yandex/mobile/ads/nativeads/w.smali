.class Lcom/yandex/mobile/ads/nativeads/w;
.super Lcom/yandex/mobile/ads/nativeads/ao;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/u;


# instance fields
.field private a:Lcom/yandex/mobile/ads/nativeads/ao$a;

.field private final b:Lcom/yandex/mobile/ads/report/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/nativeads/d",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/ao;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/d;)V

    .line 29
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/ao$a;->a:Lcom/yandex/mobile/ads/nativeads/ao$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/w;->a:Lcom/yandex/mobile/ads/nativeads/ao$a;

    .line 80
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/w$1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/w$1;-><init>(Lcom/yandex/mobile/ads/nativeads/w;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/w;->b:Lcom/yandex/mobile/ads/report/b$a;

    .line 37
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/w;->b:Lcom/yandex/mobile/ads/report/b$a;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/nativeads/w;->a(Lcom/yandex/mobile/ads/report/b$a;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/w;)Lcom/yandex/mobile/ads/nativeads/ao$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/w;->a:Lcom/yandex/mobile/ads/nativeads/ao$a;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    const-string v1, "sponsored"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-object v0
.end method
