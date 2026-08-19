.class public Lcom/perm/utils/MyLocation;
.super Ljava/lang/Object;
.source "MyLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/MyLocation$LocationResult;
    }
.end annotation


# instance fields
.field gps_enabled:Z

.field lm:Landroid/location/LocationManager;

.field locationListenerGps:Landroid/location/LocationListener;

.field locationListenerNetwork:Landroid/location/LocationListener;

.field public locationResult:Ljava/lang/ref/WeakReference;

.field network_enabled:Z

.field timer1:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/perm/utils/MyLocation;->gps_enabled:Z

    .line 22
    iput-boolean v0, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z

    .line 63
    new-instance v0, Lcom/perm/utils/MyLocation$1;

    invoke-direct {v0, p0}, Lcom/perm/utils/MyLocation$1;-><init>(Lcom/perm/utils/MyLocation;)V

    iput-object v0, p0, Lcom/perm/utils/MyLocation;->locationListenerGps:Landroid/location/LocationListener;

    .line 76
    new-instance v0, Lcom/perm/utils/MyLocation$2;

    invoke-direct {v0, p0}, Lcom/perm/utils/MyLocation$2;-><init>(Lcom/perm/utils/MyLocation;)V

    iput-object v0, p0, Lcom/perm/utils/MyLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    .line 25
    invoke-direct {p0, p1}, Lcom/perm/utils/MyLocation;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/utils/MyLocation;Landroid/location/Location;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/perm/utils/MyLocation;->gotLocationUpdate(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/utils/MyLocation;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/perm/utils/MyLocation;->removeLocationListeners()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/utils/MyLocation;Landroid/location/Location;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/perm/utils/MyLocation;->reportResult(Landroid/location/Location;)V

    return-void
.end method

.method private gotLocationUpdate(Landroid/location/Location;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 91
    invoke-direct {p0}, Lcom/perm/utils/MyLocation;->removeLocationListeners()V

    .line 92
    invoke-direct {p0, p1}, Lcom/perm/utils/MyLocation;->reportResult(Landroid/location/Location;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "location"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    :try_start_0
    const-string v0, "network"

    .line 59
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gps_enabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/perm/utils/MyLocation;->gps_enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " network_enabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kate.MyLocation"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeLocationListeners()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/perm/utils/MyLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 107
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/perm/utils/MyLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method private reportResult(Landroid/location/Location;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->locationResult:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/utils/MyLocation$LocationResult;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0, p1}, Lcom/perm/utils/MyLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    :cond_1
    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/perm/utils/MyLocation;->locationResult:Ljava/lang/ref/WeakReference;

    .line 140
    iput-object p1, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public getLastKnownLocation()Landroid/location/Location;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 116
    :goto_0
    iget-boolean v2, p0, Lcom/perm/utils/MyLocation;->gps_enabled:Z

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    :goto_2
    move-object v1, v2

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_5

    :cond_4
    move-object v1, v0

    :cond_5
    :goto_3
    return-object v1
.end method

.method public getLocation(Lcom/perm/utils/MyLocation$LocationResult;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 33
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/perm/utils/MyLocation;->locationResult:Ljava/lang/ref/WeakReference;

    .line 36
    :cond_0
    iget-boolean p1, p0, Lcom/perm/utils/MyLocation;->gps_enabled:Z

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perm/utils/MyLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 41
    :cond_2
    iget-boolean p1, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z

    if-eqz p1, :cond_3

    .line 42
    iget-object v1, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    const-string v2, "network"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perm/utils/MyLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 43
    :cond_3
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/perm/utils/MyLocation;->timer1:Ljava/util/Timer;

    .line 44
    new-instance v1, Lcom/perm/utils/MyLocation$GetLastLocation;

    invoke-direct {v1, p0}, Lcom/perm/utils/MyLocation$GetLastLocation;-><init>(Lcom/perm/utils/MyLocation;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return v0
.end method
