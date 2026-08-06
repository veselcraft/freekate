.class public Lcom/yandex/metrica/impl/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/metrica/impl/utils/b;

.field private c:Lcom/yandex/metrica/impl/utils/b$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/utils/b$a;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/p;->a:Ljava/util/Map;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/utils/b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/b;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/p;->b:Lcom/yandex/metrica/impl/utils/b;

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/p;->c:Lcom/yandex/metrica/impl/utils/b$a;

    .line 33
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/p;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/yandex/metrica/impl/p;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/p;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/p;->b:Lcom/yandex/metrica/impl/utils/b;

    iget-object v1, p0, Lcom/yandex/metrica/impl/p;->a:Ljava/util/Map;

    iget-object v4, p0, Lcom/yandex/metrica/impl/p;->c:Lcom/yandex/metrica/impl/utils/b$a;

    const-string v5, "Crash Environment"

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/metrica/impl/utils/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/utils/b$a;Ljava/lang/String;)Ljava/util/Map;

    goto :goto_0
.end method
