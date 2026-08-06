.class public Lcom/yandex/mobile/ads/HtmlAdWebView;
.super Lcom/yandex/mobile/ads/aj;
.source "SourceFile"


# instance fields
.field d:Lcom/yandex/mobile/ads/AdSize;

.field final e:I

.field f:I

.field private final h:Lcom/yandex/mobile/ads/v;

.field private i:Z

.field private j:Lcom/yandex/mobile/ads/AdEventListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/v;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adResponse"    # Lcom/yandex/mobile/ads/n;
    .param p3, "adConfigurationSize"    # Lcom/yandex/mobile/ads/v;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/aj;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->i:Z

    .line 31
    iput-object p3, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->h:Lcom/yandex/mobile/ads/v;

    .line 33
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/v;->getWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->e:I

    .line 35
    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/v;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->f:I

    .line 41
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/n;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/v;->getWidth(Landroid/content/Context;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->e:I

    .line 39
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/n;->d()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->f:I

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/n;->c()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/aj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->g:Lcom/yandex/mobile/ads/n;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/n;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->e:I

    invoke-static {v0}, Lcom/yandex/mobile/ads/ay;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->h:Lcom/yandex/mobile/ads/v;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/v;->getWidth(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->h:Lcom/yandex/mobile/ads/v;

    invoke-virtual {v3, v0}, Lcom/yandex/mobile/ads/v;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/ay;->a(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/yandex/mobile/ads/aj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method protected a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/yandex/mobile/ads/aj;->a(ILjava/lang/String;)V

    .line 108
    iput p1, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->f:I

    .line 110
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->g()V

    .line 111
    return-void
.end method

.method public bridge synthetic addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/yandex/mobile/ads/aj;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/yandex/mobile/ads/aj$a;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/aj$a;-><init>(Lcom/yandex/mobile/ads/aj;Landroid/content/Context;)V

    const-string v1, "AdPerformActionsJSI"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/HtmlAdWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected g()V
    .locals 4

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->i:Z

    if-eqz v0, :cond_2

    .line 50
    iget v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->e:I

    iget v1, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->f:I

    iget-object v2, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->h:Lcom/yandex/mobile/ads/v;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/v;->a()Lcom/yandex/mobile/ads/v$a;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/AdSize;

    invoke-direct {v3, v0, v1, v2}, Lcom/yandex/mobile/ads/AdSize;-><init>(IILcom/yandex/mobile/ads/v$a;)V

    iput-object v3, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->d:Lcom/yandex/mobile/ads/AdSize;

    .line 52
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->i()Z

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->a:Lcom/yandex/mobile/ads/p;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->a:Lcom/yandex/mobile/ads/p;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->k()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/yandex/mobile/ads/p;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->j:Lcom/yandex/mobile/ads/AdEventListener;

    if-eqz v1, :cond_1

    .line 58
    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->j:Lcom/yandex/mobile/ads/AdEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/AdEventListener;->onAdLoaded()V

    .line 65
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->i:Z

    .line 67
    :cond_2
    return-void

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->j:Lcom/yandex/mobile/ads/AdEventListener;

    sget-object v1, Lcom/yandex/mobile/ads/AdRequestError;->b:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/AdEventListener;->onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V

    goto :goto_0
.end method

.method public h()Lcom/yandex/mobile/ads/AdSize;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->d:Lcom/yandex/mobile/ads/AdSize;

    return-object v0
.end method

.method i()Z
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->d:Lcom/yandex/mobile/ads/AdSize;

    iget-object v2, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->h:Lcom/yandex/mobile/ads/v;

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/s;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/AdSize;Lcom/yandex/mobile/ads/v;)Z

    move-result v0

    return v0
.end method

.method j()Z
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->g:Lcom/yandex/mobile/ads/n;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/n;->c()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->g:Lcom/yandex/mobile/ads/n;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/n;->d()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->h:Lcom/yandex/mobile/ads/v;

    .line 136
    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/v;->getWidth(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->h:Lcom/yandex/mobile/ads/v;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/v;->a(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic k()Ljava/util/Map;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yandex/mobile/ads/aj;->k()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/aj;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeJavascriptInterface(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/aj;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method public setAdEventListener(Lcom/yandex/mobile/ads/AdEventListener;)V
    .locals 0
    .param p1, "adEventListener"    # Lcom/yandex/mobile/ads/AdEventListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yandex/mobile/ads/HtmlAdWebView;->j:Lcom/yandex/mobile/ads/AdEventListener;

    .line 45
    return-void
.end method
