.class Lcom/yandex/metrica/impl/ob/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/cy;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/cy;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Lcom/yandex/metrica/impl/ob/cy;

    .line 12
    return-void
.end method


# virtual methods
.method public a([Ljava/security/cert/X509Certificate;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Lcom/yandex/metrica/impl/ob/cy;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cy;->b()Ljava/util/Set;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 19
    :cond_1
    array-length v3, p1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, p1, v1

    .line 20
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/dd;->a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    const/4 v0, 0x1

    goto :goto_0

    .line 19
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
