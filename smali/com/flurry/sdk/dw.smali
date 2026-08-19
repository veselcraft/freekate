.class public Lcom/flurry/sdk/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dn$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dw$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "dw"

.field private static o:Lcom/flurry/sdk/dw;


# instance fields
.field a:Z

.field b:Z

.field private final d:I

.field private final e:J

.field private final f:J

.field private g:Landroid/location/LocationManager;

.field private h:Landroid/location/Criteria;

.field private i:Landroid/location/Location;

.field private j:Lcom/flurry/sdk/dw$a;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private volatile n:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 27
    iput v0, p0, Lcom/flurry/sdk/dw;->d:I

    const-wide/16 v0, 0x2710

    .line 28
    iput-wide v0, p0, Lcom/flurry/sdk/dw;->e:J

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/flurry/sdk/dw;->f:J

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/flurry/sdk/dw;->a:Z

    .line 39
    iput v0, p0, Lcom/flurry/sdk/dw;->l:I

    .line 41
    iput v0, p0, Lcom/flurry/sdk/dw;->m:I

    .line 48
    new-instance v0, Lcom/flurry/sdk/dw$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dw$a;-><init>(Lcom/flurry/sdk/dw;)V

    iput-object v0, p0, Lcom/flurry/sdk/dw;->j:Lcom/flurry/sdk/dw$a;

    .line 50
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "LocationCriteria"

    .line 52
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Criteria;

    iput-object v2, p0, Lcom/flurry/sdk/dw;->h:Landroid/location/Criteria;

    .line 53
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V

    .line 54
    sget-object v1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, LocationCriteria = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flurry/sdk/dw;->h:Landroid/location/Criteria;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "ReportLocation"

    .line 56
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/flurry/sdk/dw;->b:Z

    .line 57
    invoke-virtual {v0, v2, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettings, ReportLocation = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flurry/sdk/dw;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dw;)I
    .locals 1

    .line 20
    iget v0, p0, Lcom/flurry/sdk/dw;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/dw;->m:I

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/dw;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/flurry/sdk/dw;->i:Landroid/location/Location;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/dw;
    .locals 2

    const-class v0, Lcom/flurry/sdk/dw;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dw;->o:Lcom/flurry/sdk/dw;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/flurry/sdk/dw;

    invoke-direct {v1}, Lcom/flurry/sdk/dw;-><init>()V

    sput-object v1, Lcom/flurry/sdk/dw;->o:Lcom/flurry/sdk/dw;

    .line 65
    :cond_0
    sget-object v1, Lcom/flurry/sdk/dw;->o:Lcom/flurry/sdk/dw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/flurry/sdk/dw;->j:Lcom/flurry/sdk/dw$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/dw;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->i()V

    return-void
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/flurry/sdk/dw;->j:Lcom/flurry/sdk/dw$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/flurry/sdk/dw;->a:Z

    .line 132
    iput v0, p0, Lcom/flurry/sdk/dw;->m:I

    .line 133
    sget-object v0, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "LocationProvider stopped"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 3

    .line 142
    iget-boolean v0, p0, Lcom/flurry/sdk/dw;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dw;->n:Landroid/location/Location;

    if-eqz v0, :cond_1

    return-void

    .line 150
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->i()V

    .line 158
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->k()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-direct {p0, v0}, Lcom/flurry/sdk/dw;->a(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, v0}, Lcom/flurry/sdk/dw;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dw;->i:Landroid/location/Location;

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/flurry/sdk/dw;->a:Z

    const/4 v0, 0x4

    .line 163
    sget-object v1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;

    const-string v2, "LocationProvider started"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/dw;->h:Landroid/location/Criteria;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/dw;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dw;->k:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x4

    .line 178
    sget-object v2, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "LocationCriteria"

    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 261
    check-cast p2, Landroid/location/Criteria;

    iput-object p2, p0, Lcom/flurry/sdk/dw;->h:Landroid/location/Criteria;

    .line 262
    sget-object p1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingUpdate, LocationCriteria = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flurry/sdk/dw;->h:Landroid/location/Criteria;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-boolean p1, p0, Lcom/flurry/sdk/dw;->a:Z

    if-eqz p1, :cond_3

    .line 265
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->j()V

    goto :goto_0

    :cond_0
    const-string v0, "ReportLocation"

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 269
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/dw;->b:Z

    .line 270
    sget-object p1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingUpdate, ReportLocation = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/flurry/sdk/dw;->b:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-boolean p1, p0, Lcom/flurry/sdk/dw;->b:Z

    if-eqz p1, :cond_1

    .line 273
    iget-boolean p1, p0, Lcom/flurry/sdk/dw;->a:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/flurry/sdk/dw;->l:I

    if-lez p1, :cond_3

    .line 274
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->j()V

    goto :goto_0

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->i()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    .line 282
    sget-object p2, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;

    const-string v0, "LocationProvider internal error! Had to be LocationCriteria or ReportLocation key."

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 80
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/flurry/sdk/dw;->g:Landroid/location/LocationManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 88
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;

    const-string v2, "Location provider subscribed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/flurry/sdk/dw;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/dw;->l:I

    .line 90
    iget-boolean v0, p0, Lcom/flurry/sdk/dw;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/flurry/sdk/dw;->m:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 96
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;

    const-string v2, "Location provider unsubscribed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lcom/flurry/sdk/dw;->l:I

    if-gtz v0, :cond_0

    const/4 v0, 0x6

    const-string v2, "Error! Unsubscribed too many times!"

    .line 99
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 104
    :try_start_1
    iput v0, p0, Lcom/flurry/sdk/dw;->l:I

    if-nez v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Landroid/location/Location;
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/flurry/sdk/dw;->n:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/flurry/sdk/dw;->n:Landroid/location/Location;

    return-object v0

    .line 204
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/dw;->b:Z

    if-eqz v0, :cond_2

    .line 205
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->k()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-direct {p0, v0}, Lcom/flurry/sdk/dw;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iput-object v0, p0, Lcom/flurry/sdk/dw;->i:Landroid/location/Location;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dw;->i:Landroid/location/Location;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    .line 215
    sget-object v2, Lcom/flurry/sdk/dw;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocation() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/flurry/sdk/dw;->l:I

    .line 221
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->i()V

    return-void
.end method
