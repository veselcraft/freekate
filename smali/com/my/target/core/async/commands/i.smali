.class public final Lcom/my/target/core/async/commands/i;
.super Lcom/my/target/core/async/commands/a;
.source "SendStatCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/async/commands/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/my/target/core/async/commands/a;-><init>(Landroid/content/Context;B)V

    .line 48
    iput-object p1, p0, Lcom/my/target/core/async/commands/i;->e:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/my/target/core/async/commands/i;->c:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 146
    iget v0, p0, Lcom/my/target/core/async/commands/i;->g:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_0

    .line 148
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/my/target/core/utils/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lcom/my/target/core/async/commands/i;->c:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    .line 167
    :cond_1
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 83
    .line 89
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcom/my/target/core/net/cookie/a;->a(Landroid/content/Context;)Lcom/my/target/core/net/cookie/a;

    move-result-object v1

    .line 91
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/16 v3, 0x2710

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 93
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 94
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 95
    const-string v3, "User-Agent"

    const-string v4, "http.agent"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 97
    const-string v3, "connection"

    const-string v4, "close"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1, v0}, Lcom/my/target/core/net/cookie/a;->b(Ljava/net/URLConnection;)V

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 103
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    const/16 v4, 0xcc

    if-eq v3, v4, :cond_1

    const/16 v4, 0x194

    if-eq v3, v4, :cond_1

    const/16 v4, 0x193

    if-ne v3, v4, :cond_4

    .line 108
    :cond_1
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1, v0}, Lcom/my/target/core/net/cookie/a;->a(Ljava/net/URLConnection;)V

    .line 110
    :cond_2
    iput-object p1, p0, Lcom/my/target/core/async/commands/i;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v2

    .line 125
    :goto_1
    if-eqz v0, :cond_3

    .line 129
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :cond_3
    :goto_2
    if-eqz p1, :cond_7

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "redirected to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_4
    const/16 v1, 0x12e

    if-eq v3, v1, :cond_5

    const/16 v1, 0x12d

    if-eq v3, v1, :cond_5

    const/16 v1, 0x12f

    if-ne v3, v1, :cond_9

    .line 116
    :cond_5
    :try_start_3
    iget v1, p0, Lcom/my/target/core/async/commands/i;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/my/target/core/async/commands/i;->g:I

    .line 117
    invoke-direct {p0, v0}, Lcom/my/target/core/async/commands/i;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object p1

    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 122
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 125
    if-eqz v1, :cond_8

    .line 129
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    move-object p1, v2

    .line 133
    goto :goto_2

    .line 132
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    move-object p1, v2

    .line 133
    goto :goto_2

    .line 125
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_6

    .line 129
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 133
    :cond_6
    :goto_5
    throw v0

    .line 132
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 142
    :cond_7
    return-void

    .line 125
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 122
    :catch_4
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :cond_8
    move-object p1, v2

    goto :goto_2

    :cond_9
    move-object p1, v2

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/my/target/core/async/commands/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v0, p0, Lcom/my/target/core/async/commands/i;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send stat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/async/commands/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 67
    iput v4, p0, Lcom/my/target/core/async/commands/i;->g:I

    .line 68
    iget-object v0, p0, Lcom/my/target/core/async/commands/i;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/my/target/core/async/commands/i;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/my/target/core/async/commands/i;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 79
    :cond_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/async/commands/i;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/my/target/core/async/commands/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send stat: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 75
    iput v4, p0, Lcom/my/target/core/async/commands/i;->g:I

    .line 76
    iget-object v2, p0, Lcom/my/target/core/async/commands/i;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/my/target/core/async/commands/i;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
