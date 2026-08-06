.class Lcom/yandex/metrica/impl/utils/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static a:Lcom/yandex/metrica/impl/utils/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/yandex/metrica/impl/utils/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/utils/f;-><init>(B)V

    sput-object v0, Lcom/yandex/metrica/impl/utils/f$a;->a:Lcom/yandex/metrica/impl/utils/f;

    return-void
.end method
