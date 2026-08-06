.class final Lru/begun/adlib/AdView$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/begun/adlib/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lru/begun/adlib/AdView;


# direct methods
.method constructor <init>(Lru/begun/adlib/AdView;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_onLoadResource_: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_ERROR_: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", descr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wrong url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public final onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_onReceivedHttpAuthRequest_: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public final onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;

    .prologue
    .line 374
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 375
    iget-object v0, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    const-string v1, "_onTooManyRedirects_"

    invoke-static {v0, v1}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 386
    iget-object v0, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_shouldOverrideUrlLoading_: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    invoke-virtual {v0}, Lru/begun/adlib/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 388
    const-string v1, "http://apps.begun.ru/mobile/android.html"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 389
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 390
    array-length v1, v2

    if-le v1, v5, :cond_5

    .line 391
    aget-object v1, v2, v6

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BegunM"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 392
    aget-object v3, v2, v5

    .line 394
    const-string v1, ""

    .line 395
    array-length v4, v2

    if-le v4, v7, :cond_0

    .line 396
    aget-object v1, v2, v7

    .line 398
    :cond_0
    const-string v2, "AdLoaded"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    iget-object v2, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    iput-boolean v5, v2, Lru/begun/adlib/AdView;->AdvLoaded:Z

    .line 401
    :cond_1
    const-string v2, "AdInit"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    iget-object v1, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    new-instance v2, Lru/begun/adlib/AdView$b$1;

    invoke-direct {v2, p0}, Lru/begun/adlib/AdView$b$1;-><init>(Lru/begun/adlib/AdView$b;)V

    invoke-static {v1, v2}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 421
    iget-object v1, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    invoke-static {v1}, Lru/begun/adlib/AdView;->i(Lru/begun/adlib/AdView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    :cond_2
    :goto_0
    return v5

    .line 423
    :cond_3
    iget-object v0, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    invoke-static {v0}, Lru/begun/adlib/AdView;->h(Lru/begun/adlib/AdView;)Lru/begun/adlib/Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    invoke-static {v0}, Lru/begun/adlib/AdView;->h(Lru/begun/adlib/AdView;)Lru/begun/adlib/Callback;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lru/begun/adlib/Callback;->callback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_4
    iget-object v1, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WARNING (unrecognized comand): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V

    .line 432
    :cond_5
    iget-object v1, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    iget-boolean v1, v1, Lru/begun/adlib/AdView;->AdvLoaded:Z

    if-eqz v1, :cond_2

    .line 435
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 437
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    iget-object v1, p0, Lru/begun/adlib/AdView$b;->a:Lru/begun/adlib/AdView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Intent error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V

    goto :goto_0
.end method
