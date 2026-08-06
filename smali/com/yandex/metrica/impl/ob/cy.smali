.class Lcom/yandex/metrica/impl/ob/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/cs;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/cs;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/cy;-><init>(Lcom/yandex/metrica/impl/ob/cs;Ljava/lang/String;[Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/cs;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Lcom/yandex/metrica/impl/ob/cs;

    .line 19
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cy;->b:Ljava/lang/String;

    .line 20
    if-eqz p3, :cond_0

    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Lcom/yandex/metrica/impl/ob/cs;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cy;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/yandex/metrica/impl/ob/cs;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Lcom/yandex/metrica/impl/ob/cs;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cy;->b:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/cs;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pin has bad length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Lcom/yandex/metrica/impl/ob/cs;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cy;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/cs;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Lcom/yandex/metrica/impl/ob/cs;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cy;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/cs;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 68
    :cond_0
    return-object v0
.end method

.method c()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Lcom/yandex/metrica/impl/ob/cs;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/cs;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method d()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Lcom/yandex/metrica/impl/ob/cs;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/cs;->b()V

    .line 77
    return-void
.end method
