.class public Lcom/yandex/metrica/impl/i;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/i$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/i$a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 42
    return-void
.end method

.method public static a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/az;)V
    .locals 4

    .prologue
    .line 60
    if-eqz p0, :cond_0

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, "UuId"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "DeviceId"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "AdUrlGet"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "AdUrlReport"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "ServerTimeOffset"

    invoke-static {}, Lcom/yandex/metrica/impl/utils/h;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 67
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 68
    const-string v2, "Clids"

    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 71
    :cond_0
    return-void
.end method

.method public static a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/ob/ca;)V
    .locals 2

    .prologue
    .line 74
    if-eqz p0, :cond_0

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    const/4 v1, 0x2

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/ca;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/i$a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->a:Lcom/yandex/metrica/impl/i$a;

    .line 46
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->a:Lcom/yandex/metrica/impl/i$a;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->a:Lcom/yandex/metrica/impl/i$a;

    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/i$a;->a(ILandroid/os/Bundle;)V

    .line 57
    :cond_0
    return-void
.end method
