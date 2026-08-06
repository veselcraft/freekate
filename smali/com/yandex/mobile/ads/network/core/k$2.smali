.class Lcom/yandex/mobile/ads/network/core/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/network/core/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/yandex/mobile/ads/network/core/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yandex/mobile/ads/network/core/k;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/network/core/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/k$2;->b:Lcom/yandex/mobile/ads/network/core/k;

    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/k$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$2;->b:Lcom/yandex/mobile/ads/network/core/k;

    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/k$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/error/h;)V

    .line 258
    return-void
.end method
