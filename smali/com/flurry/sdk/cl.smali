.class public Lcom/flurry/sdk/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cn$b;
.implements Lcom/flurry/sdk/ei$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/cl$a;
    }
.end annotation


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:I

.field static e:I

.field static f:I

.field private static final g:Ljava/lang/String;


# instance fields
.field private A:B

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:B

.field private E:J

.field private F:J

.field private final G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/bx$a;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cb;",
            ">;"
        }
    .end annotation
.end field

.field private I:Z

.field private J:I

.field private final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ca;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private M:I

.field private final N:Lcom/flurry/sdk/by;

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final P:Landroid/os/Handler;

.field private Q:Lcom/flurry/sdk/cn;

.field private R:Lcom/flurry/sdk/cl$a;

.field private S:I

.field private T:Z

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:Ljava/io/File;

.field private volatile l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cj;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/ej;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:J

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cj;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/flurry/sdk/cl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    .line 66
    const/16 v0, 0x64

    sput v0, Lcom/flurry/sdk/cl;->a:I

    .line 67
    const/16 v0, 0xa

    sput v0, Lcom/flurry/sdk/cl;->b:I

    .line 68
    const/16 v0, 0x3e8

    sput v0, Lcom/flurry/sdk/cl;->c:I

    .line 69
    const v0, 0x27100

    sput v0, Lcom/flurry/sdk/cl;->d:I

    .line 70
    const/16 v0, 0x32

    sput v0, Lcom/flurry/sdk/cl;->e:I

    .line 71
    const/16 v0, 0x14

    sput v0, Lcom/flurry/sdk/cl;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/cl$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/cl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/cl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/cl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/cl;->k:Ljava/io/File;

    .line 83
    iput-boolean v3, p0, Lcom/flurry/sdk/cl;->l:Z

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cl;->p:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cl;->s:Ljava/util/List;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/sdk/cl;->y:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/sdk/cl;->z:Ljava/lang/String;

    .line 105
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/flurry/sdk/cl;->A:B

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cl;->G:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cl;->H:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cl;->K:Ljava/util/List;

    .line 121
    new-instance v0, Lcom/flurry/sdk/by;

    invoke-direct {v0}, Lcom/flurry/sdk/by;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cl;->N:Lcom/flurry/sdk/by;

    .line 131
    iput-boolean v3, p0, Lcom/flurry/sdk/cl;->T:Z

    .line 155
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v2, "Initializing new Flurry session"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlurryAgentSession_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 160
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/sdk/cl;->P:Landroid/os/Handler;

    .line 162
    invoke-direct {p0}, Lcom/flurry/sdk/cl;->u()V

    .line 164
    new-instance v0, Lcom/flurry/sdk/cn;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/cn;-><init>(Lcom/flurry/sdk/cn$b;)V

    iput-object v0, p0, Lcom/flurry/sdk/cl;->Q:Lcom/flurry/sdk/cn;

    .line 165
    iput-object p3, p0, Lcom/flurry/sdk/cl;->R:Lcom/flurry/sdk/cl$a;

    .line 167
    iput-object p2, p0, Lcom/flurry/sdk/cl;->m:Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Lcom/flurry/sdk/cl;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cl;->k:Ljava/io/File;

    .line 170
    invoke-static {}, Lcom/flurry/sdk/ep;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cl;->n:Ljava/lang/String;

    .line 173
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/cl;->w:J

    .line 174
    iput v3, p0, Lcom/flurry/sdk/cl;->L:I

    .line 175
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cl;->z:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cl;->y:Ljava/lang/String;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/cl;->I:Z

    .line 178
    iput v3, p0, Lcom/flurry/sdk/cl;->J:I

    .line 179
    iput v3, p0, Lcom/flurry/sdk/cl;->M:I

    .line 181
    invoke-direct {p0}, Lcom/flurry/sdk/cl;->r()V

    .line 182
    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 3

    .prologue
    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryagent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/cl;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private B()I
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/flurry/sdk/cl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private C()I
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/flurry/sdk/cl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/flurry/sdk/cl;->t:Ljava/lang/String;

    return-object v0
.end method

.method private E()Landroid/location/Location;
    .locals 1

    .prologue
    .line 766
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bx;->n()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/cl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flurry/sdk/cl;->t:Ljava/lang/String;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/flurry/sdk/cl;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cb;

    .line 360
    invoke-virtual {v0}, Lcom/flurry/sdk/cb;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/cb;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/cb;->a(J)V

    goto :goto_0

    .line 364
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 298
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/em;->a()[B

    move-result-object v0

    .line 300
    if-eqz v0, :cond_0

    .line 301
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v3, "Fetched hashed IMEI"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/flurry/sdk/cl;->p:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/ej;->b:Lcom/flurry/sdk/ej;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    invoke-direct {p0, p1}, Lcom/flurry/sdk/cl;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/cl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/flurry/sdk/cl;->d(Landroid/content/Context;)V

    return-void
.end method

.method private a([B)V
    .locals 3

    .prologue
    .line 612
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bx;->o()Lcom/flurry/sdk/cd;

    move-result-object v0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/bx;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 614
    iget-object v2, p0, Lcom/flurry/sdk/cl;->m:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/flurry/sdk/cd;->b([BLjava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/cl;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/flurry/sdk/cl;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/flurry/sdk/cl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/cl;->s:Ljava/util/List;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 392
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/cl;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 394
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    if-eqz v0, :cond_0

    .line 396
    :try_start_2
    invoke-direct {p0, p1}, Lcom/flurry/sdk/cl;->c(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 401
    :cond_0
    :goto_1
    return-void

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/flurry/sdk/cl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/flurry/sdk/cl;->a(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 18

    .prologue
    .line 581
    const/4 v2, 0x3

    :try_start_0
    sget-object v3, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v4, "generating agent report"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 583
    new-instance v3, Lcom/flurry/sdk/cc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/sdk/cl;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flurry/sdk/cl;->n:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/flurry/sdk/cl;->D()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/flurry/sdk/cl;->q:Z

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/flurry/sdk/cl;->r:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/flurry/sdk/cl;->u:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flurry/sdk/cl;->s:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flurry/sdk/cl;->p:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/cl;->N:Lcom/flurry/sdk/by;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/flurry/sdk/by;->a(Z)Ljava/util/Map;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/flurry/sdk/cl;->a()Ljava/util/Map;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-direct/range {v3 .. v17}, Lcom/flurry/sdk/cc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V

    .line 589
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/sdk/cl;->s:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flurry/sdk/cl;->o:Ljava/util/List;

    .line 591
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/flurry/sdk/cc;->a()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 592
    const/4 v2, 0x3

    sget-object v4, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generated report of size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/flurry/sdk/cc;->a()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flurry/sdk/cl;->s:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reports."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {v3}, Lcom/flurry/sdk/cc;->a()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/cl;->a([B)V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/cl;->s:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flurry/sdk/cl;->o:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 599
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flurry/sdk/cl;->o:Ljava/util/List;

    .line 602
    invoke-direct/range {p0 .. p0}, Lcom/flurry/sdk/cl;->x()V

    .line 609
    :goto_0
    return-void

    .line 604
    :cond_0
    sget-object v2, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v3, "Error generating report"

    invoke-static {v2, v3}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 606
    :catch_0
    move-exception v2

    .line 607
    const/4 v3, 0x6

    sget-object v4, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v3, v4, v5, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/cl;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/flurry/sdk/cl;->x()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/cl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/flurry/sdk/cl;->b(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 648
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/cl;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 649
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading persistent data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/cl;->k:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    const/4 v2, 0x0

    .line 654
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/sdk/cl;->k:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 655
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 658
    :try_start_2
    new-instance v0, Lcom/flurry/sdk/cm;

    invoke-direct {v0}, Lcom/flurry/sdk/cm;-><init>()V

    .line 659
    iget-object v2, p0, Lcom/flurry/sdk/cl;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cm;->a(Ljava/io/DataInputStream;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/flurry/sdk/cl;->l:Z

    .line 661
    iget-boolean v2, p0, Lcom/flurry/sdk/cl;->l:Z

    if-eqz v2, :cond_0

    .line 662
    invoke-virtual {v0}, Lcom/flurry/sdk/cm;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/flurry/sdk/cl;->q:Z

    .line 664
    invoke-virtual {v0}, Lcom/flurry/sdk/cm;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/cl;->r:J

    .line 665
    invoke-virtual {v0}, Lcom/flurry/sdk/cm;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cl;->s:Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 675
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v1}, Lcom/flurry/sdk/fh;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 679
    :goto_1
    :try_start_4
    iget-boolean v0, p0, Lcom/flurry/sdk/cl;->l:Z

    if-nez v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/flurry/sdk/cl;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 681
    if-eqz v0, :cond_3

    .line 682
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v2, "Deleted persistence file"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 694
    :cond_1
    :goto_2
    :try_start_5
    iget-boolean v0, p0, Lcom/flurry/sdk/cl;->l:Z

    if-nez v0, :cond_2

    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/cl;->q:Z

    .line 696
    iget-wide v0, p0, Lcom/flurry/sdk/cl;->u:J

    iput-wide v0, p0, Lcom/flurry/sdk/cl;->r:J

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/cl;->l:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 699
    :cond_2
    monitor-exit p0

    return-void

    .line 668
    :catch_0
    move-exception v0

    .line 669
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 672
    :catch_1
    move-exception v0

    .line 673
    :goto_3
    :try_start_7
    sget-object v2, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v3, "Error when loading persistent file"

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/ex;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 675
    :try_start_8
    invoke-static {v1}, Lcom/flurry/sdk/fh;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 675
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_9
    invoke-static {v1}, Lcom/flurry/sdk/fh;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 684
    :cond_3
    const/4 v0, 0x6

    :try_start_a
    sget-object v1, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v2, "Cannot delete persistence file"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 687
    :catch_2
    move-exception v0

    .line 688
    const/4 v1, 0x6

    :try_start_b
    sget-object v2, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 691
    :cond_4
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v2, "Agent cache file doesn\'t exist."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 675
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 672
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method private r()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 185
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v1

    .line 187
    const-string v0, "Gender"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/flurry/sdk/cl;->D:B

    .line 188
    const-string v0, "Gender"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 189
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, Gender = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/flurry/sdk/cl;->D:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "UserId"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/cl;->C:Ljava/lang/String;

    .line 192
    const-string v0, "UserId"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 193
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, UserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/cl;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "LogEvents"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/cl;->B:Z

    .line 196
    const-string v0, "LogEvents"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 197
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, LogEvents = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/sdk/cl;->B:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "Age"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/cl;->E:J

    .line 200
    const-string v0, "Age"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 201
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, BirthDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/flurry/sdk/cl;->E:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "ContinueSessionMillis"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/cl;->F:J

    .line 205
    const-string v0, "ContinueSessionMillis"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 206
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettings, ContinueSessionMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/sdk/cl;->F:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private s()V
    .locals 4

    .prologue
    .line 250
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v1, "Start session"

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/cl;->u:J

    .line 254
    iput-wide v0, p0, Lcom/flurry/sdk/cl;->v:J

    .line 256
    new-instance v0, Lcom/flurry/sdk/cl$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/cl$1;-><init>(Lcom/flurry/sdk/cl;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cl;->a(Lcom/flurry/sdk/fi;)V

    .line 265
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v1, "Continuing previous session"

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/flurry/sdk/cl;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Lcom/flurry/sdk/cl$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/cl$2;-><init>(Lcom/flurry/sdk/cl;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cl;->a(Lcom/flurry/sdk/fi;)V

    .line 356
    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/flurry/sdk/cl$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/cl$3;-><init>(Lcom/flurry/sdk/cl;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cl;->a(Lcom/flurry/sdk/fi;)V

    .line 377
    return-void
.end method

.method private w()V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/flurry/sdk/cl$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/cl$4;-><init>(Lcom/flurry/sdk/cl;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cl;->a(Lcom/flurry/sdk/fi;)V

    .line 386
    return-void
.end method

.method private declared-synchronized x()V
    .locals 4

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/cl;->k:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/et;->a(Ljava/io/File;)Z

    move-result v0

    .line 620
    if-nez v0, :cond_0

    .line 621
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v1, "Error persisting report: could not create directory"

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :goto_0
    monitor-exit p0

    return-void

    .line 626
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/sdk/cl;->k:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 627
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 629
    new-instance v0, Lcom/flurry/sdk/cm;

    invoke-direct {v0}, Lcom/flurry/sdk/cm;-><init>()V

    .line 631
    iget-boolean v2, p0, Lcom/flurry/sdk/cl;->q:Z

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/cm;->a(Z)V

    .line 632
    iget-wide v2, p0, Lcom/flurry/sdk/cl;->r:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/cm;->a(J)V

    .line 633
    iget-object v2, p0, Lcom/flurry/sdk/cl;->s:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/cm;->a(Ljava/util/List;)V

    .line 635
    iget-object v2, p0, Lcom/flurry/sdk/cl;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/cl;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/cm;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 639
    :catch_1
    move-exception v0

    .line 640
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private y()V
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/flurry/sdk/cl;->S:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/cl;->S:I

    .line 703
    return-void
.end method

.method private z()V
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/flurry/sdk/cl;->S:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/cl;->S:I

    .line 707
    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/cl;->O:Ljava/util/Map;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/fi;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/cl;->P:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 213
    const-string v0, "Gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/flurry/sdk/cl;->D:B

    .line 215
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, Gender = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/flurry/sdk/cl;->D:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string v0, "UserId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/cl;->C:Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, UserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/cl;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    const-string v0, "LogEvents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/cl;->B:Z

    .line 221
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, LogEvents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/sdk/cl;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_2
    const-string v0, "Age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/cl;->E:J

    .line 224
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, Birthdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/sdk/cl;->E:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_3
    const-string v0, "ContinueSessionMillis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/cl;->F:J

    .line 227
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, ContinueSessionMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/sdk/cl;->F:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_4
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 548
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, "uncaught"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 551
    :goto_0
    iget v2, p0, Lcom/flurry/sdk/cl;->L:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/sdk/cl;->L:I

    .line 552
    iget-object v2, p0, Lcom/flurry/sdk/cl;->K:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/flurry/sdk/cl;->e:I

    if-ge v2, v3, :cond_2

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 554
    new-instance v0, Lcom/flurry/sdk/ca;

    invoke-direct {p0}, Lcom/flurry/sdk/cl;->C()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/ca;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    iget-object v1, p0, Lcom/flurry/sdk/cl;->K:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v1, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error logged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/sdk/ca;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v1, v0

    .line 548
    goto :goto_0

    .line 559
    :cond_2
    if-eqz v1, :cond_4

    move v8, v0

    .line 562
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/cl;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/flurry/sdk/cl;->K:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ca;

    .line 564
    invoke-virtual {v0}, Lcom/flurry/sdk/ca;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "uncaught"

    invoke-virtual {v0}, Lcom/flurry/sdk/ca;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 567
    new-instance v0, Lcom/flurry/sdk/ca;

    invoke-direct {p0}, Lcom/flurry/sdk/cl;->C()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/ca;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    iget-object v1, p0, Lcom/flurry/sdk/cl;->K:Ljava/util/List;

    invoke-interface {v1, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 562
    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 574
    :cond_4
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v1, "Max errors logged. No more errors logged."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/cl;->v:J

    sub-long v4, v0, v2

    .line 457
    invoke-static {p1}, Lcom/flurry/sdk/fh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 504
    :goto_0
    monitor-exit p0

    return-void

    .line 461
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/cl;->G:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bx$a;

    .line 462
    if-nez v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/flurry/sdk/cl;->G:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/flurry/sdk/cl;->a:I

    if-ge v0, v1, :cond_1

    .line 464
    new-instance v0, Lcom/flurry/sdk/bx$a;

    invoke-direct {v0}, Lcom/flurry/sdk/bx$a;-><init>()V

    .line 465
    const/4 v1, 0x1

    iput v1, v0, Lcom/flurry/sdk/bx$a;->a:I

    .line 466
    iget-object v1, p0, Lcom/flurry/sdk/cl;->G:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event count started: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_1
    iget-boolean v0, p0, Lcom/flurry/sdk/cl;->B:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/sdk/cl;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/flurry/sdk/cl;->c:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/flurry/sdk/cl;->J:I

    sget v1, Lcom/flurry/sdk/cl;->d:I

    if-ge v0, v1, :cond_5

    .line 479
    if-nez p2, :cond_6

    .line 480
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 482
    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/flurry/sdk/cl;->b:I

    if-le v0, v1, :cond_3

    .line 483
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxEventParams exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 470
    :cond_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many different events. Event not counted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 474
    :cond_2
    iget v1, v0, Lcom/flurry/sdk/bx$a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/flurry/sdk/bx$a;->a:I

    .line 475
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event count incremented: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 485
    :cond_3
    new-instance v0, Lcom/flurry/sdk/cb;

    invoke-direct {p0}, Lcom/flurry/sdk/cl;->B()I

    move-result v1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/cb;-><init>(ILjava/lang/String;Ljava/util/Map;JZ)V

    .line 488
    invoke-virtual {v0}, Lcom/flurry/sdk/cb;->d()I

    move-result v1

    iget v2, p0, Lcom/flurry/sdk/cl;->J:I

    add-int/2addr v1, v2

    sget v2, Lcom/flurry/sdk/cl;->d:I

    if-gt v1, v2, :cond_4

    .line 489
    iget-object v1, p0, Lcom/flurry/sdk/cl;->H:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget v1, p0, Lcom/flurry/sdk/cl;->J:I

    invoke-virtual {v0}, Lcom/flurry/sdk/cb;->d()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/cl;->J:I

    goto/16 :goto_0

    .line 494
    :cond_4
    sget v0, Lcom/flurry/sdk/cl;->d:I

    iput v0, p0, Lcom/flurry/sdk/cl;->J:I

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/cl;->I:Z

    .line 497
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v1, "Event Log size exceeded. No more event details logged."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 502
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/cl;->I:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_6
    move-object v3, p2

    goto/16 :goto_2
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/flurry/sdk/cl;->O:Ljava/util/Map;

    .line 135
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/cl;->q:Z

    .line 147
    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/cl;->Q:Lcom/flurry/sdk/cn;

    invoke-virtual {v0}, Lcom/flurry/sdk/cn;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/cl;->Q:Lcom/flurry/sdk/cn;

    invoke-virtual {v0}, Lcom/flurry/sdk/cn;->a()V

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/cl;->y()V

    .line 241
    iget-boolean v0, p0, Lcom/flurry/sdk/cl;->T:Z

    if-nez v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/flurry/sdk/cl;->s()V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/cl;->T:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_0
    monitor-exit p0

    return-void

    .line 245
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/flurry/sdk/cl;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 4

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v1, "Trying to end session"

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-boolean v0, p0, Lcom/flurry/sdk/cl;->T:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 279
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 280
    iget-wide v2, p0, Lcom/flurry/sdk/cl;->v:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/cl;->w:J

    .line 282
    iget-wide v0, p0, Lcom/flurry/sdk/cl;->w:J

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/cl;->a(J)V

    .line 284
    invoke-direct {p0}, Lcom/flurry/sdk/cl;->v()V

    .line 286
    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->i()I

    move-result v0

    if-lez v0, :cond_2

    .line 287
    invoke-direct {p0}, Lcom/flurry/sdk/cl;->z()V

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->i()I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/flurry/sdk/cl;->Q:Lcom/flurry/sdk/cn;

    iget-wide v2, p0, Lcom/flurry/sdk/cl;->F:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/cn;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 4

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->i()I

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! Session with apiKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was ended while getSessionCount() is not 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/cl;->T:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 345
    :goto_0
    monitor-exit p0

    return-void

    .line 320
    :cond_1
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v1, "Ending session"

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/cl;->S:I

    .line 324
    iget-object v0, p0, Lcom/flurry/sdk/cl;->Q:Lcom/flurry/sdk/cn;

    invoke-virtual {v0}, Lcom/flurry/sdk/cn;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/flurry/sdk/cl;->Q:Lcom/flurry/sdk/cn;

    invoke-virtual {v0}, Lcom/flurry/sdk/cn;->a()V

    .line 329
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/cl;->w()V

    .line 331
    iget-object v0, p0, Lcom/flurry/sdk/cl;->R:Lcom/flurry/sdk/cl$a;

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/flurry/sdk/cl;->R:Lcom/flurry/sdk/cl$a;

    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/sdk/cl$a;->d(Ljava/lang/String;)V

    .line 335
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "Gender"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ei;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 337
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "UserId"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ei;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 339
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "Age"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ei;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 340
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ei;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 342
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "ContinueSessionMillis"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ei;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 344
    iget-object v0, p0, Lcom/flurry/sdk/cl;->P:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()Lcom/flurry/sdk/cj;
    .locals 3

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/flurry/sdk/ck;

    invoke-direct {v2}, Lcom/flurry/sdk/ck;-><init>()V

    .line 409
    iget-object v0, p0, Lcom/flurry/sdk/cl;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->a(Ljava/lang/String;)V

    .line 410
    iget-wide v0, p0, Lcom/flurry/sdk/cl;->u:J

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/ck;->a(J)V

    .line 411
    iget-wide v0, p0, Lcom/flurry/sdk/cl;->w:J

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/ck;->b(J)V

    .line 412
    iget-wide v0, p0, Lcom/flurry/sdk/cl;->x:J

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/ck;->c(J)V

    .line 413
    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->b(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->c(Ljava/lang/String;)V

    .line 415
    iget-byte v0, p0, Lcom/flurry/sdk/cl;->A:B

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->a(I)V

    .line 416
    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->d(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/flurry/sdk/cl;->E()Landroid/location/Location;

    move-result-object v0

    .line 419
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->a(Landroid/location/Location;)V

    .line 421
    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->b(I)V

    .line 422
    iget-byte v0, p0, Lcom/flurry/sdk/cl;->D:B

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->a(B)V

    .line 423
    iget-wide v0, p0, Lcom/flurry/sdk/cl;->E:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->a(Ljava/lang/Long;)V

    .line 425
    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->q()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/Map;)V

    .line 426
    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->o()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->a(Ljava/util/List;)V

    .line 427
    iget-boolean v0, p0, Lcom/flurry/sdk/cl;->I:Z

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->a(Z)V

    .line 429
    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->p()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->b(Ljava/util/List;)V

    .line 430
    iget v0, p0, Lcom/flurry/sdk/cl;->L:I

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ck;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    const/4 v1, 0x0

    .line 434
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/cj;

    invoke-direct {v0, v2}, Lcom/flurry/sdk/cj;-><init>(Lcom/flurry/sdk/ck;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :goto_0
    if-nez v0, :cond_0

    .line 440
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/cl;->g:Ljava/lang/String;

    const-string v2, "New session report wasn\'t created"

    invoke-static {v1, v2}, Lcom/flurry/sdk/ex;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    :cond_0
    monitor-exit p0

    return-object v0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method h()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/flurry/sdk/cl;->M:I

    return v0
.end method

.method i()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/flurry/sdk/cl;->S:I

    return v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/flurry/sdk/cl;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/cl;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/flurry/sdk/cl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/flurry/sdk/cl;->y:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/flurry/sdk/cl;->z:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .locals 0

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/flurry/sdk/cl;->e()V

    .line 772
    return-void
.end method

.method o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 775
    iget-object v0, p0, Lcom/flurry/sdk/cl;->H:Ljava/util/List;

    return-object v0
.end method

.method p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ca;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lcom/flurry/sdk/cl;->K:Ljava/util/List;

    return-object v0
.end method

.method q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/bx$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    iget-object v0, p0, Lcom/flurry/sdk/cl;->G:Ljava/util/Map;

    return-object v0
.end method
