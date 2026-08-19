.class public final synthetic Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/source/LoadEventInfo;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda24;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda24;->f$1:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda24;->f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda24;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda24;->f$1:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda24;->f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->$r8$lambda$EDn-m7ac5r3EM_N1_3A7cbB6h3o(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method
