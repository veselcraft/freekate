.class Lcom/yandex/metrica/impl/interact/DeviceInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/interact/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/yandex/metrica/impl/interact/DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/interact/DeviceInfo;

    invoke-static {}, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/interact/DeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yandex/metrica/impl/interact/DeviceInfo$a;->a:Lcom/yandex/metrica/impl/interact/DeviceInfo;

    return-void
.end method
