.class public final Lcom/inmobi/ads/InMobiNativeStrand;
.super Ljava/lang/Object;
.source "InMobiNativeStrand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiNativeStrand$a;,
        Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

.field private mContext:Landroid/content/Context;

.field private mInteractionCallback:Lcom/inmobi/ads/q$a;

.field private mNativeStrandAd:Lcom/inmobi/ads/q;

.field private mNativeStrandAdListener:Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

.field private mNativeStrandAdUnit:Lcom/inmobi/ads/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;)V
    .locals 6

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/inmobi/ads/InMobiNativeStrand$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNativeStrand$1;-><init>(Lcom/inmobi/ads/InMobiNativeStrand;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mInteractionCallback:Lcom/inmobi/ads/q$a;

    .line 100
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the InMobiSdk before trying to instantiate InMobiNativeStrand."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 105
    :cond_0
    if-nez p1, :cond_1

    .line 106
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Context is null, Native Strand cannot be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 110
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Context is not Activity, Native Strand cannot be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    if-nez p4, :cond_3

    .line 115
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Listener supplied is null, the Native Strand cannot be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    new-instance v5, Lcom/inmobi/ads/InMobiNativeStrand$2;

    invoke-direct {v5, p0}, Lcom/inmobi/ads/InMobiNativeStrand$2;-><init>(Lcom/inmobi/ads/InMobiNativeStrand;)V

    .line 169
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mContext:Landroid/content/Context;

    .line 170
    new-instance v0, Lcom/inmobi/ads/s;

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Integer;

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/s;-><init>(Landroid/content/Context;J[Ljava/lang/Integer;Lcom/inmobi/ads/AdUnit$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    .line 172
    iput-object p4, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdListener:Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

    .line 173
    new-instance v0, Lcom/inmobi/ads/InMobiNativeStrand$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNativeStrand$a;-><init>(Lcom/inmobi/ads/InMobiNativeStrand;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/s;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/q;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAd:Lcom/inmobi/ads/q;

    return-object v0
.end method

.method static synthetic access$302(Lcom/inmobi/ads/InMobiNativeStrand;Lcom/inmobi/ads/q;)Lcom/inmobi/ads/q;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAd:Lcom/inmobi/ads/q;

    return-object p1
.end method

.method static synthetic access$400(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/q$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mInteractionCallback:Lcom/inmobi/ads/q$a;

    return-object v0
.end method

.method static synthetic access$500(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdListener:Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

    return-object v0
.end method

.method private deInit()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAd:Lcom/inmobi/ads/q;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAd:Lcom/inmobi/ads/q;

    invoke-virtual {v0}, Lcom/inmobi/ads/q;->c()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAd:Lcom/inmobi/ads/q;

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand is not initialized. Ignoring InMobiNativeStrand.destroy()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNativeStrand$a;->removeMessages(I)V

    .line 291
    :cond_1
    iput-object v3, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdListener:Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

    .line 292
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    invoke-virtual {v0}, Lcom/inmobi/ads/s;->y()V

    .line 294
    iput-object v3, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    .line 296
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiNativeStrand;->deInit()V

    .line 297
    return-void
.end method

.method public getStrandView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNativeStrand is not initialized.Ignoring InMobiNativeStrand.getStrandView()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    return-object v0

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    if-nez v1, :cond_1

    .line 221
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNativeStrand is not initialized.Ignoring InMobiNativeStrand.getStrandView()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAd:Lcom/inmobi/ads/q;

    if-nez v1, :cond_2

    .line 226
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v3, "No ad is available. Call load to request for ad or wait for wait for callback if ad load is already requested"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAd:Lcom/inmobi/ads/q;

    iget-object v2, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    .line 232
    invoke-virtual {v2}, Lcom/inmobi/ads/s;->l()Lcom/inmobi/ads/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->l()Lcom/inmobi/ads/b$f;

    move-result-object v2

    .line 231
    invoke-virtual {v1, p1, p2, v2}, Lcom/inmobi/ads/q;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/inmobi/ads/b$f;)Landroid/view/View;

    move-result-object v1

    .line 233
    if-nez v1, :cond_3

    .line 234
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "StrandInflationFailed"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 236
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v3, "Error inflating view even with a valid data model!"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 240
    goto :goto_0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand is not initialized. Ignoring InMobiNativeStrand.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    if-nez v0, :cond_1

    .line 187
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand is not initialized, ignoring InMobiNativeStrand.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiNativeStrand;->deInit()V

    .line 191
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Ad not loaded already requesting it now"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    invoke-virtual {v0}, Lcom/inmobi/ads/s;->o()V

    goto :goto_0
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand is not initialized.Ignoring InMobiNativeStrand.setExtras()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    if-nez v0, :cond_1

    .line 256
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand is not initialized, ignoring setExtras."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/s;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 268
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand is not initialized.Ignoring InMobiNativeStrand.setKeywords()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    if-nez v0, :cond_1

    .line 274
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand is not initialized, ignoring setKeywords()."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdUnit:Lcom/inmobi/ads/s;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/s;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
