.class public abstract synthetic Lcom/google/android/exoplayer2/RendererCapabilities$-CC;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# direct methods
.method public static create(I)I
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result p0

    return p0
.end method

.method public static create(III)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public static getFormatSupport(I)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static getTunnelingSupport(I)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    and-int/lit8 p0, p0, 0x20

    return p0
.end method
