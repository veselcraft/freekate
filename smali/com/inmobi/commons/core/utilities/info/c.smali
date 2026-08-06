.class public Lcom/inmobi/commons/core/utilities/info/c;
.super Ljava/lang/Object;
.source "DisplayProperties.java"


# instance fields
.field private a:I

.field private b:I

.field private c:F


# direct methods
.method public constructor <init>(IIF)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/inmobi/commons/core/utilities/info/c;->a:I

    .line 13
    iput p2, p0, Lcom/inmobi/commons/core/utilities/info/c;->b:I

    .line 14
    iput p3, p0, Lcom/inmobi/commons/core/utilities/info/c;->c:F

    .line 15
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/inmobi/commons/core/utilities/info/c;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/inmobi/commons/core/utilities/info/c;->a:I

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/inmobi/commons/core/utilities/info/c;->c:F

    return v0
.end method
