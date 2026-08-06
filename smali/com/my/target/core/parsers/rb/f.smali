.class public final Lcom/my/target/core/parsers/rb/f;
.super Ljava/lang/Object;
.source "RBStatsParser.java"


# direct methods
.method static a(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/high16 v13, -0x40800000    # -1.0f

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v4, 0x1

    .line 28
    const-string v0, "Parsing banner stats"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 30
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 32
    const-string v0, "statistics"

    invoke-static {p0, v0}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 34
    if-nez v9, :cond_0

    move-object v0, v6

    .line 96
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    move v8, v7

    .line 38
    :goto_1
    if-ge v8, v10, :cond_5

    .line 40
    const-string v0, "statistics"

    invoke-static {v8, v9, v0, p1}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 45
    const-string v1, "type"

    const-string v5, ""

    invoke-static {v0, v1, v5, v4, p1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 47
    const-string v1, "url"

    const-string v11, ""

    invoke-static {v0, v1, v11, v4, p1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 50
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    const/4 v1, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 89
    new-instance v0, Lcom/my/target/core/models/k;

    invoke-direct {v0, v5, v11}, Lcom/my/target/core/models/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_2
    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 52
    :sswitch_0
    const-string v12, "skip"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v1, v7

    goto :goto_2

    :sswitch_1
    const-string v12, "creativeView"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v1, v4

    goto :goto_2

    :sswitch_2
    const-string v12, "playheadReachedValue"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v1, 0x2

    goto :goto_2

    .line 56
    :pswitch_0
    new-instance v0, Lcom/my/target/core/models/k;

    const-string v1, "closedByUser"

    invoke-direct {v0, v1, v11}, Lcom/my/target/core/models/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 62
    :pswitch_1
    new-instance v0, Lcom/my/target/core/models/k;

    const-string v1, "playbackStarted"

    invoke-direct {v0, v1, v11}, Lcom/my/target/core/models/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 67
    :pswitch_2
    new-instance v12, Lcom/my/target/core/models/i;

    invoke-direct {v12, v5, v11}, Lcom/my/target/core/models/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    const-string v1, "value"

    move-object v5, p1

    .line 71
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 74
    cmpl-float v1, v0, v13

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {v12, v0}, Lcom/my/target/core/models/i;->a(F)V

    .line 85
    :cond_3
    :goto_4
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 76
    :cond_4
    const-string v1, "pvalue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    const-string v1, "pvalue"

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;DZLandroid/content/Context;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 82
    cmpl-float v1, v0, v13

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v12, v0}, Lcom/my/target/core/models/i;->b(F)V

    goto :goto_4

    :cond_5
    move-object v0, v6

    .line 96
    goto/16 :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x35e57f -> :sswitch_0
        0x69fcaef4 -> :sswitch_1
        0x6a94c473 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 102
    const-string v0, "Parsing service stats"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    const-string v1, "serviceStatistics"

    invoke-static {p0, v1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 109
    if-nez v2, :cond_1

    .line 128
    :cond_0
    return-object v0

    .line 111
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 113
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 115
    const-string v4, "statistics"

    invoke-static {v1, v2, v4, p1}, Lcom/my/target/core/parsers/rb/a;->a(ILorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    .line 118
    const-string v5, "type"

    const-string v6, ""

    invoke-static {v4, v5, v6, v8, p1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 120
    const-string v6, "url"

    const-string v7, ""

    invoke-static {v4, v6, v7, v8, p1}, Lcom/my/target/core/parsers/rb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 124
    new-instance v6, Lcom/my/target/core/models/k;

    invoke-direct {v6, v5, v4}, Lcom/my/target/core/models/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
