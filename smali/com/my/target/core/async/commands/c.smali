.class public Lcom/my/target/core/async/commands/c;
.super Lcom/my/target/core/async/commands/a;
.source "LoadAdCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/async/commands/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/async/commands/a",
        "<",
        "Lcom/my/target/core/models/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected e:Lcom/my/target/core/models/d;

.field protected f:Lcom/my/target/core/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/my/target/core/async/commands/a;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/my/target/core/models/d;Lcom/my/target/core/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p3}, Lcom/my/target/core/async/commands/a;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p1, p0, Lcom/my/target/core/async/commands/c;->e:Lcom/my/target/core/models/d;

    .line 58
    iput-object p2, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    .line 59
    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/my/target/core/models/c;->a()Lcom/my/target/core/utils/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/utils/i;->a()Ljava/util/Set;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 156
    const-string v0, ""

    .line 157
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 160
    goto :goto_0

    .line 162
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v1, "exb"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exclude list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 167
    :cond_1
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/my/target/core/providers/d;->c()Lcom/my/target/core/providers/c;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    .line 101
    invoke-virtual {v1}, Lcom/my/target/core/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/providers/c;->a(Z)V

    .line 102
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/my/target/core/providers/d;->c()Lcom/my/target/core/providers/c;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    .line 104
    invoke-virtual {v1}, Lcom/my/target/core/a;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/providers/c;->b(Z)V

    .line 106
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/async/commands/c;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/my/target/core/providers/d;->a(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/my/target/core/utils/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/my/target/core/providers/d;->b()Lcom/my/target/core/providers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/providers/b;->getData()Ljava/util/Map;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/my/target/core/utils/h;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 118
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/providers/d;->putDataTo(Ljava/util/Map;)V

    .line 119
    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->b()Lcom/my/target/ads/CustomParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->b()Lcom/my/target/ads/CustomParams;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/ads/CustomParams;->putDataTo(Ljava/util/Map;)V

    .line 120
    :cond_1
    const-string v0, "formats"

    iget-object v1, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    invoke-virtual {v1}, Lcom/my/target/core/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "adman_ver"

    const-string v1, "4.6.10"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/my/target/core/async/commands/c;->a(Ljava/util/Map;)V

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->e:Lcom/my/target/core/models/d;

    invoke-virtual {v0}, Lcom/my/target/core/models/d;->m()Ljava/lang/String;

    move-result-object v1

    .line 126
    const/4 v0, 0x1

    .line 127
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    move-object v3, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    if-eqz v1, :cond_5

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    :try_start_1
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 140
    :goto_2
    if-eqz v2, :cond_3

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error collecting data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 145
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v3, v0

    .line 147
    goto/16 :goto_1

    .line 148
    :cond_4
    return-object v3

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/my/target/core/async/commands/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->e:Lcom/my/target/core/models/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/my/target/core/async/commands/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 74
    const/4 v0, 0x0

    .line 75
    new-instance v2, Lcom/my/target/core/async/commands/c$a;

    invoke-direct {v2}, Lcom/my/target/core/async/commands/c$a;-><init>()V

    .line 76
    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 78
    invoke-virtual {v2, v1}, Lcom/my/target/core/async/commands/c$a;->a(Ljava/lang/String;)V

    .line 79
    iget-boolean v3, v2, Lcom/my/target/core/async/commands/c$a;->a:Z

    if-nez v3, :cond_2

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_2
    iget-boolean v0, v2, Lcom/my/target/core/async/commands/c$a;->a:Z

    if-eqz v0, :cond_3

    .line 87
    new-instance v0, Lcom/my/target/core/models/c;

    iget-object v3, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    invoke-virtual {v3}, Lcom/my/target/core/a;->a()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/my/target/core/models/c;-><init>(J)V

    iput-object v0, p0, Lcom/my/target/core/async/commands/c;->c:Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/core/models/c;

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/c;->a(Ljava/lang/String;)V

    .line 89
    iget-object v1, v2, Lcom/my/target/core/async/commands/c$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/my/target/core/async/commands/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/core/models/c;

    iget-object v2, p0, Lcom/my/target/core/async/commands/c;->f:Lcom/my/target/core/a;

    iget-object v3, p0, Lcom/my/target/core/async/commands/c;->e:Lcom/my/target/core/models/d;

    iget-object v4, p0, Lcom/my/target/core/async/commands/c;->b:Landroid/content/Context;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/my/target/core/parsers/b;->a(Ljava/lang/String;Lcom/my/target/core/models/c;Lcom/my/target/core/a;Lcom/my/target/core/models/d;Landroid/content/Context;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, v2, Lcom/my/target/core/async/commands/c$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/my/target/core/async/commands/c;->d:Ljava/lang/String;

    goto :goto_0
.end method
