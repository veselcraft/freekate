.class public Lcom/yandex/mobile/ads/nativeads/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/nativeads/aq$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/nativeads/aq$a",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/aq$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/aq$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/aq;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/t;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/nativeads/s;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {v1}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/t;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/t;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/t;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 77
    return-object v1

    .line 79
    :cond_1
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/s;

    const-string v1, "Native Ad json has not required attributes"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/t;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/nativeads/s;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 121
    const-class v0, Lcom/yandex/mobile/ads/nativeads/t;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/t;

    .line 122
    if-eqz v0, :cond_b

    .line 123
    const-string v1, "native"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 124
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "showNotices"

    aput-object v3, v1, v2

    const-string v3, "ads"

    aput-object v3, v1, v4

    invoke-static {v5, v1}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/s;

    const-string v1, "Native Ad json has not required attributes"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/s;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 130
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 131
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    const-string v3, "ads"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "ads"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v1, v2

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/mobile/ads/nativeads/aq;->c(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/j;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/nativeads/j;->c()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/nativeads/j;->a()Lcom/yandex/mobile/ads/nativeads/i;

    move-result-object v10

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/nativeads/j;->b()Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/nativeads/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "null"

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/nativeads/i;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v11, :cond_3

    move v3, v4

    :goto_3
    if-eqz v3, :cond_5

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/s;

    const-string v1, "Native Ad json has not required attributes"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/s;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_6
    invoke-virtual {v0, v7}, Lcom/yandex/mobile/ads/nativeads/t;->b(Ljava/util/List;)V

    goto :goto_0

    .line 135
    :cond_7
    const-string v3, "assets"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 136
    invoke-static {v5}, Lcom/yandex/mobile/ads/nativeads/aq;->g(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v1, 0x0

    :cond_8
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/t;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 138
    :cond_9
    const-string v3, "showNotices"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 139
    invoke-static {v5}, Lcom/yandex/mobile/ads/nativeads/aq;->f(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/t;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 141
    :cond_a
    const-string v3, "ver"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-static {v5, v1}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/t;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_b
    return-object v0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/nativeads/s;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/s;

    const-string v1, "Native Ad json has not required attributes"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/s;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 300
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    .line 301
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static varargs a(Lorg/json/JSONObject;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 112
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    :goto_1
    return v0

    .line 111
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static b(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/ax;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/nativeads/s;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 166
    const-class v0, Lcom/yandex/mobile/ads/nativeads/ax;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/ax;

    .line 167
    if-eqz v0, :cond_4

    .line 168
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "delay"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string v3, "url"

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/s;

    const-string v1, "Native Ad json has not required attributes"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/s;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 174
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    const-string v3, "delay"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 178
    invoke-virtual {v0, v4, v5}, Lcom/yandex/mobile/ads/nativeads/ax;->a(J)V

    goto :goto_0

    .line 179
    :cond_2
    const-string v3, "url"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/ax;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_3
    const-string v3, "visibilityPercent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 184
    const/16 v3, 0x64

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/ax;->a(I)V

    goto :goto_0

    .line 189
    :cond_4
    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/nativeads/s;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 433
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 434
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 435
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 436
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#,###,###"

    invoke-direct {v2, v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 438
    invoke-virtual {v2, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    const-string v1, "Could not parse review count value. Review Count value is %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 441
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/s;

    const-string v1, "Native Ad json has not required attributes"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static c(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/j;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/nativeads/s;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 211
    const-class v0, Lcom/yandex/mobile/ads/nativeads/j;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/j;

    .line 212
    if-eqz v0, :cond_6

    .line 213
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "adType"

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string v3, "assets"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "link"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "showNotice"

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/s;

    const-string v1, "Native Ad json has not required attributes"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/s;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 219
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 220
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    const-string v3, "adType"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    const-string v3, "assets"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    invoke-static {p0}, Lcom/yandex/mobile/ads/nativeads/aq;->g(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/j;->a(Ljava/util/List;)V

    goto :goto_0

    .line 227
    :cond_3
    const-string v3, "link"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 228
    const-class v1, Lcom/yandex/mobile/ads/nativeads/i;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/nativeads/i;

    if-eqz v1, :cond_4

    const-string v3, "link"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "url"

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/nativeads/i;->a(Ljava/lang/String;)V

    .line 229
    :cond_4
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/j;->a(Lcom/yandex/mobile/ads/nativeads/i;)V

    goto :goto_0

    .line 230
    :cond_5
    const-string v3, "showNotice"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 232
    invoke-static {v1}, Lcom/yandex/mobile/ads/nativeads/aq;->b(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/ax;

    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/j;->a(Lcom/yandex/mobile/ads/nativeads/ax;)V

    goto :goto_0

    .line 237
    :cond_6
    return-object v0
.end method

.method static d(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/c;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/nativeads/s;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 309
    const-class v0, Lcom/yandex/mobile/ads/nativeads/c;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    .line 310
    if-eqz v0, :cond_c

    .line 311
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v7, "name"

    aput-object v7, v1, v3

    const-string v7, "type"

    aput-object v7, v1, v2

    const-string v7, "clickable"

    aput-object v7, v1, v4

    const-string v7, "required"

    aput-object v7, v1, v5

    const-string v7, "value"

    aput-object v7, v1, v6

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/s;

    const-string v1, "Native Ad json has not required attributes"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/s;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 317
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 318
    const/4 v1, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v1, "string"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/s;

    const-string v1, "Native Ad json has not required attributes"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/s;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v2, "favicon"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v4, "icon"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    goto :goto_0

    :sswitch_2
    const-string v2, "image"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "rating"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_4
    const-string v2, "review_count"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    goto :goto_0

    :pswitch_0
    const-string v1, "image"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :pswitch_1
    const-string v1, "number"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 321
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 322
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    const-string v2, "name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    invoke-virtual {v0, v8}, Lcom/yandex/mobile/ads/nativeads/c;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 325
    :cond_4
    const-string v2, "type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 326
    invoke-virtual {v0, v7}, Lcom/yandex/mobile/ads/nativeads/c;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 327
    :cond_5
    const-string v2, "clickable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 328
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/c;->b(Z)V

    goto :goto_2

    .line 329
    :cond_6
    const-string v2, "required"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 330
    const-string v1, "required"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/c;->a(Z)V

    goto :goto_2

    .line 331
    :cond_7
    const-string v2, "link"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 332
    const-class v1, Lcom/yandex/mobile/ads/nativeads/i;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/nativeads/i;

    if-eqz v1, :cond_a

    const-string v2, "link"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "null"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const/4 v2, 0x0

    :cond_9
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/nativeads/i;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/c;->a(Lcom/yandex/mobile/ads/nativeads/i;)V

    goto :goto_2

    .line 333
    :cond_b
    const-string v2, "value"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 334
    sget-object v1, Lcom/yandex/mobile/ads/nativeads/aq;->a:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/nativeads/aq$a;

    .line 335
    invoke-interface {v1, p0}, Lcom/yandex/mobile/ads/nativeads/aq$a;->b(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/c;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 340
    :cond_c
    return-object v0

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        -0x400e3dec -> :sswitch_0
        -0x37ea4e63 -> :sswitch_3
        -0x301e3698 -> :sswitch_4
        0x313c79 -> :sswitch_1
        0x5faa95b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic e(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/nativeads/s;
        }
    .end annotation

    .prologue
    .line 35
    const-class v0, Lcom/yandex/mobile/ads/nativeads/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/h;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/g;

    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/nativeads/g;->a(Ljava/lang/String;)V

    const-string v2, "w"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/nativeads/g;->a(I)V

    const-string v2, "h"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/nativeads/g;->b(I)V

    const-string v2, "sizeType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static f(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/ax;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/nativeads/s;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    const-string v0, "showNotices"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 155
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 156
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 157
    invoke-static {v3}, Lcom/yandex/mobile/ads/nativeads/aq;->b(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/ax;

    move-result-object v3

    .line 158
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-object v1
.end method

.method private static g(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/nativeads/s;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 261
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    const-string v0, "assets"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v0, v1

    .line 263
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 264
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 266
    const-string v5, "required"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 268
    :try_start_0
    invoke-static {v2}, Lcom/yandex/mobile/ads/nativeads/aq;->d(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/c;

    move-result-object v6

    .line 269
    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    .line 270
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/yandex/mobile/ads/nativeads/s; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 269
    goto :goto_1

    .line 272
    :catch_0
    move-exception v2

    .line 273
    :goto_2
    if-eqz v5, :cond_0

    .line 274
    throw v2

    .line 278
    :cond_2
    invoke-static {v3}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/s;

    const-string v1, "Native Ad json has not required attributes"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/s;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_3
    return-object v3

    .line 272
    :catch_1
    move-exception v2

    goto :goto_2
.end method
