.class public Lcom/yandex/mobile/ads/video/models/ad/Creative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/Creative;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClickThroughEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationMillis:I

.field private mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/Icon;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mMediaFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackingEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/Creative$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/video/models/ad/Creative$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mIcons:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mIcons:Ljava/util/List;

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mId:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mDurationMillis:I

    .line 197
    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    sget-object v2, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 199
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v1, v0

    .line 201
    :goto_0
    if-ge v1, v2, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 204
    iget-object v5, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    :goto_1
    if-ge v0, v1, :cond_1

    .line 208
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_1
    return-void
.end method

.method private addClickThroughUrls(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "videoClicks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/c;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    return-void
.end method

.method private addIcons(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/Icon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "icons":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/yandex/mobile/ads/video/models/ad/Icon;>;"
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/c;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/Icon;

    .line 126
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mIcons:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method private addMediaFile(Lcom/yandex/mobile/ads/video/models/ad/MediaFile;)V
    .locals 1
    .param p1, "mediaFile"    # Lcom/yandex/mobile/ads/video/models/ad/MediaFile;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method private addMediaFiles(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/MediaFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "mediaFiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/yandex/mobile/ads/video/models/ad/MediaFile;>;"
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/c;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;

    .line 120
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/video/models/ad/Creative;->addMediaFile(Lcom/yandex/mobile/ads/video/models/ad/MediaFile;)V

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method private addTrackingEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "trackingEvent"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 100
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method private addTrackingEvents(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "trackingEvents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/c;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 110
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/video/models/ad/Creative;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method private setDurationHHMMSS(Ljava/lang/String;)V
    .locals 4
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mDurationMillis:I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setDurationMillis(I)V
    .locals 0
    .param p1, "durationMillis"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mDurationMillis:I

    .line 61
    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mId:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    if-ne p0, p1, :cond_1

    .line 158
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 145
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 147
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/video/models/ad/Creative;

    .line 149
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mDurationMillis:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mDurationMillis:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 150
    :cond_4
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    .line 151
    goto :goto_0

    .line 150
    :cond_6
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 152
    :cond_7
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mId:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mId:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 153
    :cond_a
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    .line 154
    goto :goto_0

    .line 153
    :cond_c
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    if-nez v2, :cond_b

    .line 155
    :cond_d
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 156
    goto :goto_0

    .line 155
    :cond_e
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDurationMillis()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mDurationMillis:I

    return v0
.end method

.method public getIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/Icon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mIcons:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/MediaFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingEvents()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 164
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mDurationMillis:I

    add-int/2addr v0, v2

    .line 165
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 166
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 168
    return v0

    :cond_1
    move v0, v1

    .line 163
    goto :goto_0

    :cond_2
    move v0, v1

    .line 165
    goto :goto_1

    :cond_3
    move v0, v1

    .line 166
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mDurationMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mMediaFiles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 182
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Creative;->mClickThroughEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_1
    return-void
.end method
