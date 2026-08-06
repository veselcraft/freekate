.class public Lcom/yandex/metrica/impl/ob/ac;
.super Lcom/yandex/metrica/impl/ob/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/u;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;)Z
    .locals 3

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->b()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->c()V

    .line 19
    new-instance v1, Lcom/yandex/metrica/impl/g;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/g;-><init>(Lcom/yandex/metrica/impl/g;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/g;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/g;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->h:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/g;->a(I)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/i;->a(Lcom/yandex/metrica/impl/g;)V

    .line 25
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->s()V

    .line 34
    return-void
.end method
