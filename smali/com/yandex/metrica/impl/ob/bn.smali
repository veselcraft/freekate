.class public Lcom/yandex/metrica/impl/ob/bn;
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

    const-string v1, "USER_INFO"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bn;->c:Lcom/yandex/metrica/impl/ob/bv;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/bm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "_clientpreferences"

    return-object v0
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/bm;->i()V

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bn;->c:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bv;

    .line 31
    return-void
.end method
