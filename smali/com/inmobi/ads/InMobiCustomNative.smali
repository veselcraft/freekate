.class public final Lcom/inmobi/ads/InMobiCustomNative;
.super Lcom/inmobi/ads/InMobiNative;
.source "InMobiCustomNative.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/inmobi/ads/InMobiCustomNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiCustomNative;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/InMobiNative;-><init>(JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V

    .line 25
    return-void
.end method

.method public static bind(Landroid/view/View;Lcom/inmobi/ads/InMobiNative;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 78
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 79
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->TAG:Ljava/lang/String;

    const-string v2, "Please pass non-null instances of a view and InMobiNative to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    sget-object v0, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/p;

    .line 85
    if-eqz v0, :cond_3

    .line 86
    invoke-static {p0}, Lcom/inmobi/ads/InMobiCustomNative;->unbind(Landroid/view/View;)V

    .line 89
    :cond_3
    iget-object v0, p1, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    .line 90
    if-eqz v0, :cond_1

    .line 91
    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p2}, Lcom/inmobi/ads/p;->a(Landroid/view/View;Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bind(Landroid/view/View;Lcom/inmobi/ads/InMobiNative;Ljava/net/URL;)V
    .locals 3

    .prologue
    .line 43
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 44
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->TAG:Ljava/lang/String;

    const-string v2, "Please pass non-null instances of a view and InMobiNative to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    sget-object v0, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/p;

    .line 50
    if-eqz v0, :cond_3

    .line 51
    invoke-static {p0}, Lcom/inmobi/ads/InMobiCustomNative;->unbind(Landroid/view/View;)V

    .line 54
    :cond_3
    iget-object v0, p1, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    .line 55
    if-eqz v0, :cond_1

    .line 56
    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Lcom/inmobi/ads/p;->a(Landroid/view/View;Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final reportAdClick(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lcom/inmobi/ads/p;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public final reportAdClick(Ljava/net/URL;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/inmobi/ads/p;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public final reportAdClickAndOpenLandingPage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lcom/inmobi/ads/p;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    invoke-virtual {v0}, Lcom/inmobi/ads/p;->B()V

    .line 145
    :cond_0
    return-void
.end method

.method public final reportAdClickAndOpenLandingPage(Ljava/net/URL;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/inmobi/ads/p;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/p;

    invoke-virtual {v0}, Lcom/inmobi/ads/p;->B()V

    .line 132
    :cond_0
    return-void
.end method
