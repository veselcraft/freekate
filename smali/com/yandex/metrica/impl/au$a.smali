.class Lcom/yandex/metrica/impl/au$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/i;)Lcom/yandex/metrica/impl/au;
    .locals 1

    .prologue
    .line 521
    new-instance v0, Lcom/yandex/metrica/impl/au;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/au;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    return-object v0
.end method
