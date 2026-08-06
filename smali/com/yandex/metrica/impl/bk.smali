.class public final Lcom/yandex/metrica/impl/bk;
.super Lcom/yandex/metrica/impl/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bk$a;,
        Lcom/yandex/metrica/impl/bk$b;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/yandex/metrica/impl/bk;


# instance fields
.field private final d:Landroid/telephony/TelephonyManager;

.field private e:Landroid/telephony/PhoneStateListener;

.field private f:Z

.field private final g:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a",
            "<",
            "Lcom/yandex/metrica/impl/bk$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/bk$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bk$1;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/bk;->a:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/bk;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yandex/metrica/impl/d;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/bk;->f:Z

    .line 61
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk;->g:Lcom/yandex/metrica/impl/d$a;

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TelephonyProviderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/bk;->h:Landroid/os/Handler;

    .line 69
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk;->d:Landroid/telephony/TelephonyManager;

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->h:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/bk$2;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/bk$2;-><init>(Lcom/yandex/metrica/impl/bk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bk;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yandex/metrica/impl/bk;->e:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bk;
    .locals 3

    .prologue
    .line 79
    sget-object v0, Lcom/yandex/metrica/impl/bk;->c:Lcom/yandex/metrica/impl/bk;

    if-nez v0, :cond_1

    .line 80
    sget-object v1, Lcom/yandex/metrica/impl/bk;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/bk;->c:Lcom/yandex/metrica/impl/bk;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/yandex/metrica/impl/bk;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/bk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yandex/metrica/impl/bk;->c:Lcom/yandex/metrica/impl/bk;

    .line 84
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/bk;->c:Lcom/yandex/metrica/impl/bk;

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(Landroid/telephony/SignalStrength;)V
    .locals 4

    .prologue
    const/16 v2, -0x78

    const/4 v0, -0x1

    .line 148
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bk;->d()Lcom/yandex/metrica/impl/bk$a;

    move-result-object v3

    .line 149
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    const/16 v1, 0x63

    if-ne v1, v2, :cond_1

    move v1, v0

    :goto_0
    if-eq v1, v0, :cond_0

    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, -0x71

    :cond_0
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/yandex/metrica/impl/bk$a;->a(Lcom/yandex/metrica/impl/bk$a;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 150
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->g:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :cond_1
    move v1, v2

    .line 149
    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v1

    if-eq v2, v1, :cond_0

    if-ne v2, v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bk;Landroid/telephony/SignalStrength;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bk;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bk;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bk;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bk;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/bk;)Landroid/telephony/PhoneStateListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->e:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/bk;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->d:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private declared-synchronized d()Lcom/yandex/metrica/impl/bk$a;
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->g:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->g:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/bk$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/bk$a;-><init>(Lcom/yandex/metrica/impl/bk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_0
    monitor-exit p0

    return-object v0

    .line 158
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->g:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/bk$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/bk;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bk;->e()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/bk;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/yandex/metrica/impl/bk;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bk;->f()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/bk;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/yandex/metrica/impl/bk;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bk;->h()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 188
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    const v2, 0xffff

    and-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 188
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic g(Lcom/yandex/metrica/impl/bk;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bk;->g()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 199
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    const v2, 0xffff

    and-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 199
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/yandex/metrica/impl/bk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    const-string v1, "Unknown"

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 215
    sget-object v2, Lcom/yandex/metrica/impl/bk;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic i(Lcom/yandex/metrica/impl/bk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bk;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->h:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/bk$3;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/bk$3;-><init>(Lcom/yandex/metrica/impl/bk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->h:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/bk$4;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/bk$4;-><init>(Lcom/yandex/metrica/impl/bk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lcom/yandex/metrica/impl/bk$a;
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bk;->d()Lcom/yandex/metrica/impl/bk$a;

    move-result-object v1

    .line 140
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk$a;->a(Lcom/yandex/metrica/impl/bk$a;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->g:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->g:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/bk$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk$a;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/bk$a;->a(Lcom/yandex/metrica/impl/bk$a;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk;->g:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-object v1

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
