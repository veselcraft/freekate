.class Lcom/yandex/mobile/ads/ae$b;
.super Lcom/yandex/mobile/ads/ae$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/ae$a",
        "<",
        "Lcom/yandex/mobile/ads/ae$b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/yandex/mobile/ads/ae$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/yandex/mobile/ads/ae$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/yandex/mobile/ads/ae$a;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ae$b;->c()Lcom/yandex/mobile/ads/ae$b;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/yandex/mobile/ads/ae$b;
    .locals 0

    .prologue
    .line 420
    return-object p0
.end method
