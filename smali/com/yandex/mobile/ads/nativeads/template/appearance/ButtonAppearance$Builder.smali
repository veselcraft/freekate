.class public final Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:I

.field private d:I

.field private e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->a:I

    return v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->b:F

    return v0
.end method

.method static synthetic c(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->c:I

    return v0
.end method

.method static synthetic d(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->d:I

    return v0
.end method

.method static synthetic e(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;-><init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;B)V

    return-object v0
.end method

.method public setBorderColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;
    .locals 0
    .param p1, "borderColor"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->a:I

    .line 69
    return-object p0
.end method

.method public setBorderWidth(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;
    .locals 0
    .param p1, "borderWidth"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->b:F

    .line 80
    return-object p0
.end method

.method public setNormalColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;
    .locals 0
    .param p1, "normalColor"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->c:I

    .line 91
    return-object p0
.end method

.method public setPressedColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;
    .locals 0
    .param p1, "pressedColor"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->d:I

    .line 102
    return-object p0
.end method

.method public setTextAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;
    .locals 0
    .param p1, "textAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 113
    return-object p0
.end method
