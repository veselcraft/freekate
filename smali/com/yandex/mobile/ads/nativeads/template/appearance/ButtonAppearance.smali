.class public final Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:F

.field private final c:I

.field private final d:I

.field private final e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->a:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->b:F

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->c:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->d:I

    .line 206
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 207
    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->a:I

    .line 28
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->b(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)F

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->b:F

    .line 29
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->c(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->c:I

    .line 30
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->d(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->d:I

    .line 31
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->e(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;-><init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)V

    return-void
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

    .line 164
    if-ne p0, p1, :cond_1

    .line 173
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 165
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

    .line 167
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    .line 169
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->a:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 170
    :cond_4
    iget v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->b:F

    iget v3, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->b:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 171
    :cond_5
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->c:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->c:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 172
    :cond_6
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->d:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->d:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 173
    :cond_7
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-nez v2, :cond_8

    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->a:I

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->b:F

    return v0
.end method

.method public getNormalColor()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->c:I

    return v0
.end method

.method public getPressedColor()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->d:I

    return v0
.end method

.method public getTextAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 179
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->a:I

    .line 180
    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->b:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->c:I

    add-int/2addr v0, v2

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->d:I

    add-int/2addr v0, v2

    .line 183
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 184
    return v0

    :cond_1
    move v0, v1

    .line 180
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 194
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 196
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 199
    return-void
.end method
