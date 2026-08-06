.class public abstract Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;
.super Ljava/lang/Object;
.source "AbstractSeries.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/chartview/AbstractSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private mX:D

.field private mY:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-wide p1, p0, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->mX:D

    .line 167
    iput-wide p3, p0, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->mY:D

    .line 168
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)I
    .locals 4
    .param p1, "another"    # Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->mX:D

    iget-wide v2, p1, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->mX:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 158
    check-cast p1, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;

    invoke-virtual {p0, p1}, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->compareTo(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)I

    move-result v0

    return v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->mX:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;->mY:D

    return-wide v0
.end method
