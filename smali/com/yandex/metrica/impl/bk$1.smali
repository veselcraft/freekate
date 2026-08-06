.class final Lcom/yandex/metrica/impl/bk$1;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 36
    const/4 v0, 0x7

    const-string v1, "1xRTT"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 37
    const/4 v0, 0x4

    const-string v1, "CDMA"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 38
    const/4 v0, 0x2

    const-string v1, "EDGE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 39
    const/16 v0, 0xe

    const-string v1, "eHRPD"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 40
    const/4 v0, 0x5

    const-string v1, "EVDO rev.0"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 41
    const/4 v0, 0x6

    const-string v1, "EVDO rev.A"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 42
    const/16 v0, 0xc

    const-string v1, "EVDO rev.B"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 43
    const/4 v0, 0x1

    const-string v1, "GPRS"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 44
    const/16 v0, 0x8

    const-string v1, "HSDPA"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 45
    const/16 v0, 0xa

    const-string v1, "HSPA"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 46
    const/16 v0, 0xf

    const-string v1, "HSPA+"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 47
    const/16 v0, 0x9

    const-string v1, "HSUPA"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 48
    const/16 v0, 0xb

    const-string v1, "iDen"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 49
    const/16 v0, 0xd

    const-string v1, "LTE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 50
    const/4 v0, 0x3

    const-string v1, "UMTS"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bk$1;->put(ILjava/lang/Object;)V

    .line 51
    return-void
.end method
