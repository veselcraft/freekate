.class public final Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

.field private final e:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->a:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->b:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->c:F

    .line 213
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->d:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    .line 214
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    .line 215
    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->a:I

    .line 30
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->b(Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->b:I

    .line 31
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->c(Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;)F

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->c:F

    .line 32
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->d(Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->d:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    .line 33
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->e(Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;-><init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    if-ne p0, p1, :cond_1

    .line 182
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 170
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

    .line 172
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    .line 174
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->a:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 175
    :cond_4
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->b:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->b:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 176
    :cond_5
    iget v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->c:F

    iget v3, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->c:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 177
    :cond_6
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->d:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->d:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->d:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 178
    goto :goto_0

    .line 177
    :cond_8
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->d:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    if-nez v2, :cond_7

    .line 179
    :cond_9
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 180
    goto :goto_0

    .line 179
    :cond_a
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->a:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->b:I

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->c:F

    return v0
.end method

.method public getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->d:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    return-object v0
.end method

.method public getImageMargins()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 187
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->a:I

    .line 188
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->b:I

    add-int/2addr v0, v2

    .line 189
    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->c:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->c:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 190
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->d:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->d:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 191
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 192
    return v0

    :cond_1
    move v0, v1

    .line 189
    goto :goto_0

    :cond_2
    move v0, v1

    .line 190
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 202
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 205
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->d:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 206
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 207
    return-void
.end method
