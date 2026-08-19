.class public abstract Lcom/perm/kate/ActivityCounter;
.super Ljava/lang/Object;
.source "ActivityCounter.java"


# static fields
.field private static visibleActivityCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static decrement()V
    .locals 1

    .line 14
    sget v0, Lcom/perm/kate/ActivityCounter;->visibleActivityCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/perm/kate/ActivityCounter;->visibleActivityCount:I

    return-void
.end method

.method public static getVisibleCount()I
    .locals 1

    .line 18
    sget v0, Lcom/perm/kate/ActivityCounter;->visibleActivityCount:I

    return v0
.end method

.method public static increment()V
    .locals 1

    .line 10
    sget v0, Lcom/perm/kate/ActivityCounter;->visibleActivityCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/perm/kate/ActivityCounter;->visibleActivityCount:I

    return-void
.end method
