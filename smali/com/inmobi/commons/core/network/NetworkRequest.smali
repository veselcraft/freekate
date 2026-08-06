.class public Lcom/inmobi/commons/core/network/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Ljava/util/Map;
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

.field protected b:Ljava/util/Map;
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

.field protected c:Ljava/util/Map;
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

.field private e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

.field private f:Ljava/lang/String;

.field private g:Lcom/inmobi/commons/core/utilities/uid/d;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:[B

.field private m:[B

.field private n:Z

.field private o:J

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V
    .locals 6

    .prologue
    .line 50
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;Z)V
    .locals 3

    .prologue
    const v2, 0xea60

    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    .line 33
    iput v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->h:I

    .line 34
    iput v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->i:I

    .line 35
    iput-boolean v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->j:Z

    .line 41
    iput-boolean v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Z

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    .line 55
    iput-object p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    .line 56
    iput-object p2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->f:Ljava/lang/String;

    .line 57
    iput-boolean p3, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->k:Z

    .line 58
    iput-object p4, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    .line 60
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iput-boolean p5, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->p:Z

    .line 62
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 199
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/a/b;->a(I)[B

    move-result-object v3

    .line 200
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/a/b;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:[B

    .line 201
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a/b;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:[B

    .line 202
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 204
    new-instance v7, Lcom/inmobi/commons/core/configs/f;

    invoke-direct {v7}, Lcom/inmobi/commons/core/configs/f;-><init>()V

    .line 205
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 207
    iget-object v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:[B

    iget-object v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:[B

    invoke-virtual {v7}, Lcom/inmobi/commons/core/configs/f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/inmobi/commons/core/configs/f;->e()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/core/utilities/a/b;->a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v1, "sm"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "sn"

    invoke-virtual {v7}, Lcom/inmobi/commons/core/configs/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v0, "&"

    invoke-static {v6, v0}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 1
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
    .line 185
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/a;->a()Lcom/inmobi/commons/core/utilities/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/a;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 186
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 187
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/d;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 189
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/d;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/d;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-ne v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/util/Map;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    .line 66
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Z

    .line 78
    return-void
.end method

.method protected a([B)[B
    .locals 3

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:[B

    iget-object v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:[B

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/a/b;->a([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->h:I

    .line 168
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->j:Z

    .line 156
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->i:I

    .line 172
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
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
    .line 89
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 90
    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 1
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
    .line 93
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public f()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    return-wide v0
.end method

.method public g()Z
    .locals 4

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;)V

    .line 98
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->f:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->k()Ljava/lang/String;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_2
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;)V

    .line 131
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    const-string v1, "&"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;)V

    .line 139
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    const-string v1, "&"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Post body url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Post body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encrypted post body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->j:Z

    return v0
.end method

.method public n()Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->h:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->i:I

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->k:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->p:Z

    return v0
.end method
