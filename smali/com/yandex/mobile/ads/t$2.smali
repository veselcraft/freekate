.class Lcom/yandex/mobile/ads/t$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/InternalAdView;

.field final synthetic b:Lcom/yandex/mobile/ads/HtmlAdWebView;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/InternalAdView;Lcom/yandex/mobile/ads/HtmlAdWebView;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yandex/mobile/ads/t$2;->a:Lcom/yandex/mobile/ads/InternalAdView;

    iput-object p2, p0, Lcom/yandex/mobile/ads/t$2;->b:Lcom/yandex/mobile/ads/HtmlAdWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yandex/mobile/ads/t$2;->a:Lcom/yandex/mobile/ads/InternalAdView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/t$2;->b:Lcom/yandex/mobile/ads/HtmlAdWebView;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/b;->a(Landroid/view/View;Landroid/webkit/WebView;)V

    .line 76
    iget-object v0, p0, Lcom/yandex/mobile/ads/t$2;->b:Lcom/yandex/mobile/ads/HtmlAdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/HtmlAdWebView;->setVisibility(I)V

    .line 77
    return-void
.end method
