.class public Lcom/my/target/nativeads/NativeAppwallAd;
.super Lcom/my/target/core/facades/a;
.source "NativeAppwallAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;
    }
.end annotation


# instance fields
.field private adDialog:Lcom/my/target/core/ui/a;

.field private appwallBannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativeAppwallBanner;",
            ">;"
        }
    .end annotation
.end field

.field private appwallSection:Lcom/my/target/core/models/sections/b;

.field private autoLoadImages:Z

.field private final bannerClickListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;

.field private final bannerIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/my/target/nativeads/banners/NativeAppwallBanner;",
            ">;"
        }
    .end annotation
.end field

.field private clickListener:Landroid/view/View$OnClickListener;

.field private final dialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private externalAppwallAdView:Lcom/my/target/nativeads/views/AppwallAdView;

.field private hideStatusBarInDialog:Z

.field private listener:Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

.field private title:Ljava/lang/String;

.field private titleBackgroundColor:I

.field private titleSupplementaryColor:I

.field private titleTextColor:I

.field private final visibilityListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 133
    const-string v0, "appwall"

    invoke-direct {p0, p1, v0, p2}, Lcom/my/target/core/facades/a;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->bannerIdMap:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/my/target/nativeads/NativeAppwallAd$1;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/NativeAppwallAd$1;-><init>(Lcom/my/target/nativeads/NativeAppwallAd;)V

    iput-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->visibilityListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;

    .line 80
    const-string v0, "Apps"

    iput-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->title:Ljava/lang/String;

    .line 81
    const v0, -0xbaa59d

    iput v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->titleBackgroundColor:I

    .line 82
    const v0, -0xc9bab3

    iput v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->titleSupplementaryColor:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->titleTextColor:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->hideStatusBarInDialog:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->autoLoadImages:Z

    .line 87
    new-instance v0, Lcom/my/target/nativeads/NativeAppwallAd$2;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/NativeAppwallAd$2;-><init>(Lcom/my/target/nativeads/NativeAppwallAd;)V

    iput-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->bannerClickListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;

    .line 99
    new-instance v0, Lcom/my/target/nativeads/NativeAppwallAd$3;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/NativeAppwallAd$3;-><init>(Lcom/my/target/nativeads/NativeAppwallAd;)V

    iput-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->dialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 114
    new-instance v0, Lcom/my/target/nativeads/NativeAppwallAd$4;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/NativeAppwallAd$4;-><init>(Lcom/my/target/nativeads/NativeAppwallAd;)V

    iput-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->clickListener:Landroid/view/View$OnClickListener;

    .line 134
    const-string v0, "NativeAppwallAd created. Version: 4.6.10"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/nativeads/NativeAppwallAd;Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/my/target/nativeads/NativeAppwallAd;->doBannerClick(Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V

    return-void
.end method

.method static synthetic access$100(Lcom/my/target/nativeads/NativeAppwallAd;)Lcom/my/target/nativeads/views/AppwallAdView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->externalAppwallAdView:Lcom/my/target/nativeads/views/AppwallAdView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/my/target/nativeads/NativeAppwallAd;)Lcom/my/target/core/ui/a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adDialog:Lcom/my/target/core/ui/a;

    return-object v0
.end method

.method static synthetic access$202(Lcom/my/target/nativeads/NativeAppwallAd;Lcom/my/target/core/ui/a;)Lcom/my/target/core/ui/a;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adDialog:Lcom/my/target/core/ui/a;

    return-object p1
.end method

.method static synthetic access$300(Lcom/my/target/nativeads/NativeAppwallAd;)Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->listener:Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/my/target/nativeads/NativeAppwallAd;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->bannerIdMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/my/target/nativeads/NativeAppwallAd;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/my/target/nativeads/NativeAppwallAd;->internalOnLoad()V

    return-void
.end method

.method private doAutoLoadImages()V
    .locals 11

    .prologue
    .line 213
    new-instance v1, Lcom/my/target/nativeads/NativeAppwallAd$5;

    invoke-direct {v1, p0}, Lcom/my/target/nativeads/NativeAppwallAd$5;-><init>(Lcom/my/target/nativeads/NativeAppwallAd;)V

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativeAppwallBanner;

    .line 226
    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getStatusIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v4

    .line 227
    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getCoinsIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v5

    .line 228
    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getGotoAppIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v6

    .line 229
    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v7

    .line 230
    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getLabelIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v8

    .line 231
    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getBubbleIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v9

    .line 232
    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getItemHighlightIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v10

    .line 233
    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getCrossNotifIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 235
    if-eqz v4, :cond_1

    .line 236
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_1
    if-eqz v5, :cond_2

    .line 239
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_2
    if-eqz v6, :cond_3

    .line 242
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_3
    if-eqz v7, :cond_4

    .line 245
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_4
    if-eqz v8, :cond_5

    .line 248
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_5
    if-eqz v9, :cond_6

    .line 251
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_6
    if-eqz v10, :cond_7

    .line 254
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_7
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_8
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    iget-object v3, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, v3, v1}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    .line 261
    return-void
.end method

.method private doBannerClick(Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V
    .locals 6

    .prologue
    .line 409
    if-nez p1, :cond_1

    .line 411
    const-string v1, "Something horrible happened"

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adData:Lcom/my/target/core/models/c;

    if-nez v1, :cond_2

    .line 417
    const-string v1, "AdData is null, click will not be processed."

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/my/target/core/models/banners/d;

    move-object v1, v0

    .line 424
    iget-object v2, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adData:Lcom/my/target/core/models/c;

    iget-object v3, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    invoke-virtual {v2, v1, v3}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 425
    iget-object v2, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adData:Lcom/my/target/core/models/c;

    iget-object v3, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adParams:Lcom/my/target/core/a;

    iget-object v4, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallSection:Lcom/my/target/core/models/sections/b;

    iget-object v5, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/a;Lcom/my/target/core/models/sections/b;Lcom/my/target/core/models/banners/d;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_1
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->listener:Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->listener:Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    invoke-interface {v1, p1, p0}, Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;->onClick(Lcom/my/target/nativeads/banners/NativeAppwallBanner;Lcom/my/target/nativeads/NativeAppwallAd;)V

    goto :goto_0

    .line 428
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getBannersFromSection(Lcom/my/target/core/models/sections/b;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/sections/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativeAppwallBanner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 268
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/b;

    .line 270
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v3, p0, Lcom/my/target/nativeads/NativeAppwallAd;->bannerIdMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/b;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 275
    :cond_0
    return-object v1
.end method

.method private internalOnLoad()V
    .locals 6

    .prologue
    .line 190
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adData:Lcom/my/target/core/models/c;

    invoke-virtual {v0}, Lcom/my/target/core/models/c;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v1}, Lcom/my/target/core/a;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adData:Lcom/my/target/core/models/c;

    invoke-virtual {v1}, Lcom/my/target/core/models/c;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v1}, Lcom/my/target/core/a;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adParams:Lcom/my/target/core/a;

    .line 196
    invoke-virtual {v1}, Lcom/my/target/core/a;->d()I

    move-result v1

    iget-object v4, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    .line 195
    invoke-static {v2, v3, v1, v0, v4}, Lcom/my/target/core/factories/b;->a(JILjava/lang/String;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Lcom/my/target/core/async/commands/b;->b()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->listener:Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->listener:Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    invoke-interface {v0, p0}, Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;->onLoad(Lcom/my/target/nativeads/NativeAppwallAd;)V

    .line 203
    :cond_1
    return-void
.end method

.method private internalOnNoAd()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->listener:Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->listener:Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    const-string v1, "No ad"

    invoke-interface {v0, v1, p0}, Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/nativeads/NativeAppwallAd;)V

    .line 209
    :cond_0
    return-void
.end method

.method public static loadImageToView(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 57
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 59
    :cond_0
    const-string v0, "NativeAppwallAd: invalid or null arguments"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/my/target/core/net/b;->a(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public static setDebugMode(Z)V
    .locals 1

    .prologue
    .line 50
    sput-boolean p0, Lcom/my/target/core/b;->a:Z

    .line 51
    if-eqz p0, :cond_0

    .line 52
    const-string v0, "Debug mode enabled"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adDialog:Lcom/my/target/core/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->dismiss()V

    .line 328
    :cond_0
    return-void
.end method

.method public getBanners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativeAppwallBanner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    return-object v0
.end method

.method public getCachePeriod()J
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adParams:Lcom/my/target/core/a;

    if-nez v0, :cond_0

    .line 468
    const-wide/16 v0, 0x0

    .line 470
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBackgroundColor()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->titleBackgroundColor:I

    return v0
.end method

.method public getTitleSupplementaryColor()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->titleSupplementaryColor:I

    return v0
.end method

.method public getTitleTextColor()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->titleTextColor:I

    return v0
.end method

.method public handleBannerClick(Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/my/target/nativeads/NativeAppwallAd;->doBannerClick(Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V

    .line 384
    return-void
.end method

.method public handleBannerShow(Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V
    .locals 2

    .prologue
    .line 403
    check-cast p1, Lcom/my/target/core/models/banners/d;

    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallSection:Lcom/my/target/core/models/sections/b;

    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V

    .line 404
    return-void
.end method

.method public handleBannersShow(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativeAppwallBanner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallSection:Lcom/my/target/core/models/sections/b;

    iget-object v2, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    .line 1255
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_5

    .line 1257
    :cond_0
    const-string v0, "unable to send stat playbackStarted"

    .line 1258
    if-nez p1, :cond_1

    .line 1259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": banner list is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1260
    :cond_1
    if-nez v2, :cond_2

    .line 1261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": context is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1262
    :cond_2
    if-nez v1, :cond_3

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": section is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    :cond_3
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1265
    :cond_4
    return-void

    .line 1268
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/d;

    .line 1270
    invoke-static {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Lcom/my/target/core/models/sections/i;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public hasNotifications()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativeAppwallBanner;

    .line 334
    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->isHasNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoLoadImages()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->autoLoadImages:Z

    return v0
.end method

.method public isHideStatusBarInDialog()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->hideStatusBarInDialog:Z

    return v0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adData:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adData:Lcom/my/target/core/models/c;

    invoke-virtual {v0}, Lcom/my/target/core/models/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/my/target/core/facades/a;->load()V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adData:Lcom/my/target/core/models/c;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/NativeAppwallAd;->onLoad(Lcom/my/target/core/models/c;)V

    goto :goto_0
.end method

.method protected onLoad(Lcom/my/target/core/models/c;)V
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/my/target/core/models/c;->g()Z

    move-result v0

    .line 152
    if-eqz v0, :cond_3

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    .line 158
    const-string v0, "appwall"

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/b;

    .line 159
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/my/target/nativeads/NativeAppwallAd;->getBannersFromSection(Lcom/my/target/core/models/sections/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    const-string v0, "showcaseApps"

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/b;

    .line 164
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/my/target/nativeads/NativeAppwallAd;->getBannersFromSection(Lcom/my/target/core/models/sections/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const-string v0, "showcaseGames"

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/b;

    .line 169
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/my/target/nativeads/NativeAppwallAd;->getBannersFromSection(Lcom/my/target/core/models/sections/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    :cond_0
    iput-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallSection:Lcom/my/target/core/models/sections/b;

    .line 175
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-boolean v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->autoLoadImages:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/my/target/nativeads/NativeAppwallAd;->doAutoLoadImages()V

    .line 186
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/my/target/nativeads/NativeAppwallAd;->internalOnLoad()V

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/my/target/nativeads/NativeAppwallAd;->internalOnNoAd()V

    goto :goto_0

    .line 184
    :cond_3
    invoke-direct {p0}, Lcom/my/target/nativeads/NativeAppwallAd;->internalOnNoAd()V

    goto :goto_0
.end method

.method protected onLoadError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->listener:Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->listener:Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    invoke-interface {v0, p1, p0}, Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/nativeads/NativeAppwallAd;)V

    .line 283
    :cond_0
    return-void
.end method

.method public prepareBannerClickLink(Lcom/my/target/nativeads/banners/NativeAppwallBanner;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 388
    check-cast p1, Lcom/my/target/core/models/banners/d;

    .line 389
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/my/target/core/models/c;->b(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adData:Lcom/my/target/core/models/c;

    iget-object v2, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adParams:Lcom/my/target/core/a;

    iget-object v3, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallSection:Lcom/my/target/core/models/sections/b;

    iget-object v4, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/a;Lcom/my/target/core/models/sections/b;Lcom/my/target/core/models/banners/d;Landroid/content/Context;)Z

    .line 391
    return-object v0
.end method

.method public registerAppwallAdView(Lcom/my/target/nativeads/views/AppwallAdView;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->bannerClickListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;

    invoke-virtual {p1, v0}, Lcom/my/target/nativeads/views/AppwallAdView;->setBannerClickListener(Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->visibilityListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;

    invoke-virtual {p1, v0}, Lcom/my/target/nativeads/views/AppwallAdView;->setBannerVisibilityListener(Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;)V

    .line 345
    iput-object p1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->externalAppwallAdView:Lcom/my/target/nativeads/views/AppwallAdView;

    .line 346
    return-void
.end method

.method public setAutoLoadImages(Z)V
    .locals 0

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->autoLoadImages:Z

    .line 497
    return-void
.end method

.method public setCachePeriod(J)V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adParams:Lcom/my/target/core/a;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v0, p1, p2}, Lcom/my/target/core/a;->a(J)V

    .line 477
    :cond_0
    return-void
.end method

.method public setHideStatusBarInDialog(Z)V
    .locals 0

    .prologue
    .line 486
    iput-boolean p1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->hideStatusBarInDialog:Z

    .line 487
    return-void
.end method

.method public setListener(Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->listener:Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    .line 369
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->title:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setTitleBackgroundColor(I)V
    .locals 0

    .prologue
    .line 442
    iput p1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->titleBackgroundColor:I

    .line 443
    return-void
.end method

.method public setTitleSupplementaryColor(I)V
    .locals 0

    .prologue
    .line 452
    iput p1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->titleSupplementaryColor:I

    .line 453
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .prologue
    .line 462
    iput p1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->titleTextColor:I

    .line 463
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const-string v0, "AppwallAd.show: No ad"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 293
    :cond_0
    sput-object p0, Lcom/my/target/ads/MyTargetActivity;->ad:Lcom/my/target/core/facades/g;

    .line 295
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    const-class v2, Lcom/my/target/ads/MyTargetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    const-string v1, "com.my.target.actions.appwall"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 299
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adDialog:Lcom/my/target/core/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "AppwallAd.showDialog: dialog already showing"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->appwallBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 315
    const-string v0, "AppwallAd.showDialog: No ad"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    new-instance v0, Lcom/my/target/core/ui/a;

    iget-boolean v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->hideStatusBarInDialog:Z

    iget-object v2, p0, Lcom/my/target/nativeads/NativeAppwallAd;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/my/target/core/ui/a;-><init>(Lcom/my/target/core/facades/g;ZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adDialog:Lcom/my/target/core/ui/a;

    .line 320
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adDialog:Lcom/my/target/core/ui/a;

    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->dialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 321
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->show()V

    goto :goto_0
.end method

.method public unregisterAppwallAdView(Lcom/my/target/nativeads/views/AppwallAdView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->externalAppwallAdView:Lcom/my/target/nativeads/views/AppwallAdView;

    if-eq p1, v0, :cond_0

    .line 352
    const-string v0, "No such AppwallAdView registered"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->externalAppwallAdView:Lcom/my/target/nativeads/views/AppwallAdView;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/AppwallAdView;->setBannerClickListener(Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;->externalAppwallAdView:Lcom/my/target/nativeads/views/AppwallAdView;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/AppwallAdView;->setBannerVisibilityListener(Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;)V

    .line 358
    iput-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd;->externalAppwallAdView:Lcom/my/target/nativeads/views/AppwallAdView;

    goto :goto_0
.end method
