.class public Lcom/perm/utils/MyLocation;
.super Ljava/lang/Object;
.source "MyLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/MyLocation$LocationResult;,
        Lcom/perm/utils/MyLocation$GetLastLocation;
    }
.end annotation


# instance fields
.field gps_enabled:Z

.field lm:Landroid/location/LocationManager;

.field locationListenerGps:Landroid/location/LocationListener;

.field locationListenerNetwork:Landroid/location/LocationListener;

.field public locationResult:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/perm/utils/MyLocation$LocationResult;",
            ">;"
        }
    .end annotation
.end field

.field network_enabled:Z

.field timer1:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/perm/utils/MyLocation;->gps_enabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z

    .line 61
    new-instance v0, Lcom/perm/utils/MyLocation$1;

    invoke-direct {v0, p0}, Lcom/perm/utils/MyLocation$1;-><init>(Lcom/perm/utils/MyLocation;)V

    iput-object v0, p0, Lcom/perm/utils/MyLocation;->locationListenerGps:Landroid/location/LocationListener;

    .line 74
    new-instance v0, Lcom/perm/utils/MyLocation$2;

    invoke-direct {v0, p0}, Lcom/perm/utils/MyLocation$2;-><init>(Lcom/perm/utils/MyLocation;)V

    iput-object v0, p0, Lcom/perm/utils/MyLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    .line 24
    invoke-direct {p0, p1}, Lcom/perm/utils/MyLocation;->init(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/perm/utils/MyLocation;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/utils/MyLocation;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/perm/utils/MyLocation;->gotLocationUpdate(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/utils/MyLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/utils/MyLocation;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/perm/utils/MyLocation;->removeLocationListeners()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/utils/MyLocation;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/utils/MyLocation;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/perm/utils/MyLocation;->reportResult(Landroid/location/Location;)V

    return-void
.end method

.method private gotLocationUpdate(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 89
    invoke-direct {p0}, Lcom/perm/utils/MyLocation;->removeLocationListeners()V

    .line 90
    invoke-direct {p0, p1}, Lcom/perm/utils/MyLocation;->reportResult(Landroid/location/Location;)V

    .line 91
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    const-string v0, "Kate.MyLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/perm/utils/MyLocation;->gps_enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " network_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removeLocationListeners()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/perm/utils/MyLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 105
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/perm/utils/MyLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private reportResult(Landroid/location/Location;)V
    .locals 3
    .param p1, "result"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v1, p0, Lcom/perm/utils/MyLocation;->locationResult:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/perm/utils/MyLocation;->locationResult:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/utils/MyLocation$LocationResult;

    .line 134
    .local v0, "callback":Lcom/perm/utils/MyLocation$LocationResult;
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0, p1}, Lcom/perm/utils/MyLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    .line 136
    :cond_1
    iput-object v2, p0, Lcom/perm/utils/MyLocation;->locationResult:Ljava/lang/ref/WeakReference;

    .line 137
    iput-object v2, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    goto :goto_0
.end method


# virtual methods
.method public getLastKnownLocation()Landroid/location/Location;
    .locals 8

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "result":Landroid/location/Location;
    const/4 v1, 0x0

    .local v1, "net_loc":Landroid/location/Location;
    const/4 v0, 0x0

    .line 111
    .local v0, "gps_loc":Landroid/location/Location;
    iget-boolean v3, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 113
    :cond_0
    iget-boolean v3, p0, Lcom/perm/utils/MyLocation;->gps_enabled:Z

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 117
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 118
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 119
    move-object v2, v0

    .line 127
    :cond_2
    :goto_0
    return-object v2

    .line 121
    :cond_3
    move-object v2, v1

    goto :goto_0

    .line 123
    :cond_4
    if-eqz v0, :cond_5

    .line 124
    move-object v2, v0

    goto :goto_0

    .line 125
    :cond_5
    if-eqz v1, :cond_2

    .line 126
    move-object v2, v1

    goto :goto_0
.end method

.method public getLocation(Lcom/perm/utils/MyLocation$LocationResult;)Z
    .locals 8
    .param p1, "result"    # Lcom/perm/utils/MyLocation$LocationResult;

    .prologue
    const/4 v7, 0x0

    .line 30
    if-eqz p1, :cond_0

    .line 31
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/utils/MyLocation;->locationResult:Ljava/lang/ref/WeakReference;

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/perm/utils/MyLocation;->gps_enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z

    if-nez v0, :cond_1

    move v0, v7

    .line 47
    :goto_0
    return v0

    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/perm/utils/MyLocation;->gps_enabled:Z

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/utils/MyLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 39
    :cond_2
    iget-boolean v0, p0, Lcom/perm/utils/MyLocation;->network_enabled:Z

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/utils/MyLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 41
    :cond_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/MyLocation;->timer1:Ljava/util/Timer;

    .line 42
    iget-object v0, p0, Lcom/perm/utils/MyLocation;->timer1:Ljava/util/Timer;

    new-instance v1, Lcom/perm/utils/MyLocation$GetLastLocation;

    invoke-direct {v1, p0}, Lcom/perm/utils/MyLocation$GetLastLocation;-><init>(Lcom/perm/utils/MyLocation;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v6

    .line 45
    .local v6, "th":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    invoke-static {v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move v0, v7

    .line 47
    goto :goto_0
.end method
