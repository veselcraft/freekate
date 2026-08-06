.class public final Lcom/yandex/metrica/c$a$f$b$a$a;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$f$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 777
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$f$b$a$a;->d()Lcom/yandex/metrica/c$a$f$b$a$a;

    .line 778
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
    .line 792
    iget-object v0, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 795
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->c:I

    if-eqz v0, :cond_1

    .line 796
    const/4 v0, 0x2

    iget v1, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 798
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->d:I

    if-eqz v0, :cond_2

    .line 799
    const/4 v0, 0x3

    iget v1, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 801
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->e:I

    if-eqz v0, :cond_3

    .line 802
    const/4 v0, 0x5

    iget v1, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 804
    :cond_3
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 805
    return-void
.end method

.method protected c()I
    .locals 3

    .prologue
    .line 809
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 810
    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 811
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 814
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->c:I

    if-eqz v1, :cond_1

    .line 815
    const/4 v1, 0x2

    iget v2, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->c:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 818
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->d:I

    if-eqz v1, :cond_2

    .line 819
    const/4 v1, 0x3

    iget v2, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->d:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 822
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->e:I

    if-eqz v1, :cond_3

    .line 823
    const/4 v1, 0x5

    iget v2, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->e:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 826
    :cond_3
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$f$b$a$a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 781
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->b:Ljava/lang/String;

    .line 782
    iput v1, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->c:I

    .line 783
    iput v1, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->d:I

    .line 784
    iput v1, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->e:I

    .line 785
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$f$b$a$a;->a:I

    .line 786
    return-object p0
.end method
