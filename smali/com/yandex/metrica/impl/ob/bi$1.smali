.class Lcom/yandex/metrica/impl/ob/bi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/dg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/bi;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/bi;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bi$1;->a:Lcom/yandex/metrica/impl/ob/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi$1;->a:Lcom/yandex/metrica/impl/ob/bi;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bi;->a(Lcom/yandex/metrica/impl/ob/bi;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
