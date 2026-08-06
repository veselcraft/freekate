.class public Lcom/yandex/metrica/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ac;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:Landroid/location/Location;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->h:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->i:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/e$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {p0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/e$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method private static b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/e$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/e;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/n;->k:Z

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-object p1

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/e;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->j()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/yandex/metrica/e$a;->a(Ljava/util/Map;Ljava/lang/Boolean;)Lcom/yandex/metrica/e$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->d()Lcom/yandex/metrica/a;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Lcom/yandex/metrica/a;)Lcom/yandex/metrica/e$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getPreloadInfo()Lcom/yandex/metrica/PreloadInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/e$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->c(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->d(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->h()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->d(I)Lcom/yandex/metrica/e$a;

    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_4
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->b(I)Lcom/yandex/metrica/e$a;

    :cond_4
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->g()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_5
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->c(I)Lcom/yandex/metrica/e$a;

    :cond_5
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_6
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/yandex/metrica/e$a;->a()Lcom/yandex/metrica/e$a;

    :cond_6
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_7
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(I)Lcom/yandex/metrica/e$a;

    :cond_7
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_8
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Z)Lcom/yandex/metrica/e$a;

    :cond_8
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_9
    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->b(Z)Lcom/yandex/metrica/e$a;

    :cond_9
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_a
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->c(Z)Lcom/yandex/metrica/e$a;

    :cond_a
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_b
    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->d(Z)Lcom/yandex/metrica/e$a;

    :cond_b
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_c
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->b(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    :cond_c
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/n;->a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getErrorEnvironment()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/n;->b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 156
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_20

    move v0, v1

    :goto_d
    if-eqz v0, :cond_d

    if-eqz v4, :cond_21

    move v0, v1

    :goto_e
    if-eqz v0, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(I)Lcom/yandex/metrica/e$a;

    :cond_d
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->b()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_22

    move v0, v1

    :goto_f
    if-eqz v0, :cond_e

    if-eqz v4, :cond_23

    move v0, v1

    :goto_10
    if-eqz v0, :cond_e

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->a(Z)Lcom/yandex/metrica/e$a;

    :cond_e
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->c()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_24

    move v0, v1

    :goto_11
    if-eqz v0, :cond_f

    if-eqz v4, :cond_25

    move v0, v1

    :goto_12
    if-eqz v0, :cond_f

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->b(Z)Lcom/yandex/metrica/e$a;

    :cond_f
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->e()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_26

    move v0, v1

    :goto_13
    if-eqz v0, :cond_10

    if-eqz v4, :cond_27

    move v0, v1

    :goto_14
    if-eqz v0, :cond_10

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->c(Z)Lcom/yandex/metrica/e$a;

    :cond_10
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->d()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_28

    move v0, v1

    :goto_15
    if-eqz v0, :cond_11

    if-eqz v4, :cond_29

    move v0, v1

    :goto_16
    if-eqz v0, :cond_11

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/e$a;->a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;

    :cond_11
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->g()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2a

    move v0, v1

    :goto_17
    if-eqz v0, :cond_12

    if-eqz v4, :cond_2b

    move v0, v1

    :goto_18
    if-eqz v0, :cond_12

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/e$a;->d(Z)Lcom/yandex/metrica/e$a;

    :cond_12
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    move v0, v1

    :goto_19
    if-eqz v0, :cond_13

    if-eqz v4, :cond_2d

    move v0, v1

    :goto_1a
    if-eqz v0, :cond_13

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    :cond_13
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->h:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/n;->a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->i:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/n;->b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 158
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/n;->k:Z

    .line 159
    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->a:Ljava/lang/Integer;

    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->b:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->c:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->d:Landroid/location/Location;

    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->e:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->f:Ljava/lang/String;

    iput-object v5, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v2, p0, Lcom/yandex/metrica/impl/n;->j:Z

    .line 160
    invoke-virtual {v3}, Lcom/yandex/metrica/e$a;->b()Lcom/yandex/metrica/e;

    move-result-object p1

    goto/16 :goto_0

    :cond_14
    move v0, v2

    .line 155
    goto/16 :goto_1

    :cond_15
    move v0, v2

    goto/16 :goto_2

    :cond_16
    move v0, v2

    goto/16 :goto_3

    :cond_17
    move v0, v2

    goto/16 :goto_4

    :cond_18
    move v0, v2

    goto/16 :goto_5

    :cond_19
    move v0, v2

    goto/16 :goto_6

    :cond_1a
    move v0, v2

    goto/16 :goto_7

    :cond_1b
    move v0, v2

    goto/16 :goto_8

    :cond_1c
    move v0, v2

    goto/16 :goto_9

    :cond_1d
    move v0, v2

    goto/16 :goto_a

    :cond_1e
    move v0, v2

    goto/16 :goto_b

    :cond_1f
    move v0, v2

    goto/16 :goto_c

    :cond_20
    move v0, v2

    .line 156
    goto/16 :goto_d

    :cond_21
    move v0, v2

    goto/16 :goto_e

    :cond_22
    move v0, v2

    goto/16 :goto_f

    :cond_23
    move v0, v2

    goto/16 :goto_10

    :cond_24
    move v0, v2

    goto/16 :goto_11

    :cond_25
    move v0, v2

    goto/16 :goto_12

    :cond_26
    move v0, v2

    goto/16 :goto_13

    :cond_27
    move v0, v2

    goto/16 :goto_14

    :cond_28
    move v0, v2

    goto/16 :goto_15

    :cond_29
    move v0, v2

    goto/16 :goto_16

    :cond_2a
    move v0, v2

    goto/16 :goto_17

    :cond_2b
    move v0, v2

    goto/16 :goto_18

    :cond_2c
    move v0, v2

    goto :goto_19

    :cond_2d
    move v0, v2

    goto :goto_1a
.end method

.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->d:Landroid/location/Location;

    .line 110
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->f:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    .line 85
    return-void
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 94
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->e:Ljava/lang/Boolean;

    .line 95
    return-void
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->b:Ljava/lang/Boolean;

    .line 105
    return-void
.end method

.method public d()Landroid/location/Location;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->d:Landroid/location/Location;

    return-object v0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 114
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->c:Ljava/lang/Boolean;

    .line 115
    return-void
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/n;->j:Z

    return v0
.end method

.method public setSessionTimeout(I)V
    .locals 1
    .param p1, "sessionTimeout"    # I

    .prologue
    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->a:Ljava/lang/Integer;

    .line 100
    return-void
.end method
