.class Lcom/yandex/metrica/impl/interact/DeviceInfo$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/interact/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {}, Lcom/yandex/metrica/impl/aj$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "Superuser.apk"

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/interact/DeviceInfo$1;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/aj$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "su.so"

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/interact/DeviceInfo$1;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    return-void
.end method
