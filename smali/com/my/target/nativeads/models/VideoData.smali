.class public Lcom/my/target/nativeads/models/VideoData;
.super Lcom/my/target/core/models/a;
.source "VideoData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/models/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private bitrate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/my/target/core/models/a;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/my/target/nativeads/models/VideoData;->bitrate:I

    return v0
.end method

.method public setBitrate(I)V
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/my/target/nativeads/models/VideoData;->bitrate:I

    .line 22
    return-void
.end method
