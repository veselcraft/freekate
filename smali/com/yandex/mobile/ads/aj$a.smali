.class Lcom/yandex/mobile/ads/aj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/aj;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/aj;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yandex/mobile/ads/aj$a;->b:Lcom/yandex/mobile/ads/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 127
    return-void
.end method


# virtual methods
.method public getBannerInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 131
    const-string v0, "{\"isDelicate\": false}"

    return-object v0
.end method

.method public onAdRender(ILjava/lang/String;)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "testTag"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yandex/mobile/ads/aj$a;->b:Lcom/yandex/mobile/ads/aj;

    invoke-static {v0}, Lcom/yandex/mobile/ads/aj;->a(Lcom/yandex/mobile/ads/aj;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/aj$a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/mobile/ads/aj$a$1;-><init>(Lcom/yandex/mobile/ads/aj$a;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method
