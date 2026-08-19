.class public final Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# instance fields
.field public final forceDefaultLicenseUri:Z

.field private final keySetId:[B

.field public final licenseUri:Landroid/net/Uri;

.field public final multiSession:Z

.field public final playClearContentWithoutKey:Z

.field public final requestHeaders:Ljava/util/Map;

.field public final sessionForClearTypes:Ljava/util/List;

.field public final uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[B)V
    .locals 1

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 660
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 661
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    .line 662
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    .line 663
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    .line 664
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    .line 665
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    .line 666
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 667
    iput-object p7, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    if-eqz p8, :cond_2

    .line 668
    array-length p1, p8

    invoke-static {p8, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[BLcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 617
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 682
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 686
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 687
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    .line 688
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    .line 689
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    .line 693
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    .line 694
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKeySetId()[B
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 700
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 701
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 702
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 703
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 704
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 705
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 706
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
