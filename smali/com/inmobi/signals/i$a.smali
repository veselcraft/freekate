.class Lcom/inmobi/signals/i$a;
.super Landroid/os/Handler;
.source "IceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/inmobi/signals/i$a;Lcom/inmobi/signals/m;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/inmobi/signals/i$a;->a(Lcom/inmobi/signals/m;)V

    return-void
.end method

.method private a(Lcom/inmobi/signals/l;)V
    .locals 6

    .prologue
    .line 188
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v3

    .line 189
    new-instance v0, Lcom/inmobi/signals/k;

    invoke-virtual {v3}, Lcom/inmobi/signals/p$b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/inmobi/signals/p$b;->f()I

    move-result v2

    invoke-virtual {v3}, Lcom/inmobi/signals/p$b;->g()I

    move-result v3

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/signals/o;->d()Lcom/inmobi/commons/core/utilities/uid/d;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/signals/k;-><init>(Ljava/lang/String;IILcom/inmobi/commons/core/utilities/uid/d;Lcom/inmobi/signals/l;)V

    .line 190
    new-instance v1, Lcom/inmobi/signals/j;

    invoke-direct {v1, v0}, Lcom/inmobi/signals/j;-><init>(Lcom/inmobi/signals/k;)V

    .line 191
    invoke-virtual {v1}, Lcom/inmobi/signals/j;->a()V

    .line 192
    return-void
.end method

.method private a(Lcom/inmobi/signals/m;)V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/signals/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/p$b;->d()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 164
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/c/e;

    const-string v2, "signals"

    const-string v3, "SampleSizeExceeded"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/e;)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/p$b;->d()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    .line 197
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 199
    if-eqz v0, :cond_0

    .line 201
    const/4 v3, 0x1

    .line 202
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 204
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 206
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/i;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Is app in foreground check for below ICS: true"

    invoke-static {v0, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 217
    :goto_0
    return v0

    .line 211
    :catch_0
    move-exception v0

    .line 214
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/i;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NPE while determining if app is in foreground for below ICS devices."

    invoke-static {v1, v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v2

    .line 217
    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 118
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User data collection started."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/inmobi/signals/i$a;->sendEmptyMessage(I)Z

    .line 120
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 123
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping user data collection."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->a()Lcom/inmobi/signals/activityrecognition/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/activityrecognition/b;->c()V

    .line 126
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/inmobi/signals/i$a;->removeMessages(I)V

    .line 127
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inmobi/signals/i$a;->sendEmptyMessage(I)Z

    .line 128
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/inmobi/signals/m;

    invoke-direct {v0}, Lcom/inmobi/signals/m;-><init>()V

    .line 132
    invoke-static {}, Lcom/inmobi/signals/b/b;->a()Lcom/inmobi/signals/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/m;->a(Lcom/inmobi/signals/b/a;)V

    .line 133
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->a()Lcom/inmobi/signals/LocationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/LocationInfo;->f()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/m;->a(Ljava/util/Map;)V

    .line 135
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/p$b;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/inmobi/signals/b/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    new-instance v1, Lcom/inmobi/signals/i$a$1;

    invoke-direct {v1, p0, v0}, Lcom/inmobi/signals/i$a$1;-><init>(Lcom/inmobi/signals/i$a;Lcom/inmobi/signals/m;)V

    .line 152
    invoke-static {v1}, Lcom/inmobi/signals/b/c;->a(Lcom/inmobi/signals/b/c$a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-direct {p0, v0}, Lcom/inmobi/signals/i$a;->a(Lcom/inmobi/signals/m;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-direct {p0, v0}, Lcom/inmobi/signals/i$a;->a(Lcom/inmobi/signals/m;)V

    goto :goto_0
.end method

.method private e()Lcom/inmobi/signals/l;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/inmobi/signals/l;

    invoke-direct {v0}, Lcom/inmobi/signals/l;-><init>()V

    .line 175
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->a()Lcom/inmobi/signals/LocationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/LocationInfo;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/l;->a(Ljava/util/Map;)V

    .line 176
    iget-object v1, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/l;->a(Ljava/util/List;)V

    .line 177
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/n;->d()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/l;->a(Lcom/inmobi/commons/core/utilities/info/f;)V

    .line 178
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->a()Lcom/inmobi/signals/activityrecognition/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/activityrecognition/b;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/l;->b(Ljava/util/List;)V

    .line 179
    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->a()Lcom/inmobi/signals/activityrecognition/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/activityrecognition/b;->e()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/i$a;->a:Ljava/util/List;

    .line 185
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 85
    :pswitch_0
    invoke-direct {p0}, Lcom/inmobi/signals/i$a;->b()V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/inmobi/signals/i$a;->c()V

    goto :goto_0

    .line 91
    :pswitch_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Polling for samples."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 94
    invoke-static {}, Lcom/inmobi/signals/i$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/inmobi/signals/i$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->a()Lcom/inmobi/signals/activityrecognition/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/activityrecognition/b;->b()V

    .line 106
    :goto_1
    invoke-direct {p0}, Lcom/inmobi/signals/i$a;->d()V

    .line 107
    const/4 v0, 0x3

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/p$b;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/signals/i$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->a()Lcom/inmobi/signals/activityrecognition/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/activityrecognition/b;->c()V

    goto :goto_1

    .line 110
    :pswitch_3
    invoke-direct {p0}, Lcom/inmobi/signals/i$a;->e()Lcom/inmobi/signals/l;

    move-result-object v0

    .line 111
    invoke-direct {p0, v0}, Lcom/inmobi/signals/i$a;->a(Lcom/inmobi/signals/l;)V

    .line 112
    invoke-direct {p0}, Lcom/inmobi/signals/i$a;->f()V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
