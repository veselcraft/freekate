.class public final Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->a:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->b:I

    .line 126
    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->a:I

    .line 25
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;->b(Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->b:I

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;-><init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-ne p0, p1, :cond_1

    .line 101
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 96
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

    .line 98
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    .line 100
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->a:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 101
    :cond_4
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->b:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getBackgroundStarColor()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->a:I

    return v0
.end method

.method public getProgressStarColor()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->a:I

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->b:I

    add-int/2addr v0, v1

    .line 109
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 119
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return-void
.end method
