.class Lcom/airbnb/lottie/PerformanceTracker$1;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/PerformanceTracker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I
    .locals 0

    const/4 p1, 0x0

    .line 29
    throw p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 27
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/airbnb/lottie/PerformanceTracker$1;->compare(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I

    move-result p1

    return p1
.end method
