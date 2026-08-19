.class public final Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# instance fields
.field public final descriptorBytes:[B

.field public final dvbSubtitleInfos:Ljava/util/List;

.field public final language:Ljava/lang/String;

.field public final streamType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;[B)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    .line 85
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    .line 90
    iput-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    return-void
.end method
