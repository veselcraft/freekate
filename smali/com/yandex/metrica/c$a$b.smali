.class public final Lcom/yandex/metrica/c$a$b;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 417
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$b;->d()Lcom/yandex/metrica/c$a$b;

    .line 418
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->b:I

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x1

    iget v1, p0, Lcom/yandex/metrica/c$a$b;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 433
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/c$a$b;->c:I

    if-eqz v0, :cond_1

    .line 434
    const/4 v0, 0x2

    iget v1, p0, Lcom/yandex/metrica/c$a$b;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->c(II)V

    .line 436
    :cond_1
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 437
    return-void
.end method

.method protected c()I
    .locals 3

    .prologue
    .line 441
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 442
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->b:I

    if-eqz v1, :cond_0

    .line 443
    const/4 v1, 0x1

    iget v2, p0, Lcom/yandex/metrica/c$a$b;->b:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 446
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/c$a$b;->c:I

    if-eqz v1, :cond_1

    .line 447
    const/4 v1, 0x2

    iget v2, p0, Lcom/yandex/metrica/c$a$b;->c:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    :cond_1
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$b;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 421
    iput v0, p0, Lcom/yandex/metrica/c$a$b;->b:I

    .line 422
    iput v0, p0, Lcom/yandex/metrica/c$a$b;->c:I

    .line 423
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$b;->a:I

    .line 424
    return-object p0
.end method
