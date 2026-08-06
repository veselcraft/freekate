.class public Lcom/my/target/core/parsers/b;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 179
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 185
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 188
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_1
    return-object v1
.end method

.method public static a(Ljava/lang/String;Lcom/my/target/core/models/c;Lcom/my/target/core/a;Lcom/my/target/core/models/d;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/16 v8, 0x28

    const/4 v7, 0x0

    .line 48
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    if-eqz v0, :cond_5

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1208
    const-string v1, "<!doctype html>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1210
    const-string v1, "bannersJSON:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1211
    if-ltz v1, :cond_0

    .line 1213
    add-int/lit8 v1, v1, 0xc

    .line 1214
    const-string v2, "{"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1215
    if-lt v2, v1, :cond_0

    .line 1217
    const-string v3, "};"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1218
    add-int/lit8 v4, v2, 0x1

    if-lt v3, v4, :cond_0

    .line 1220
    const-string v4, "</script>"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1221
    if-lt v4, v3, :cond_0

    .line 1223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\'\'};"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1224
    const-string v4, "\""

    const-string v5, "\'"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1225
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"html_wrapper\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 53
    :goto_1
    invoke-static {v6}, Lcom/my/target/core/parsers/vast/VASTParser;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-string v0, "Parsing XML..."

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 2125
    const-string v0, "parse VAST"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 2126
    const-class v0, Lcom/my/target/core/parsers/vast/VASTParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/my/target/core/parsers/a$a;->e:Ljava/lang/String;

    .line 2127
    const-class v0, Lcom/my/target/core/parsers/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/my/target/core/parsers/a$a;->b:Ljava/lang/String;

    .line 2128
    invoke-virtual {p1}, Lcom/my/target/core/models/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/my/target/core/parsers/a$a;->a:Ljava/lang/String;

    .line 2129
    const-string v0, "Parsing VAST"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    .line 2130
    const-string v0, "no unit"

    sput-object v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 2134
    :try_start_0
    invoke-static {v6, p1, p2, p3, p4}, Lcom/my/target/core/parsers/vast/VASTParser;->a(Ljava/lang/String;Lcom/my/target/core/models/c;Lcom/my/target/core/a;Lcom/my/target/core/models/d;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2159
    :goto_2
    return-void

    :cond_0
    move-object v6, v0

    .line 1231
    goto :goto_1

    .line 2138
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse VAST error. message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 2142
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2144
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/my/target/core/parsers/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2150
    new-instance v1, Lcom/my/target/core/async/a;

    invoke-direct {v1, v0}, Lcom/my/target/core/async/a;-><init>(Ljava/lang/String;)V

    .line 2151
    sget-object v0, Lcom/my/target/core/parsers/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {v1, v8}, Lcom/my/target/core/async/a;->a(I)V

    .line 2153
    const-string v0, "VAST Exception:  Convert to XML error"

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->b(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v1, v6}, Lcom/my/target/core/async/a;->c(Ljava/lang/String;)V

    .line 2156
    sget-object v0, Lcom/my/target/core/parsers/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->d(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {v1, p4}, Lcom/my/target/core/async/a;->a(Landroid/content/Context;)V

    .line 2158
    invoke-virtual {v1}, Lcom/my/target/core/async/a;->a()V

    goto :goto_2

    .line 60
    :cond_2
    const-string v0, "Converting to JSON..."

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 63
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v1, "done"

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/my/target/core/parsers/b;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2164
    const-string v1, "parse json"

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 2165
    invoke-virtual {p2}, Lcom/my/target/core/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 2166
    invoke-static {p4}, Lcom/my/target/core/parsers/b;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    move-object v5, p3

    .line 2165
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/rb/c;->a(Lorg/json/JSONObject;Lcom/my/target/core/models/c;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Lcom/my/target/core/models/d;)V

    .line 2168
    invoke-virtual {p2}, Lcom/my/target/core/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2170
    invoke-virtual {p1}, Lcom/my/target/core/models/c;->h()V

    .line 2173
    :cond_3
    const-string v0, "json parsing finished"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 74
    :catch_1
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "convert to JSON error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/my/target/core/async/a;

    const-string v1, "Convert to JSON error"

    invoke-direct {v0, v1}, Lcom/my/target/core/async/a;-><init>(Ljava/lang/String;)V

    .line 78
    const-class v1, Lcom/my/target/core/parsers/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v8}, Lcom/my/target/core/async/a;->a(I)V

    .line 80
    const-string v1, "JSON Exception: Convert to JSON error"

    invoke-virtual {v0, v1}, Lcom/my/target/core/async/a;->b(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v6}, Lcom/my/target/core/async/a;->c(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/my/target/core/models/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/async/a;->d(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p4}, Lcom/my/target/core/async/a;->a(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0}, Lcom/my/target/core/async/a;->a()V

    goto/16 :goto_2

    .line 71
    :cond_4
    :try_start_2
    const-string v0, "invalid json version"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 90
    :cond_5
    const-string v0, "data is empty"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    move-object v0, p0

    goto/16 :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 99
    :try_start_0
    const-string v1, "version"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "json version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 101
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 102
    if-lez v2, :cond_0

    .line 104
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 107
    const/16 v2, 0xa

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 108
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 117
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
