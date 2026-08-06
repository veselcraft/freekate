.class public final Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:F

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->a:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->b:F

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->c:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->d:I

    .line 180
    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->a:I

    .line 27
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->b(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;)F

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->b:F

    .line 28
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->c(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->c:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->d(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->d:I

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;-><init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    if-ne p0, p1, :cond_1

    .line 149
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 142
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

    .line 144
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 146
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->a:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 147
    :cond_4
    iget v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->b:F

    iget v3, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->b:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 148
    :cond_5
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->d:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->d:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 149
    :cond_6
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_0
.end method

.method public getFontFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStyle()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->d:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->a:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->b:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 155
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->a:I

    .line 156
    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->b:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 158
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->d:I

    add-int/2addr v0, v1

    .line 159
    return v0

    :cond_1
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 169
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 171
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return-void
.end method
