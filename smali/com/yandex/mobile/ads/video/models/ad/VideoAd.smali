.class public Lcom/yandex/mobile/ads/video/models/ad/VideoAd;
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
            "Lcom/yandex/mobile/ads/video/models/ad/VideoAd;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERROR:Ljava/lang/String; = "error"


# instance fields
.field private mAdSystem:Ljava/lang/String;

.field private mAdTitle:Ljava/lang/String;

.field private mCreatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/Creative;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;

.field private mSurvey:Ljava/lang/String;

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

.field private mVastAdTagUri:Ljava/lang/String;

.field private final mWrapper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/video/models/ad/VideoAd$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mCreatives:Ljava/util/List;

    .line 40
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mWrapper:Z

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdSystem:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdTitle:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mDescription:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mSurvey:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mVastAdTagUri:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mCreatives:Ljava/util/List;

    sget-object v2, Lcom/yandex/mobile/ads/video/models/ad/Creative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    :goto_1
    if-ge v1, v0, :cond_1

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 248
    iget-object v4, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 235
    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yandex/mobile/ads/video/models/ad/VideoAd$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/yandex/mobile/ads/video/models/ad/VideoAd$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "wrapper"    # Ljava/lang/Boolean;

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mCreatives:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    .line 230
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mWrapper:Z

    .line 231
    return-void
.end method

.method private addCreative(Lcom/yandex/mobile/ads/video/models/ad/Creative;)V
    .locals 1
    .param p1, "creative"    # Lcom/yandex/mobile/ads/video/models/ad/Creative;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mCreatives:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method private addCreatives(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/Creative;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "creatives":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/yandex/mobile/ads/video/models/ad/Creative;>;"
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

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/Creative;

    .line 117
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->addCreative(Lcom/yandex/mobile/ads/video/models/ad/Creative;)V

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method private addError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v0, "error"

    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private addImpression(Ljava/lang/String;)V
    .locals 1
    .param p1, "impression"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v0, "impression"

    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->addTrackingEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private addImpressions(Ljava/util/Collection;)V
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
    .line 143
    .local p1, "impressions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
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

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->addImpression(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method private addTrackingEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "trackingEvent"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 124
    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_1
    return-void
.end method

.method private setAdSystem(Ljava/lang/String;)V
    .locals 0
    .param p1, "adSystem"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdSystem:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private setAdTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "adTitle"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdTitle:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mDescription:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private setSurvey(Ljava/lang/String;)V
    .locals 0
    .param p1, "survey"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mSurvey:Ljava/lang/String;

    .line 102
    return-void
.end method

.method private setVastAdTagUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "vastUri"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mVastAdTagUri:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    if-ne p0, p1, :cond_1

    .line 190
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 158
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

    .line 159
    goto :goto_0

    .line 162
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;

    .line 164
    .end local p1    # "o":Ljava/lang/Object;
    iget-boolean v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mWrapper:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mWrapper:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 165
    goto :goto_0

    .line 168
    :cond_4
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdSystem:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdSystem:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdSystem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    .line 169
    goto :goto_0

    .line 168
    :cond_6
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdSystem:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 171
    :cond_7
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdTitle:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    .line 172
    goto :goto_0

    .line 171
    :cond_9
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdTitle:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 174
    :cond_a
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mCreatives:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mCreatives:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 175
    goto :goto_0

    .line 177
    :cond_b
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    .line 178
    goto :goto_0

    .line 177
    :cond_d
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mDescription:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 180
    :cond_e
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mSurvey:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mSurvey:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mSurvey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    move v0, v1

    .line 181
    goto :goto_0

    .line 180
    :cond_10
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mSurvey:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 183
    :cond_11
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    .line 184
    goto :goto_0

    .line 186
    :cond_12
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mVastAdTagUri:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mVastAdTagUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mVastAdTagUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 187
    goto/16 :goto_0

    .line 186
    :cond_13
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mVastAdTagUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAdSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/Creative;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mCreatives:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSurvey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mSurvey:Ljava/lang/String;

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
    .line 150
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getVastAdTagUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mVastAdTagUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdSystem:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdSystem:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 196
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mWrapper:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 197
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 198
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 199
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mSurvey:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mSurvey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 200
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mVastAdTagUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mVastAdTagUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 201
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mCreatives:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    return v0

    :cond_1
    move v0, v1

    .line 195
    goto :goto_0

    :cond_2
    move v0, v1

    .line 196
    goto :goto_1

    :cond_3
    move v0, v1

    .line 197
    goto :goto_2

    :cond_4
    move v0, v1

    .line 198
    goto :goto_3

    :cond_5
    move v0, v1

    .line 199
    goto :goto_4
.end method

.method public isWrapper()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mWrapper:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mWrapper:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdSystem:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mAdTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mSurvey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mVastAdTagUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mCreatives:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 221
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->mTrackingEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_1

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :cond_1
    return-void
.end method
