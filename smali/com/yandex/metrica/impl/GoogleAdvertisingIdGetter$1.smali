.class Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;->b:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    iput-object p2, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;->a:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;Landroid/content/Context;)V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;->b:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    sget-object v1, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;->a:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;Landroid/content/Context;)V

    .line 65
    :cond_1
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;->b:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    invoke-static {v1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;->b:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    invoke-static {v2}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;->a()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
