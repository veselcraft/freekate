.class public final Lcom/my/target/common/models/AudioData;
.super Lcom/my/target/cd;
.source "AudioData.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/my/target/cd;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static newAudioData(Ljava/lang/String;)Lcom/my/target/common/models/AudioData;
    .locals 1

    .line 17
    new-instance v0, Lcom/my/target/common/models/AudioData;

    invoke-direct {v0, p0}, Lcom/my/target/common/models/AudioData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public setBitrate(I)V
    .locals 0

    return-void
.end method
