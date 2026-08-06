.class public Lcom/yandex/metrica/impl/ob/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/Random;

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/16 v0, 0x1f

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 18
    iput p1, p0, Lcom/yandex/metrica/impl/ob/bx;->a:I

    .line 22
    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->c:Ljava/util/Random;

    .line 23
    return-void

    .line 20
    :cond_0
    iput v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:I

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/yandex/metrica/impl/ob/bx;->b:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/bx;->a:I

    if-ge v0, v1, :cond_0

    .line 27
    iget v0, p0, Lcom/yandex/metrica/impl/ob/bx;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/bx;->b:I

    .line 28
    const/4 v0, 0x1

    iget v1, p0, Lcom/yandex/metrica/impl/ob/bx;->b:I

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/bx;->d:I

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->c:Ljava/util/Random;

    iget v1, p0, Lcom/yandex/metrica/impl/ob/bx;->d:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method
