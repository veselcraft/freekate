.class public final Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDuration:I

.field private mId:Ljava/lang/String;

.field private mPositionsCount:I

.field private mStartTime:I

.field private mType:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mId:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 185
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mType:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mStartTime:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mDuration:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mPositionsCount:I

    .line 189
    return-void

    .line 185
    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->values()[Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private setDuration(Ljava/lang/String;)V
    .locals 1
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 102
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mDuration:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
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
    .line 64
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private setPositionsCount(Ljava/lang/String;)V
    .locals 1
    .param p1, "positionsCount"    # Ljava/lang/String;

    .prologue
    .line 117
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mPositionsCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setStartTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mStartTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->getByType(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mType:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    if-ne p0, p1, :cond_1

    .line 150
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 128
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

    .line 129
    goto :goto_0

    .line 132
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;

    .line 134
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mDuration:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mDuration:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_4
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mPositionsCount:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mPositionsCount:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :cond_5
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mStartTime:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mStartTime:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 141
    goto :goto_0

    .line 143
    :cond_6
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 144
    goto :goto_0

    .line 143
    :cond_8
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mId:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 146
    :cond_9
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mType:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mType:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 147
    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mDuration:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionsCount()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mPositionsCount:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mStartTime:I

    return v0
.end method

.method public getType()Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mType:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 156
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mType:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mType:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mStartTime:I

    add-int/2addr v0, v1

    .line 158
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mDuration:I

    add-int/2addr v0, v1

    .line 159
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mPositionsCount:I

    add-int/2addr v0, v1

    .line 160
    return v0

    :cond_1
    move v0, v1

    .line 155
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mType:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mStartTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mPositionsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->mType:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->ordinal()I

    move-result v0

    goto :goto_0
.end method
