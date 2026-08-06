.class public Lcom/yandex/mobile/ads/f;
.super Lcom/yandex/mobile/ads/network/core/error/h;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x7df6f25f9e2c564eL


# instance fields
.field private final b:I


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/network/core/o;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/network/core/error/h;-><init>(Lcom/yandex/mobile/ads/network/core/o;)V

    .line 27
    iput p2, p0, Lcom/yandex/mobile/ads/f;->b:I

    .line 28
    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/f;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 35
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/yandex/mobile/ads/network/core/o;->a:I

    move v3, v0

    .line 39
    :goto_0
    const/16 v0, 0xcc

    if-ne v0, v3, :cond_1

    .line 40
    new-instance v0, Lcom/yandex/mobile/ads/f;

    const/4 v4, 0x6

    invoke-direct {v0, p0, v4}, Lcom/yandex/mobile/ads/f;-><init>(Lcom/yandex/mobile/ads/network/core/o;I)V

    .line 52
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 54
    return-object v0

    :cond_0
    move v3, v4

    .line 35
    goto :goto_0

    .line 41
    :cond_1
    const/16 v0, 0x193

    if-ne v0, v3, :cond_2

    .line 42
    new-instance v0, Lcom/yandex/mobile/ads/f;

    const/16 v4, 0xa

    invoke-direct {v0, p0, v4}, Lcom/yandex/mobile/ads/f;-><init>(Lcom/yandex/mobile/ads/network/core/o;I)V

    goto :goto_1

    .line 43
    :cond_2
    const/16 v0, 0x194

    if-ne v0, v3, :cond_3

    .line 44
    new-instance v0, Lcom/yandex/mobile/ads/f;

    const/4 v4, 0x4

    invoke-direct {v0, p0, v4}, Lcom/yandex/mobile/ads/f;-><init>(Lcom/yandex/mobile/ads/network/core/o;I)V

    goto :goto_1

    .line 45
    :cond_3
    const/16 v0, 0x1f4

    if-gt v0, v3, :cond_4

    const/16 v0, 0x258

    if-ge v3, v0, :cond_4

    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 46
    new-instance v0, Lcom/yandex/mobile/ads/f;

    const/16 v4, 0x9

    invoke-direct {v0, p0, v4}, Lcom/yandex/mobile/ads/f;-><init>(Lcom/yandex/mobile/ads/network/core/o;I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 45
    goto :goto_2

    .line 47
    :cond_5
    if-ne v4, v3, :cond_6

    .line 48
    new-instance v0, Lcom/yandex/mobile/ads/f;

    const/4 v4, 0x7

    invoke-direct {v0, p0, v4}, Lcom/yandex/mobile/ads/f;-><init>(Lcom/yandex/mobile/ads/network/core/o;I)V

    goto :goto_1

    .line 50
    :cond_6
    new-instance v0, Lcom/yandex/mobile/ads/f;

    const/16 v4, 0x8

    invoke-direct {v0, p0, v4}, Lcom/yandex/mobile/ads/f;-><init>(Lcom/yandex/mobile/ads/network/core/o;I)V

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/yandex/mobile/ads/f;->b:I

    return v0
.end method
