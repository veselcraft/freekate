.class public final Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
.super Ljava/lang/Object;
.source "DecoderReuseEvaluation.java"


# instance fields
.field public final decoderName:Ljava/lang/String;

.field public final discardReasons:I

.field public final newFormat:Lcom/google/android/exoplayer2/Format;

.field public final oldFormat:Lcom/google/android/exoplayer2/Format;

.field public final result:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 144
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 145
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    .line 146
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplayer2/Format;

    .line 147
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplayer2/Format;

    .line 148
    iput p4, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    .line 149
    iput p5, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 157
    const-class v2, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 161
    iget v2, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    iget v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    iget v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplayer2/Format;

    .line 164
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplayer2/Format;

    .line 165
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 171
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 172
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
