.class Lcom/yandex/metrica/impl/au;
.super Lcom/yandex/metrica/impl/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/au$a;,
        Lcom/yandex/metrica/impl/au$b;,
        Lcom/yandex/metrica/impl/au$c;
    }
.end annotation


# instance fields
.field l:Lcom/yandex/metrica/c$a;

.field m:Lcom/yandex/metrica/impl/az;

.field n:Lcom/yandex/metrica/impl/ob/bc;

.field o:Lcom/yandex/metrica/impl/ob/i;

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field q:I

.field r:I

.field private s:Lcom/yandex/metrica/impl/au$c;

.field private final t:Lcom/yandex/metrica/impl/utils/b;

.field private u:Z


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 6

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/yandex/metrica/impl/l;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/metrica/impl/au;->q:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/impl/au;->r:I

    .line 72
    new-instance v0, Lcom/yandex/metrica/impl/utils/b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/b;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/au;->t:Lcom/yandex/metrica/impl/utils/b;

    .line 76
    iput-object p1, p0, Lcom/yandex/metrica/impl/au;->o:Lcom/yandex/metrica/impl/ob/i;

    .line 77
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i;->i()Lcom/yandex/metrica/impl/ob/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/au;->n:Lcom/yandex/metrica/impl/ob/bc;

    .line 78
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i;->h()Lcom/yandex/metrica/impl/az;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    .line 79
    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lcom/yandex/metrica/impl/utils/h;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/al;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/au;->q:I

    .line 80
    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/b$a;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 365
    .line 366
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-static {v0}, Lcom/yandex/metrica/impl/au;->a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/c$a$c;

    move-result-object v4

    .line 368
    if-eqz v4, :cond_1

    .line 369
    array-length v5, v4

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v4, v2

    .line 370
    const/4 v6, 0x7

    invoke-static {v6, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/2addr v3, v0

    .line 369
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/c$a$c;
    .locals 5

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    .line 166
    if-lez v0, :cond_1

    .line 167
    new-array v2, v0, [Lcom/yandex/metrica/c$a$c;

    .line 168
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 169
    const/4 v0, 0x0

    move v1, v0

    .line 170
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    :try_start_0
    new-instance v4, Lcom/yandex/metrica/c$a$c;

    invoke-direct {v4}, Lcom/yandex/metrica/c$a$c;-><init>()V

    .line 174
    iput-object v0, v4, Lcom/yandex/metrica/c$a$c;->b:Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/yandex/metrica/c$a$c;->c:Ljava/lang/String;

    .line 176
    aput-object v4, v2, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 181
    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 184
    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static t()Lcom/yandex/metrica/impl/au$a;
    .locals 1

    .prologue
    .line 516
    new-instance v0, Lcom/yandex/metrica/impl/au$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/au$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a(JLcom/yandex/metrica/impl/ob/az;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->n:Lcom/yandex/metrica/impl/ob/bc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bc;->b(JLcom/yandex/metrica/impl/ob/az;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/yandex/metrica/impl/au$c;)Lcom/yandex/metrica/c$a;
    .locals 6

    .prologue
    .line 95
    new-instance v1, Lcom/yandex/metrica/c$a;

    invoke-direct {v1}, Lcom/yandex/metrica/c$a;-><init>()V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Lcom/yandex/metrica/impl/utils/h;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/al;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$b;

    move-result-object v0

    iput-object v0, v1, Lcom/yandex/metrica/c$a;->b:Lcom/yandex/metrica/c$b;

    .line 100
    iget-object v0, p1, Lcom/yandex/metrica/impl/au$c;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/yandex/metrica/impl/au$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/yandex/metrica/c$a$f;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/c$a$f;

    iput-object v0, v1, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$f;

    .line 102
    iget-object v0, p1, Lcom/yandex/metrica/impl/au$c;->c:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/yandex/metrica/impl/au;->a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/c$a$c;

    move-result-object v0

    iput-object v0, v1, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    .line 103
    return-object v1
.end method

.method protected a(JLcom/yandex/metrica/c$a$f$b;)Lcom/yandex/metrica/impl/au$b;
    .locals 15

    .prologue
    .line 381
    new-instance v7, Lcom/yandex/metrica/c$a$f;

    invoke-direct {v7}, Lcom/yandex/metrica/c$a$f;-><init>()V

    .line 382
    move-wide/from16 v0, p1

    iput-wide v0, v7, Lcom/yandex/metrica/c$a$f;->b:J

    .line 383
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/yandex/metrica/c$a$f;->c:Lcom/yandex/metrica/c$a$f$b;

    .line 384
    const/4 v4, 0x0

    .line 385
    move-object/from16 v0, p3

    iget v2, v0, Lcom/yandex/metrica/c$a$f$b;->e:I

    invoke-static {v2}, Lcom/yandex/metrica/impl/al;->a(I)Lcom/yandex/metrica/impl/ob/az;

    move-result-object v5

    .line 386
    const/4 v2, 0x0

    .line 387
    const/4 v3, 0x0

    .line 390
    :try_start_0
    move-wide/from16 v0, p1

    invoke-virtual {p0, v0, v1, v5}, Lcom/yandex/metrica/impl/au;->a(JLcom/yandex/metrica/impl/ob/az;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 392
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 395
    const/4 v4, 0x0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v5, v6}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const-string v9, "type"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-boolean v10, p0, Lcom/yandex/metrica/impl/au;->u:Z

    invoke-static {v9, v10}, Lcom/yandex/metrica/impl/al$a;->a(IZ)Lcom/yandex/metrica/impl/al$a;

    move-result-object v9

    const-string v10, "name"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/yandex/metrica/impl/al$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v9

    const-string v10, "value"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/yandex/metrica/impl/al$a;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v9

    const-string v10, "time"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/yandex/metrica/impl/al$a;->a(J)Lcom/yandex/metrica/impl/al$a;

    move-result-object v9

    const-string v10, "number"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/yandex/metrica/impl/al$a;->a(I)Lcom/yandex/metrica/impl/al$a;

    move-result-object v9

    const-string v10, "cell_info"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/yandex/metrica/impl/al$a;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v9

    const-string v10, "location_info"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/yandex/metrica/impl/al$a;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v9

    const-string v10, "wifi_network_info"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/yandex/metrica/impl/al$a;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v9

    const-string v10, "error_environment"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/yandex/metrica/impl/al$a;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v9

    const-string v10, "user_info"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/yandex/metrica/impl/al$a;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/al$a;

    move-result-object v9

    const-string v10, "truncated"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v9, v6}, Lcom/yandex/metrica/impl/al$a;->a(Z)Lcom/yandex/metrica/impl/al$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yandex/metrica/impl/al$a;->c()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v6}, Lcom/yandex/metrica/impl/al$a;->e()Lcom/yandex/metrica/c$a$f$a;

    move-result-object v4

    move-object v6, v4

    .line 396
    :goto_2
    if-eqz v6, :cond_0

    .line 397
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v5, v9}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    new-instance v4, Lcom/yandex/metrica/impl/b$a;

    const-string v10, "app_environment"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "app_environment_revision"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v4, v10, v12, v13}, Lcom/yandex/metrica/impl/b$a;-><init>(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 398
    if-nez v2, :cond_4

    .line 400
    :try_start_3
    iget v2, p0, Lcom/yandex/metrica/impl/au;->r:I

    if-gez v2, :cond_8

    .line 401
    invoke-static {v4}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/b$a;)I

    move-result v2

    iput v2, p0, Lcom/yandex/metrica/impl/au;->r:I

    .line 402
    iget v2, p0, Lcom/yandex/metrica/impl/au;->q:I

    iget v9, p0, Lcom/yandex/metrica/impl/au;->r:I

    add-int/2addr v2, v9

    iput v2, p0, Lcom/yandex/metrica/impl/au;->q:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v4

    .line 409
    :cond_1
    :goto_3
    :try_start_4
    iget-object v4, p0, Lcom/yandex/metrica/impl/au;->t:Lcom/yandex/metrica/impl/utils/b;

    iget-object v9, v6, Lcom/yandex/metrica/c$a$f$a;->f:[B

    const v10, 0x3c000

    invoke-virtual {v4, v9, v10}, Lcom/yandex/metrica/impl/utils/b;->a([BI)[B

    move-result-object v4

    iget-object v9, v6, Lcom/yandex/metrica/c$a$f$a;->f:[B

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iput-object v4, v6, Lcom/yandex/metrica/c$a$f$a;->f:[B

    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/yandex/metrica/c$a$f$a;->k:Z

    .line 411
    :cond_2
    iget v4, p0, Lcom/yandex/metrica/impl/au;->q:I

    const/4 v9, 0x3

    invoke-static {v9, v6}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v9

    add-int/2addr v4, v9

    iput v4, p0, Lcom/yandex/metrica/impl/au;->q:I

    .line 413
    iget v4, p0, Lcom/yandex/metrica/impl/au;->q:I

    const v9, 0x3d400

    if-ge v4, v9, :cond_7

    .line 414
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 431
    :catch_0
    move-exception v4

    move-object v4, v5

    move-object v14, v2

    move v2, v3

    move-object v3, v14

    :goto_4
    invoke-static {v4}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    .line 434
    :goto_5
    new-instance v4, Lcom/yandex/metrica/impl/au$b;

    invoke-direct {v4, v7, v3, v2}, Lcom/yandex/metrica/impl/au$b;-><init>(Lcom/yandex/metrica/c$a$f;Lcom/yandex/metrica/impl/b$a;Z)V

    move-object v2, v4

    :goto_6
    return-object v2

    .line 395
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 404
    :cond_4
    :try_start_5
    invoke-virtual {v2, v4}, Lcom/yandex/metrica/impl/b$a;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v4

    if-nez v4, :cond_1

    .line 405
    const/4 v3, 0x1

    move-object v4, v2

    .line 421
    :goto_7
    :try_start_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 422
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/yandex/metrica/c$a$f$a;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/yandex/metrica/c$a$f$a;

    iput-object v2, v7, Lcom/yandex/metrica/c$a$f;->d:[Lcom/yandex/metrica/c$a$f$a;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 425
    invoke-static {v5}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    move v2, v3

    move-object v3, v4

    .line 432
    goto :goto_5

    .line 425
    :cond_5
    invoke-static {v5}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    const/4 v2, 0x0

    goto :goto_6

    .line 431
    :catchall_0
    move-exception v2

    move-object v5, v4

    :goto_8
    invoke-static {v5}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_8

    :catch_1
    move-exception v5

    move v14, v3

    move-object v3, v2

    move v2, v14

    goto :goto_4

    :catch_2
    move-exception v4

    move-object v4, v5

    move-object v14, v2

    move v2, v3

    move-object v3, v14

    goto :goto_4

    :catch_3
    move-exception v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_4

    :cond_6
    move-object v6, v4

    goto/16 :goto_2

    :cond_7
    move-object v4, v2

    goto :goto_7

    :cond_8
    move-object v2, v4

    goto/16 :goto_3
.end method

.method protected a(J)Z
    .locals 3

    .prologue
    .line 486
    const-wide/16 v0, -0x2

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 115
    iget-object v2, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/az;->F()Z

    move-result v2

    if-nez v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    iput-object v1, p0, Lcom/yandex/metrica/impl/au;->p:Ljava/util/List;

    .line 121
    iget-object v2, p0, Lcom/yandex/metrica/impl/au;->o:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/i;->y()Z

    move-result v2

    iput-boolean v2, p0, Lcom/yandex/metrica/impl/au;->u:Z

    .line 122
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->q()Lcom/yandex/metrica/impl/au$c;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/metrica/impl/au;->s:Lcom/yandex/metrica/impl/au$c;

    .line 125
    iget-object v2, p0, Lcom/yandex/metrica/impl/au;->s:Lcom/yandex/metrica/impl/au$c;

    iget-object v2, v2, Lcom/yandex/metrica/impl/au$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->s:Lcom/yandex/metrica/impl/au$c;

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/au;->a(Lcom/yandex/metrica/impl/au$c;)Lcom/yandex/metrica/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/au;->l:Lcom/yandex/metrica/c$a;

    .line 131
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v0, "report"

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->c:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceid"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->c:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "uuid"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->c:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "analytics_sdk_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->c:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "client_analytics_sdk_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->c:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->u()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->u()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "app_version_name"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->c:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->w()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "app_build_number"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->c:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "os_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->c:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "locale"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->c:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->B()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "is_rooted"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->c:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "app_framework"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->j()I

    move-result v0

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    const-string v0, "api_key_128"

    :goto_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "app_id"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->o:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/i;->l()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "app_platform"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "protocol_version"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "model"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "manufacturer"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "screen_width"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->p()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "screen_height"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->q()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "screen_dpi"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->r()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "scalefactor"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->s()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "device_type"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "android_id"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/az;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "adv_id"

    iget-object v3, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    iget-object v4, p0, Lcom/yandex/metrica/impl/au;->o:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/i;->m()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/az;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "clids_set"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/au;->a(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->s:Lcom/yandex/metrica/impl/au$c;

    iget-object v0, v0, Lcom/yandex/metrica/impl/au$c;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/yandex/metrica/impl/au;->p:Ljava/util/List;

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->l:Lcom/yandex/metrica/c$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/d;)[B

    move-result-object v2

    .line 137
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 143
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    const/4 v1, 0x0

    :try_start_1
    array-length v4, v2

    invoke-virtual {v0, v2, v1, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 145
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 147
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/au;->a([B)V

    .line 148
    const-string v1, "gzip"

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/au;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    invoke-static {v3}, Lcom/yandex/metrica/impl/bl;->a(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/io/Closeable;)V

    .line 161
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 131
    :cond_3
    const-string v0, "api_key"

    goto/16 :goto_1

    .line 152
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/au;->a([B)V

    .line 153
    const-string v1, "identity"

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/au;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    invoke-static {v3}, Lcom/yandex/metrica/impl/bl;->a(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 157
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v3}, Lcom/yandex/metrica/impl/bl;->a(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Ljava/io/Closeable;)V

    throw v0

    .line 157
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 152
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public c()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->j()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/au;->k:Z

    .line 243
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->j()I

    move-result v0

    const/16 v3, 0x190

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 244
    :goto_1
    iget-boolean v3, p0, Lcom/yandex/metrica/impl/au;->k:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    .line 246
    :cond_0
    :goto_2
    if-eqz v1, :cond_5

    .line 247
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->l:Lcom/yandex/metrica/c$a;

    iget-object v1, v0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$f;

    .line 249
    :goto_3
    array-length v0, v1

    if-ge v2, v0, :cond_4

    .line 250
    aget-object v3, v1, v2

    .line 251
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->p:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 252
    iget-object v0, v3, Lcom/yandex/metrica/c$a$f;->c:Lcom/yandex/metrica/c$a$f$b;

    iget v0, v0, Lcom/yandex/metrica/c$a$f$b;->e:I

    invoke-static {v0}, Lcom/yandex/metrica/impl/al;->a(I)Lcom/yandex/metrica/impl/ob/az;

    move-result-object v0

    .line 254
    iget-object v6, p0, Lcom/yandex/metrica/impl/au;->n:Lcom/yandex/metrica/impl/ob/bc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/az;->a()I

    move-result v0

    iget-object v3, v3, Lcom/yandex/metrica/c$a$f;->d:[Lcom/yandex/metrica/c$a$f$a;

    array-length v3, v3

    invoke-virtual {v6, v4, v5, v0, v3}, Lcom/yandex/metrica/impl/ob/bc;->a(JII)V

    .line 255
    invoke-static {}, Lcom/yandex/metrica/impl/al;->a()V

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    move v0, v2

    .line 242
    goto :goto_0

    :cond_2
    move v0, v2

    .line 243
    goto :goto_1

    :cond_3
    move v1, v2

    .line 244
    goto :goto_2

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->n:Lcom/yandex/metrica/impl/ob/bc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/au;->o:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/i;->a()Lcom/yandex/metrica/impl/ob/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/aw;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bc;->a(J)I

    .line 261
    :cond_5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/au;->k:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/au;->k:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->o:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->p()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/utils/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->s:Lcom/yandex/metrica/impl/au$c;

    iget-object v0, v0, Lcom/yandex/metrica/impl/au$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->s:Lcom/yandex/metrica/impl/au$c;

    iget-object v0, v0, Lcom/yandex/metrica/impl/au$c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/c$a$f;

    const-string v3, "Event sent"

    invoke-virtual {v2, v0, v3}, Lcom/yandex/metrica/impl/utils/e;->a(Lcom/yandex/metrica/c$a$f;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 275
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/au;->s:Lcom/yandex/metrica/impl/au$c;

    .line 276
    return-void
.end method

.method protected q()Lcom/yandex/metrica/impl/au$c;
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 288
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 289
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/au;->s()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 297
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 299
    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 300
    const-string v6, "id"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 301
    const-string v8, "type"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/yandex/metrica/impl/ob/az;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/az;

    move-result-object v8

    .line 304
    invoke-virtual {p0, v6, v7}, Lcom/yandex/metrica/impl/au;->a(J)Z

    move-result v9

    if-nez v9, :cond_0

    .line 305
    invoke-static {v3}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/c$b;

    move-result-object v9

    .line 310
    invoke-static {v3}, Lcom/yandex/metrica/impl/al;->b(Landroid/content/ContentValues;)Lcom/yandex/metrica/c$a$f$b$a;

    move-result-object v3

    .line 311
    invoke-static {v8}, Lcom/yandex/metrica/impl/al;->a(Lcom/yandex/metrica/impl/ob/az;)I

    move-result v8

    .line 314
    iget-object v10, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v10}, Lcom/yandex/metrica/impl/az;->t()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8, v9, v3}, Lcom/yandex/metrica/impl/al;->a(Ljava/lang/String;ILcom/yandex/metrica/c$b;Lcom/yandex/metrica/c$a$f$b$a;)Lcom/yandex/metrica/c$a$f$b;

    move-result-object v3

    .line 320
    iget v8, p0, Lcom/yandex/metrica/impl/au;->q:I

    const/4 v9, 0x1

    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v9, v10, v11}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/yandex/metrica/impl/au;->q:I

    .line 321
    iget v8, p0, Lcom/yandex/metrica/impl/au;->q:I

    const/4 v9, 0x2

    invoke-static {v9, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/yandex/metrica/impl/au;->q:I

    .line 323
    iget v8, p0, Lcom/yandex/metrica/impl/au;->q:I

    const v9, 0x3d400

    if-ge v8, v9, :cond_1

    .line 324
    invoke-virtual {p0, v6, v7, v3}, Lcom/yandex/metrica/impl/au;->a(JLcom/yandex/metrica/c$a$f$b;)Lcom/yandex/metrica/impl/au$b;

    move-result-object v8

    .line 328
    if-eqz v8, :cond_0

    .line 329
    if-nez v1, :cond_2

    .line 330
    iget-object v1, v8, Lcom/yandex/metrica/impl/au$b;->b:Lcom/yandex/metrica/impl/b$a;

    .line 332
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v3, v8, Lcom/yandex/metrica/impl/au$b;->a:Lcom/yandex/metrica/c$a$f;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 337
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, v8, Lcom/yandex/metrica/impl/au$b;->b:Lcom/yandex/metrica/impl/b$a;

    iget-object v6, v6, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v3

    .line 341
    :goto_1
    :try_start_3
    iget-boolean v3, v8, Lcom/yandex/metrica/impl/au$b;->c:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    .line 349
    :cond_1
    invoke-static {v2}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    .line 352
    :goto_2
    new-instance v1, Lcom/yandex/metrica/impl/au$c;

    invoke-direct {v1, v4, v5, v0}, Lcom/yandex/metrica/impl/au$c;-><init>(Ljava/util/List;Ljava/util/List;Lorg/json/JSONObject;)V

    return-object v1

    .line 331
    :cond_2
    :try_start_4
    iget-object v3, v8, Lcom/yandex/metrica/impl/au$b;->b:Lcom/yandex/metrica/impl/b$a;

    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/b$a;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v2

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_3
    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    invoke-static {v2}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method protected r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->m:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected s()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/yandex/metrica/impl/au;->n:Lcom/yandex/metrica/impl/ob/bc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/au;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bc;->a(Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
