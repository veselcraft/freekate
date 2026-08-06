.class public final Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:F

.field private final b:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->a:F

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->b:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    .line 101
    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;->values()[Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;F)V
    .locals 0
    .param p1, "sizeConstraintType"    # Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;
    .param p2, "value"    # F

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->b:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    .line 46
    iput p2, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->a:F

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    if-ne p0, p1, :cond_1

    .line 75
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 70
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

    .line 72
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    .line 74
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->a:F

    iget v3, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->a:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 75
    :cond_4
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->b:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->b:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getSizeConstraintType()Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->b:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->a:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 81
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->a:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 82
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->b:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->b:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 83
    return v0

    :cond_1
    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 94
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->b:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->b:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
