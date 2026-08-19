.class public interface abstract Lcom/google/android/exoplayer2/upstream/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
.end method

.method public abstract close()V
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
.end method
