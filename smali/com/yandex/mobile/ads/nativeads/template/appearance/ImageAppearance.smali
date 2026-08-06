.class public final Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->a:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    .line 100
    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->a:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;-><init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    if-ne p0, p1, :cond_1

    .line 79
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 75
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

    .line 77
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    .line 79
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->a:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->a:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->a:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->a:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public getWidthConstraint()Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->a:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->a:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->a:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->a:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    return-void
.end method
