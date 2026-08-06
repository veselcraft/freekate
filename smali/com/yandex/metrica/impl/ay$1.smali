.class Lcom/yandex/metrica/impl/ay$1;
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
.field final synthetic a:Lcom/yandex/metrica/impl/ay;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ay;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay$1;->a:Lcom/yandex/metrica/impl/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/g;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay$1;->a:Lcom/yandex/metrica/impl/ay;

    invoke-static {v0, p1, p2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/as;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/as;->a(Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/as;->run()V

    .line 134
    return-object p1
.end method
