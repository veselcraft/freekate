.class public abstract Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;
.super Ljava/lang/Object;
.source "WebvttParserUtil.java"


# static fields
.field private static final COMMENT:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^NOTE([ \t].*)?$"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->COMMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static findNextCueHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/regex/Matcher;
    .locals 2

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 104
    sget-object v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->COMMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "WEBVTT"

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseTimestampUs(Ljava/lang/String;)J
    .locals 8

    const-string v0, "\\."

    .line 66
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 67
    aget-object v1, p0, v0

    const-string v2, ":"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 68
    array-length v2, v1

    const-wide/16 v3, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v5, v1, v0

    const-wide/16 v6, 0x3c

    mul-long v3, v3, v6

    .line 69
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long v3, v3, v0

    .line 72
    array-length v2, p0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    .line 73
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_1
    mul-long v3, v3, v0

    return-wide v3
.end method

.method public static validateWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 41
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 43
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Expected WEBVTT. Got "

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
