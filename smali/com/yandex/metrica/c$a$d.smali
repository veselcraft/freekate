.class public final Lcom/yandex/metrica/c$a$d;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public b:Lcom/yandex/metrica/c$a$b;

.field public c:[Lcom/yandex/metrica/c$a$g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 516
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$d;->d()Lcom/yandex/metrica/c$a$d;

    .line 517
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d;->b:Lcom/yandex/metrica/c$a$b;

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yandex/metrica/c$a$d;->b:Lcom/yandex/metrica/c$a$b;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d;->c:[Lcom/yandex/metrica/c$a$g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/metrica/c$a$d;->c:[Lcom/yandex/metrica/c$a$g;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 533
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d;->c:[Lcom/yandex/metrica/c$a$g;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 534
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d;->c:[Lcom/yandex/metrica/c$a$g;

    aget-object v1, v1, v0

    .line 535
    if-eqz v1, :cond_1

    .line 536
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 533
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_2
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 541
    return-void
.end method

.method protected c()I
    .locals 5

    .prologue
    .line 545
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 546
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d;->b:Lcom/yandex/metrica/c$a$b;

    if-eqz v1, :cond_0

    .line 547
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yandex/metrica/c$a$d;->b:Lcom/yandex/metrica/c$a$b;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d;->c:[Lcom/yandex/metrica/c$a$g;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yandex/metrica/c$a$d;->c:[Lcom/yandex/metrica/c$a$g;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 551
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d;->c:[Lcom/yandex/metrica/c$a$g;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 552
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d;->c:[Lcom/yandex/metrica/c$a$g;

    aget-object v2, v2, v0

    .line 553
    if-eqz v2, :cond_1

    .line 554
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v2

    add-int/2addr v1, v2

    .line 551
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 559
    :cond_3
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$d;
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$d;->b:Lcom/yandex/metrica/c$a$b;

    .line 521
    invoke-static {}, Lcom/yandex/metrica/c$a$g;->d()[Lcom/yandex/metrica/c$a$g;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$d;->c:[Lcom/yandex/metrica/c$a$g;

    .line 522
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$d;->a:I

    .line 523
    return-object p0
.end method
