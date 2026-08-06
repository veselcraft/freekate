.class public Lcom/inmobi/signals/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/signals/LocationInfo$a;,
        Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/inmobi/signals/LocationInfo;

.field private static c:Ljava/lang/Object;

.field private static d:Z

.field private static e:Landroid/location/LocationManager;

.field private static f:Ljava/lang/Object;

.field private static g:Lcom/inmobi/signals/LocationInfo$a;

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    const-class v0, Lcom/inmobi/signals/LocationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/signals/LocationInfo;->c:Ljava/lang/Object;

    .line 37
    sput-boolean v1, Lcom/inmobi/signals/LocationInfo;->d:Z

    .line 40
    sput-object v2, Lcom/inmobi/signals/LocationInfo;->f:Ljava/lang/Object;

    .line 41
    sput-object v2, Lcom/inmobi/signals/LocationInfo;->g:Lcom/inmobi/signals/LocationInfo$a;

    .line 42
    sput-boolean v1, Lcom/inmobi/signals/LocationInfo;->h:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    .line 67
    return-void
.end method

.method public static a()Lcom/inmobi/signals/LocationInfo;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->b:Lcom/inmobi/signals/LocationInfo;

    .line 52
    if-nez v0, :cond_1

    .line 53
    sget-object v1, Lcom/inmobi/signals/LocationInfo;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->b:Lcom/inmobi/signals/LocationInfo;

    .line 55
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/inmobi/signals/LocationInfo;

    invoke-direct {v0}, Lcom/inmobi/signals/LocationInfo;-><init>()V

    sput-object v0, Lcom/inmobi/signals/LocationInfo;->b:Lcom/inmobi/signals/LocationInfo;

    .line 57
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->b:Lcom/inmobi/signals/LocationInfo;

    .line 59
    :cond_0
    monitor-exit v1

    .line 61
    :cond_1
    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/location/Location;Z)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 372
    if-eqz p1, :cond_1

    .line 373
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 374
    const-string v0, "u-ll-ts"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_0
    const-string v0, "u-latlong-accu"

    invoke-direct {p0, p1}, Lcom/inmobi/signals/LocationInfo;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v4, "sdk-collected"

    if-eqz p2, :cond_5

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_1
    sget-boolean v0, Lcom/inmobi/signals/LocationInfo;->d:Z

    if-eqz v0, :cond_2

    .line 381
    const-string v0, "loc-allowed"

    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->k()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 389
    const-string v0, "signals"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    const-string v0, "loc-granularity"

    const-string v1, "coarse"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_3
    const-string v0, "signals"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    const-string v0, "loc-granularity"

    const-string v1, "fine"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_4
    :goto_2
    return-object v3

    :cond_5
    move v0, v2

    .line 377
    goto :goto_0

    :cond_6
    move v1, v2

    .line 381
    goto :goto_1

    .line 398
    :cond_7
    const-string v0, "loc-granularity"

    const-string v1, "none"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 138
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    const-string v2, "Connecting Google API client for location."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/inmobi/signals/LocationInfo$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/inmobi/signals/LocationInfo$a;-><init>(Lcom/inmobi/signals/LocationInfo$1;)V

    sput-object v0, Lcom/inmobi/signals/LocationInfo;->g:Lcom/inmobi/signals/LocationInfo$a;

    .line 142
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->g:Lcom/inmobi/signals/LocationInfo$a;

    sget-object v1, Lcom/inmobi/signals/LocationInfo;->g:Lcom/inmobi/signals/LocationInfo$a;

    const-string v2, "com.google.android.gms.location.LocationServices"

    invoke-static {p1, v0, v1, v2}, Lcom/inmobi/signals/h;->a(Landroid/content/Context;Ljava/lang/reflect/InvocationHandler;Ljava/lang/reflect/InvocationHandler;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/LocationInfo;->f:Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->f:Ljava/lang/Object;

    invoke-static {v0}, Lcom/inmobi/signals/h;->a(Ljava/lang/Object;)V

    .line 146
    :cond_0
    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 32
    sput-boolean p0, Lcom/inmobi/signals/LocationInfo;->h:Z

    return p0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 86
    const-string v0, "signals"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "signals"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 87
    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->AUTHORISED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    .line 202
    :goto_0
    return-object v0

    .line 199
    :cond_0
    sget-object v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->DENIED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    goto :goto_0

    .line 202
    :cond_1
    sget-object v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->DENIED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    goto :goto_0
.end method

.method private k()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    .line 231
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_2

    .line 234
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 238
    :goto_0
    if-eqz v2, :cond_1

    .line 256
    :cond_0
    :goto_1
    return v0

    .line 235
    :catch_0
    move-exception v2

    .line 236
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 238
    goto :goto_1

    .line 241
    :cond_2
    sget-object v2, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    if-eqz v2, :cond_3

    .line 245
    const-string v2, "signals"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    sget-object v2, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    move v3, v1

    .line 252
    :goto_2
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 256
    goto :goto_1

    .line 248
    :cond_4
    const-string v2, "signals"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    sget-object v2, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    move v3, v2

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v1

    move v3, v1

    goto :goto_2
.end method

.method private l()Landroid/location/Location;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 260
    const/4 v0, 0x0

    .line 262
    sget-boolean v3, Lcom/inmobi/signals/LocationInfo;->d:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->k()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 263
    sget-boolean v3, Lcom/inmobi/signals/LocationInfo;->h:Z

    if-eqz v3, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->m()Landroid/location/Location;

    move-result-object v3

    .line 265
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Location info provided by Google Api client:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 268
    :cond_0
    if-nez v0, :cond_3

    sget-object v3, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    if-eqz v3, :cond_3

    .line 269
    new-instance v3, Landroid/location/Criteria;

    invoke-direct {v3}, Landroid/location/Criteria;-><init>()V

    .line 270
    const-string v4, "signals"

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v4, v5}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 272
    invoke-virtual {v3, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 277
    :cond_1
    :goto_1
    invoke-virtual {v3, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 279
    sget-object v4, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    invoke-virtual {v4, v3, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    .line 280
    if-eqz v3, :cond_2

    .line 283
    :try_start_0
    sget-object v4, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 291
    :goto_2
    if-nez v0, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->n()Landroid/location/Location;

    move-result-object v0

    .line 297
    :cond_2
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Location info provided by Location manager:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_3
    if-nez v0, :cond_4

    .line 302
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/c/e;

    const-string v3, "signals"

    const-string v4, "LocationFixFailed"

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/core/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/e;)V

    .line 304
    :cond_4
    return-object v0

    :cond_5
    move v0, v2

    .line 265
    goto :goto_0

    .line 273
    :cond_6
    const-string v4, "signals"

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v5}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/location/Criteria;->setAccuracy(I)V

    goto :goto_1

    .line 284
    :catch_0
    move-exception v3

    .line 285
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    const-string v6, "Failed to acquire a location fix; access seems to be disabled"

    invoke-static {v4, v5, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 287
    const-string v5, "type"

    const-string v6, "SecurityException"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v5, "message"

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v3

    const-string v5, "signals"

    const-string v6, "ExceptionCaught"

    invoke-virtual {v3, v5, v6, v4}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_7
    move v1, v2

    .line 297
    goto :goto_3
.end method

.method private m()Landroid/location/Location;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 308
    .line 311
    :try_start_0
    const-string v0, "com.google.android.gms.location.LocationServices"

    .line 312
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 313
    const-string v2, "FusedLocationApi"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 314
    const-string v2, "com.google.android.gms.common.api.GoogleApiClient"

    .line 315
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 316
    const-string v3, "com.google.android.gms.location.FusedLocationProviderApi"

    .line 317
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 319
    const-string v4, "getLastLocation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 321
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/inmobi/signals/LocationInfo;->f:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    .line 339
    :goto_0
    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    const-string v4, "Unable to request activity updates from ActivityRecognition client"

    invoke-static {v2, v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 337
    goto :goto_0

    .line 325
    :catch_1
    move-exception v0

    .line 326
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    const-string v4, "Unable to request activity updates from ActivityRecognition client"

    invoke-static {v2, v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 337
    goto :goto_0

    .line 328
    :catch_2
    move-exception v0

    .line 329
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    const-string v4, "Unable to request activity updates from ActivityRecognition client"

    invoke-static {v2, v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 337
    goto :goto_0

    .line 331
    :catch_3
    move-exception v0

    .line 332
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    const-string v4, "Unable to request activity updates from ActivityRecognition client"

    invoke-static {v2, v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 337
    goto :goto_0

    .line 334
    :catch_4
    move-exception v0

    .line 335
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    const-string v4, "Unable to request activity updates from ActivityRecognition client"

    invoke-static {v2, v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private n()Landroid/location/Location;
    .locals 7

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 345
    sget-object v1, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    .line 346
    sget-object v1, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 348
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move-object v1, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 349
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    sget-object v4, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    :try_start_0
    sget-object v4, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 360
    :goto_1
    if-eqz v0, :cond_2

    .line 366
    :cond_0
    :goto_2
    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    const-string v6, "Failed to acquire a location fix; access seems to be disabled"

    invoke-static {v4, v5, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 356
    const-string v5, "type"

    const-string v6, "SecurityException"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v5, "message"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v5, "signals"

    const-string v6, "ExceptionCaught"

    invoke-virtual {v0, v5, v6, v4}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 348
    :cond_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 224
    sput-boolean p1, Lcom/inmobi/signals/LocationInfo;->d:Z

    .line 225
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/inmobi/signals/LocationInfo;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/signals/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/signals/LocationInfo;->a(Landroid/content/Context;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/signals/LocationInfo;->d()V

    .line 75
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/inmobi/signals/LocationInfo;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 83
    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 92
    sget-boolean v0, Lcom/inmobi/signals/LocationInfo;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 95
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingAccuracy(I)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 99
    sget-object v1, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to get location fix. Provider being used:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    const-string v2, "No enabled providers found matching the supplied criteria"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    const-string v2, "Skipping the location fix"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized e()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->l()Landroid/location/Location;

    move-result-object v0

    .line 184
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/signals/LocationInfo;->a(Landroid/location/Location;Z)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 185
    monitor-exit p0

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    const-string v1, "loc-consent-status"

    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->j()Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-object v0
.end method

.method public declared-synchronized g()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 209
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->l()Landroid/location/Location;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/inmobi/signals/LocationInfo;->a(Landroid/location/Location;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 217
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 214
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->f()Landroid/location/Location;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/inmobi/signals/LocationInfo;->a(Landroid/location/Location;Z)Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 115
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/LocationInfo;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location changed. ts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " accu:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/inmobi/signals/LocationInfo;->e:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
