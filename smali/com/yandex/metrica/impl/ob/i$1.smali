.class Lcom/yandex/metrica/impl/ob/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/i;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/i$1;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i$1;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->c()V

    .line 378
    return-void
.end method
