.class public Lcom/perm/kate/imagezoom/easing/Cubic;
.super Ljava/lang/Object;
.source "Cubic.java"


# direct methods
.method public static easeOut(FFFF)F
    .locals 2
    .param p0, "time"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    div-float v0, p0, p3

    sub-float p0, v0, v1

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method
