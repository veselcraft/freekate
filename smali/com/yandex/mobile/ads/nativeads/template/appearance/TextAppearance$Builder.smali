.class public final Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->a:I

    return v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->b:F

    return v0
.end method

.method static synthetic c(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->d:I

    return v0
.end method


# virtual methods
.method public build()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;-><init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;B)V

    return-object v0
.end method

.method public setFontFamilyName(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;
    .locals 0
    .param p1, "fontFamilyName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->c:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setFontStyle(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;
    .locals 0
    .param p1, "fontStyle"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->d:I

    .line 99
    return-object p0
.end method

.method public setTextColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->a:I

    .line 66
    return-object p0
.end method

.method public setTextSize(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 76
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->b:F

    .line 77
    return-object p0
.end method
