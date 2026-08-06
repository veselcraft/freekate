.class Lcom/yandex/mobile/ads/utils/bitmap/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/utils/bitmap/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->a:I

    .line 85
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->b:I

    .line 86
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->c:I

    .line 87
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->d:I

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->a:I

    return v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->b:I

    return v0
.end method

.method static synthetic c(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->c:I

    return v0
.end method

.method static synthetic d(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->d:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 100
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 93
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

    .line 95
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/utils/bitmap/e$a;

    .line 97
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->a:I

    iget v3, p1, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 98
    :cond_4
    iget v2, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->b:I

    iget v3, p1, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->b:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 99
    :cond_5
    iget v2, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->c:I

    iget v3, p1, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->c:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 100
    :cond_6
    iget v2, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->d:I

    iget v3, p1, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->d:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->a:I

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->b:I

    add-int/2addr v0, v1

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->c:I

    add-int/2addr v0, v1

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->d:I

    add-int/2addr v0, v1

    .line 110
    return v0
.end method
