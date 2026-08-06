.class public final Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;",
            ">;"
        }
    .end annotation
.end field

.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# instance fields
.field private final e:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

.field private final f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private final g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private final h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private final i:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private final j:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private final k:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private final l:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private final m:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

.field private final n:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

.field private final o:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

.field private final p:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "#7f7f7f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->a:I

    .line 37
    const-string v0, "#ffdd41"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->b:I

    .line 38
    const-string v0, "#ffd200"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->c:I

    .line 46
    const-string v0, "#f4c900"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->d:I

    .line 573
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    .line 560
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 561
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 562
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 563
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 564
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 565
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 566
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 567
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->m:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    .line 568
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->n:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    .line 569
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->o:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    .line 570
    const-class v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->p:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    .line 571
    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    .line 75
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->b(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 76
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->c(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 77
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->d(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 78
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->e(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 79
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->f(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 80
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->g(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 81
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->h(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 83
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->i(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->n:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    .line 84
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->j(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->m:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    .line 86
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->k(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->o:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    .line 87
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->l(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->p:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;-><init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 489
    if-ne p0, p1, :cond_1

    .line 516
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 490
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

    .line 492
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    .line 494
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 495
    goto :goto_0

    .line 494
    :cond_5
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    if-nez v2, :cond_4

    .line 496
    :cond_6
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 497
    goto :goto_0

    .line 496
    :cond_8
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-nez v2, :cond_7

    .line 498
    :cond_9
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 499
    goto :goto_0

    .line 498
    :cond_b
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-nez v2, :cond_a

    .line 500
    :cond_c
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    .line 501
    goto :goto_0

    .line 500
    :cond_e
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-nez v2, :cond_d

    .line 502
    :cond_f
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    .line 503
    goto :goto_0

    .line 502
    :cond_11
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-nez v2, :cond_10

    .line 504
    :cond_12
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    .line 505
    goto/16 :goto_0

    .line 504
    :cond_14
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-nez v2, :cond_13

    .line 506
    :cond_15
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    move v0, v1

    .line 507
    goto/16 :goto_0

    .line 506
    :cond_17
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-nez v2, :cond_16

    .line 508
    :cond_18
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v0, v1

    .line 509
    goto/16 :goto_0

    .line 508
    :cond_1a
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-nez v2, :cond_19

    .line 510
    :cond_1b
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->n:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->n:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->n:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    move v0, v1

    .line 511
    goto/16 :goto_0

    .line 510
    :cond_1d
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->n:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    if-nez v2, :cond_1c

    .line 512
    :cond_1e
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->m:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->m:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->m:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1f
    move v0, v1

    .line 513
    goto/16 :goto_0

    .line 512
    :cond_20
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->m:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    if-nez v2, :cond_1f

    .line 514
    :cond_21
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->o:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->o:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->o:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v0, v1

    .line 515
    goto/16 :goto_0

    .line 514
    :cond_23
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->o:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    if-nez v2, :cond_22

    .line 516
    :cond_24
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->p:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->p:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->p:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_25
    move v0, v1

    goto/16 :goto_0

    :cond_26
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->p:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    if-nez v2, :cond_25

    goto/16 :goto_0
.end method

.method public getAgeAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method public getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    return-object v0
.end method

.method public getBodyAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method public getCallToActionAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->o:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    return-object v0
.end method

.method public getDomainAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method public getFaviconAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->m:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    return-object v0
.end method

.method public getImageAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->n:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    return-object v0
.end method

.method public getRatingAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->p:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    return-object v0
.end method

.method public getReviewCountAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method public getSponsoredAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method public getTitleAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method public getWarningAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 522
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->hashCode()I

    move-result v0

    .line 523
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 524
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 525
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 526
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 527
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 528
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 529
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 530
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->n:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->n:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 531
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->m:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->m:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 532
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->o:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->o:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 533
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->p:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->p:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 534
    return v0

    :cond_1
    move v0, v1

    .line 522
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 523
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 524
    goto :goto_2

    :cond_4
    move v0, v1

    .line 525
    goto :goto_3

    :cond_5
    move v0, v1

    .line 526
    goto :goto_4

    :cond_6
    move v0, v1

    .line 527
    goto :goto_5

    :cond_7
    move v0, v1

    .line 528
    goto :goto_6

    :cond_8
    move v0, v1

    .line 529
    goto :goto_7

    :cond_9
    move v0, v1

    .line 530
    goto :goto_8

    :cond_a
    move v0, v1

    .line 531
    goto :goto_9

    :cond_b
    move v0, v1

    .line 532
    goto :goto_a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 545
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 546
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 547
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 548
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 549
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 550
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 551
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 552
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->m:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 553
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->n:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 554
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->o:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 555
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->p:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 556
    return-void
.end method
