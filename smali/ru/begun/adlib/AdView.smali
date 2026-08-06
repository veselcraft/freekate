.class public Lru/begun/adlib/AdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/begun/adlib/AdView$b;,
        Lru/begun/adlib/AdView$a;
    }
.end annotation


# instance fields
.field public AdvLoaded:Z

.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/Object;

.field protected c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:I

.field public fullScreenMode:Z

.field private g:I

.field private h:I

.field public haveDimensions:Z

.field private i:I

.field public isRoaming:Z

.field private j:I

.field private k:D

.field private l:D

.field public libraryHasInitialized:Z

.field private m:D

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field public onDebug:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Landroid/location/Location;

.field private u:Ljava/util/Date;

.field private v:Ljava/lang/Runnable;

.field private w:Lru/begun/adlib/Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lru/begun/adlib/AdView;->b:Ljava/lang/Object;

    .line 33
    iput v1, p0, Lru/begun/adlib/AdView;->d:I

    .line 34
    iput v1, p0, Lru/begun/adlib/AdView;->e:I

    iput v1, p0, Lru/begun/adlib/AdView;->f:I

    iput v1, p0, Lru/begun/adlib/AdView;->g:I

    iput v1, p0, Lru/begun/adlib/AdView;->h:I

    iput v1, p0, Lru/begun/adlib/AdView;->i:I

    iput v1, p0, Lru/begun/adlib/AdView;->j:I

    .line 35
    iput-wide v2, p0, Lru/begun/adlib/AdView;->k:D

    iput-wide v2, p0, Lru/begun/adlib/AdView;->l:D

    iput-wide v2, p0, Lru/begun/adlib/AdView;->m:D

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lru/begun/adlib/AdView;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/begun/adlib/AdView;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/begun/adlib/AdView;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/begun/adlib/AdView;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/begun/adlib/AdView;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/begun/adlib/AdView;->s:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lru/begun/adlib/AdView;->w:Lru/begun/adlib/Callback;

    .line 48
    iput-boolean v1, p0, Lru/begun/adlib/AdView;->onDebug:Z

    iput-boolean v1, p0, Lru/begun/adlib/AdView;->fullScreenMode:Z

    iput-boolean v1, p0, Lru/begun/adlib/AdView;->AdvLoaded:Z

    iput-boolean v1, p0, Lru/begun/adlib/AdView;->libraryHasInitialized:Z

    iput-boolean v1, p0, Lru/begun/adlib/AdView;->isRoaming:Z

    iput-boolean v1, p0, Lru/begun/adlib/AdView;->haveDimensions:Z

    .line 55
    iput-object p1, p0, Lru/begun/adlib/AdView;->c:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lru/begun/adlib/AdView;->a()V

    .line 57
    return-void
.end method

.method static synthetic a(Lru/begun/adlib/AdView;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lru/begun/adlib/AdView;->i:I

    return p1
.end method

.method static synthetic a(Lru/begun/adlib/AdView;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lru/begun/adlib/AdView;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lru/begun/adlib/AdView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lru/begun/adlib/AdView;->v:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lru/begun/adlib/AdView;->u:Ljava/util/Date;

    .line 79
    invoke-virtual {p0, v2}, Lru/begun/adlib/AdView;->setBackgroundColor(I)V

    .line 81
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lru/begun/adlib/AdView;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    .line 82
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 83
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 84
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 85
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 86
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 87
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    new-instance v1, Lru/begun/adlib/AdView$a;

    invoke-direct {v1, p0}, Lru/begun/adlib/AdView$a;-><init>(Lru/begun/adlib/AdView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 88
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    new-instance v1, Lru/begun/adlib/AdView$b;

    invoke-direct {v1, p0}, Lru/begun/adlib/AdView$b;-><init>(Lru/begun/adlib/AdView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 89
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 94
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    new-instance v1, Lru/begun/adlib/AdView$1;

    invoke-direct {v1, p0}, Lru/begun/adlib/AdView$1;-><init>(Lru/begun/adlib/AdView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    iget-object v0, p0, Lru/begun/adlib/AdView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/begun/adlib/AdView;->s:Ljava/lang/String;

    .line 100
    const/4 v1, 0x0

    .line 102
    :try_start_0
    iget-object v0, p0, Lru/begun/adlib/AdView;->c:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_a

    move-object v1, v0

    .line 106
    :goto_0
    if-eqz v1, :cond_1

    .line 109
    :try_start_1
    iget-object v0, p0, Lru/begun/adlib/AdView;->c:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 110
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lru/begun/adlib/AdView;->t:Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9

    .line 116
    :goto_1
    iget-object v0, p0, Lru/begun/adlib/AdView;->t:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 118
    :try_start_2
    iget-object v0, p0, Lru/begun/adlib/AdView;->t:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lru/begun/adlib/AdView;->l:D

    .line 119
    iget-object v0, p0, Lru/begun/adlib/AdView;->t:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lru/begun/adlib/AdView;->k:D

    .line 120
    iget-object v0, p0, Lru/begun/adlib/AdView;->t:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lru/begun/adlib/AdView;->m:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 125
    :cond_0
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lru/begun/adlib/AdView;->p:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 129
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/begun/adlib/AdView;->n:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 133
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/begun/adlib/AdView;->o:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 137
    :goto_6
    :try_start_6
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/begun/adlib/AdView;->q:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 146
    :goto_7
    :try_start_7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lru/begun/adlib/AdView;->d:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 150
    :goto_8
    :try_start_8
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/begun/adlib/AdView;->r:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 154
    :goto_9
    :try_start_9
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lru/begun/adlib/AdView;->isRoaming:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 158
    :cond_1
    :goto_a
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v0, "BEGUN_AD"

    const-string v2, "Security exception! Please verify, that you check ACCESS_COARSE_LOCATION permission"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    :cond_2
    :try_start_a
    const-string v0, ""
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_2

    .line 113
    :catch_9
    move-exception v0

    goto :goto_1

    .line 103
    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lru/begun/adlib/AdView;->onDebug:Z

    if-eqz v0, :cond_0

    .line 479
    const-string v0, "BEGUN_AD"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    return-void
.end method

.method static synthetic a(Lru/begun/adlib/AdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lru/begun/adlib/AdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lru/begun/adlib/AdView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lru/begun/adlib/AdView;->e:I

    return v0
.end method

.method static synthetic b(Lru/begun/adlib/AdView;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lru/begun/adlib/AdView;->j:I

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    const-string v1, "http://apps.begun.ru/mobile/android.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method static synthetic c(Lru/begun/adlib/AdView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lru/begun/adlib/AdView;->f:I

    return v0
.end method

.method static synthetic d(Lru/begun/adlib/AdView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lru/begun/adlib/AdView;->g:I

    return v0
.end method

.method static synthetic e(Lru/begun/adlib/AdView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lru/begun/adlib/AdView;->h:I

    return v0
.end method

.method static synthetic f(Lru/begun/adlib/AdView;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lru/begun/adlib/AdView;->b()V

    return-void
.end method

.method static synthetic g(Lru/begun/adlib/AdView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic h(Lru/begun/adlib/AdView;)Lru/begun/adlib/Callback;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lru/begun/adlib/AdView;->w:Lru/begun/adlib/Callback;

    return-object v0
.end method

.method static synthetic i(Lru/begun/adlib/AdView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lru/begun/adlib/AdView;->v:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public api(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_call_js_: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/begun/adlib/AdView;->a(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 315
    :try_start_0
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:BegunM."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/begun/adlib/AdView;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public api(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lru/begun/adlib/RequestParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lru/begun/adlib/RequestParam;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 242
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 244
    const-string v0, "initAd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    iget-object v0, p0, Lru/begun/adlib/AdView;->n:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 253
    :goto_0
    :try_start_1
    iget-object v0, p0, Lru/begun/adlib/AdView;->s:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 260
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 263
    :try_start_2
    const-string v5, "lon"

    iget-wide v6, p0, Lru/begun/adlib/AdView;->l:D

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 264
    const-string v5, "lat"

    iget-wide v6, p0, Lru/begun/adlib/AdView;->k:D

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 265
    const-string v5, "acc"

    iget-wide v6, p0, Lru/begun/adlib/AdView;->m:D

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 266
    const-string v5, "opname"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v1, "opid"

    iget-object v5, p0, Lru/begun/adlib/AdView;->o:Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v1, "packName"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "mcc"

    iget-object v1, p0, Lru/begun/adlib/AdView;->q:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v0, "nettype"

    iget v1, p0, Lru/begun/adlib/AdView;->d:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    const-string v0, "deviceid"

    iget-object v1, p0, Lru/begun/adlib/AdView;->p:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v0, "simopdata"

    iget-object v1, p0, Lru/begun/adlib/AdView;->r:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v0, "isroaming"

    iget-boolean v1, p0, Lru/begun/adlib/AdView;->isRoaming:Z

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 274
    const-string v0, "ts"

    iget-object v1, p0, Lru/begun/adlib/AdView;->u:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 275
    const-string v0, "lib_version"

    const/16 v1, 0x9

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    const-string v0, "layoutWidth"

    iget v1, p0, Lru/begun/adlib/AdView;->i:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    const-string v0, "layoutHeight"

    iget v1, p0, Lru/begun/adlib/AdView;->j:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    const-string v0, "loc"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    .line 282
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lru/begun/adlib/AdView;->fullScreenMode:Z

    if-eqz v0, :cond_1

    .line 286
    new-instance v0, Lru/begun/adlib/RequestParam;

    invoke-direct {v0}, Lru/begun/adlib/RequestParam;-><init>()V

    const-string v1, "fullScreenMode"

    invoke-virtual {v0, v1}, Lru/begun/adlib/RequestParam;->setName(Ljava/lang/String;)Lru/begun/adlib/RequestParam;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lru/begun/adlib/RequestParam;->setValue(Ljava/lang/String;)Lru/begun/adlib/RequestParam;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 290
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/begun/adlib/RequestParam;

    .line 292
    :try_start_3
    invoke-virtual {v0}, Lru/begun/adlib/RequestParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lru/begun/adlib/RequestParam;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 289
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 250
    :catch_0
    move-exception v0

    iget-object v0, p0, Lru/begun/adlib/AdView;->n:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    .line 257
    :catch_1
    move-exception v0

    iget-object v0, p0, Lru/begun/adlib/AdView;->s:Ljava/lang/String;

    goto/16 :goto_1

    .line 297
    :cond_2
    :try_start_4
    const-string v0, "additionalParams"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 300
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_call_js_: BegunM."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/begun/adlib/AdView;->a(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 303
    :try_start_5
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "javascript:BegunM."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 309
    :cond_3
    :goto_6
    return-void

    .line 305
    :catch_2
    move-exception v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/begun/adlib/AdView;->a(Ljava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_2
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lru/begun/adlib/AdView;->removeView(Landroid/view/View;)V

    .line 487
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 488
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    .line 491
    :cond_0
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    const-string v0, "--- Begun Advertising / v.9 ---"

    invoke-direct {p0, v0}, Lru/begun/adlib/AdView;->a(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_AdInit_: lon: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lru/begun/adlib/AdView;->l:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; lat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lru/begun/adlib/AdView;->k:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; op: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/begun/adlib/AdView;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/begun/adlib/AdView;->u:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/begun/adlib/AdView;->a(Ljava/lang/String;)V

    .line 166
    iget-boolean v0, p0, Lru/begun/adlib/AdView;->libraryHasInitialized:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lru/begun/adlib/AdView;->w:Lru/begun/adlib/Callback;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lru/begun/adlib/AdView;->w:Lru/begun/adlib/Callback;

    invoke-interface {v0}, Lru/begun/adlib/Callback;->init()V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-boolean v0, p0, Lru/begun/adlib/AdView;->fullScreenMode:Z

    if-nez v0, :cond_3

    .line 174
    iget-boolean v0, p0, Lru/begun/adlib/AdView;->haveDimensions:Z

    if-nez v0, :cond_2

    .line 175
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/begun/adlib/AdView$2;

    invoke-direct {v1, p0}, Lru/begun/adlib/AdView$2;-><init>(Lru/begun/adlib/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 206
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 208
    :cond_2
    invoke-direct {p0}, Lru/begun/adlib/AdView;->b()V

    goto :goto_0

    .line 214
    :cond_3
    const-string v0, "On FullScreen mode"

    invoke-direct {p0, v0}, Lru/begun/adlib/AdView;->a(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 217
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 219
    :cond_4
    iget-object v0, p0, Lru/begun/adlib/AdView;->a:Landroid/webkit/WebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 223
    iget-object v0, p0, Lru/begun/adlib/AdView;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lru/begun/adlib/AdView;->i:I

    .line 225
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lru/begun/adlib/AdView;->j:I

    .line 226
    invoke-direct {p0}, Lru/begun/adlib/AdView;->b()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 469
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 470
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 449
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 450
    iput p2, p0, Lru/begun/adlib/AdView;->e:I

    .line 451
    iput p3, p0, Lru/begun/adlib/AdView;->f:I

    .line 452
    iput p4, p0, Lru/begun/adlib/AdView;->g:I

    .line 453
    iput p5, p0, Lru/begun/adlib/AdView;->h:I

    .line 454
    iget-boolean v0, p0, Lru/begun/adlib/AdView;->haveDimensions:Z

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/begun/adlib/AdView;->haveDimensions:Z

    .line 456
    iget-object v1, p0, Lru/begun/adlib/AdView;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 457
    :try_start_0
    iget-object v0, p0, Lru/begun/adlib/AdView;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 458
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_0
    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "wSpec"    # I
    .param p2, "hSpec"    # I

    .prologue
    .line 464
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 465
    return-void
.end method

.method public setOnApiListener(Lru/begun/adlib/Callback;)V
    .locals 0
    .param p1, "c"    # Lru/begun/adlib/Callback;

    .prologue
    .line 327
    iput-object p1, p0, Lru/begun/adlib/AdView;->w:Lru/begun/adlib/Callback;

    .line 328
    return-void
.end method
