.class public Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;
.super Ljava/lang/Object;
.source "InstreamAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/instream/InstreamAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstreamAdBanner"
.end annotation


# instance fields
.field public final allowClose:Z

.field public final allowCloseDelay:F

.field public ctaText:Ljava/lang/String;

.field public final duration:F

.field public final videoHeight:I

.field public final videoWidth:I


# direct methods
.method public constructor <init>(ZFFII)V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-boolean p1, p0, Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;->allowClose:Z

    .line 585
    iput p2, p0, Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;->allowCloseDelay:F

    .line 586
    iput p3, p0, Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;->duration:F

    .line 587
    iput p5, p0, Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;->videoHeight:I

    .line 588
    iput p4, p0, Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;->videoWidth:I

    .line 589
    return-void
.end method
