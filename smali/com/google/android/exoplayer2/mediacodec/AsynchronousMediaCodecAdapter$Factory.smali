.class public final Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;


# instance fields
.field private final callbackThreadSupplier:Lcom/google/common/base/Supplier;

.field private final forceQueueingSynchronizationWorkaround:Z

.field private final queueingThreadSupplier:Lcom/google/common/base/Supplier;

.field private final synchronizeCodecInteractionsWithQueueing:Z


# direct methods
.method public static synthetic $r8$lambda$_sfoxALAydTODW5vGEGXx4zjENI(I)Landroid/os/HandlerThread;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->lambda$new$0(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zNxUJHIE2b-XogkQb8GUDzkjdG0(I)Landroid/os/HandlerThread;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->lambda$new$1(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(IZZ)V
    .locals 2

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;ZZ)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;ZZ)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->callbackThreadSupplier:Lcom/google/common/base/Supplier;

    .line 95
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->queueingThreadSupplier:Lcom/google/common/base/Supplier;

    .line 96
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->forceQueueingSynchronizationWorkaround:Z

    .line 97
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->synchronizeCodecInteractionsWithQueueing:Z

    return-void
.end method

.method private static synthetic lambda$new$0(I)Landroid/os/HandlerThread;
    .locals 1

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->access$400(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$new$1(I)Landroid/os/HandlerThread;
    .locals 1

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->access$300(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;
    .locals 10

    .line 103
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "createCodec:"

    .line 107
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 108
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 109
    :try_start_1
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->callbackThreadSupplier:Lcom/google/common/base/Supplier;

    .line 112
    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->queueingThreadSupplier:Lcom/google/common/base/Supplier;

    .line 113
    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/HandlerThread;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->forceQueueingSynchronizationWorkaround:Z

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->synchronizeCodecInteractionsWithQueueing:Z

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZLcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :try_start_2
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    const-string v1, "configureCodec"

    .line 117
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 118
    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iget-object v4, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    iget p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->flags:I

    invoke-static {v2, v1, v3, v4, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->access$100(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 123
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    const-string p1, "startCodec"

    .line 124
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 125
    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->access$200(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;)V

    .line 126
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v0, v1

    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_2

    .line 130
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;->release()V

    .line 134
    :cond_2
    :goto_2
    throw p1
.end method

.method public bridge synthetic createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;

    move-result-object p1

    return-object p1
.end method
