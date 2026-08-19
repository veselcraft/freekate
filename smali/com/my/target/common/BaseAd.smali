.class public abstract Lcom/my/target/common/BaseAd;
.super Ljava/lang/Object;
.source "BaseAd.java"


# instance fields
.field protected final adConfig:Lcom/my/target/a;


# direct methods
.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1, p2}, Lcom/my/target/a;->newConfig(ILjava/lang/String;)Lcom/my/target/a;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/common/BaseAd;->adConfig:Lcom/my/target/a;

    return-void
.end method


# virtual methods
.method public getCustomParams()Lcom/my/target/common/CustomParams;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/my/target/common/BaseAd;->adConfig:Lcom/my/target/a;

    invoke-virtual {v0}, Lcom/my/target/a;->getCustomParams()Lcom/my/target/common/CustomParams;

    move-result-object v0

    return-object v0
.end method

.method public setTrackingEnvironmentEnabled(Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/my/target/common/BaseAd;->adConfig:Lcom/my/target/a;

    invoke-virtual {v0, p1}, Lcom/my/target/a;->setTrackingEnvironmentEnabled(Z)V

    return-void
.end method
