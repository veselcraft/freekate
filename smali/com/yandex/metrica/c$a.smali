.class public final Lcom/yandex/metrica/c$a;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/c$a$c;,
        Lcom/yandex/metrica/c$a$f;,
        Lcom/yandex/metrica/c$a$a;,
        Lcom/yandex/metrica/c$a$d;,
        Lcom/yandex/metrica/c$a$b;,
        Lcom/yandex/metrica/c$a$g;,
        Lcom/yandex/metrica/c$a$e;
    }
.end annotation


# instance fields
.field public b:Lcom/yandex/metrica/c$b;

.field public c:[Lcom/yandex/metrica/c$a$f;

.field public d:I

.field public e:[Lcom/yandex/metrica/c$a$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1984
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 1985
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a;->d()Lcom/yandex/metrica/c$a;

    .line 1986
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2000
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->b:Lcom/yandex/metrica/c$b;

    if-eqz v0, :cond_0

    .line 2001
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/yandex/metrica/c$a;->b:Lcom/yandex/metrica/c$b;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$f;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 2004
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$f;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2005
    iget-object v2, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$f;

    aget-object v2, v2, v0

    .line 2006
    if-eqz v2, :cond_1

    .line 2007
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 2004
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2011
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/c$a;->d:I

    if-eqz v0, :cond_3

    .line 2012
    const/4 v0, 0x6

    iget v2, p0, Lcom/yandex/metrica/c$a;->d:I

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 2014
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 2015
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 2016
    iget-object v0, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    aget-object v0, v0, v1

    .line 2017
    if-eqz v0, :cond_4

    .line 2018
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 2015
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2022
    :cond_5
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 2023
    return-void
.end method

.method protected c()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2027
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 2028
    iget-object v2, p0, Lcom/yandex/metrica/c$a;->b:Lcom/yandex/metrica/c$b;

    if-eqz v2, :cond_0

    .line 2029
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yandex/metrica/c$a;->b:Lcom/yandex/metrica/c$b;

    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2032
    :cond_0
    iget-object v2, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$f;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$f;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 2033
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$f;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 2034
    iget-object v3, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$f;

    aget-object v3, v3, v0

    .line 2035
    if-eqz v3, :cond_1

    .line 2036
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2033
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2041
    :cond_3
    iget v2, p0, Lcom/yandex/metrica/c$a;->d:I

    if-eqz v2, :cond_4

    .line 2042
    const/4 v2, 0x6

    iget v3, p0, Lcom/yandex/metrica/c$a;->d:I

    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2045
    :cond_4
    iget-object v2, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 2046
    :goto_1
    iget-object v2, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 2047
    iget-object v2, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    aget-object v2, v2, v1

    .line 2048
    if-eqz v2, :cond_5

    .line 2049
    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2046
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2054
    :cond_6
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a;
    .locals 1

    .prologue
    .line 1989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/c$a;->b:Lcom/yandex/metrica/c$b;

    .line 1990
    invoke-static {}, Lcom/yandex/metrica/c$a$f;->d()[Lcom/yandex/metrica/c$a$f;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$f;

    .line 1991
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/metrica/c$a;->d:I

    .line 1992
    invoke-static {}, Lcom/yandex/metrica/c$a$c;->d()[Lcom/yandex/metrica/c$a$c;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    .line 1993
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a;->a:I

    .line 1994
    return-object p0
.end method
