.class public Lcom/my/target/dg;
.super Lcom/my/target/dh;
.source "ProgressStat.java"


# instance fields
.field private ec:F

.field private value:F


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "playheadReachedValue"

    .line 19
    invoke-direct {p0, v0, p1}, Lcom/my/target/dh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 14
    iput p1, p0, Lcom/my/target/dg;->value:F

    .line 15
    iput p1, p0, Lcom/my/target/dg;->ec:F

    return-void
.end method

.method public static M(Ljava/lang/String;)Lcom/my/target/dg;
    .locals 1

    .line 11
    new-instance v0, Lcom/my/target/dg;

    invoke-direct {v0, p0}, Lcom/my/target/dg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cu()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/my/target/dg;->value:F

    return v0
.end method

.method public cv()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/my/target/dg;->ec:F

    return v0
.end method

.method public h(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/my/target/dg;->value:F

    return-void
.end method

.method public i(F)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/my/target/dg;->ec:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgressStat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "value="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/my/target/dg;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pvalue="

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/my/target/dg;->ec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
