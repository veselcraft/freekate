.class Lcom/yandex/metrica/impl/ob/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/co;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ch;

.field private final b:Lcom/yandex/metrica/impl/ob/ch;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/cv;)V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/ch;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/cv;->a()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ch;-><init>(Lcom/yandex/metrica/impl/ob/cy;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cm;->a:Lcom/yandex/metrica/impl/ob/ch;

    .line 12
    new-instance v0, Lcom/yandex/metrica/impl/ob/ch;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/cv;->c()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ch;-><init>(Lcom/yandex/metrica/impl/ob/cy;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cm;->b:Lcom/yandex/metrica/impl/ob/ch;

    .line 13
    return-void
.end method


# virtual methods
.method public a([Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cm;->a:Lcom/yandex/metrica/impl/ob/ch;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ch;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method

.method public b([Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public c([Ljava/security/cert/X509Certificate;)Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cm;->b:Lcom/yandex/metrica/impl/ob/ch;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ch;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method
