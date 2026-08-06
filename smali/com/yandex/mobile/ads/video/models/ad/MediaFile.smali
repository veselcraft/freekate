.class public Lcom/yandex/mobile/ads/video/models/ad/MediaFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/MediaFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBitrate:I

.field private mDeliveryMethod:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

.field private mHeight:I

.field private mId:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mUri:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mId:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mUri:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mDeliveryMethod:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mHeight:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mWidth:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mMimeType:Ljava/lang/String;

    .line 213
    return-void

    .line 209
    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->values()[Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yandex/mobile/ads/video/models/ad/MediaFile$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/yandex/mobile/ads/video/models/ad/MediaFile$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private setBitrate(Ljava/lang/String;)V
    .locals 1
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mBitrate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setDeliveryMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "delivery"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->getByMethod(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mDeliveryMethod:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    .line 85
    return-void
.end method

.method private setHeight(Ljava/lang/String;)V
    .locals 1
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mUri:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private setWidth(Ljava/lang/String;)V
    .locals 1
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    if-ne p0, p1, :cond_1

    .line 173
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 148
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

    .line 149
    goto :goto_0

    .line 152
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;

    .line 154
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mHeight:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mHeight:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 155
    goto :goto_0

    .line 157
    :cond_4
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mWidth:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mWidth:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_5
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mDeliveryMethod:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mDeliveryMethod:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 161
    goto :goto_0

    .line 163
    :cond_6
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 164
    goto :goto_0

    .line 163
    :cond_8
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mId:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 166
    :cond_9
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mMimeType:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 167
    goto :goto_0

    .line 166
    :cond_b
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mMimeType:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 169
    :cond_c
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 170
    goto :goto_0

    .line 169
    :cond_d
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getBitrate()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mBitrate:I

    return v0
.end method

.method public getDeliveryMethod()Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mDeliveryMethod:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mHeight:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 179
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 180
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mDeliveryMethod:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mDeliveryMethod:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mHeight:I

    add-int/2addr v0, v2

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mWidth:I

    add-int/2addr v0, v2

    .line 183
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mMimeType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 184
    return v0

    :cond_1
    move v0, v1

    .line 178
    goto :goto_0

    :cond_2
    move v0, v1

    .line 179
    goto :goto_1

    :cond_3
    move v0, v1

    .line 180
    goto :goto_2
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mMimeType:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mDeliveryMethod:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile;->mDeliveryMethod:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->ordinal()I

    move-result v0

    goto :goto_0
.end method
