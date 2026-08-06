.class Lcom/yandex/metrica/impl/ad$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ad;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ad;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/impl/ad;Z)Z

    .line 127
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    invoke-static {p2}, Lcom/yandex/metrica/IMetricaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yandex/metrica/IMetricaService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/impl/ad;Lcom/yandex/metrica/IMetricaService;)Lcom/yandex/metrica/IMetricaService;

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/impl/ad;)V

    .line 129
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/impl/ad;Z)Z

    .line 136
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/impl/ad;Lcom/yandex/metrica/IMetricaService;)Lcom/yandex/metrica/IMetricaService;

    .line 137
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ad;->b(Lcom/yandex/metrica/impl/ad;)V

    .line 138
    return-void
.end method
