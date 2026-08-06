.class public final Lcom/my/target/core/engines/h;
.super Lcom/my/target/core/engines/a;
.source "StandardJSEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/engines/h$a;
    }
.end annotation


# instance fields
.field private c:Lcom/my/target/core/facades/h;

.field private d:Lcom/my/target/core/facades/h;

.field private e:Lcom/my/target/ads/MyTargetView;

.field private f:Lcom/my/target/core/ui/views/AdView;

.field private g:Landroid/webkit/WebView;

.field private h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

.field private i:Z

.field private j:Z

.field private k:Lcom/my/target/core/communication/js/c;

.field private l:Lcom/my/target/core/engines/h$a;

.field private m:Landroid/webkit/WebChromeClient;

.field private n:Landroid/webkit/WebViewClient;

.field private o:Lcom/my/target/core/communication/js/b;

.field private p:Lcom/my/target/core/communication/js/b;

.field private q:Lcom/my/target/core/communication/js/b;

.field private r:Lcom/my/target/core/communication/js/b;

.field private s:Lcom/my/target/core/communication/js/b;

.field private t:Lcom/my/target/core/communication/js/b;

.field private u:Lcom/my/target/core/communication/js/b;

.field private v:Lcom/my/target/core/communication/js/b;

.field private w:Lcom/my/target/core/facades/h$a;


# direct methods
.method public constructor <init>(Lcom/my/target/ads/MyTargetView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0x12c

    const/16 v6, 0xfa

    const/16 v5, 0x5a

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 79
    invoke-direct {p0, p1, p3}, Lcom/my/target/core/engines/a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/my/target/core/communication/js/c;

    invoke-direct {v0}, Lcom/my/target/core/communication/js/c;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    .line 70
    new-instance v0, Lcom/my/target/core/engines/h$a;

    invoke-direct {v0}, Lcom/my/target/core/engines/h$a;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    .line 308
    new-instance v0, Lcom/my/target/core/engines/h$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$1;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->m:Landroid/webkit/WebChromeClient;

    .line 328
    new-instance v0, Lcom/my/target/core/engines/h$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$4;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->n:Landroid/webkit/WebViewClient;

    .line 394
    new-instance v0, Lcom/my/target/core/engines/h$5;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$5;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->o:Lcom/my/target/core/communication/js/b;

    .line 404
    new-instance v0, Lcom/my/target/core/engines/h$6;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$6;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->p:Lcom/my/target/core/communication/js/b;

    .line 442
    new-instance v0, Lcom/my/target/core/engines/h$7;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$7;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->q:Lcom/my/target/core/communication/js/b;

    .line 454
    new-instance v0, Lcom/my/target/core/engines/h$8;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$8;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->r:Lcom/my/target/core/communication/js/b;

    .line 473
    new-instance v0, Lcom/my/target/core/engines/h$9;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$9;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->s:Lcom/my/target/core/communication/js/b;

    .line 483
    new-instance v0, Lcom/my/target/core/engines/h$10;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$10;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->t:Lcom/my/target/core/communication/js/b;

    .line 495
    new-instance v0, Lcom/my/target/core/engines/h$11;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$11;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->u:Lcom/my/target/core/communication/js/b;

    .line 505
    new-instance v0, Lcom/my/target/core/engines/h$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$2;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->v:Lcom/my/target/core/communication/js/b;

    .line 519
    new-instance v0, Lcom/my/target/core/engines/h$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/h$3;-><init>(Lcom/my/target/core/engines/h;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/facades/h$a;

    .line 80
    iput-object p1, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    .line 1242
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    .line 1243
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1244
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1245
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1246
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1248
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->n:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1249
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->m:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1252
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1254
    new-instance v1, Lcom/my/target/core/utils/l;

    iget-object v2, p0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    .line 1256
    new-instance v2, Lcom/my/target/core/ui/views/AdView;

    iget-object v3, p0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/my/target/core/ui/views/AdView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    .line 1257
    iget-object v2, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    iget-object v3, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v0}, Lcom/my/target/core/ui/views/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1258
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 1263
    const-string v0, "standard_300x250"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1266
    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    .line 1267
    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1268
    iget-object v2, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/my/target/core/ui/views/AdView;->setFixedSize(II)V

    .line 1283
    :goto_0
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1284
    iget-object v1, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1285
    iget-object v0, p0, Lcom/my/target/core/engines/h;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onReady"

    iget-object v2, p0, Lcom/my/target/core/engines/h;->o:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 84
    iget-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onError"

    iget-object v2, p0, Lcom/my/target/core/engines/h;->p:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 85
    iget-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onAdError"

    iget-object v2, p0, Lcom/my/target/core/engines/h;->p:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 86
    iget-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onComplete"

    iget-object v2, p0, Lcom/my/target/core/engines/h;->q:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 87
    iget-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onNoAd"

    iget-object v2, p0, Lcom/my/target/core/engines/h;->r:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 88
    iget-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onAdStart"

    iget-object v2, p0, Lcom/my/target/core/engines/h;->s:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 89
    iget-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onStat"

    iget-object v2, p0, Lcom/my/target/core/engines/h;->u:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 90
    iget-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onAdClick"

    iget-object v2, p0, Lcom/my/target/core/engines/h;->t:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 91
    iget-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    const-string v1, "onRequestNewAds"

    iget-object v2, p0, Lcom/my/target/core/engines/h;->v:Lcom/my/target/core/communication/js/b;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/communication/js/c;->a(Ljava/lang/String;Lcom/my/target/core/communication/js/b;)Z

    .line 92
    return-void

    .line 1269
    :cond_0
    const-string v0, "standard_728x90"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1271
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x2d8

    .line 1272
    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    .line 1273
    invoke-virtual {v1, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1274
    iget-object v2, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    const/16 v3, 0x2d8

    invoke-virtual {v1, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-virtual {v1, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/my/target/core/ui/views/AdView;->setFixedSize(II)V

    goto/16 :goto_0

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    const/16 v2, 0x280

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/AdView;->setMaxWidth(I)V

    .line 1278
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x32

    .line 1280
    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/my/target/core/engines/h;)Lcom/my/target/core/communication/js/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/core/engines/h;Lcom/my/target/core/facades/h;)Lcom/my/target/core/facades/h;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/facades/h;

    return-object p1
.end method

.method private a(Lcom/my/target/core/communication/js/calls/c;)V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 377
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:AdmanJS.execute("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/my/target/core/communication/js/calls/c;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail to execute js call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 383
    new-instance v1, Lcom/my/target/core/async/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error: fail to execute JSCall "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-interface {p1}, Lcom/my/target/core/communication/js/calls/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/core/async/a;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;)V

    .line 386
    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/my/target/core/async/a;->a(I)V

    .line 387
    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->a(Ljava/lang/Throwable;)V

    .line 388
    iget-object v0, p0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->a(Landroid/content/Context;)V

    .line 389
    invoke-virtual {v1}, Lcom/my/target/core/async/a;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/my/target/core/engines/h;Lcom/my/target/core/communication/js/calls/c;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/communication/js/calls/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 290
    if-eqz p1, :cond_2

    .line 292
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/my/target/core/ui/views/controls/AdInfoButton;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/controls/AdInfoButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/h;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    .line 295
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, v1, v2, v2}, Lcom/my/target/core/ui/views/AdView;->addView(Landroid/view/View;II)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->setUrl(Ljava/lang/String;)V

    .line 306
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/my/target/core/engines/h;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 303
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/my/target/core/engines/h;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 304
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/core/engines/h;->h:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    goto :goto_0
.end method

.method static synthetic b(Lcom/my/target/core/engines/h;)Lcom/my/target/ads/MyTargetView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    return-object v0
.end method

.method static synthetic b(Lcom/my/target/core/engines/h;Lcom/my/target/core/facades/h;)V
    .locals 2

    .prologue
    .line 47
    .line 2233
    iput-object p1, p0, Lcom/my/target/core/engines/h;->c:Lcom/my/target/core/facades/h;

    .line 2234
    invoke-virtual {p1}, Lcom/my/target/core/facades/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/h;->a(Ljava/lang/String;)V

    .line 2235
    invoke-virtual {p1}, Lcom/my/target/core/facades/h;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 2236
    if-eqz v0, :cond_0

    .line 2237
    new-instance v1, Lcom/my/target/core/communication/js/calls/f;

    invoke-direct {v1, v0}, Lcom/my/target/core/communication/js/calls/f;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p0, v1}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/communication/js/calls/c;)V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/my/target/core/engines/h;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/my/target/core/engines/h;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/my/target/core/engines/h;)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/h;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/core/engines/h;->c:Lcom/my/target/core/facades/h;

    return-object v0
.end method

.method static synthetic f(Lcom/my/target/core/engines/h;)Lcom/my/target/core/engines/h$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    return-object v0
.end method

.method static synthetic g(Lcom/my/target/core/engines/h;)Lcom/my/target/core/ui/views/AdView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    return-object v0
.end method

.method static synthetic h(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/facades/h;

    return-object v0
.end method

.method static synthetic i(Lcom/my/target/core/engines/h;)Lcom/my/target/core/facades/h$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/core/engines/h;->w:Lcom/my/target/core/facades/h$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/my/target/core/engines/a;->a()V

    .line 148
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/h$a;->b(Z)V

    .line 153
    new-instance v0, Lcom/my/target/core/communication/js/calls/b;

    const-string v1, "pause"

    invoke-direct {v0, v1}, Lcom/my/target/core/communication/js/calls/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/communication/js/calls/c;)V

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v0, "already paused"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    const-string v0, "not started"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/my/target/core/engines/b$a;)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public final a(Lcom/my/target/core/facades/g;)V
    .locals 4

    .prologue
    .line 100
    instance-of v0, p1, Lcom/my/target/core/facades/h;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->e()V

    .line 103
    check-cast p1, Lcom/my/target/core/facades/h;

    iput-object p1, p0, Lcom/my/target/core/engines/h;->c:Lcom/my/target/core/facades/h;

    .line 104
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/h;->i:Z

    .line 106
    iget-object v0, p0, Lcom/my/target/core/engines/h;->c:Lcom/my/target/core/facades/h;

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/my/target/core/engines/h;->c:Lcom/my/target/core/facades/h;

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/h;->a(Ljava/lang/String;)V

    .line 110
    const-string v0, "load page"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->c:Lcom/my/target/core/facades/h;

    invoke-virtual {v1}, Lcom/my/target/core/facades/h;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    const-string v1, "No ad"

    iget-object v2, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, "StandardJSEngine: incorrect ad type"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/my/target/core/engines/a;->b()V

    .line 165
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/h$a;->b(Z)V

    .line 170
    new-instance v0, Lcom/my/target/core/communication/js/calls/b;

    const-string v1, "resume"

    invoke-direct {v0, v1}, Lcom/my/target/core/communication/js/calls/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/communication/js/calls/c;)V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v0, "already started"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    const-string v0, "not started"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-super {p0}, Lcom/my/target/core/engines/a;->c()V

    .line 182
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/h$a;->b(Z)V

    .line 185
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/h$a;->a(Z)V

    .line 186
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/facades/h;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/facades/h;

    invoke-virtual {v0, v2}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 190
    iput-object v2, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/facades/h;

    .line 192
    :cond_0
    new-instance v0, Lcom/my/target/core/communication/js/calls/b;

    const-string v1, "stop"

    invoke-direct {v0, v1}, Lcom/my/target/core/communication/js/calls/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/communication/js/calls/c;)V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string v0, "not started"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-super {p0}, Lcom/my/target/core/engines/a;->d()V

    .line 128
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/h$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "already started"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/core/engines/h$a;->a(Z)V

    .line 134
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v2, v2}, Lcom/my/target/core/ui/views/AdView;->setDesiredSize(II)V

    .line 135
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 137
    new-instance v1, Lcom/my/target/core/communication/js/calls/e;

    iget-object v2, p0, Lcom/my/target/core/engines/h;->c:Lcom/my/target/core/facades/h;

    invoke-virtual {v2}, Lcom/my/target/core/facades/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/my/target/core/communication/js/calls/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/communication/js/calls/c;)V

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "not ready"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-super {p0}, Lcom/my/target/core/engines/a;->f()V

    .line 202
    iget-boolean v0, p0, Lcom/my/target/core/engines/h;->j:Z

    if-nez v0, :cond_1

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/h;->j:Z

    .line 205
    iget-object v0, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    invoke-virtual {v0}, Lcom/my/target/core/communication/js/c;->a()V

    .line 206
    iput-object v2, p0, Lcom/my/target/core/engines/h;->k:Lcom/my/target/core/communication/js/c;

    .line 207
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/AdView;->removeAllViews()V

    .line 209
    iput-object v2, p0, Lcom/my/target/core/engines/h;->f:Lcom/my/target/core/ui/views/AdView;

    .line 210
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 211
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 212
    iget-object v0, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 213
    iput-object v2, p0, Lcom/my/target/core/engines/h;->g:Landroid/webkit/WebView;

    .line 214
    iput-object v2, p0, Lcom/my/target/core/engines/h;->c:Lcom/my/target/core/facades/h;

    .line 215
    iput-object v2, p0, Lcom/my/target/core/engines/h;->e:Lcom/my/target/ads/MyTargetView;

    .line 216
    iput-object v2, p0, Lcom/my/target/core/engines/h;->l:Lcom/my/target/core/engines/h$a;

    .line 217
    iget-object v0, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/facades/h;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/facades/h;

    invoke-virtual {v0, v2}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 220
    iput-object v2, p0, Lcom/my/target/core/engines/h;->d:Lcom/my/target/core/facades/h;

    .line 223
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method
