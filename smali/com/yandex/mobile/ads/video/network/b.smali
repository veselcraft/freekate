.class public Lcom/yandex/mobile/ads/video/network/b;
.super Lcom/yandex/mobile/ads/video/network/c;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/video/network/c;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lcom/yandex/mobile/ads/video/network/b;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    const-string v0, "Failed to parse response"

    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/video/network/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iput-object p2, p0, Lcom/yandex/mobile/ads/video/network/b;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/network/b;->b:Ljava/lang/String;

    return-object v0
.end method
