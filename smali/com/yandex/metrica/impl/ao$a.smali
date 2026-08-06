.class Lcom/yandex/metrica/impl/ao$a;
.super Lcom/yandex/metrica/impl/au$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yandex/metrica/impl/au$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/i;)Lcom/yandex/metrica/impl/au;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ao;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ao;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    return-object v0
.end method
