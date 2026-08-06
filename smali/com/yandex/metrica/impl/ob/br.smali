.class public Lcom/yandex/metrica/impl/ob/br;
.super Lcom/yandex/metrica/impl/ob/bm;
.source "SourceFile"


# static fields
.field private static final c:Lcom/yandex/metrica/impl/ob/bv;


# instance fields
.field private d:Lcom/yandex/metrica/impl/ob/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "PREF_KEY_OFFSET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/br;->c:Lcom/yandex/metrica/impl/ob/bv;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/br;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/br;->d:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)Lcom/yandex/metrica/impl/ob/br;
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/br;->d:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/br;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/br;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "_servertimeoffset"

    return-object v0
.end method

.method protected i()V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/bm;->i()V

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/br;->c:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/br;->d:Lcom/yandex/metrica/impl/ob/bv;

    .line 31
    return-void
.end method
