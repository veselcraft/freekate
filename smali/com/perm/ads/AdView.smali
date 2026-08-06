.class public Lcom/perm/ads/AdView;
.super Landroid/widget/FrameLayout;
.source "AdView.java"


# static fields
.field static app_id:Ljava/lang/Integer;

.field static config:Lcom/perm/ads/Config;

.field static config_parsed:Z

.field static listener:Lcom/perm/ads/Listener;

.field static loader:Lcom/perm/ads/imageloader/ImageLoader;


# instance fields
.field clickListener:Landroid/view/View$OnClickListener;

.field current_ad:I

.field handler:Landroid/os/Handler;

.field imageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/perm/ads/Config;

    invoke-direct {v0}, Lcom/perm/ads/Config;-><init>()V

    sput-object v0, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/ads/AdView;->app_id:Ljava/lang/Integer;

    .line 228
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/ads/AdView;->config_parsed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/ads/AdView;->handler:Landroid/os/Handler;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/ads/AdView;->current_ad:I

    .line 130
    new-instance v0, Lcom/perm/ads/AdView$1;

    invoke-direct {v0, p0}, Lcom/perm/ads/AdView$1;-><init>(Lcom/perm/ads/AdView;)V

    iput-object v0, p0, Lcom/perm/ads/AdView;->clickListener:Landroid/view/View$OnClickListener;

    .line 48
    invoke-direct {p0}, Lcom/perm/ads/AdView;->displayAd()V

    .line 50
    invoke-direct {p0}, Lcom/perm/ads/AdView;->initConfig()V

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/perm/ads/AdView;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/perm/ads/AdView;->click()V

    return-void
.end method

.method static synthetic access$1(Lcom/perm/ads/AdView;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/perm/ads/AdView;->displayAd()V

    return-void
.end method

.method private addDpiSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "image_url"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v1, "_xx"

    .line 118
    .local v1, "suffix":Ljava/lang/String;
    invoke-static {}, Lcom/perm/ads/Helper;->getScale()F

    move-result v0

    .line 119
    .local v0, "scale":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 120
    const-string v1, "_l"

    .line 127
    :cond_0
    :goto_0
    const-string v2, "_xx"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 121
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 122
    const-string v1, "_m"

    goto :goto_0

    .line 123
    :cond_2
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    .line 124
    const-string v1, "_h"

    goto :goto_0

    .line 125
    :cond_3
    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 126
    const-string v1, "_x"

    goto :goto_0
.end method

.method private click()V
    .locals 5

    .prologue
    .line 140
    :try_start_0
    iget v3, p0, Lcom/perm/ads/AdView;->current_ad:I

    sget-object v4, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    iget-object v4, v4, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    sget-object v3, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    iget-object v3, v3, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    iget v4, p0, Lcom/perm/ads/AdView;->current_ad:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/ads/Config$Banner;

    .line 143
    .local v0, "banner":Lcom/perm/ads/Config$Banner;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, v0, Lcom/perm/ads/Config$Banner;->click_url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    iget-object v3, v0, Lcom/perm/ads/Config$Banner;->id:Ljava/lang/String;

    const-string v4, "AD_CLICK"

    invoke-direct {p0, v3, v4}, Lcom/perm/ads/AdView;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v3, v0, Lcom/perm/ads/Config$Banner;->id:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/perm/ads/AdView;->reportClick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v0    # "banner":Lcom/perm/ads/Config$Banner;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 151
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    sget-object v3, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    if-eqz v3, :cond_0

    .line 153
    sget-object v3, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    invoke-virtual {v3, v2}, Lcom/perm/ads/Listener;->reportException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private displayAd()V
    .locals 5

    .prologue
    .line 73
    :try_start_0
    sget-object v2, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    iget-object v2, v2, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    iget-object v2, v2, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 74
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/perm/ads/AdView;->setVisibility(I)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/perm/ads/AdView;->setVisibility(I)V

    .line 78
    iget-object v2, p0, Lcom/perm/ads/AdView;->imageView:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    .line 79
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/perm/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/perm/ads/AdView;->imageView:Landroid/widget/ImageView;

    .line 80
    iget-object v2, p0, Lcom/perm/ads/AdView;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/perm/ads/AdView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v2, p0, Lcom/perm/ads/AdView;->imageView:Landroid/widget/ImageView;

    const/16 v3, 0x140

    invoke-static {v3}, Lcom/perm/ads/Helper;->getDIP(I)I

    move-result v3

    const/16 v4, 0x32

    invoke-static {v4}, Lcom/perm/ads/Helper;->getDIP(I)I

    move-result v4

    invoke-super {p0, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 83
    :cond_3
    invoke-direct {p0}, Lcom/perm/ads/AdView;->getRandomPos()I

    move-result v2

    iput v2, p0, Lcom/perm/ads/AdView;->current_ad:I

    .line 84
    sget-object v2, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    iget-object v2, v2, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    iget v3, p0, Lcom/perm/ads/AdView;->current_ad:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/ads/Config$Banner;

    .line 85
    .local v0, "banner":Lcom/perm/ads/Config$Banner;
    sget-object v2, Lcom/perm/ads/AdView;->loader:Lcom/perm/ads/imageloader/ImageLoader;

    if-nez v2, :cond_4

    .line 86
    new-instance v2, Lcom/perm/ads/imageloader/ImageLoader;

    invoke-virtual {p0}, Lcom/perm/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/perm/ads/imageloader/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/perm/ads/AdView;->loader:Lcom/perm/ads/imageloader/ImageLoader;

    .line 87
    :cond_4
    sget-object v2, Lcom/perm/ads/AdView;->loader:Lcom/perm/ads/imageloader/ImageLoader;

    iget-object v3, v0, Lcom/perm/ads/Config$Banner;->image_url:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/perm/ads/AdView;->addDpiSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/ads/AdView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/perm/ads/imageloader/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 88
    iget-object v2, v0, Lcom/perm/ads/Config$Banner;->id:Ljava/lang/String;

    const-string v3, "AD_DISPLAY"

    invoke-direct {p0, v2, v3}, Lcom/perm/ads/AdView;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v0    # "banner":Lcom/perm/ads/Config$Banner;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    sget-object v2, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    if-eqz v2, :cond_1

    .line 92
    sget-object v2, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    invoke-virtual {v2, v1}, Lcom/perm/ads/Listener;->reportException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private displayAdOnUiThread()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/ads/AdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/perm/ads/AdView$2;

    invoke-direct {v1, p0}, Lcom/perm/ads/AdView$2;-><init>(Lcom/perm/ads/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method private getRandomPos()I
    .locals 9

    .prologue
    .line 98
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    sget-object v7, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    iget-object v7, v7, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .local v3, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    sget-object v7, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    iget-object v7, v7, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 106
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 107
    .local v4, "random_pos":I
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 112
    .end local v2    # "pos":I
    .end local v3    # "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "random_pos":I
    :goto_1
    return v7

    .line 100
    .restart local v2    # "pos":I
    .restart local v3    # "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    sget-object v7, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    iget-object v7, v7, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/ads/Config$Banner;

    .line 102
    .local v0, "b":Lcom/perm/ads/Config$Banner;
    iget v7, v0, Lcom/perm/ads/Config$Banner;->weight:I

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 103
    .local v6, "weight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v6, :cond_1

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 108
    .end local v0    # "b":Lcom/perm/ads/Config$Banner;
    .end local v1    # "i":I
    .end local v2    # "pos":I
    .end local v3    # "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "weight":I
    :catch_0
    move-exception v5

    .line 109
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    sget-object v7, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    if-eqz v7, :cond_2

    .line 111
    sget-object v7, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    invoke-virtual {v7, v5}, Lcom/perm/ads/Listener;->reportException(Ljava/lang/Throwable;)V

    .line 112
    :cond_2
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    sget-object v8, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    iget-object v8, v8, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    goto :goto_1
.end method

.method private initConfig()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/perm/ads/AdView$4;

    invoke-direct {v0, p0}, Lcom/perm/ads/AdView$4;-><init>(Lcom/perm/ads/AdView;)V

    .line 224
    invoke-virtual {v0}, Lcom/perm/ads/AdView$4;->start()V

    .line 226
    return-void
.end method

.method private reportClick(Ljava/lang/String;)V
    .locals 1
    .param p1, "ad_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/perm/ads/AdView$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/ads/AdView$3;-><init>(Lcom/perm/ads/AdView;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lcom/perm/ads/AdView$3;->start()V

    .line 174
    return-void
.end method

.method private reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ad_id"    # Ljava/lang/String;
    .param p2, "event_name"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 178
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ad_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "null"

    .line 180
    .local v0, "id":Ljava/lang/String;
    sget-object v2, Lcom/perm/ads/AdView;->app_id:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 181
    sget-object v2, Lcom/perm/ads/AdView;->app_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    const-string v2, "app_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v2, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    if-eqz v2, :cond_1

    .line 184
    sget-object v2, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    invoke-virtual {v2, p2, v1}, Lcom/perm/ads/Listener;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 185
    :cond_1
    return-void
.end method

.method public static setListener(Lcom/perm/ads/Listener;)V
    .locals 0
    .param p0, "l"    # Lcom/perm/ads/Listener;

    .prologue
    .line 29
    sput-object p0, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    .line 30
    return-void
.end method

.method public static setProjectId(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/perm/ads/AdView;->app_id:Ljava/lang/Integer;

    .line 42
    return-void
.end method


# virtual methods
.method readConfigFromCache()V
    .locals 2

    .prologue
    .line 231
    sget-boolean v1, Lcom/perm/ads/AdView;->config_parsed:Z

    if-eqz v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 233
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/perm/ads/AdView;->config_parsed:Z

    .line 235
    invoke-virtual {p0}, Lcom/perm/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/ads/Config;->readCache(Landroid/content/Context;)Lcom/perm/ads/Config;

    move-result-object v0

    .line 236
    .local v0, "x":Lcom/perm/ads/Config;
    if-eqz v0, :cond_1

    .line 237
    sput-object v0, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/perm/ads/AdView;->displayAdOnUiThread()V

    goto :goto_0
.end method

.method protected refreshConfig()V
    .locals 13

    .prologue
    .line 189
    const-string v6, "ad_last_config_refresh"

    .line 190
    .local v6, "preference_name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "ad_prefs"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 191
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-wide/16 v10, 0x0

    invoke-interface {v7, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 192
    .local v0, "last_check":J
    sget-object v10, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    iget v10, v10, Lcom/perm/ads/Config;->refresh_period:I

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v2, v10

    .line 193
    .local v2, "max_period":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 194
    .local v4, "now":J
    sub-long v10, v4, v0

    cmp-long v10, v10, v2

    if-gez v10, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    :try_start_0
    sget-object v10, Lcom/perm/ads/AdView;->app_id:Ljava/lang/Integer;

    invoke-static {v10}, Lcom/perm/ads/Config;->download(Ljava/lang/Integer;)Lcom/perm/ads/Config;

    move-result-object v9

    .line 200
    .local v9, "x":Lcom/perm/ads/Config;
    if-eqz v9, :cond_0

    .line 202
    sput-object v9, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    .line 203
    invoke-direct {p0}, Lcom/perm/ads/AdView;->displayAdOnUiThread()V

    .line 204
    sget-object v10, Lcom/perm/ads/AdView;->config:Lcom/perm/ads/Config;

    invoke-virtual {p0}, Lcom/perm/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/perm/ads/Config;->saveCache(Lcom/perm/ads/Config;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 205
    .end local v9    # "x":Lcom/perm/ads/Config;
    :catch_0
    move-exception v8

    .line 206
    .local v8, "th":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v8    # "th":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 209
    .local v8, "th":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    sget-object v10, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    if-eqz v10, :cond_0

    .line 211
    sget-object v10, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    invoke-virtual {v10, v8}, Lcom/perm/ads/Listener;->reportException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
