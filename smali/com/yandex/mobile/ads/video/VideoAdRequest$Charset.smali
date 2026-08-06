.class public final enum Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/video/VideoAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Charset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CP_1251:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

.field public static final enum KOI_8R:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

.field public static final enum KOI_8U:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

.field public static final enum UTF_8:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

.field private static final synthetic b:[Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    new-instance v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    const-string v1, "UTF_8"

    const-string v2, "utf8"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->UTF_8:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    .line 272
    new-instance v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    const-string v1, "CP_1251"

    const-string v2, "cp1251"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->CP_1251:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    .line 273
    new-instance v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    const-string v1, "KOI_8R"

    const-string v2, "koi8r"

    invoke-direct {v0, v1, v5, v2}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->KOI_8R:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    .line 274
    new-instance v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    const-string v1, "KOI_8U"

    const-string v2, "koi8u"

    invoke-direct {v0, v1, v6, v2}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->KOI_8U:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    .line 270
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    sget-object v1, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->UTF_8:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->CP_1251:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->KOI_8R:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->KOI_8U:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->b:[Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 279
    iput-object p3, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->a:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 270
    const-class v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->b:[Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->a:Ljava/lang/String;

    return-object v0
.end method
