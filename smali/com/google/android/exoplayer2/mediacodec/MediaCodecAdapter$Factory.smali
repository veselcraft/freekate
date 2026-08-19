.class public interface abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    return-void
.end method


# virtual methods
.method public abstract createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
.end method
