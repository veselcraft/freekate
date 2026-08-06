.class public final Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;
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
            "Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "right"    # F

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->a:F

    .line 30
    iput p2, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->b:F

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->a:F

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->b:F

    .line 89
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 64
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 59
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

    .line 61
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    .line 63
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->a:F

    iget v3, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->a:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 64
    :cond_4
    iget v2, p1, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->b:F

    iget v3, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->b:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->a:F

    return v0
.end method

.method public getRight()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->b:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 70
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->a:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 71
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->b:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 72
    return v0

    :cond_1
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 83
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    return-void
.end method
