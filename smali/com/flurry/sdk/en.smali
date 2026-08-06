.class public Lcom/flurry/sdk/en;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/en$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static l:Lcom/flurry/sdk/en;


# instance fields
.field a:Z

.field b:Z

.field private final d:J

.field private final e:J

.field private f:Landroid/location/LocationManager;

.field private g:Landroid/location/Criteria;

.field private h:Landroid/location/Location;

.field private i:Lcom/flurry/sdk/en$a;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/sdk/en;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/flurry/sdk/en;->d:J

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/en;->e:J

    .line 36
    iput-boolean v2, p0, Lcom/flurry/sdk/en;->a:Z

    .line 39
    iput v2, p0, Lcom/flurry/sdk/en;->k:I

    .line 44
    new-instance v0, Lcom/flurry/sdk/en$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/en$a;-><init>(Lcom/flurry/sdk/en;)V

    iput-object v0, p0, Lcom/flurry/sdk/en;->i:Lcom/flurry/sdk/en$a;

    .line 46
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v1

    .line 48
    const-string v0, "LocationCriteria"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    iput-object v0, p0, Lcom/flurry/sdk/en;->g:Landroid/location/Criteria;

    .line 49
    const-string v0, "LocationCriteria"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 50
    sget-object v0, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, LocationCriteria = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/en;->g:Landroid/location/Criteria;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "ReportLocation"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/en;->b:Z

    .line 53
    const-string v0, "ReportLocation"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 54
    sget-object v0, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettings, ReportLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/sdk/en;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/en;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/flurry/sdk/en;->h:Landroid/location/Location;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/en;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/flurry/sdk/en;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/en;->l:Lcom/flurry/sdk/en;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/flurry/sdk/en;

    invoke-direct {v0}, Lcom/flurry/sdk/en;-><init>()V

    sput-object v0, Lcom/flurry/sdk/en;->l:Lcom/flurry/sdk/en;

    .line 61
    :cond_0
    sget-object v0, Lcom/flurry/sdk/en;->l:Lcom/flurry/sdk/en;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/flurry/sdk/en;->f:Landroid/location/LocationManager;

    const-wide/32 v2, 0x1b7740

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flurry/sdk/en;->i:Lcom/flurry/sdk/en$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 164
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/flurry/sdk/en;->f:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 171
    :cond_0
    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/sdk/en;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/flurry/sdk/en;->i:Lcom/flurry/sdk/en$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/en;->a:Z

    .line 113
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    const-string v2, "LocationProvider stoped"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/flurry/sdk/en;->b:Z

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->b()Landroid/content/Context;

    move-result-object v0

    .line 128
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/en;->g()V

    .line 135
    invoke-direct {p0}, Lcom/flurry/sdk/en;->i()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-direct {p0, v0}, Lcom/flurry/sdk/en;->a(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, v0}, Lcom/flurry/sdk/en;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/en;->h:Landroid/location/Location;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/en;->a:Z

    .line 140
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    const-string v2, "LocationProvider started"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/flurry/sdk/en;->g:Landroid/location/Criteria;

    .line 145
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/en;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/flurry/sdk/en;->f:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    return-object v0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/en;->j:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 228
    const-string v0, "LocationCriteria"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    check-cast p2, Landroid/location/Criteria;

    iput-object p2, p0, Lcom/flurry/sdk/en;->g:Landroid/location/Criteria;

    .line 230
    sget-object v0, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, LocationCriteria = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/en;->g:Landroid/location/Criteria;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-boolean v0, p0, Lcom/flurry/sdk/en;->a:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/flurry/sdk/en;->h()V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const-string v0, "ReportLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/en;->b:Z

    .line 238
    sget-object v0, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, ReportLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/sdk/en;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-boolean v0, p0, Lcom/flurry/sdk/en;->b:Z

    if-eqz v0, :cond_2

    .line 241
    iget-boolean v0, p0, Lcom/flurry/sdk/en;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/flurry/sdk/en;->k:I

    if-lez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/flurry/sdk/en;->h()V

    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/en;->g()V

    goto :goto_0

    .line 250
    :cond_3
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    const-string v2, "LocationProvider internal error! Had to be LocationCriteria or ReportLocation key."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/en;->f:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->b()Landroid/content/Context;

    move-result-object v0

    .line 80
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/flurry/sdk/en;->f:Landroid/location/LocationManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    const-string v2, "Location provider subscribed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/flurry/sdk/en;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/en;->k:I

    .line 86
    iget-boolean v0, p0, Lcom/flurry/sdk/en;->a:Z

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/flurry/sdk/en;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    .prologue
    .line 92
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    const-string v2, "Location provider unsubscribed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/flurry/sdk/en;->k:I

    if-gtz v0, :cond_1

    .line 94
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    const-string v2, "Error! Unsubscribed too many times!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/flurry/sdk/en;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/en;->k:I

    .line 101
    iget v0, p0, Lcom/flurry/sdk/en;->k:I

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/flurry/sdk/en;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Landroid/location/Location;
    .locals 5

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    iget-boolean v1, p0, Lcom/flurry/sdk/en;->b:Z

    if-eqz v1, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/flurry/sdk/en;->i()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Lcom/flurry/sdk/en;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    iput-object v0, p0, Lcom/flurry/sdk/en;->h:Landroid/location/Location;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/en;->h:Landroid/location/Location;

    .line 188
    :cond_1
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/en;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocation() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/en;->k:I

    .line 194
    invoke-direct {p0}, Lcom/flurry/sdk/en;->g()V

    .line 195
    return-void
.end method
