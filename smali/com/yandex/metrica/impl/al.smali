.class final Lcom/yandex/metrica/impl/al;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/al$1;,
        Lcom/yandex/metrica/impl/al$e;,
        Lcom/yandex/metrica/impl/al$f;,
        Lcom/yandex/metrica/impl/al$b;,
        Lcom/yandex/metrica/impl/al$c;,
        Lcom/yandex/metrica/impl/al$d;,
        Lcom/yandex/metrica/impl/al$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/yandex/metrica/impl/ob/az;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/ob/az;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    sget-object v1, Lcom/yandex/metrica/impl/ob/az;->a:Lcom/yandex/metrica/impl/ob/az;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/yandex/metrica/impl/ob/az;->b:Lcom/yandex/metrica/impl/ob/az;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/al;->a:Ljava/util/Map;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 62
    sget-object v1, Lcom/yandex/metrica/impl/ob/az;->a:Lcom/yandex/metrica/impl/ob/az;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v1, Lcom/yandex/metrica/impl/ob/az;->b:Lcom/yandex/metrica/impl/ob/az;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sput-object v0, Lcom/yandex/metrica/impl/al;->b:Landroid/util/SparseArray;

    .line 65
    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/az;)I
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/yandex/metrica/impl/al;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/c$a$d;
    .locals 3

    .prologue
    .line 248
    new-instance v1, Lcom/yandex/metrica/c$a$d;

    invoke-direct {v1}, Lcom/yandex/metrica/c$a$d;-><init>()V

    .line 250
    invoke-static {p1}, Lcom/yandex/metrica/impl/al;->b(Ljava/lang/String;)Lcom/yandex/metrica/c$a$b;

    move-result-object v0

    .line 251
    invoke-static {p0}, Lcom/yandex/metrica/impl/al;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 253
    if-eqz v0, :cond_0

    .line 254
    iput-object v0, v1, Lcom/yandex/metrica/c$a$d;->b:Lcom/yandex/metrica/c$a$b;

    .line 256
    :cond_0
    if-eqz v2, :cond_1

    .line 257
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$g;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/c$a$g;

    iput-object v0, v1, Lcom/yandex/metrica/c$a$d;->c:[Lcom/yandex/metrica/c$a$g;

    .line 261
    :cond_1
    return-object v1
.end method

.method public static a(Ljava/lang/String;ILcom/yandex/metrica/c$b;Lcom/yandex/metrica/c$a$f$b$a;)Lcom/yandex/metrica/c$a$f$b;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/yandex/metrica/c$a$f$b;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$f$b;-><init>()V

    .line 173
    iput-object p2, v0, Lcom/yandex/metrica/c$a$f$b;->b:Lcom/yandex/metrica/c$b;

    .line 174
    iput-object p0, v0, Lcom/yandex/metrica/c$a$f$b;->c:Ljava/lang/String;

    .line 175
    iput p1, v0, Lcom/yandex/metrica/c$a$f$b;->e:I

    .line 177
    if-eqz p3, :cond_0

    .line 178
    iput-object p3, v0, Lcom/yandex/metrica/c$a$f$b;->d:Lcom/yandex/metrica/c$a$f$b$a;

    .line 181
    :cond_0
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/c$a$g;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$g;-><init>()V

    .line 141
    const-string v1, "mac"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$g;->b:Ljava/lang/String;

    .line 142
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$g;->c:I

    .line 143
    const-string v1, "ssid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$g;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    new-instance v0, Lcom/yandex/metrica/c$a$g;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$g;-><init>()V

    .line 147
    const-string v1, "mac"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$g;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentValues;)Lcom/yandex/metrica/c$b;
    .locals 2

    .prologue
    .line 68
    const-string v0, "start_time"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "server_time_offset"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/al;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$b;
    .locals 6

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v1, Lcom/yandex/metrica/c$b;

    invoke-direct {v1}, Lcom/yandex/metrica/c$b;-><init>()V

    iput-wide v2, v1, Lcom/yandex/metrica/c$b;->b:J

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, v1, Lcom/yandex/metrica/c$b;->c:I

    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/yandex/metrica/c$b;->d:J

    .line 164
    :cond_0
    return-object v1
.end method

.method public static a(I)Lcom/yandex/metrica/impl/ob/az;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/yandex/metrica/impl/al;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/az;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/c$a$g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ge v1, v3, :cond_0

    .line 85
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/al;->a(Lorg/json/JSONObject;)Lcom/yandex/metrica/c$a$g;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/yandex/metrica/c$a$b;
    .locals 3

    .prologue
    .line 190
    :try_start_0
    new-instance v1, Lcom/yandex/metrica/impl/bl$a;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/bl$a;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/yandex/metrica/c$a$b;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$b;-><init>()V

    .line 196
    const-string v2, "signal_strength"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const-string v2, "signal_strength"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yandex/metrica/c$a$b;->c:I

    .line 199
    :cond_0
    const-string v2, "cell_id"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    const-string v2, "cell_id"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$b;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/ContentValues;)Lcom/yandex/metrica/c$a$f$b$a;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 101
    :try_start_0
    const-string v0, "network_info"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v2, Lcom/yandex/metrica/impl/bl$a;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/bl$a;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v3, Lcom/yandex/metrica/c$a$f$b$a$a;

    invoke-direct {v3}, Lcom/yandex/metrica/c$a$f$b$a$a;-><init>()V

    .line 108
    const-string v0, "country_code"

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/bl$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "country_code"

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/bl$a;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/yandex/metrica/c$a$f$b$a$a;->c:I

    .line 111
    :cond_0
    const-string v0, "net_type"

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/bl$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "net_type"

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/bl$a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/yandex/metrica/c$a$f$b$a$a;->b:Ljava/lang/String;

    .line 114
    :cond_1
    const-string v0, "operator_id"

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/bl$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    const-string v0, "operator_id"

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/bl$a;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/yandex/metrica/c$a$f$b$a$a;->d:I

    .line 117
    :cond_2
    const-string v0, "lac"

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/bl$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    const-string v0, "lac"

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/bl$a;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/yandex/metrica/c$a$f$b$a$a;->e:I

    .line 122
    :cond_3
    new-instance v0, Lcom/yandex/metrica/c$a$f$b$a;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$f$b$a;-><init>()V

    .line 125
    const-string v4, "conn_type"

    invoke-virtual {v2, v4}, Lcom/yandex/metrica/impl/bl$a;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 127
    if-ne v1, v2, :cond_4

    :goto_0
    iput v1, v0, Lcom/yandex/metrica/c$a$f$b$a;->b:I

    .line 128
    iput-object v3, v0, Lcom/yandex/metrica/c$a$f$b$a;->c:Lcom/yandex/metrica/c$a$f$b$a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    return-object v0

    .line 127
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Lcom/yandex/metrica/c$a$e;
    .locals 6

    .prologue
    .line 213
    :try_start_0
    new-instance v1, Lcom/yandex/metrica/impl/bl$a;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/bl$a;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/yandex/metrica/c$a$e;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$e;-><init>()V

    .line 219
    const-string v2, "lon"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/metrica/c$a$e;->c:D

    .line 220
    const-string v2, "lat"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/metrica/c$a$e;->b:D

    .line 223
    const-string v2, "altitude"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const-string v2, "altitude"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yandex/metrica/c$a$e;->h:I

    .line 226
    :cond_0
    const-string v2, "direction"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    const-string v2, "direction"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yandex/metrica/c$a$e;->f:I

    .line 229
    :cond_1
    const-string v2, "precision"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    const-string v2, "precision"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yandex/metrica/c$a$e;->e:I

    .line 232
    :cond_2
    const-string v2, "speed"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    const-string v2, "speed"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yandex/metrica/c$a$e;->g:I

    .line 235
    :cond_3
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/bl$a;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/yandex/metrica/c$a$e;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_4
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/yandex/metrica/c$a$a;
    .locals 3

    .prologue
    .line 266
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    invoke-static {p0}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;)Lcom/yandex/metrica/d;

    move-result-object v1

    .line 269
    new-instance v0, Lcom/yandex/metrica/c$a$a;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$a;-><init>()V

    .line 271
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/metrica/c$a$a;->b:Ljava/lang/String;

    .line 272
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/metrica/c$a$a;->c:Ljava/lang/String;

    .line 275
    :cond_0
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->c()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/bl;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
