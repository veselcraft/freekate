.class public final Lcom/yandex/metrica/impl/z;
.super Lcom/yandex/metrica/impl/d;
.source "SourceFile"


# static fields
.field static final a:J

.field static final b:J

.field static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile i:Lcom/yandex/metrica/impl/z;

.field private static final j:Ljava/lang/Object;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/os/HandlerThread;

.field private final f:Landroid/location/LocationManager;

.field private final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private k:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/yandex/metrica/impl/ob/bu;

.field private n:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/z;->a:J

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/z;->b:J

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "gps"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/yandex/metrica/impl/z;->c:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/z;->j:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/yandex/metrica/impl/d;-><init>()V

    .line 58
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/z;->k:Lcom/yandex/metrica/impl/d$a;

    .line 60
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/z;->l:Z

    .line 224
    new-instance v0, Lcom/yandex/metrica/impl/z$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/z$1;-><init>(Lcom/yandex/metrica/impl/z;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/z;->n:Landroid/location/LocationListener;

    .line 64
    iput-object p1, p0, Lcom/yandex/metrica/impl/z;->d:Landroid/content/Context;

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/z;->g:Ljava/util/WeakHashMap;

    .line 67
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/z;->h:Z

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/z;->e:Landroid/os/HandlerThread;

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/yandex/metrica/impl/z;->f:Landroid/location/LocationManager;

    .line 73
    new-instance v0, Lcom/yandex/metrica/impl/ob/bu;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/bu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/z;->m:Lcom/yandex/metrica/impl/ob/bu;

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->m:Lcom/yandex/metrica/impl/ob/bu;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bu;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/z;->l:Z

    .line 75
    return-void
.end method

.method public static a([B)Landroid/location/Location;
    .locals 3

    .prologue
    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 313
    const/4 v0, 0x0

    :try_start_0
    array-length v2, p0

    invoke-virtual {v1, p0, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 314
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 315
    const-class v0, Landroid/location/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;
    .locals 3

    .prologue
    .line 78
    sget-object v0, Lcom/yandex/metrica/impl/z;->i:Lcom/yandex/metrica/impl/z;

    if-nez v0, :cond_1

    .line 79
    sget-object v1, Lcom/yandex/metrica/impl/z;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/z;->i:Lcom/yandex/metrica/impl/z;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/yandex/metrica/impl/z;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yandex/metrica/impl/z;->i:Lcom/yandex/metrica/impl/z;

    .line 83
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/z;->i:Lcom/yandex/metrica/impl/z;

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;FJLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 7

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->f:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p3

    move v4, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 243
    if-nez p1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v1

    .line 248
    :cond_1
    if-nez p0, :cond_2

    move v1, v2

    .line 250
    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 255
    sget-wide v6, Lcom/yandex/metrica/impl/z;->b:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    move v0, v1

    .line 256
    :goto_1
    sget-wide v6, Lcom/yandex/metrica/impl/z;->b:J

    neg-long v6, v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    move v3, v1

    .line 257
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    move v6, v1

    .line 259
    :goto_3
    if-nez v0, :cond_0

    .line 263
    if-eqz v3, :cond_6

    move v1, v2

    .line 265
    goto :goto_0

    :cond_3
    move v0, v2

    .line 255
    goto :goto_1

    :cond_4
    move v3, v2

    .line 256
    goto :goto_2

    :cond_5
    move v6, v2

    .line 257
    goto :goto_3

    .line 269
    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 270
    if-lez v0, :cond_9

    move v5, v1

    .line 271
    :goto_4
    if-gez v0, :cond_a

    move v4, v1

    .line 272
    :goto_5
    int-to-long v8, v0

    const-wide/16 v10, 0xc8

    cmp-long v0, v8, v10

    if-lez v0, :cond_b

    move v0, v1

    .line 275
    :goto_6
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    if-nez v3, :cond_d

    if-nez v7, :cond_c

    move v3, v1

    .line 278
    :goto_7
    if-nez v4, :cond_0

    .line 280
    if-eqz v6, :cond_7

    if-eqz v5, :cond_0

    .line 282
    :cond_7
    if-eqz v6, :cond_8

    if-nez v0, :cond_8

    if-nez v3, :cond_0

    :cond_8
    move v1, v2

    .line 286
    goto :goto_0

    :cond_9
    move v5, v2

    .line 270
    goto :goto_4

    :cond_a
    move v4, v2

    .line 271
    goto :goto_5

    :cond_b
    move v0, v2

    .line 272
    goto :goto_6

    :cond_c
    move v3, v2

    .line 275
    goto :goto_7

    :cond_d
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_7
.end method

.method public static b(Landroid/location/Location;)[B
    .locals 3

    .prologue
    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 295
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 298
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    :goto_0
    return-object v0

    .line 303
    :catch_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method private declared-synchronized c(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/j;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/j;

    move-result-object v0

    invoke-static {p1}, Lcom/yandex/metrica/impl/z;->b(Landroid/location/Location;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/j;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized e()Landroid/location/Location;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 185
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/z;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/j;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/j;->a()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 188
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const-string v2, "GeoLocation"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 191
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/z;->a([B)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 196
    :try_start_2
    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :goto_0
    monitor-exit p0

    return-object v0

    .line 196
    :cond_0
    :try_start_3
    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 196
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 136
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/z;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/z;->e()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/z;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/z;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V

    .line 161
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/z;->c(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    monitor-exit p0

    return-void

    .line 159
    :cond_2
    :try_start_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/z;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/z;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->g:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/z;->h:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/z;->h:Z

    .line 97
    const-string v2, "network"

    const/4 v3, 0x0

    sget-wide v4, Lcom/yandex/metrica/impl/z;->a:J

    iget-object v6, p0, Lcom/yandex/metrica/impl/z;->n:Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/z;->a(Ljava/lang/String;FJLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 105
    const-string v2, "passive"

    const/4 v3, 0x0

    sget-wide v4, Lcom/yandex/metrica/impl/z;->a:J

    iget-object v6, p0, Lcom/yandex/metrica/impl/z;->n:Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/z;->a(Ljava/lang/String;FJLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Object;ZZ)V
    .locals 2

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/z;->l:Z

    if-eq v0, p3, :cond_0

    .line 327
    if-eqz p2, :cond_2

    .line 328
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/z;->l:Z

    .line 329
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->m:Lcom/yandex/metrica/impl/ob/bu;

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/z;->l:Z

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bu;->a(Z)V

    .line 330
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/z;->l:Z

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/z;->a(Ljava/lang/Object;)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/z;->a()V

    goto :goto_0

    .line 337
    :cond_2
    if-nez p3, :cond_0

    .line 339
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/z;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/z;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/z;->h:Z

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yandex/metrica/impl/z;->n:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/z;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()Landroid/location/Location;
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/z;->e()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 203
    .line 205
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->f:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    sget-object v4, Lcom/yandex/metrica/impl/z;->c:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 210
    :try_start_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/z;->f:Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/z;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    move-object v1, v0

    .line 219
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    .line 221
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method
