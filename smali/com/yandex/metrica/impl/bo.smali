.class public final Lcom/yandex/metrica/impl/bo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->b()Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;->a:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
