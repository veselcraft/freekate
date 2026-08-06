.class public Lcom/yandex/metrica/impl/ob/bq;
.super Lcom/yandex/metrica/impl/ob/bm;
.source "SourceFile"


# static fields
.field private static final c:Lcom/yandex/metrica/impl/ob/bv;

.field private static final d:Lcom/yandex/metrica/impl/ob/bv;


# instance fields
.field private e:Lcom/yandex/metrica/impl/ob/bv;

.field private f:Lcom/yandex/metrica/impl/ob/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "SERVICE_API_LEVEL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bq;->c:Lcom/yandex/metrica/impl/ob/bv;

    .line 17
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "CLIENT_API_LEVEL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bq;->d:Lcom/yandex/metrica/impl/ob/bv;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/bm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/yandex/metrica/impl/ob/bq;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bq;

    return-object v0
.end method

.method public b()I
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq;->e:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/yandex/metrica/impl/ob/bq;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->e:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bq;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "_migrationpreferences"

    return-object v0
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/bm;->i()V

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bq;->c:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->e:Lcom/yandex/metrica/impl/ob/bv;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bq;->d:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->f:Lcom/yandex/metrica/impl/ob/bv;

    .line 32
    return-void
.end method
