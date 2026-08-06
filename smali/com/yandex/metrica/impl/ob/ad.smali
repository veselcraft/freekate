.class public Lcom/yandex/metrica/impl/ob/ad;
.super Lcom/yandex/metrica/impl/ob/u;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/bl;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/u;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    .line 26
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i;->v()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ad;->a:Lcom/yandex/metrica/impl/ob/bl;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;)Z
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ad;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ad;->a:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bl;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    sget-object v1, Lcom/yandex/metrica/impl/q$a;->b:Lcom/yandex/metrica/impl/q$a;

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/g;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/q$a;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ad;->a:Lcom/yandex/metrica/impl/ob/bl;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/bl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/g;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/i;->d(Lcom/yandex/metrica/impl/g;)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/i;->b(Z)V

    .line 36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ad;->a:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->a()V

    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ad;->a:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->f()V

    .line 39
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
