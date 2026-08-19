.class public Lcom/flurry/sdk/de;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "de"


# instance fields
.field a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/df;)V
    .locals 9

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x3

    .line 32
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 33
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 35
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 36
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 39
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->e()Ljava/util/Map;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 43
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 46
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 54
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->j()Landroid/location/Location;

    move-result-object v0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 57
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 60
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->j()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/flurry/sdk/de;->a(D)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 61
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->j()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/flurry/sdk/de;->a(D)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 62
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->j()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 65
    :goto_2
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->k()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, -0x1

    .line 66
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 67
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 68
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->l()B

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->m()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_3

    .line 70
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 73
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->m()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 76
    :goto_3
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->n()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_4

    .line 78
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_5

    .line 80
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 81
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 83
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/cu$a;

    iget v5, v5, Lcom/flurry/sdk/cu$a;->a:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_4

    .line 87
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->o()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_6

    .line 89
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_7

    .line 91
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 92
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/cy;

    .line 93
    invoke-virtual {v5}, Lcom/flurry/sdk/cy;->e()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_6

    .line 96
    :cond_7
    :goto_7
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->p()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 101
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->r()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 103
    :goto_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_a

    .line 104
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flurry/sdk/cx;

    invoke-virtual {v8}, Lcom/flurry/sdk/cx;->a()I

    move-result v8

    add-int/2addr v6, v8

    const v8, 0x27100

    if-le v6, v8, :cond_8

    const/4 v5, 0x5

    .line 106
    sget-object v6, Lcom/flurry/sdk/de;->b:Ljava/lang/String;

    const-string v8, "Error Log size exceeded. No more event details logged."

    invoke-static {v5, v6, v8}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    .line 115
    :cond_a
    :goto_9
    invoke-virtual {p1}, Lcom/flurry/sdk/df;->q()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p1, 0x0

    :goto_a
    if-ge p1, v7, :cond_b

    .line 118
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/cx;

    invoke-virtual {v5}, Lcom/flurry/sdk/cx;->b()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 122
    :cond_b
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 123
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 126
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 129
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 131
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/de;->a:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_c

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_b

    :catchall_1
    move-exception p1

    goto :goto_c

    :catch_1
    move-exception p1

    :goto_b
    const/4 v1, 0x6

    .line 133
    :try_start_2
    sget-object v2, Lcom/flurry/sdk/de;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, p1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :goto_c
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_e

    :goto_d
    throw p1

    :goto_e
    goto :goto_d
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flurry/sdk/de;->a:[B

    return-void
.end method


# virtual methods
.method a(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    .line 149
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    .line 150
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public a()[B
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/flurry/sdk/de;->a:[B

    return-object v0
.end method
