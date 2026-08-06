.class abstract Lcom/yandex/mobile/ads/x;
.super Lcom/yandex/mobile/ads/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/x$a;
    }
.end annotation


# instance fields
.field a:Lcom/yandex/mobile/ads/p;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/z;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/x;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<style type=\'text/css\'> \n  * { \n      -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; \n      -webkit-focus-ring-color: rgba(0, 0, 0, 0) !important; \n      outline: none !important; \n    } \n</style> \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/yandex/mobile/ads/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/z;->a(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/x;->setBackgroundColor(I)V

    .line 67
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/x;->setVisibility(I)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/x;->setHorizontalScrollBarEnabled(Z)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/x;->setHorizontalScrollbarOverlay(Z)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/x;->setVerticalScrollBarEnabled(Z)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/x;->setVerticalScrollbarOverlay(Z)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/x;->setScrollBarStyle(I)V

    .line 75
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/x;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 80
    const/16 v1, 0x15

    invoke-static {v1}, Lcom/yandex/mobile/ads/s;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 84
    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/yandex/mobile/ads/ag;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/ag;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/x;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 87
    new-instance v0, Lcom/yandex/mobile/ads/x$a;

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/x$a;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/x;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 88
    return-void
.end method

.method a(Lcom/yandex/mobile/ads/p;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yandex/mobile/ads/x;->a:Lcom/yandex/mobile/ads/p;

    .line 44
    return-void
.end method

.method a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yandex/mobile/ads/x;->a:Lcom/yandex/mobile/ads/p;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/yandex/mobile/ads/x;->a:Lcom/yandex/mobile/ads/p;

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/p;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yandex/mobile/ads/x;->a:Lcom/yandex/mobile/ads/p;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/p;->a()V

    .line 108
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/z;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 114
    :pswitch_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/x;->b()V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
