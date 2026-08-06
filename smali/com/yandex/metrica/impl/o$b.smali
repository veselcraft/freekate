.class Lcom/yandex/metrica/impl/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/yandex/metrica/impl/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/o;-><init>(B)V

    sput-object v0, Lcom/yandex/metrica/impl/o$b;->a:Lcom/yandex/metrica/impl/o;

    return-void
.end method

.method static synthetic a()Lcom/yandex/metrica/impl/o;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/yandex/metrica/impl/o$b;->a:Lcom/yandex/metrica/impl/o;

    return-object v0
.end method
