.class public abstract synthetic Lcom/google/android/exoplayer2/upstream/DataSource$-CC;
.super Ljava/lang/Object;
.source "DataSource.java"


# direct methods
.method public static $default$getResponseHeaders(Lcom/google/android/exoplayer2/upstream/DataSource;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
