.class public Lcom/yandex/metrica/impl/interact/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/interact/DeviceInfo$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field public final appPlatform:Ljava/lang/String;

.field public final deviceRootStatus:Ljava/lang/String;

.field public final deviceRootStatusMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final deviceType:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public final manufacturer:Ljava/lang/String;

.field public final model:Ljava/lang/String;

.field public final osVersion:Ljava/lang/String;

.field public final platform:Ljava/lang/String;

.field public final platformDeviceId:Ljava/lang/String;

.field public final scaleFactor:F

.field public final screenDpi:I

.field public final screenHeight:I

.field public final screenWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "android"

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->platform:Ljava/lang/String;

    .line 43
    const-string v0, "android"

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->appPlatform:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->platformDeviceId:Ljava/lang/String;

    .line 45
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 46
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->model:Ljava/lang/String;

    .line 47
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/yandex/metrica/impl/aj;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenWidth:I

    .line 49
    invoke-static {p1}, Lcom/yandex/metrica/impl/aj;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenHeight:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenDpi:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->scaleFactor:F

    .line 52
    invoke-static {p1}, Lcom/yandex/metrica/impl/aj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->locale:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/yandex/metrica/impl/aj;->a(Landroid/content/Context;)Lcom/yandex/metrica/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/a;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->deviceType:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/yandex/metrica/impl/aj$a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->deviceRootStatus:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/yandex/metrica/impl/interact/DeviceInfo$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/interact/DeviceInfo$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->deviceRootStatusMarkers:Ljava/util/List;

    .line 65
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sput-object p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a:Landroid/content/Context;

    .line 38
    sget-object v0, Lcom/yandex/metrica/impl/interact/DeviceInfo$a;->a:Lcom/yandex/metrica/impl/interact/DeviceInfo;

    return-object v0
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/aj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->locale:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->locale:Ljava/lang/String;

    return-object v0
.end method
