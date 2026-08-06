.class Lcom/yandex/mobile/ads/nativeads/template/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/template/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/template/a$d;->a:I

    .line 48
    iput p2, p0, Lcom/yandex/mobile/ads/nativeads/template/a$d;->b:I

    .line 49
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/a$d;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/a$d;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    if-ne p0, p1, :cond_1

    .line 67
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 62
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

    .line 64
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/template/a$d;

    .line 66
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/a$d;->a:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/template/a$d;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 67
    :cond_4
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/a$d;->b:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/template/a$d;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/a$d;->a:I

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/template/a$d;->b:I

    add-int/2addr v0, v1

    .line 75
    return v0
.end method
