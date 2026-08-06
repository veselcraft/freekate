.class public Lcom/yandex/metrica/impl/ob/dt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dt;-><init>(IIF)V

    .line 33
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/yandex/metrica/impl/ob/dt;->a:I

    .line 43
    iput p2, p0, Lcom/yandex/metrica/impl/ob/dt;->c:I

    .line 44
    iput p3, p0, Lcom/yandex/metrica/impl/ob/dt;->d:F

    .line 45
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/yandex/metrica/impl/ob/dt;->a:I

    return v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/do;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation

    .prologue
    .line 60
    iget v0, p0, Lcom/yandex/metrica/impl/ob/dt;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/dt;->b:I

    .line 61
    iget v0, p0, Lcom/yandex/metrica/impl/ob/dt;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yandex/metrica/impl/ob/dt;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yandex/metrica/impl/ob/dt;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/dt;->a:I

    .line 62
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dt;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    throw p1

    .line 65
    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/yandex/metrica/impl/ob/dt;->b:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/dt;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
