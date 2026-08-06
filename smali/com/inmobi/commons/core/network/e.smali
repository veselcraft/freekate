.class public Lcom/inmobi/commons/core/network/e;
.super Ljava/lang/Object;
.source "WebViewNetworkTask.java"


# instance fields
.field private a:Lcom/inmobi/commons/core/network/NetworkRequest;

.field private b:Landroid/webkit/WebViewClient;

.field private c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest;Landroid/webkit/WebViewClient;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/inmobi/commons/core/network/e;->b:Landroid/webkit/WebViewClient;

    .line 21
    iput-object p1, p0, Lcom/inmobi/commons/core/network/e;->a:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 22
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/e;->c:Landroid/webkit/WebView;

    .line 32
    iget-object v0, p0, Lcom/inmobi/commons/core/network/e;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/inmobi/commons/core/network/e;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 33
    iget-object v0, p0, Lcom/inmobi/commons/core/network/e;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    iget-object v0, p0, Lcom/inmobi/commons/core/network/e;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/inmobi/commons/core/network/e;->b()V

    .line 26
    iget-object v0, p0, Lcom/inmobi/commons/core/network/e;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/inmobi/commons/core/network/e;->a:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 27
    return-void
.end method
