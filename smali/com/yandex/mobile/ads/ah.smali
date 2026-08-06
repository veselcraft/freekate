.class final Lcom/yandex/mobile/ads/ah;
.super Lcom/yandex/mobile/ads/HtmlAdWebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/ah$a;
    }
.end annotation


# instance fields
.field private h:Lcom/yandex/mobile/ads/am;

.field private i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/v;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/HtmlAdWebView;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/v;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/ah;->i:Z

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/ah;)Lcom/yandex/mobile/ads/am;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/ah;->h:Lcom/yandex/mobile/ads/am;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/ah;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/ah;->i:Z

    return p1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yandex/mobile/ads/ay;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/ay;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 34
    invoke-super {p0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/yandex/mobile/ads/am;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yandex/mobile/ads/ah;->h:Lcom/yandex/mobile/ads/am;

    .line 39
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/yandex/mobile/ads/ah$a;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/ah$a;-><init>(Lcom/yandex/mobile/ads/ah;Landroid/content/Context;)V

    const-string v1, "AdPerformActionsJSI"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/ah;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/ah;->i:Z

    if-nez v1, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/ah;->g:Lcom/yandex/mobile/ads/n;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ah;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/n;->a(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/ah;->g:Lcom/yandex/mobile/ads/n;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ah;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/n;->b(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    .line 122
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 117
    goto :goto_0

    .line 122
    :cond_1
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/HtmlAdWebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method l()V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/ah;->i:Z

    if-nez v0, :cond_0

    .line 45
    invoke-super {p0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->l()V

    .line 47
    :cond_0
    return-void
.end method
