.class public Lcom/yandex/mobile/ads/video/VideoAdError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/video/VideoAdError$Code;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/video/VideoAdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorDescription"    # Ljava/lang/String;
    .param p3, "rawResponse"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/yandex/mobile/ads/video/VideoAdError;->a:I

    .line 56
    iput-object p2, p0, Lcom/yandex/mobile/ads/video/VideoAdError;->b:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/yandex/mobile/ads/video/VideoAdError;->c:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static createConnectionError(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdError;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lcom/yandex/mobile/ads/video/VideoAdError;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/yandex/mobile/ads/video/VideoAdError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createInternalError(Lcom/yandex/mobile/ads/video/network/b;)Lcom/yandex/mobile/ads/video/VideoAdError;
    .locals 4
    .param p0, "parseError"    # Lcom/yandex/mobile/ads/video/network/b;

    .prologue
    .line 82
    new-instance v0, Lcom/yandex/mobile/ads/video/VideoAdError;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error. Failed to parse response\n "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/video/network/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/video/VideoAdError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createInternalError(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdError;
    .locals 2
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Lcom/yandex/mobile/ads/video/VideoAdError;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/yandex/mobile/ads/video/VideoAdError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static final createNoAdError(Lcom/yandex/mobile/ads/video/network/a;)Lcom/yandex/mobile/ads/video/VideoAdError;
    .locals 4
    .param p0, "error"    # Lcom/yandex/mobile/ads/video/network/a;

    .prologue
    .line 96
    new-instance v0, Lcom/yandex/mobile/ads/video/VideoAdError;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/video/network/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/video/network/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/video/VideoAdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createRetriableError(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdError;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Lcom/yandex/mobile/ads/video/VideoAdError;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/yandex/mobile/ads/video/VideoAdError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/yandex/mobile/ads/video/VideoAdError;->a:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRawResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdError;->c:Ljava/lang/String;

    return-object v0
.end method
