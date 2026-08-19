.class public final Lcom/my/target/fk;
.super Lcom/my/target/fj;
.source "FingerprintDataProvider.java"


# static fields
.field private static final hB:Lcom/my/target/fk;


# instance fields
.field private final hC:Lcom/my/target/fh;

.field private final hD:Lcom/my/target/fi;

.field private final hE:Lcom/my/target/fl;

.field private final hF:Lcom/my/target/fn;

.field private final hG:Lcom/my/target/fm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/my/target/fk;

    invoke-direct {v0}, Lcom/my/target/fk;-><init>()V

    sput-object v0, Lcom/my/target/fk;->hB:Lcom/my/target/fk;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/my/target/fj;-><init>()V

    .line 39
    new-instance v0, Lcom/my/target/fh;

    invoke-direct {v0}, Lcom/my/target/fh;-><init>()V

    iput-object v0, p0, Lcom/my/target/fk;->hC:Lcom/my/target/fh;

    .line 40
    new-instance v0, Lcom/my/target/fi;

    invoke-direct {v0}, Lcom/my/target/fi;-><init>()V

    iput-object v0, p0, Lcom/my/target/fk;->hD:Lcom/my/target/fi;

    .line 41
    new-instance v0, Lcom/my/target/fl;

    invoke-direct {v0}, Lcom/my/target/fl;-><init>()V

    iput-object v0, p0, Lcom/my/target/fk;->hE:Lcom/my/target/fl;

    .line 42
    new-instance v0, Lcom/my/target/fn;

    invoke-direct {v0}, Lcom/my/target/fn;-><init>()V

    iput-object v0, p0, Lcom/my/target/fk;->hF:Lcom/my/target/fn;

    .line 43
    new-instance v0, Lcom/my/target/fm;

    invoke-direct {v0}, Lcom/my/target/fm;-><init>()V

    iput-object v0, p0, Lcom/my/target/fk;->hG:Lcom/my/target/fm;

    return-void
.end method

.method public static dO()Lcom/my/target/fk;
    .locals 1

    .line 31
    sget-object v0, Lcom/my/target/fk;->hB:Lcom/my/target/fk;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized collectData(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string p1, "FingerprintDataProvider: You must not call collectData method from main thread"

    .line 60
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 64
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/my/target/fj;->removeAll()V

    .line 66
    iget-object v0, p0, Lcom/my/target/fk;->hC:Lcom/my/target/fh;

    invoke-virtual {v0, p1}, Lcom/my/target/fh;->collectData(Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lcom/my/target/fk;->hD:Lcom/my/target/fi;

    invoke-virtual {v0, p1}, Lcom/my/target/fi;->collectData(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lcom/my/target/fk;->hE:Lcom/my/target/fl;

    invoke-virtual {v0, p1}, Lcom/my/target/fl;->collectData(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/my/target/fk;->hF:Lcom/my/target/fn;

    invoke-virtual {v0, p1}, Lcom/my/target/fn;->collectData(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/my/target/fk;->hG:Lcom/my/target/fm;

    invoke-virtual {v0, p1}, Lcom/my/target/fm;->collectData(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lcom/my/target/fj;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/my/target/fk;->hC:Lcom/my/target/fh;

    invoke-virtual {v0, p1}, Lcom/my/target/fj;->putDataTo(Ljava/util/Map;)V

    .line 75
    iget-object v0, p0, Lcom/my/target/fk;->hD:Lcom/my/target/fi;

    invoke-virtual {v0, p1}, Lcom/my/target/fj;->putDataTo(Ljava/util/Map;)V

    .line 76
    iget-object v0, p0, Lcom/my/target/fk;->hE:Lcom/my/target/fl;

    invoke-virtual {v0, p1}, Lcom/my/target/fj;->putDataTo(Ljava/util/Map;)V

    .line 77
    iget-object v0, p0, Lcom/my/target/fk;->hF:Lcom/my/target/fn;

    invoke-virtual {v0, p1}, Lcom/my/target/fj;->putDataTo(Ljava/util/Map;)V

    .line 78
    iget-object v0, p0, Lcom/my/target/fk;->hG:Lcom/my/target/fm;

    invoke-virtual {v0, p1}, Lcom/my/target/fj;->putDataTo(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dP()Lcom/my/target/fi;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/my/target/fk;->hD:Lcom/my/target/fi;

    return-object v0
.end method
