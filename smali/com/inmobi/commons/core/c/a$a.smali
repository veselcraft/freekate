.class final Lcom/inmobi/commons/core/c/a$a;
.super Landroid/os/Handler;
.source "TelemetryComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/core/c/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/inmobi/commons/core/c/d;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/c/a;Landroid/os/Looper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    iput-object p1, p0, Lcom/inmobi/commons/core/c/a$a;->a:Lcom/inmobi/commons/core/c/a;

    .line 364
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 357
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 358
    iput v1, p0, Lcom/inmobi/commons/core/c/a$a;->i:I

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->l:Ljava/util/List;

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    .line 366
    invoke-direct {p0}, Lcom/inmobi/commons/core/c/a$a;->a()V

    .line 367
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/c/e;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 491
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 492
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 493
    const-string v4, "componentType"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/c/e;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    const-string v4, "eventType"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/c/e;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/c/e;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    const-string v4, "payload"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/c/e;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    :cond_0
    const-string v4, "ts"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/c/e;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/e;->d()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 499
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 491
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 503
    :goto_1
    return-object v0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    const-string v0, ""

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->f()Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/c;->i()I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/core/c/a$a;->e:I

    .line 371
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->f()Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/c;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->b:Ljava/lang/String;

    .line 372
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->f()Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/c;->k()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/core/c/a$a;->f:I

    .line 373
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->f()Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/c;->g()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/core/c/a$a;->g:I

    .line 374
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->f()Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/c;->j()I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/core/c/a$a;->j:I

    .line 375
    return-void
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 508
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 510
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 511
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 512
    const-string v4, "componentType"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "componentType"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string v4, "eventType"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "eventType"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string v4, "payload"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "payload"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 510
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 519
    :goto_1
    return-object v0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    const-string v0, ""

    goto :goto_1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 417
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/c/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Begin reporting"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v0, Lcom/inmobi/commons/core/c/d;

    invoke-direct {v0}, Lcom/inmobi/commons/core/c/d;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->d:Lcom/inmobi/commons/core/c/d;

    .line 419
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->d:Lcom/inmobi/commons/core/c/d;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/d;->a()Ljava/util/List;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 421
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/commons/core/c/a$a;->k:Z

    .line 422
    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/c/a$a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    .line 439
    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/c/a$a;->sendEmptyMessage(I)Z

    .line 441
    :goto_1
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/core/c/a$a;->k:Z

    .line 429
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->d:Lcom/inmobi/commons/core/c/d;

    iget v1, p0, Lcom/inmobi/commons/core/c/a$a;->e:I

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/d;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->l:Ljava/util/List;

    .line 432
    :cond_4
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 433
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/c/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No events to report"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/c/a$a;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 437
    :cond_5
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->l:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/c/a$a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 444
    new-instance v0, Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-static {}, Lcom/inmobi/commons/core/c/a;->f()Lcom/inmobi/commons/core/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/c/c;->o()Lcom/inmobi/commons/core/configs/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/a$a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    .line 445
    new-instance v1, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    iget-object v3, p0, Lcom/inmobi/commons/core/c/a$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v7, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 447
    iget-boolean v2, p0, Lcom/inmobi/commons/core/c/a$a;->k:Z

    if-eqz v2, :cond_0

    .line 448
    const-string v2, "metric"

    iget-object v3, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :goto_0
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/c/a;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Telemetry Payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->d(Ljava/util/Map;)V

    .line 455
    new-instance v0, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    iget v1, p0, Lcom/inmobi/commons/core/c/a$a;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inmobi/commons/core/c/a$a;->i:I

    .line 459
    iget v1, p0, Lcom/inmobi/commons/core/c/a$a;->i:I

    iget v2, p0, Lcom/inmobi/commons/core/c/a$a;->j:I

    if-le v1, v2, :cond_1

    .line 461
    iput v6, p0, Lcom/inmobi/commons/core/c/a$a;->i:I

    .line 462
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/c/a;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send telemetry events to server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " . And retry count exhausted. Will Discard Events"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 464
    iput-object v9, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    .line 465
    invoke-virtual {p0, v8}, Lcom/inmobi/commons/core/c/a$a;->sendEmptyMessage(I)Z

    .line 486
    :goto_1
    return-void

    .line 450
    :cond_0
    const-string v2, "telemetry"

    iget-object v3, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 469
    :cond_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/c/a;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send telemetry events to server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Will retry"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 471
    iget v0, p0, Lcom/inmobi/commons/core/c/a$a;->g:I

    int-to-long v0, v0

    invoke-virtual {p0, v7, v0, v1}, Lcom/inmobi/commons/core/c/a$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 475
    :cond_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/c/a;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully sent events to server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iput-object v9, p0, Lcom/inmobi/commons/core/c/a$a;->c:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 479
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->d:Lcom/inmobi/commons/core/c/d;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/d;->c()I

    move-result v0

    iget v1, p0, Lcom/inmobi/commons/core/c/a$a;->e:I

    if-le v0, v1, :cond_3

    .line 480
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 481
    invoke-virtual {p0, v7}, Lcom/inmobi/commons/core/c/a$a;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 483
    :cond_3
    invoke-virtual {p0, v8}, Lcom/inmobi/commons/core/c/a$a;->sendEmptyMessage(I)Z

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 379
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/commons/core/c/e;

    .line 382
    iget-object v1, p0, Lcom/inmobi/commons/core/c/a$a;->a:Lcom/inmobi/commons/core/c/a;

    invoke-static {v1, v0}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/a;Lcom/inmobi/commons/core/c/e;)V

    goto :goto_0

    .line 386
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/inmobi/commons/core/c/a$a;->removeMessages(I)V

    .line 387
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lcom/inmobi/commons/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/core/utilities/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/c/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App not in foreground or No Network available "

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 395
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/commons/core/c/a$a;->a()V

    .line 396
    invoke-direct {p0}, Lcom/inmobi/commons/core/c/a$a;->b()V

    goto :goto_0

    .line 400
    :pswitch_2
    invoke-direct {p0}, Lcom/inmobi/commons/core/c/a$a;->c()V

    goto :goto_0

    .line 404
    :pswitch_3
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 405
    iget v0, p0, Lcom/inmobi/commons/core/c/a$a;->f:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/inmobi/commons/core/c/a$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 409
    :pswitch_4
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/a;)V

    .line 410
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/c/a;->b(Lcom/inmobi/commons/core/c/a;)V

    .line 411
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/c/a;->c(Lcom/inmobi/commons/core/c/a;)V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
