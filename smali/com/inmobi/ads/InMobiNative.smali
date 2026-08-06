.class public Lcom/inmobi/ads/InMobiNative;
.super Ljava/lang/Object;
.source "InMobiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiNative$a;,
        Lcom/inmobi/ads/InMobiNative$NativeAdListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static sMappedAdUnits:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

.field private final mListener:Lcom/inmobi/ads/AdUnit$a;

.field private mNativeAdListener:Lcom/inmobi/ads/InMobiNative$NativeAdListener;

.field protected mNativeAdUnit:Lcom/inmobi/ads/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Lcom/inmobi/ads/InMobiNative$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNative$1;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mListener:Lcom/inmobi/ads/AdUnit$a;

    .line 84
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before trying to create an ad."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    if-nez p3, :cond_1

    .line 89
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "The Ad unit cannot be created as no event listener was supplied. Please attach a listener to proceed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iput-object p3, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdListener:Lcom/inmobi/ads/InMobiNative$NativeAdListener;

    .line 94
    new-instance v0, Lcom/inmobi/ads/p;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mListener:Lcom/inmobi/ads/AdUnit$a;

    invoke-direct {v0, p1, p2, v1}, Lcom/inmobi/ads/p;-><init>(JLcom/inmobi/ads/AdUnit$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    .line 95
    new-instance v0, Lcom/inmobi/ads/InMobiNative$a;

    invoke-direct {v0, p0, p3}, Lcom/inmobi/ads/InMobiNative$a;-><init>(Lcom/inmobi/ads/InMobiNative;Lcom/inmobi/ads/InMobiNative$NativeAdListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    return-object v0
.end method

.method public static bind(Landroid/view/View;Lcom/inmobi/ads/InMobiNative;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 160
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please pass non-null instances of a view and InMobiNative to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/p;

    .line 166
    if-eqz v0, :cond_3

    .line 167
    invoke-static {p0}, Lcom/inmobi/ads/InMobiNative;->unbind(Landroid/view/View;)V

    .line 170
    :cond_3
    iget-object v0, p1, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    .line 171
    if-eqz v0, :cond_1

    .line 172
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {v0, p0, v2, v2}, Lcom/inmobi/ads/p;->a(Landroid/view/View;Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unbind(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 186
    if-nez p0, :cond_1

    .line 187
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please pass a non-null view object to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/p;

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p0}, Lcom/inmobi/ads/p;->a(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public final getAdContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    invoke-virtual {v0}, Lcom/inmobi/ads/p;->z()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final load()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    invoke-virtual {v0}, Lcom/inmobi/ads/p;->o()V

    .line 108
    :cond_0
    return-void
.end method

.method public final pause()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    invoke-virtual {v0}, Lcom/inmobi/ads/p;->y()V

    .line 130
    :cond_0
    return-void
.end method

.method public final reportAdClick(Ljava/util/Map;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    invoke-virtual {v0, p1, v1, v1}, Lcom/inmobi/ads/p;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method

.method public final reportAdClickAndOpenLandingPage(Ljava/util/Map;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    invoke-virtual {v0, p1, v1, v1}, Lcom/inmobi/ads/p;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    invoke-virtual {v0}, Lcom/inmobi/ads/p;->B()V

    .line 210
    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    invoke-virtual {v0}, Lcom/inmobi/ads/p;->x()V

    .line 119
    :cond_0
    return-void
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 1
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
    .line 229
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/p;->a(Ljava/util/Map;)V

    .line 232
    :cond_0
    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/p;->a(Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method
