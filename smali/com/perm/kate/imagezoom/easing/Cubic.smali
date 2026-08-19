.class public abstract Lcom/perm/kate/imagezoom/easing/Cubic;
.super Ljava/lang/Object;
.source "Cubic.java"


# direct methods
.method public static easeOut(FFFF)F
    .locals 1

    div-float/2addr p0, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p0, p3

    mul-float v0, p0, p0

    mul-float v0, v0, p0

    add-float/2addr v0, p3

    mul-float p2, p2, v0

    add-float/2addr p2, p1

    return p2
.end method
