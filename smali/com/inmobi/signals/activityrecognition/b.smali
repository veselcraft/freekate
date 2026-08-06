.class public Lcom/inmobi/signals/activityrecognition/b;
.super Ljava/lang/Object;
.source "ActivityRecognitionSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/signals/activityrecognition/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/inmobi/signals/activityrecognition/b;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/activityrecognition/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Landroid/os/HandlerThread;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/inmobi/signals/activityrecognition/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/activityrecognition/b;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/signals/activityrecognition/b;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/signals/activityrecognition/b;->d:Ljava/util/List;

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ActivityRecognitionSampler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->e:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Lcom/inmobi/signals/activityrecognition/b$a;

    iget-object v1, p0, Lcom/inmobi/signals/activityrecognition/b;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/signals/activityrecognition/b$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->f:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method public static a()Lcom/inmobi/signals/activityrecognition/b;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/inmobi/signals/activityrecognition/b;->c:Lcom/inmobi/signals/activityrecognition/b;

    .line 34
    if-nez v0, :cond_1

    .line 35
    sget-object v1, Lcom/inmobi/signals/activityrecognition/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/inmobi/signals/activityrecognition/b;->c:Lcom/inmobi/signals/activityrecognition/b;

    .line 37
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/inmobi/signals/activityrecognition/b;

    invoke-direct {v0}, Lcom/inmobi/signals/activityrecognition/b;-><init>()V

    .line 39
    sput-object v0, Lcom/inmobi/signals/activityrecognition/b;->c:Lcom/inmobi/signals/activityrecognition/b;

    .line 41
    :cond_0
    monitor-exit v1

    .line 43
    :cond_1
    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/signals/activityrecognition/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/signals/activityrecognition/b;->d:Ljava/util/List;

    return-object v0
.end method

.method private static h()Z
    .locals 3

    .prologue
    .line 114
    const-string v0, "com.google.android.gms.permission.ACTIVITY_RECOGNITION"

    .line 116
    const-string v0, "signals"

    const-string v1, "com.google.android.gms.permission.ACTIVITY_RECOGNITION"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/activityrecognition/b;->a:Ljava/lang/String;

    const-string v2, "Activity recognition sampling did not work due to missing permission."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static i()Z
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const/high16 v2, 0x10000

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    .line 134
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/activityrecognition/b;->a:Ljava/lang/String;

    const-string v2, "Activity recognition sampling did not work due to missing service in manifest."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a()V

    .line 61
    iget-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b()V

    .line 72
    iget-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/activityrecognition/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/inmobi/signals/activityrecognition/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/signals/activityrecognition/b;->d:Ljava/util/List;

    .line 82
    return-void
.end method
