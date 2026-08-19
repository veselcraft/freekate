.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# instance fields
.field private final data:[B

.field private final defaultUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->data:[B

    .line 326
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->defaultUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->data:[B

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->defaultUrl:Ljava/lang/String;

    return-object v0
.end method
