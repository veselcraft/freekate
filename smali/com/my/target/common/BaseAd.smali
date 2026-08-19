.class public abstract Lcom/my/target/common/BaseAd;
.super Ljava/lang/Object;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public getCustomParams()Lcom/my/target/common/CustomParams;
    .locals 1
    new-instance v0, Lcom/my/target/common/CustomParams;
    invoke-direct {v0}, Lcom/my/target/common/CustomParams;-><init>()V
    return-object v0
.end method
