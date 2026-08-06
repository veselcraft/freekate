.class public Lcom/inmobi/ads/al;
.super Ljava/lang/Object;
.source "PlacementDao.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/inmobi/ads/al;

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-class v0, Lcom/inmobi/ads/al;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/al;->b:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/al;->d:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "placement_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tp_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "last_accessed_ts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/al;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/inmobi/commons/core/b/b;->a()Lcom/inmobi/commons/core/b/b;

    move-result-object v0

    .line 53
    const-string v1, "placement"

    const-string v2, "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, placement_id INTEGER NOT NULL,tp_key TEXT,last_accessed_ts INTEGER NOT NULL,UNIQUE(placement_id,tp_key))"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/inmobi/commons/core/b/b;->b()V

    .line 55
    return-void
.end method

.method public static a()Lcom/inmobi/ads/al;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/inmobi/ads/al;->c:Lcom/inmobi/ads/al;

    .line 38
    if-nez v0, :cond_1

    .line 39
    sget-object v1, Lcom/inmobi/ads/al;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/al;->c:Lcom/inmobi/ads/al;

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/inmobi/ads/al;

    invoke-direct {v0}, Lcom/inmobi/ads/al;-><init>()V

    sput-object v0, Lcom/inmobi/ads/al;->c:Lcom/inmobi/ads/al;

    .line 43
    sget-object v0, Lcom/inmobi/ads/al;->c:Lcom/inmobi/ads/al;

    .line 45
    :cond_0
    monitor-exit v1

    .line 47
    :cond_1
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(J)I
    .locals 7

    .prologue
    .line 58
    invoke-static {}, Lcom/inmobi/commons/core/b/b;->a()Lcom/inmobi/commons/core/b/b;

    move-result-object v0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    sub-long/2addr v2, v4

    .line 61
    const-string v1, "placement"

    const-string v4, "last_accessed_ts<?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Lcom/inmobi/commons/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 62
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/al;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expired pids from cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/inmobi/commons/core/b/b;->b()V

    .line 64
    return v1
.end method

.method public declared-synchronized a(Ljava/util/List;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/ak;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 74
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v10

    .line 101
    :goto_0
    monitor-exit p0

    return v0

    .line 77
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/core/b/b;->a()Lcom/inmobi/commons/core/b/b;

    move-result-object v0

    move v2, v10

    .line 78
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 79
    const-string v3, "placement_id = ? AND tp_key=?"

    .line 80
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ak;

    invoke-virtual {v1}, Lcom/inmobi/ads/ak;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ak;

    invoke-virtual {v1}, Lcom/inmobi/ads/ak;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 81
    const-string v5, "placement"

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ak;

    invoke-virtual {v1}, Lcom/inmobi/ads/ak;->f()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/inmobi/commons/core/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 84
    :cond_2
    const-string v1, "placement"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/b/b;->a(Ljava/lang/String;)I

    move-result v1

    .line 85
    sub-int v9, v1, p2

    .line 87
    if-lez v9, :cond_4

    .line 88
    const-string v1, "placement"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "last_accessed_ts ASC"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/b/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 91
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 92
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v4, "id"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 91
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 95
    :cond_3
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v2, "["

    const-string v3, "("

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ")"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v2, "placement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/inmobi/commons/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/commons/core/b/b;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v9

    .line 101
    goto/16 :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/ak;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-static {}, Lcom/inmobi/commons/core/b/b;->a()Lcom/inmobi/commons/core/b/b;

    move-result-object v0

    .line 107
    const-string v1, "placement"

    sget-object v2, Lcom/inmobi/ads/al;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/b/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Lcom/inmobi/commons/core/b/b;->b()V

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 110
    new-instance v2, Lcom/inmobi/ads/ak;

    invoke-direct {v2, v0}, Lcom/inmobi/ads/ak;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    return-object v9
.end method
