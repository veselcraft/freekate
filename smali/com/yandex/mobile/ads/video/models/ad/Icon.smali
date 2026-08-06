.class public Lcom/yandex/mobile/ads/video/models/ad/Icon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;,
        Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;,
        Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/Icon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApiFramework:Ljava/lang/String;

.field private mDuration:Ljava/lang/Long;

.field private mHeight:Ljava/lang/Integer;

.field private mHorizontalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

.field private mOffset:Ljava/lang/Long;

.field private mProgram:Ljava/lang/String;

.field private mResourceType:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

.field private mResourceUrl:Ljava/lang/String;

.field private mVerticalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

.field private mWidth:Ljava/lang/Integer;

.field private mX:Ljava/lang/Integer;

.field private mY:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/video/models/ad/Icon$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mResourceUrl:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 240
    if-ne v0, v3, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mResourceType:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mProgram:Ljava/lang/String;

    .line 242
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mWidth:Ljava/lang/Integer;

    .line 243
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mHeight:Ljava/lang/Integer;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    if-ne v0, v3, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mHorizontalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    if-ne v0, v3, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mVerticalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mApiFramework:Ljava/lang/String;

    .line 249
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mOffset:Ljava/lang/Long;

    .line 250
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mDuration:Ljava/lang/Long;

    .line 251
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mX:Ljava/lang/Integer;

    .line 252
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mY:Ljava/lang/Integer;

    .line 253
    return-void

    .line 240
    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->values()[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    move-result-object v2

    aget-object v0, v2, v0

    goto :goto_0

    .line 245
    :cond_1
    invoke-static {}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->values()[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    move-result-object v2

    aget-object v0, v2, v0

    goto :goto_1

    .line 247
    :cond_2
    invoke-static {}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->values()[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yandex/mobile/ads/video/models/ad/Icon$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/yandex/mobile/ads/video/models/ad/Icon$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/video/models/ad/Icon;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public getApiFramework()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mApiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mDuration:Ljava/lang/Long;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHorizontalPosition()Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mHorizontalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    return-object v0
.end method

.method public getOffset()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mOffset:Ljava/lang/Long;

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mProgram:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mResourceType:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    return-object v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mResourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalPosition()Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mVerticalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getXPosition()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mX:Ljava/lang/Integer;

    return-object v0
.end method

.method public getYPosition()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mY:Ljava/lang/Integer;

    return-object v0
.end method

.method public setApiFramework(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiFramework"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mApiFramework:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 1
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/core/a;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mDuration:Ljava/lang/Long;

    .line 212
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 1
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/core/a;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mHeight:Ljava/lang/Integer;

    .line 152
    return-void
.end method

.method public setHorizontalPosition(Ljava/lang/String;)V
    .locals 2
    .param p1, "horizontalPosition"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->access$100(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mHorizontalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    .line 160
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mHorizontalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->ICON_HORIZONTAL_POSITION_LEFT_OFFSET:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    if-ne v0, v1, :cond_0

    .line 161
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/core/a;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mX:Ljava/lang/Integer;

    .line 163
    :cond_0
    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 1
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/core/a;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mOffset:Ljava/lang/Long;

    .line 201
    return-void
.end method

.method public setProgram(Ljava/lang/String;)V
    .locals 0
    .param p1, "program"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mProgram:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setResourceType(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->access$000(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mResourceType:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    .line 128
    return-void
.end method

.method public setResourceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceUrl"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mResourceUrl:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setVerticalPosition(Ljava/lang/String;)V
    .locals 2
    .param p1, "verticalPosition"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->access$200(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mVerticalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    .line 171
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mVerticalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->ICON_VERTICAL_POSITION_TOP_OFFSET:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    if-ne v0, v1, :cond_0

    .line 172
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/core/a;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mY:Ljava/lang/Integer;

    .line 174
    :cond_0
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/core/a;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mWidth:Ljava/lang/Integer;

    .line 144
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, -0x1

    .line 223
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mResourceType:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mProgram:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mWidth:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mHeight:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mHorizontalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mVerticalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mApiFramework:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mOffset:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mDuration:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mX:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mY:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 235
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mResourceType:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->ordinal()I

    move-result v0

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mHorizontalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->ordinal()I

    move-result v0

    goto :goto_1

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon;->mVerticalPosition:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->ordinal()I

    move-result v1

    goto :goto_2
.end method
