.class public Lcom/perm/kate/chartview/LinearSeries$LinearPoint;
.super Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;
.source "LinearSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/chartview/LinearSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearPoint"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;-><init>(DD)V

    .line 42
    return-void
.end method
