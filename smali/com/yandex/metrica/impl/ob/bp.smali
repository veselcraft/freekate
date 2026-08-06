.class public Lcom/yandex/metrica/impl/ob/bp;
.super Lcom/yandex/metrica/impl/ob/bm;
.source "SourceFile"


# static fields
.field public static final c:Lcom/yandex/metrica/impl/ob/bv;

.field public static final d:Lcom/yandex/metrica/impl/ob/bv;

.field private static final e:Lcom/yandex/metrica/impl/ob/bv;

.field private static final f:Lcom/yandex/metrica/impl/ob/bv;

.field private static final g:Lcom/yandex/metrica/impl/ob/bv;

.field private static final h:Lcom/yandex/metrica/impl/ob/bv;

.field private static final i:Lcom/yandex/metrica/impl/ob/bv;

.field private static final j:Lcom/yandex/metrica/impl/ob/bv;

.field private static final k:Lcom/yandex/metrica/impl/ob/bv;

.field private static final l:Lcom/yandex/metrica/impl/ob/bv;

.field private static final m:Lcom/yandex/metrica/impl/ob/bv;

.field private static final n:Lcom/yandex/metrica/impl/ob/bv;

.field private static final o:Lcom/yandex/metrica/impl/ob/bv;

.field private static final p:Lcom/yandex/metrica/impl/ob/bv;

.field private static final q:Lcom/yandex/metrica/impl/ob/bv;

.field private static final r:Lcom/yandex/metrica/impl/ob/bv;

.field private static final s:Lcom/yandex/metrica/impl/ob/bv;

.field private static final t:Lcom/yandex/metrica/impl/ob/bv;


# instance fields
.field private A:Lcom/yandex/metrica/impl/ob/bv;

.field private B:Lcom/yandex/metrica/impl/ob/bv;

.field private C:Lcom/yandex/metrica/impl/ob/bv;

.field private D:Lcom/yandex/metrica/impl/ob/bv;

.field private E:Lcom/yandex/metrica/impl/ob/bv;

.field private F:Lcom/yandex/metrica/impl/ob/bv;

.field private G:Lcom/yandex/metrica/impl/ob/bv;

.field private H:Lcom/yandex/metrica/impl/ob/bv;

.field private I:Lcom/yandex/metrica/impl/ob/bv;

.field private J:Lcom/yandex/metrica/impl/ob/bv;

.field private u:Lcom/yandex/metrica/impl/ob/bv;

.field private v:Lcom/yandex/metrica/impl/ob/bv;

.field private w:Lcom/yandex/metrica/impl/ob/bv;

.field private x:Lcom/yandex/metrica/impl/ob/bv;

.field private y:Lcom/yandex/metrica/impl/ob/bv;

.field private z:Lcom/yandex/metrica/impl/ob/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "SESSION_SLEEP_START_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->e:Lcom/yandex/metrica/impl/ob/bv;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "SESSION_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->f:Lcom/yandex/metrica/impl/ob/bv;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "SESSION_COUNTER_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->g:Lcom/yandex/metrica/impl/ob/bv;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "SESSION_INIT_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->h:Lcom/yandex/metrica/impl/ob/bv;

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "SESSION_ALIVE_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->i:Lcom/yandex/metrica/impl/ob/bv;

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "SESSION_IS_ALIVE_REPORT_NEEDED_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->j:Lcom/yandex/metrica/impl/ob/bv;

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "BG_SESSION_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->k:Lcom/yandex/metrica/impl/ob/bv;

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "BG_SESSION_SLEEP_START_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->l:Lcom/yandex/metrica/impl/ob/bv;

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "BG_SESSION_COUNTER_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->m:Lcom/yandex/metrica/impl/ob/bv;

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "BG_SESSION_INIT_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->n:Lcom/yandex/metrica/impl/ob/bv;

    .line 44
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "COLLECT_INSTALLED_APPS_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->o:Lcom/yandex/metrica/impl/ob/bv;

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "IDENTITY_SEND_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->p:Lcom/yandex/metrica/impl/ob/bv;

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "USER_INFO_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->q:Lcom/yandex/metrica/impl/ob/bv;

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "REFERRER_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->r:Lcom/yandex/metrica/impl/ob/bv;

    .line 50
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "APP_ENVIRONMENT"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->c:Lcom/yandex/metrica/impl/ob/bv;

    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "APP_ENVIRONMENT_REVISION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->d:Lcom/yandex/metrica/impl/ob/bv;

    .line 53
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "APP_ENVIRONMENT_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->s:Lcom/yandex/metrica/impl/ob/bv;

    .line 54
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "APP_ENVIRONMENT_REVISION_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bp;->t:Lcom/yandex/metrica/impl/ob/bv;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->d()V

    .line 87
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bp;->a(I)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/bp;->b(I)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/bp;->c(I)V

    .line 90
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->x:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Lcom/yandex/metrica/impl/b$a;
    .locals 6

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/b$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bp;->I:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bp;->J:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/b$a;-><init>(Ljava/lang/String;J)V

    monitor-exit p0

    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/bp;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->F:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/b$a;)Lcom/yandex/metrica/impl/ob/bp;
    .locals 4

    .prologue
    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->I:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    .line 203
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->J:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcom/yandex/metrica/impl/b$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    .line 204
    monitor-exit p0

    .line 205
    return-object p0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->G:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->y:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/bw;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 262
    return-void
.end method

.method public a(Z)Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->z:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(J)J
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->D:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lcom/yandex/metrica/CounterConfiguration$a;
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->F:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v2, v2, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration$a;->a(I)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lcom/yandex/metrica/impl/ob/bp;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->z:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->H:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->u:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/bw;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 266
    return-void
.end method

.method public c(J)J
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->y:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/bp;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->H:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bp;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bp;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->G:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->w:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/bw;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 270
    return-void
.end method

.method public d(J)J
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->E:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bp;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->H:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->F:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v2, v2, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e(J)J
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->v:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)J
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->A:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(J)J
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->w:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "_boundentrypreferences"

    return-object v0
.end method

.method public h(J)J
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->C:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i(J)J
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->u:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected i()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/bm;->i()V

    .line 96
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->e:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->u:Lcom/yandex/metrica/impl/ob/bv;

    .line 97
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->v:Lcom/yandex/metrica/impl/ob/bv;

    .line 98
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->g:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->w:Lcom/yandex/metrica/impl/ob/bv;

    .line 99
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->h:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->x:Lcom/yandex/metrica/impl/ob/bv;

    .line 100
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->i:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->y:Lcom/yandex/metrica/impl/ob/bv;

    .line 101
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->j:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->z:Lcom/yandex/metrica/impl/ob/bv;

    .line 105
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->k:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->A:Lcom/yandex/metrica/impl/ob/bv;

    .line 106
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->l:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->B:Lcom/yandex/metrica/impl/ob/bv;

    .line 107
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->m:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->C:Lcom/yandex/metrica/impl/ob/bv;

    .line 108
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->n:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->D:Lcom/yandex/metrica/impl/ob/bv;

    .line 111
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->p:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->E:Lcom/yandex/metrica/impl/ob/bv;

    .line 112
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->o:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->F:Lcom/yandex/metrica/impl/ob/bv;

    .line 113
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->q:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->G:Lcom/yandex/metrica/impl/ob/bv;

    .line 114
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->r:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->H:Lcom/yandex/metrica/impl/ob/bv;

    .line 116
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->s:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->I:Lcom/yandex/metrica/impl/ob/bv;

    .line 117
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->t:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->J:Lcom/yandex/metrica/impl/ob/bv;

    .line 118
    return-void
.end method

.method public j(J)J
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->B:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public k(J)Lcom/yandex/metrica/impl/ob/bp;
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->x:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public l(J)Lcom/yandex/metrica/impl/ob/bp;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->D:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public m(J)Lcom/yandex/metrica/impl/ob/bp;
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->y:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public n(J)Lcom/yandex/metrica/impl/ob/bp;
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->E:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public o(J)Lcom/yandex/metrica/impl/ob/bp;
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->v:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public p(J)Lcom/yandex/metrica/impl/ob/bp;
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->A:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public q(J)Lcom/yandex/metrica/impl/ob/bp;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->w:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public r(J)Lcom/yandex/metrica/impl/ob/bp;
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->C:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public s(J)Lcom/yandex/metrica/impl/ob/bp;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->u:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method

.method public t(J)Lcom/yandex/metrica/impl/ob/bp;
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->B:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bp;

    return-object v0
.end method
