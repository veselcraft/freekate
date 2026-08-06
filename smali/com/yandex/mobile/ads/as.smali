.class public Lcom/yandex/mobile/ads/as;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/as$a;,
        Lcom/yandex/mobile/ads/as$b;,
        Lcom/yandex/mobile/ads/as$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/as$b;

.field private final c:Lcom/yandex/mobile/ads/as$c;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/as$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/as$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcom/yandex/mobile/ads/report/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/as$c;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/yandex/mobile/ads/as;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/yandex/mobile/ads/as;->c:Lcom/yandex/mobile/ads/as$c;

    .line 64
    new-instance v0, Lcom/yandex/mobile/ads/as$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/as$b;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/as;->b:Lcom/yandex/mobile/ads/as$b;

    .line 65
    iput-object p3, p0, Lcom/yandex/mobile/ads/as;->d:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/as;->e:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/as;->f:Ljava/util/List;

    .line 69
    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/as$a;)Lcom/yandex/mobile/ads/ax;
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->c:Lcom/yandex/mobile/ads/as$c;

    iget v1, p1, Lcom/yandex/mobile/ads/as$a;->c:I

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/as$c;->a(I)Lcom/yandex/mobile/ads/ax;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "validateTrackingState(), validationResult = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/ax;->b()Lcom/yandex/mobile/ads/ax$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/ax$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    return-object v0
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/as;Lcom/yandex/mobile/ads/as$a;)Lcom/yandex/mobile/ads/ax;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/as$a;)Lcom/yandex/mobile/ads/ax;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/as;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->d:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/yandex/mobile/ads/as$a;Lcom/yandex/mobile/ads/ax;)V
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/yandex/mobile/ads/as;->c(Lcom/yandex/mobile/ads/ax;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/yandex/mobile/ads/as$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/q;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/as;->d(Lcom/yandex/mobile/ads/ax;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/as;Lcom/yandex/mobile/ads/as$a;Lcom/yandex/mobile/ads/ax;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/as$a;Lcom/yandex/mobile/ads/ax;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/as;Lcom/yandex/mobile/ads/ax;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/as;->d(Lcom/yandex/mobile/ads/ax;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/as;Lcom/yandex/mobile/ads/report/b$b;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/as;->b(Lcom/yandex/mobile/ads/report/b$b;)V

    return-void
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/as;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->e:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/yandex/mobile/ads/report/b$b;)V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/report/b$b;)Lcom/yandex/mobile/ads/report/b;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/mobile/ads/report/a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/report/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/report/a;->a(Lcom/yandex/mobile/ads/report/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/ax;)Z
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/yandex/mobile/ads/as;->c(Lcom/yandex/mobile/ads/ax;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/yandex/mobile/ads/as;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->f:Ljava/util/List;

    return-object v0
.end method

.method private static c(Lcom/yandex/mobile/ads/ax;)Z
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ax;->b()Lcom/yandex/mobile/ads/ax$a;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/ax$a;->a:Lcom/yandex/mobile/ads/ax$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/yandex/mobile/ads/as;)Lcom/yandex/mobile/ads/as$b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->b:Lcom/yandex/mobile/ads/as$b;

    return-object v0
.end method

.method private declared-synchronized d(Lcom/yandex/mobile/ads/ax;)V
    .locals 2

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/yandex/mobile/ads/as;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/mobile/ads/as;->h:I

    .line 199
    iget v0, p0, Lcom/yandex/mobile/ads/as;->h:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/ax;)Lcom/yandex/mobile/ads/report/b;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/mobile/ads/report/a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/report/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/report/a;->a(Lcom/yandex/mobile/ads/report/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Z
    .locals 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/yandex/mobile/ads/as;)Z
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yandex/mobile/ads/as;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method declared-synchronized a(Lcom/yandex/mobile/ads/ax;)Lcom/yandex/mobile/ads/report/b;
    .locals 3

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    const-string v1, "block_id"

    iget-object v2, p0, Lcom/yandex/mobile/ads/as;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "reason"

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/ax;->b()Lcom/yandex/mobile/ads/ax$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/ax$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/ax;->a()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    const-string v2, "asset_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->i:Lcom/yandex/mobile/ads/report/b$a;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->i:Lcom/yandex/mobile/ads/report/b$a;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/report/b$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 220
    :cond_1
    new-instance v1, Lcom/yandex/mobile/ads/report/b;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/ax;->c()Lcom/yandex/mobile/ads/report/b$b;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/report/b;-><init>(Lcom/yandex/mobile/ads/report/b$b;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/yandex/mobile/ads/report/b$b;)Lcom/yandex/mobile/ads/report/b;
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    const-string v1, "block_id"

    iget-object v2, p0, Lcom/yandex/mobile/ads/as;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->i:Lcom/yandex/mobile/ads/report/b$a;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->i:Lcom/yandex/mobile/ads/report/b$a;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/report/b$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 194
    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/report/b;

    invoke-direct {v1, p1, v0}, Lcom/yandex/mobile/ads/report/b;-><init>(Lcom/yandex/mobile/ads/report/b$b;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 4

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startTrackingIfNeeded(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {}, Lcom/yandex/mobile/ads/PhoneStateTracker;->a()Lcom/yandex/mobile/ads/PhoneStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/PhoneStateTracker;->a(Landroid/content/Context;)Z

    move-result v0

    .line 96
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yandex/mobile/ads/as;->f:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a([Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/as;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->b:Lcom/yandex/mobile/ads/as$b;

    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->b:Lcom/yandex/mobile/ads/as$b;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/as$b;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Intent;Z)V
    .locals 3

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleIntent(), intent = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAdVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clazz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 163
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 174
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 163
    :sswitch_0
    :try_start_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/as;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :pswitch_1
    if-eqz p2, :cond_1

    .line 170
    :try_start_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/as;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 163
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_0
        -0x56ac2893 -> :sswitch_1
        0x311a1d6c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/yandex/mobile/ads/report/b$a;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/yandex/mobile/ads/as;->i:Lcom/yandex/mobile/ads/report/b$a;

    .line 229
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/ax;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateNotices(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iput-object p1, p0, Lcom/yandex/mobile/ads/as;->g:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/mobile/ads/as;->h:I

    .line 78
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/as;->b()V

    .line 79
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/as;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/ax;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/ax;

    .line 85
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ax;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/mobile/ads/utils/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ax;->a()J

    move-result-wide v4

    .line 87
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ax;->c()I

    move-result v0

    .line 88
    iget-object v3, p0, Lcom/yandex/mobile/ads/as;->f:Ljava/util/List;

    new-instance v6, Lcom/yandex/mobile/ads/as$a;

    invoke-direct {v6, v2, v4, v5, v0}, Lcom/yandex/mobile/ads/as$a;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopTracking(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->b:Lcom/yandex/mobile/ads/as$b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/as$b;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->b:Lcom/yandex/mobile/ads/as$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/as$b;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 6

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "forceTracking(), mNotTrackedNotices.size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clazz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/as;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/as;->b()V

    .line 118
    sget-object v1, Lcom/yandex/mobile/ads/report/b$b;->g:Lcom/yandex/mobile/ads/report/b$b;

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/as$a;

    .line 121
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/as$a;)Lcom/yandex/mobile/ads/ax;

    move-result-object v4

    .line 122
    invoke-direct {p0, v0, v4}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/as$a;Lcom/yandex/mobile/ads/ax;)V

    .line 124
    invoke-static {v4}, Lcom/yandex/mobile/ads/as;->c(Lcom/yandex/mobile/ads/ax;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/ax;->c()Lcom/yandex/mobile/ads/report/b$b;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 128
    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v0, p0, Lcom/yandex/mobile/ads/as;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0, v1}, Lcom/yandex/mobile/ads/as;->b(Lcom/yandex/mobile/ads/report/b$b;)V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/as;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
