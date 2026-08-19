.class public final Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/ExoFlags;Landroid/util/SparseArray;)V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ExoFlags;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 93
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ExoFlags;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 94
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ExoFlags;->get(I)I

    move-result v2

    .line 95
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
