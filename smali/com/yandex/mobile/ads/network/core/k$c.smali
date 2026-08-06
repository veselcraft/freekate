.class public Lcom/yandex/mobile/ads/network/core/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/network/core/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private final b:Lcom/yandex/mobile/ads/network/core/k$d;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/network/core/k$d;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/k$c;->a:Landroid/graphics/Bitmap;

    .line 337
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/k$c;->b:Lcom/yandex/mobile/ads/network/core/k$d;

    .line 340
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/network/core/k$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/k$c;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/network/core/k$c;)Lcom/yandex/mobile/ads/network/core/k$d;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$c;->b:Lcom/yandex/mobile/ads/network/core/k$d;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$c;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
