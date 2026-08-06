.class public Lcom/yandex/metrica/impl/ob/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Lcom/yandex/metrica/impl/ob/az;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ax;->a:J

    return-wide v0
.end method

.method public a(J)Lcom/yandex/metrica/impl/ob/ax;
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ax;->a:J

    .line 27
    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/az;)Lcom/yandex/metrica/impl/ob/ax;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ax;->d:Lcom/yandex/metrica/impl/ob/az;

    .line 36
    return-object p0
.end method

.method public b(J)Lcom/yandex/metrica/impl/ob/ax;
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ax;->b:J

    .line 45
    return-object p0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/az;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ax;->d:Lcom/yandex/metrica/impl/ob/az;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ax;->b:J

    return-wide v0
.end method

.method public c(J)Lcom/yandex/metrica/impl/ob/ax;
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ax;->c:J

    .line 54
    return-object p0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ax;->c:J

    return-wide v0
.end method
