.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# instance fields
.field private final data:[B

.field private final licenseServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;I)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->data:[B

    .line 282
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->data:[B

    return-object v0
.end method

.method public getLicenseServerUrl()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    return-object v0
.end method
