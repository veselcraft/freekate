.class public final Lcom/google/android/exoplayer2/upstream/DataSourceException;
.super Ljava/io/IOException;
.source "DataSourceException.java"


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    return-void
.end method
