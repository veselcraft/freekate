.class Lcom/yandex/metrica/impl/ay$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/at$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$2;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/g;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay$2;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/g;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    return-object v0
.end method
