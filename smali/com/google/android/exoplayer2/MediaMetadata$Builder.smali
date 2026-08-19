.class public final Lcom/google/android/exoplayer2/MediaMetadata$Builder;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# instance fields
.field private albumArtist:Ljava/lang/CharSequence;

.field private albumTitle:Ljava/lang/CharSequence;

.field private artist:Ljava/lang/CharSequence;

.field private artworkData:[B

.field private artworkUri:Landroid/net/Uri;

.field private description:Ljava/lang/CharSequence;

.field private displayTitle:Ljava/lang/CharSequence;

.field private extras:Landroid/os/Bundle;

.field private folderType:Ljava/lang/Integer;

.field private isPlayable:Ljava/lang/Boolean;

.field private mediaUri:Landroid/net/Uri;

.field private overallRating:Lcom/google/android/exoplayer2/Rating;

.field private subtitle:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private totalTrackCount:Ljava/lang/Integer;

.field private trackNumber:Ljava/lang/Integer;

.field private userRating:Lcom/google/android/exoplayer2/Rating;

.field private year:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    .line 63
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    .line 64
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    .line 65
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    .line 66
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    .line 68
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    .line 69
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->mediaUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->mediaUri:Landroid/net/Uri;

    .line 72
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    .line 73
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    .line 74
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    .line 75
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    .line 76
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    .line 77
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    .line 78
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->year:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->year:Ljava/lang/Integer;

    .line 79
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaMetadata$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Lcom/google/android/exoplayer2/Rating;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->overallRating:Lcom/google/android/exoplayer2/Rating;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)[B
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/net/Uri;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->year:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/net/Uri;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->mediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Lcom/google/android/exoplayer2/Rating;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->userRating:Lcom/google/android/exoplayer2/Rating;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 2

    .line 234
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaMetadata;-><init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;Lcom/google/android/exoplayer2/MediaMetadata$1;)V

    return-object v0
.end method

.method public populateFromMetadata(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 222
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 223
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v3, 0x0

    .line 224
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 225
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v4

    .line 226
    invoke-interface {v4, p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setAlbumArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setAlbumTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setArtworkData([B)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTotalTrackCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTrackNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public setYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->year:Ljava/lang/Integer;

    return-object p0
.end method
