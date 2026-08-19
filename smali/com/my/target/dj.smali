.class public abstract Lcom/my/target/dj;
.super Lcom/my/target/dh;
.source "ViewabilityStat.java"


# instance fields
.field private ec:F

.field private ei:I

.field private value:F


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/my/target/dh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 9
    iput p1, p0, Lcom/my/target/dj;->value:F

    .line 10
    iput p1, p0, Lcom/my/target/dj;->ec:F

    return-void
.end method


# virtual methods
.method public cC()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/my/target/dj;->ei:I

    return v0
.end method

.method public cu()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/my/target/dj;->value:F

    return v0
.end method

.method public cv()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/my/target/dj;->ec:F

    return v0
.end method

.method public h(F)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/my/target/dj;->value:F

    return-void
.end method

.method public i(F)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/my/target/dj;->ec:F

    return-void
.end method

.method public w(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/my/target/dj;->ei:I

    return-void
.end method
