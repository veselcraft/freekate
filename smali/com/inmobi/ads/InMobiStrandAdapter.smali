.class public final Lcom/inmobi/ads/InMobiStrandAdapter;
.super Landroid/widget/BaseAdapter;
.source "InMobiStrandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsInitialized:Z

.field private mListViewHandler:Landroid/os/Handler;

.field private mListener:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

.field private mNativeStrandController:Lcom/inmobi/ads/ad;

.field private mOriginalAdapter:Landroid/widget/Adapter;

.field private mViewPositionMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityTracker:Lcom/inmobi/ads/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/widget/Adapter;Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    iput-boolean v3, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    .line 96
    if-nez p4, :cond_0

    .line 97
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Original Adapter is null!, InMobiStrandAdapter could not be initialized"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid original adapter:null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-nez p1, :cond_1

    .line 102
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Context is null, InMobiStrandAdapter could not be initialized"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput-boolean v3, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    .line 121
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-eqz v0, :cond_5

    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/inmobi/ads/InMobiStrandAdapter;->initWithPlacer(Landroid/content/Context;JLandroid/widget/Adapter;Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V

    .line 126
    :goto_1
    return-void

    .line 105
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 106
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Context is not Activity, InMobiStrandAdapter could not be initialized"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-boolean v3, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    goto :goto_0

    .line 109
    :cond_2
    if-nez p5, :cond_3

    .line 110
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "ClientPositioning is null, InMobiStrandAdapter could not be initialized"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-boolean v3, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    goto :goto_0

    .line 113
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobi SDK is not initialized! InMobiStrandAdapter could not be initialized"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-boolean v3, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    goto :goto_0

    .line 118
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    goto :goto_0

    .line 124
    :cond_5
    invoke-direct {p0, p4}, Lcom/inmobi/ads/InMobiStrandAdapter;->initWithoutPlacer(Landroid/widget/Adapter;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/inmobi/ads/InMobiStrandAdapter;)Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/inmobi/ads/InMobiStrandAdapter;)Lcom/inmobi/ads/ad;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    return-object v0
.end method

.method static synthetic access$200(Lcom/inmobi/ads/InMobiStrandAdapter;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/inmobi/ads/InMobiStrandAdapter;->handleVisibilityChange(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/inmobi/ads/InMobiStrandAdapter;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/inmobi/ads/InMobiStrandAdapter;->handleAdLoaded(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/inmobi/ads/InMobiStrandAdapter;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/inmobi/ads/InMobiStrandAdapter;->handleAdRemoved(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/inmobi/ads/InMobiStrandAdapter;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    return v0
.end method

.method private handleAdLoaded(I)V
    .locals 4

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiStrandAdapter;->notifyDataSetChanged()V

    .line 803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 804
    const-string v1, "position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "StrandPlaced"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 806
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mListener:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mListener:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    invoke-interface {v0, p1}, Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;->onAdLoadSucceeded(I)V

    .line 809
    :cond_0
    return-void
.end method

.method private handleAdRemoved(I)V
    .locals 4

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiStrandAdapter;->notifyDataSetChanged()V

    .line 814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 815
    const-string v1, "position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "StrandRemoved"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 817
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mListener:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mListener:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    invoke-interface {v0, p1}, Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;->onAdRemoved(I)V

    .line 820
    :cond_0
    return-void
.end method

.method private handleVisibilityChange(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    const v1, 0x7fffffff

    .line 788
    const/4 v0, 0x0

    .line 789
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 790
    iget-object v4, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 791
    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 795
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 796
    goto :goto_0

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/ads/ad;->a(II)V

    .line 798
    return-void
.end method

.method private initWithPlacer(Landroid/content/Context;JLandroid/widget/Adapter;Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/inmobi/ads/ad;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/inmobi/ads/ad;-><init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    .line 132
    iput-object p4, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    new-instance v1, Lcom/inmobi/ads/InMobiStrandAdapter$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiStrandAdapter$1;-><init>(Lcom/inmobi/ads/InMobiStrandAdapter;)V

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mListViewHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/inmobi/ads/m;

    sget-object v1, Lcom/inmobi/ads/ap;->a:Lcom/inmobi/ads/ap$a;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/inmobi/ads/m;-><init>(Lcom/inmobi/ads/ap$a;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mVisibilityTracker:Lcom/inmobi/ads/ap;

    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mVisibilityTracker:Lcom/inmobi/ads/ap;

    new-instance v1, Lcom/inmobi/ads/InMobiStrandAdapter$3;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiStrandAdapter$3;-><init>(Lcom/inmobi/ads/InMobiStrandAdapter;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ap;->a(Lcom/inmobi/ads/ap$c;)V

    .line 156
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    .line 158
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    new-instance v1, Lcom/inmobi/ads/InMobiStrandAdapter$4;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiStrandAdapter$4;-><init>(Lcom/inmobi/ads/InMobiStrandAdapter;)V

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 170
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    new-instance v1, Lcom/inmobi/ads/InMobiStrandAdapter$5;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiStrandAdapter$5;-><init>(Lcom/inmobi/ads/InMobiStrandAdapter;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ad;->a(Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;)V

    .line 181
    return-void
.end method

.method private initWithoutPlacer(Landroid/widget/Adapter;)V
    .locals 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mListViewHandler:Landroid/os/Handler;

    .line 187
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    new-instance v1, Lcom/inmobi/ads/InMobiStrandAdapter$6;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiStrandAdapter$6;-><init>(Lcom/inmobi/ads/InMobiStrandAdapter;)V

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 198
    return-void
.end method


# virtual methods
.method public clearStrands()V
    .locals 3

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 298
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, ignoring InMobiStrandAdapter.clearStrands()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mVisibilityTracker:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->c()V

    .line 304
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0}, Lcom/inmobi/ads/ad;->d()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, ignoring InMobiStrandAdapter.destroy()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0}, Lcom/inmobi/ads/ad;->e()V

    .line 323
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mVisibilityTracker:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->e()V

    goto :goto_0
.end method

.method public getAdjustedPosition(I)I
    .locals 3

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 489
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, Initialize InMobiSdk before creating InMobiStrandAdapter"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->f(I)I

    move-result p1

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 337
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ad;->h(I)I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 355
    :cond_0
    :goto_0
    return-object v0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 352
    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ad;->e(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    .line 376
    :goto_0
    return-wide v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_1

    .line 374
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ad;->e(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v0

    .line 433
    :goto_0
    return v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->d(I)I

    move-result v0

    .line 430
    if-eqz v0, :cond_1

    .line 431
    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    .line 434
    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ad;->e(I)I

    move-result v1

    .line 433
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getOriginalPosition(I)I
    .locals 3

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 474
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, Initialize InMobiSdk before creating InMobiStrandAdapter"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->e(I)I

    move-result p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 414
    :cond_0
    :goto_0
    return-object v0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ad;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_2

    .line 409
    :goto_1
    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mVisibilityTracker:Lcom/inmobi/ads/ap;

    invoke-virtual {v1}, Lcom/inmobi/ads/ap;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mVisibilityTracker:Lcom/inmobi/ads/ap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/inmobi/ads/ap;->a(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_0

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    .line 407
    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ad;->e(I)I

    move-result v1

    .line 406
    invoke-interface {v0, v1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v0

    .line 449
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v1}, Lcom/inmobi/ads/ad;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public insertItem(I)V
    .locals 3

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 512
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, Initialize InMobiSdk before creating InMobiStrandAdapter ignoring InMobiStrandAdapter.insertItem()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->i(I)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 459
    iget-boolean v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    .line 462
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mOriginalAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/ad;->h(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStrand(I)Z
    .locals 3

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 279
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, ignoring InMobiStrandAdapter.isStrand()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->b(I)Z

    move-result v0

    goto :goto_0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 229
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, ignoring InMobiStrandAdapter.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mVisibilityTracker:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->d()V

    .line 235
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0}, Lcom/inmobi/ads/ad;->a()V

    goto :goto_0
.end method

.method public refreshAds(Landroid/widget/ListView;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 745
    if-nez p1, :cond_0

    .line 746
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "ListView is null cannot refresh ads"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 751
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized! ignoring InMobiStrandAdapter.refreshAds()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 756
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 757
    if-nez v0, :cond_2

    move v0, v1

    .line 760
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 761
    add-int/lit8 v2, v4, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 762
    :goto_2
    iget-object v3, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v3, v2}, Lcom/inmobi/ads/ad;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-lez v2, :cond_3

    .line 763
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 757
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_1

    .line 765
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 766
    :goto_3
    iget-object v5, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v5, v3}, Lcom/inmobi/ads/ad;->b(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiStrandAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_4

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 769
    :cond_4
    iget-object v5, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v5, v2}, Lcom/inmobi/ads/ad;->e(I)I

    move-result v2

    .line 770
    iget-object v5, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Lcom/inmobi/ads/ad;->g(I)I

    move-result v3

    .line 773
    iget-object v5, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiStrandAdapter;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/inmobi/ads/ad;->g(I)I

    move-result v5

    .line 774
    iget-object v6, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v6, v3, v5}, Lcom/inmobi/ads/ad;->b(II)I

    .line 775
    iget-object v3, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v3, v1, v2}, Lcom/inmobi/ads/ad;->b(II)I

    move-result v1

    .line 778
    if-lez v1, :cond_5

    .line 779
    sub-int v1, v4, v1

    invoke-virtual {p1, v1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 781
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiStrandAdapter;->load()V

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 3

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 536
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, Initialize InMobiSdk before creating InMobiStrandAdapter,ignoring InMobiStrandAdapter.removeItem()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->j(I)V

    goto :goto_0
.end method

.method public final setExtras(Ljava/util/Map;)V
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
    .line 244
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 245
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, ignoring InMobiStrandAdapter.setExtras()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, ignoring InMobiStrandAdapter.setKeywords()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setListener(Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;)V
    .locals 3

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, ignoring InMobiStrandAdapter.setListener()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    if-nez p1, :cond_1

    .line 214
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand.NativeStrandAdListener supplied as null."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mListener:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 556
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, Initialize InMobiSdk before creating InMobiStrandAdapter"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_0
    if-nez p1, :cond_1

    .line 560
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "ListView is null cannot set onClickListener"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :goto_0
    return-void

    .line 564
    :cond_1
    if-nez p2, :cond_2

    .line 565
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 569
    :cond_2
    new-instance v0, Lcom/inmobi/ads/InMobiStrandAdapter$7;

    invoke-direct {v0, p0, p2}, Lcom/inmobi/ads/InMobiStrandAdapter$7;-><init>(Lcom/inmobi/ads/InMobiStrandAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public setOnItemLongClickListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 3

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 596
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, Initialize InMobiSdk before creating InMobiStrandAdapter"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_0
    if-nez p1, :cond_1

    .line 600
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "ListView is null cannot set OnItemLongClickListener"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_0
    return-void

    .line 604
    :cond_1
    if-nez p2, :cond_2

    .line 605
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    .line 609
    :cond_2
    new-instance v0, Lcom/inmobi/ads/InMobiStrandAdapter$8;

    invoke-direct {v0, p0, p2}, Lcom/inmobi/ads/InMobiStrandAdapter$8;-><init>(Lcom/inmobi/ads/InMobiStrandAdapter;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 3

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 633
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, Initialize InMobiSdk before creating InMobiStrandAdapter"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_0
    if-nez p1, :cond_1

    .line 637
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "ListView is null cannot set OnItemSelectedListener"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :goto_0
    return-void

    .line 641
    :cond_1
    if-nez p2, :cond_2

    .line 642
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 646
    :cond_2
    new-instance v0, Lcom/inmobi/ads/InMobiStrandAdapter$9;

    invoke-direct {v0, p0, p2}, Lcom/inmobi/ads/InMobiStrandAdapter$9;-><init>(Lcom/inmobi/ads/InMobiStrandAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method public setSelection(Landroid/widget/ListView;I)V
    .locals 3

    .prologue
    .line 673
    if-nez p1, :cond_0

    .line 674
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "ListView is null cannot set selection"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 679
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobiStrandAdapter is not initialized!, Initialize InMobiSdk before creating InMobiStrandAdapter"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/ad;->f(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/widget/ListView;I)V
    .locals 4

    .prologue
    .line 696
    if-nez p1, :cond_0

    .line 697
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListView is null cannot smoothScrollToPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 707
    :goto_1
    new-instance v0, Lcom/inmobi/ads/InMobiStrandAdapter$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/inmobi/ads/InMobiStrandAdapter$10;-><init>(Lcom/inmobi/ads/InMobiStrandAdapter;Landroid/widget/ListView;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 729
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mListViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/InMobiStrandAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/ads/InMobiStrandAdapter$2;-><init>(Lcom/inmobi/ads/InMobiStrandAdapter;Landroid/widget/ListView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter;->mNativeStrandController:Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/ad;->f(I)I

    move-result p2

    goto :goto_1
.end method
