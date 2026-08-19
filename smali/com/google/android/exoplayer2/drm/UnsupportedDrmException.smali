.class public final Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
.super Ljava/lang/Exception;
.source "UnsupportedDrmException.java"


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;->reason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 0

    .line 61
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 62
    iput p1, p0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;->reason:I

    return-void
.end method
