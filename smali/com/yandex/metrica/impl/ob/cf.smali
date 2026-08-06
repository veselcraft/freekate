.class Lcom/yandex/metrica/impl/ob/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/co;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ch;

.field private final b:Lcom/yandex/metrica/impl/ob/ch;

.field private final c:Lcom/yandex/metrica/impl/ob/ch;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/cv;)V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/yandex/metrica/impl/ob/ch;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/cv;->a()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ch;-><init>(Lcom/yandex/metrica/impl/ob/cy;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->a:Lcom/yandex/metrica/impl/ob/ch;

    .line 13
    new-instance v0, Lcom/yandex/metrica/impl/ob/cl;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/cv;->b()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cl;-><init>(Lcom/yandex/metrica/impl/ob/cy;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/ch;

    .line 14
    new-instance v0, Lcom/yandex/metrica/impl/ob/ch;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/cv;->c()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ch;-><init>(Lcom/yandex/metrica/impl/ob/cy;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->c:Lcom/yandex/metrica/impl/ob/ch;

    .line 15
    return-void
.end method


# virtual methods
.method public a([Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->a:Lcom/yandex/metrica/impl/ob/ch;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ch;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method

.method public b([Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/ch;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ch;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method

.method public c([Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->c:Lcom/yandex/metrica/impl/ob/ch;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ch;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method
