.class public final Lcom/yandex/mobile/ads/AdSize;
.super Lcom/yandex/mobile/ads/v;
.source "SourceFile"


# static fields
.field public static final BANNER_240x400:Lcom/yandex/mobile/ads/AdSize;

.field public static final BANNER_300x250:Lcom/yandex/mobile/ads/AdSize;

.field public static final BANNER_300x300:Lcom/yandex/mobile/ads/AdSize;

.field public static final BANNER_320x100:Lcom/yandex/mobile/ads/AdSize;

.field public static final BANNER_320x50:Lcom/yandex/mobile/ads/AdSize;

.field public static final BANNER_400x240:Lcom/yandex/mobile/ads/AdSize;

.field public static final BANNER_728x90:Lcom/yandex/mobile/ads/AdSize;

.field static final a:Lcom/yandex/mobile/ads/AdSize;

.field private static final serialVersionUID:J = 0x1a96388d8f446837L


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x190

    const/16 v4, 0x140

    const/16 v3, 0xf0

    const/16 v2, 0x12c

    .line 22
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    invoke-direct {v0, v3, v5}, Lcom/yandex/mobile/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/yandex/mobile/ads/AdSize;->BANNER_240x400:Lcom/yandex/mobile/ads/AdSize;

    .line 27
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    const/16 v1, 0xfa

    invoke-direct {v0, v2, v1}, Lcom/yandex/mobile/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/yandex/mobile/ads/AdSize;->BANNER_300x250:Lcom/yandex/mobile/ads/AdSize;

    .line 32
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    invoke-direct {v0, v2, v2}, Lcom/yandex/mobile/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/yandex/mobile/ads/AdSize;->BANNER_300x300:Lcom/yandex/mobile/ads/AdSize;

    .line 37
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    const/16 v1, 0x32

    invoke-direct {v0, v4, v1}, Lcom/yandex/mobile/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/yandex/mobile/ads/AdSize;->BANNER_320x50:Lcom/yandex/mobile/ads/AdSize;

    .line 42
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    const/16 v1, 0x64

    invoke-direct {v0, v4, v1}, Lcom/yandex/mobile/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/yandex/mobile/ads/AdSize;->BANNER_320x100:Lcom/yandex/mobile/ads/AdSize;

    .line 47
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    invoke-direct {v0, v5, v3}, Lcom/yandex/mobile/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/yandex/mobile/ads/AdSize;->BANNER_400x240:Lcom/yandex/mobile/ads/AdSize;

    .line 52
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/yandex/mobile/ads/AdSize;->BANNER_728x90:Lcom/yandex/mobile/ads/AdSize;

    .line 57
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/yandex/mobile/ads/AdSize;->a:Lcom/yandex/mobile/ads/AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 67
    sget-object v0, Lcom/yandex/mobile/ads/v$a;->a:Lcom/yandex/mobile/ads/v$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/AdSize;-><init>(IILcom/yandex/mobile/ads/v$a;)V

    .line 68
    return-void
.end method

.method constructor <init>(IILcom/yandex/mobile/ads/v$a;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "adSizeType"    # Lcom/yandex/mobile/ads/v$a;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/v;-><init>(IILcom/yandex/mobile/ads/v$a;)V

    .line 80
    return-void
.end method

.method public static flexibleSize()Lcom/yandex/mobile/ads/AdSize;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    const/4 v1, -0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/yandex/mobile/ads/v$a;->c:Lcom/yandex/mobile/ads/v$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/AdSize;-><init>(IILcom/yandex/mobile/ads/v$a;)V

    return-object v0
.end method

.method public static flexibleSize(I)Lcom/yandex/mobile/ads/AdSize;
    .locals 3
    .param p0, "width"    # I

    .prologue
    .line 100
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    const/4 v1, 0x0

    sget-object v2, Lcom/yandex/mobile/ads/v$a;->b:Lcom/yandex/mobile/ads/v$a;

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/AdSize;-><init>(IILcom/yandex/mobile/ads/v$a;)V

    return-object v0
.end method

.method public static flexibleSize(II)Lcom/yandex/mobile/ads/AdSize;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 112
    new-instance v0, Lcom/yandex/mobile/ads/AdSize;

    sget-object v1, Lcom/yandex/mobile/ads/v$a;->b:Lcom/yandex/mobile/ads/v$a;

    invoke-direct {v0, p0, p1, v1}, Lcom/yandex/mobile/ads/AdSize;-><init>(IILcom/yandex/mobile/ads/v$a;)V

    return-object v0
.end method
