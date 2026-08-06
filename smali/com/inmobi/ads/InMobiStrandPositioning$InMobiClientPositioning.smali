.class public Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;
.super Ljava/lang/Object;
.source "InMobiStrandPositioning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiStrandPositioning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InMobiClientPositioning"
.end annotation


# static fields
.field public static final NO_REPEAT:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const v0, 0x7fffffff

    iput v0, p0, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->mRepeatInterval:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->mAdPositions:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public addFixedPosition(I)Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;
    .locals 3

    .prologue
    .line 34
    if-gez p1, :cond_1

    .line 35
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->TAG:Ljava/lang/String;

    const-string v2, "Ad positions must be non-negative"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    :goto_0
    return-object p0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->mAdPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 40
    if-gez v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->mAdPositions:Ljava/util/List;

    xor-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public enableRepeatingPositions(I)Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 61
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->TAG:Ljava/lang/String;

    const-string v2, "Repeating interval must be greater than 1"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const v0, 0x7fffffff

    iput v0, p0, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->mRepeatInterval:I

    .line 67
    :goto_0
    return-object p0

    .line 66
    :cond_0
    iput p1, p0, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->mRepeatInterval:I

    goto :goto_0
.end method

.method getFixedPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->mAdPositions:Ljava/util/List;

    return-object v0
.end method

.method getRepeatingInterval()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->mRepeatInterval:I

    return v0
.end method
