.class public abstract Lcom/flurry/sdk/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/Boolean;

.field public static final g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/Boolean;

.field public static final j:Landroid/location/Criteria;

.field public static final k:Ljava/lang/Long;

.field public static final l:Ljava/lang/Boolean;

.field public static final m:Ljava/lang/Long;

.field public static final n:Ljava/lang/Byte;

.field private static o:Lcom/flurry/sdk/dn;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xaa

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->a:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->b:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->c:Ljava/lang/Integer;

    .line 43
    sput-object v0, Lcom/flurry/sdk/dm;->d:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/flurry/sdk/dm;->e:Ljava/lang/String;

    .line 47
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/flurry/sdk/dm;->f:Ljava/lang/Boolean;

    .line 48
    sput-object v1, Lcom/flurry/sdk/dm;->g:Ljava/lang/Boolean;

    .line 49
    sput-object v0, Lcom/flurry/sdk/dm;->h:Ljava/lang/String;

    .line 50
    sput-object v1, Lcom/flurry/sdk/dm;->i:Ljava/lang/Boolean;

    .line 51
    sput-object v0, Lcom/flurry/sdk/dm;->j:Landroid/location/Criteria;

    const-wide/16 v2, 0x2710

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->k:Ljava/lang/Long;

    .line 53
    sput-object v1, Lcom/flurry/sdk/dm;->l:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->m:Ljava/lang/Long;

    const/4 v0, -0x1

    .line 55
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->n:Ljava/lang/Byte;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/dn;
    .locals 2

    const-class v0, Lcom/flurry/sdk/dm;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/flurry/sdk/dn;

    invoke-direct {v1}, Lcom/flurry/sdk/dn;-><init>()V

    sput-object v1, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    .line 66
    invoke-static {}, Lcom/flurry/sdk/dm;->b()V

    .line 69
    :cond_0
    sget-object v1, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b()V
    .locals 4

    .line 77
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/flurry/sdk/dn;

    invoke-direct {v0}, Lcom/flurry/sdk/dn;-><init>()V

    sput-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    .line 81
    :cond_0
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->a:Ljava/lang/Integer;

    const-string v2, "AgentVersion"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->b:Ljava/lang/Integer;

    const-string v2, "ReleaseMajorVersion"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->c:Ljava/lang/Integer;

    const-string v2, "ReleaseMinorVersion"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->d:Ljava/lang/Integer;

    const-string v2, "ReleasePatchVersion"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "ReleaseBetaVersion"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->e:Ljava/lang/String;

    const-string v3, "VersionName"

    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->f:Ljava/lang/Boolean;

    const-string v3, "CaptureUncaughtExceptions"

    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->g:Ljava/lang/Boolean;

    const-string v3, "UseHttps"

    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->h:Ljava/lang/String;

    const-string v3, "ReportUrl"

    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->i:Ljava/lang/Boolean;

    const-string v3, "ReportLocation"

    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->j:Landroid/location/Criteria;

    const-string v3, "LocationCriteria"

    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->k:Ljava/lang/Long;

    const-string v3, "ContinueSessionMillis"

    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->l:Ljava/lang/Boolean;

    const-string v3, "LogEvents"

    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->m:Ljava/lang/Long;

    const-string v3, "Age"

    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    sget-object v1, Lcom/flurry/sdk/dm;->n:Ljava/lang/Byte;

    const-string v3, "Gender"

    invoke-virtual {v0, v3, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "UserId"

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
