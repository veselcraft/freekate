.class Lcom/yandex/mobile/ads/network/core/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/network/core/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Lcom/yandex/mobile/ads/network/core/error/h;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/yandex/mobile/ads/network/core/k$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/network/core/k$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$a;->c:Ljava/util/LinkedList;

    .line 406
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/network/core/k$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/k$a;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/network/core/k$a;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$a;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/network/core/k$a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/mobile/ads/network/core/error/h;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$a;->b:Lcom/yandex/mobile/ads/network/core/error/h;

    return-object v0
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/k$a;->b:Lcom/yandex/mobile/ads/network/core/error/h;

    .line 415
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/k$c;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method
