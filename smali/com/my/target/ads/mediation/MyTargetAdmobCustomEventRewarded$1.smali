.class Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$1;
.super Ljava/lang/Object;
.source "MyTargetAdmobCustomEventRewarded.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;


# direct methods
.method constructor <init>(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    return-object v0
.end method
