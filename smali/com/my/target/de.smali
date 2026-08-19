.class public Lcom/my/target/de;
.super Lcom/my/target/dj;
.source "MrcStat.java"


# instance fields
.field private duration:F


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/my/target/dj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 12
    iput p1, p0, Lcom/my/target/de;->duration:F

    return-void
.end method

.method public static K(Ljava/lang/String;)Lcom/my/target/de;
    .locals 2

    .line 9
    new-instance v0, Lcom/my/target/de;

    const-string v1, "mrcStat"

    invoke-direct {v0, v1, p0}, Lcom/my/target/de;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDuration()F
    .locals 1

    .line 17
    iget v0, p0, Lcom/my/target/de;->duration:F

    return v0
.end method

.method public setDuration(F)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/my/target/de;->duration:F

    return-void
.end method
