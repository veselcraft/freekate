.class public Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;
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
            "Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_POSITIVE_VALUE:I = -0x1


# instance fields
.field private mBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferEmptyLimit:I

.field private mBufferFullTimeout:I

.field private mCategoryId:Ljava/lang/String;

.field private mCategoryName:Ljava/lang/String;

.field private mFirstBuffTimeout:I

.field private mPartnerId:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;

.field private mShowSkipTimeLeft:Z

.field private mShowTimeLeft:Z

.field private mSkin:Ljava/lang/String;

.field private mSkinTimeout:I

.field private mSkipDelay:I

.field private mTitle:Ljava/lang/String;

.field private mVPaidEnabled:Z

.field private mVastTimeout:I

.field private mVersion:I

.field private mVideoTimeout:I

.field private mVpaidTimeout:I

.field private mWrapperMaxCount:I

.field private mWrapperTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 504
    new-instance v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVPaidEnabled:Z

    .line 40
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkipDelay:I

    .line 41
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkinTimeout:I

    .line 42
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVpaidTimeout:I

    .line 43
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperTimeout:I

    .line 44
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVideoTimeout:I

    .line 45
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVastTimeout:I

    .line 46
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowTimeLeft:Z

    .line 47
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowSkipTimeLeft:Z

    .line 49
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferFullTimeout:I

    .line 50
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperMaxCount:I

    .line 51
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mFirstBuffTimeout:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    .line 478
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVPaidEnabled:Z

    .line 40
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkipDelay:I

    .line 41
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkinTimeout:I

    .line 42
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVpaidTimeout:I

    .line 43
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperTimeout:I

    .line 44
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVideoTimeout:I

    .line 45
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVastTimeout:I

    .line 46
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowTimeLeft:Z

    .line 47
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowSkipTimeLeft:Z

    .line 49
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferFullTimeout:I

    .line 50
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperMaxCount:I

    .line 51
    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mFirstBuffTimeout:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVersion:I

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mPartnerId:Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSessionId:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryId:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryName:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkin:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVPaidEnabled:Z

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferEmptyLimit:I

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mTitle:Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkipDelay:I

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkinTimeout:I

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVpaidTimeout:I

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperTimeout:I

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVideoTimeout:I

    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVastTimeout:I

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowTimeLeft:Z

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowSkipTimeLeft:Z

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferFullTimeout:I

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperMaxCount:I

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mFirstBuffTimeout:I

    .line 501
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    sget-object v1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 502
    return-void

    :cond_0
    move v0, v2

    .line 487
    goto :goto_0

    :cond_1
    move v0, v2

    .line 496
    goto :goto_1

    :cond_2
    move v1, v2

    .line 497
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private addBlock(Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;)V
    .locals 1
    .param p1, "block"    # Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method private addBlocks(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;>;"
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

    check-cast v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;

    .line 312
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->addBlock(Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;)V

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method private static parseBooleanWithDefault(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "booleanString"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 288
    .line 291
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 296
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static parsePositiveIntOrInvalidValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "positiveIntString"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v0, -0x1

    .line 279
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 284
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setBufferEmptyLimit(Ljava/lang/String;)V
    .locals 1
    .param p1, "bufferEmptyLimit"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parsePositiveIntOrInvalidValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferEmptyLimit:I

    .line 141
    return-void
.end method

.method private setBufferFullTimeout(Ljava/lang/String;)V
    .locals 1
    .param p1, "bufferFullTimeout"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parsePositiveIntOrInvalidValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferFullTimeout:I

    .line 251
    return-void
.end method

.method private setCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private setCategoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private setFirstBuffTimeout(Ljava/lang/String;)V
    .locals 1
    .param p1, "firstBuffTimeout"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parsePositiveIntOrInvalidValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mFirstBuffTimeout:I

    .line 273
    return-void
.end method

.method private setPartnerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "partnerId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mPartnerId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSessionId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private setShowSkipTimeLeft(Ljava/lang/String;)V
    .locals 1
    .param p1, "showSkipTimeLeft"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowSkipTimeLeft:Z

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parseBooleanWithDefault(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowSkipTimeLeft:Z

    .line 174
    return-void
.end method

.method private setShowTimeLeft(Ljava/lang/String;)V
    .locals 1
    .param p1, "showTimeLeft"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowTimeLeft:Z

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parseBooleanWithDefault(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowTimeLeft:Z

    .line 185
    return-void
.end method

.method private setSkin(Ljava/lang/String;)V
    .locals 0
    .param p1, "skin"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkin:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private setSkinTimeout(Ljava/lang/String;)V
    .locals 1
    .param p1, "skinTimeout"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parsePositiveIntOrInvalidValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkinTimeout:I

    .line 240
    return-void
.end method

.method private setSkipDelay(Ljava/lang/String;)V
    .locals 1
    .param p1, "skipDelay"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parsePositiveIntOrInvalidValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkipDelay:I

    .line 163
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mTitle:Ljava/lang/String;

    .line 152
    return-void
.end method

.method private setVPaidEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "isVpaidEnabled"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVPaidEnabled:Z

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parseBooleanWithDefault(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVPaidEnabled:Z

    .line 130
    return-void
.end method

.method private setVastTimeout(Ljava/lang/String;)V
    .locals 1
    .param p1, "vastTimeout"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parsePositiveIntOrInvalidValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVastTimeout:I

    .line 196
    return-void
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parsePositiveIntOrInvalidValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVersion:I

    .line 64
    return-void
.end method

.method private setVideoTimeout(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoTimeout"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parsePositiveIntOrInvalidValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVideoTimeout:I

    .line 207
    return-void
.end method

.method private setVpaidTimeout(Ljava/lang/String;)V
    .locals 1
    .param p1, "vpaidTimeout"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parsePositiveIntOrInvalidValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVpaidTimeout:I

    .line 229
    return-void
.end method

.method private setWrapperMaxCount(Ljava/lang/String;)V
    .locals 1
    .param p1, "wrapperMaxCount"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parsePositiveIntOrInvalidValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperMaxCount:I

    .line 262
    return-void
.end method

.method private setWrapperTimeout(Ljava/lang/String;)V
    .locals 1
    .param p1, "wrapperTimeout"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->parsePositiveIntOrInvalidValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperTimeout:I

    .line 218
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 343
    if-ne p0, p1, :cond_1

    .line 416
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 346
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

    .line 347
    goto :goto_0

    .line 350
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    .line 352
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferEmptyLimit:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferEmptyLimit:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 353
    goto :goto_0

    .line 355
    :cond_4
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferFullTimeout:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferFullTimeout:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 356
    goto :goto_0

    .line 358
    :cond_5
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mFirstBuffTimeout:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mFirstBuffTimeout:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 359
    goto :goto_0

    .line 361
    :cond_6
    iget-boolean v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVPaidEnabled:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVPaidEnabled:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 362
    goto :goto_0

    .line 364
    :cond_7
    iget-boolean v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowSkipTimeLeft:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowSkipTimeLeft:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 365
    goto :goto_0

    .line 367
    :cond_8
    iget-boolean v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowTimeLeft:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowTimeLeft:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 368
    goto :goto_0

    .line 370
    :cond_9
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkinTimeout:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkinTimeout:I

    if-eq v2, v3, :cond_a

    move v0, v1

    .line 371
    goto :goto_0

    .line 373
    :cond_a
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkipDelay:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkipDelay:I

    if-eq v2, v3, :cond_b

    move v0, v1

    .line 374
    goto :goto_0

    .line 376
    :cond_b
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVastTimeout:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVastTimeout:I

    if-eq v2, v3, :cond_c

    move v0, v1

    .line 377
    goto :goto_0

    .line 379
    :cond_c
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVersion:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVersion:I

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 380
    goto :goto_0

    .line 382
    :cond_d
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVideoTimeout:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVideoTimeout:I

    if-eq v2, v3, :cond_e

    move v0, v1

    .line 383
    goto :goto_0

    .line 385
    :cond_e
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVpaidTimeout:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVpaidTimeout:I

    if-eq v2, v3, :cond_f

    move v0, v1

    .line 386
    goto :goto_0

    .line 388
    :cond_f
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperMaxCount:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperMaxCount:I

    if-eq v2, v3, :cond_10

    move v0, v1

    .line 389
    goto :goto_0

    .line 391
    :cond_10
    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperTimeout:I

    iget v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperTimeout:I

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 392
    goto :goto_0

    .line 394
    :cond_11
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move v0, v1

    .line 395
    goto/16 :goto_0

    .line 394
    :cond_13
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    if-nez v2, :cond_12

    .line 397
    :cond_14
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryId:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_15
    move v0, v1

    .line 398
    goto/16 :goto_0

    .line 397
    :cond_16
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryId:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 400
    :cond_17
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryName:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryName:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_18
    move v0, v1

    .line 401
    goto/16 :goto_0

    .line 400
    :cond_19
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryName:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 403
    :cond_1a
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mPartnerId:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mPartnerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mPartnerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1b
    move v0, v1

    .line 404
    goto/16 :goto_0

    .line 403
    :cond_1c
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mPartnerId:Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 406
    :cond_1d
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSessionId:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1e
    move v0, v1

    .line 407
    goto/16 :goto_0

    .line 406
    :cond_1f
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSessionId:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 409
    :cond_20
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkin:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkin:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_21
    move v0, v1

    .line 410
    goto/16 :goto_0

    .line 409
    :cond_22
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkin:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 412
    :cond_23
    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 413
    goto/16 :goto_0

    .line 412
    :cond_24
    iget-object v2, p1, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    return-object v0
.end method

.method public getBufferEmptyLimit()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferEmptyLimit:I

    return v0
.end method

.method public getBufferFullTimeout()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferFullTimeout:I

    return v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstBuffTimeout()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mFirstBuffTimeout:I

    return v0
.end method

.method public getPartnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mPartnerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSkin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkin:Ljava/lang/String;

    return-object v0
.end method

.method public getSkinTimeout()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkinTimeout:I

    return v0
.end method

.method public getSkipDelay()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkipDelay:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVastTimeout()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVastTimeout:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVersion:I

    return v0
.end method

.method public getVideoTimeout()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVideoTimeout:I

    return v0
.end method

.method public getVpaidTimeout()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVpaidTimeout:I

    return v0
.end method

.method public getWrapperMaxCount()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperMaxCount:I

    return v0
.end method

.method public getWrapperTimeout()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperTimeout:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 421
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVersion:I

    .line 422
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mPartnerId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mPartnerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v3

    .line 423
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 424
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 425
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 426
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkin:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    .line 427
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVPaidEnabled:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_5
    add-int/2addr v0, v3

    .line 428
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferEmptyLimit:I

    add-int/2addr v0, v3

    .line 429
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    .line 430
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkipDelay:I

    add-int/2addr v0, v3

    .line 431
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkinTimeout:I

    add-int/2addr v0, v3

    .line 432
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVpaidTimeout:I

    add-int/2addr v0, v3

    .line 433
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperTimeout:I

    add-int/2addr v0, v3

    .line 434
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVideoTimeout:I

    add-int/2addr v0, v3

    .line 435
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVastTimeout:I

    add-int/2addr v0, v3

    .line 436
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowTimeLeft:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_7
    add-int/2addr v0, v3

    .line 437
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowSkipTimeLeft:Z

    if-eqz v3, :cond_9

    :goto_8
    add-int/2addr v0, v2

    .line 438
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferFullTimeout:I

    add-int/2addr v0, v2

    .line 439
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperMaxCount:I

    add-int/2addr v0, v2

    .line 440
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mFirstBuffTimeout:I

    add-int/2addr v0, v2

    .line 441
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 442
    return v0

    :cond_1
    move v0, v1

    .line 422
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 423
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 424
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 425
    goto :goto_3

    :cond_5
    move v0, v1

    .line 426
    goto :goto_4

    :cond_6
    move v0, v1

    .line 427
    goto :goto_5

    :cond_7
    move v0, v1

    .line 429
    goto :goto_6

    :cond_8
    move v0, v1

    .line 436
    goto :goto_7

    :cond_9
    move v2, v1

    .line 437
    goto :goto_8
.end method

.method public isVPaidEnabled()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVPaidEnabled:Z

    return v0
.end method

.method public showSkipTimeLeft()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowSkipTimeLeft:Z

    return v0
.end method

.method public showTimeLeft()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowTimeLeft:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmPartnerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mPartnerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmSessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmCategoryId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmCategoryName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmSkin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmVPaidEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVPaidEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBufferEmptyLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferEmptyLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmSkipDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkipDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmSkinTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkinTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmVpaidTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVpaidTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmWrapperTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmVideoTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVideoTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmVastTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVastTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmShowTimeLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowTimeLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmShowSkipTimeLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowSkipTimeLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBufferFullTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferFullTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmWrapperMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmFirstBuffTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mFirstBuffTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBlocks.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    .line 338
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 454
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mPartnerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVPaidEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 461
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferEmptyLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkipDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mSkinTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVpaidTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVideoTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mVastTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowTimeLeft:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 470
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mShowSkipTimeLeft:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 471
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBufferFullTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mWrapperMaxCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mFirstBuffTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;->mBlocks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 475
    return-void

    :cond_0
    move v0, v2

    .line 460
    goto :goto_0

    :cond_1
    move v0, v2

    .line 469
    goto :goto_1

    :cond_2
    move v1, v2

    .line 470
    goto :goto_2
.end method
