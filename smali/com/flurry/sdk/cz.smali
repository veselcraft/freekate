.class public Lcom/flurry/sdk/cz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "cz"


# instance fields
.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZJJ",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/de;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/flurry/sdk/do;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;J)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, ":  "

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 28
    iput-object v2, v1, Lcom/flurry/sdk/cz;->b:[B

    const/4 v3, 0x6

    .line 43
    :try_start_0
    new-instance v4, Lcom/flurry/sdk/ea;

    invoke-direct {v4}, Lcom/flurry/sdk/ea;-><init>()V

    .line 44
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    new-instance v6, Ljava/security/DigestOutputStream;

    invoke-direct {v6, v5, v4}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 46
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v8, 0x1d

    .line 48
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v8, 0x0

    .line 51
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-wide/16 v9, 0x0

    .line 54
    invoke-virtual {v7, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 55
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v9, 0x3

    .line 57
    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 58
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getAgentVersion()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-wide/from16 v10, p14

    .line 59
    invoke-virtual {v7, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-object/from16 v10, p1

    .line 60
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v10, p2

    .line 61
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 64
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->size()I

    move-result v10

    .line 65
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 66
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/flurry/sdk/do;

    iget v12, v12, Lcom/flurry/sdk/do;->d:I

    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 68
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    .line 69
    array-length v12, v11

    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 70
    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    move/from16 v10, p3

    .line 76
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    move/from16 v10, p4

    .line 79
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    move-wide/from16 v10, p5

    .line 81
    invoke-virtual {v7, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    move-wide/from16 v10, p7

    .line 82
    invoke-virtual {v7, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 86
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v10, "device.model"

    .line 87
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 88
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v10, "build.brand"

    .line 90
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 91
    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v10, "build.id"

    .line 93
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    sget-object v10, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v10, "version.release"

    .line 96
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v10, "build.device"

    .line 99
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 100
    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v10, "build.product"

    .line 102
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 103
    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-eqz p11, :cond_1

    .line 106
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 107
    :goto_1
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p11, :cond_3

    .line 110
    sget-object v10, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    const-string v11, "sending referrer values because it exists"

    invoke-static {v9, v10, v11}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 113
    sget-object v12, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Referrer Entry:  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 116
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "referrer key is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 119
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 120
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 121
    sget-object v13, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "referrer value is :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v13, v12}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 127
    :cond_3
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz p12, :cond_4

    .line 130
    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    .line 132
    :goto_3
    sget-object v11, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "optionsMapSize is:  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v11, v12}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p12, :cond_6

    const-string v12, "sending launch options"

    .line 137
    invoke-static {v9, v11, v12}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 140
    sget-object v13, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Launch Options Key:  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v13, v14}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 143
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 145
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 146
    invoke-virtual {v7, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 147
    sget-object v14, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch Options value is :"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v14, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    if-eqz p13, :cond_7

    .line 153
    invoke-interface/range {p13 .. p13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    .line 155
    :goto_5
    sget-object v11, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "numOriginAttributions is:  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v11, v10}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p13, :cond_b

    .line 160
    invoke-interface/range {p13 .. p13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 161
    sget-object v11, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Origin Atttribute Key:  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v11, v12}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 164
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 166
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Origin Attribute Map Size for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v11, v12}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 169
    sget-object v13, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Origin Atttribute for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v13, v14}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, ""

    if-eqz v13, :cond_9

    :try_start_2
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_7

    :cond_9
    move-object v13, v14

    :goto_7
    invoke-virtual {v7, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 171
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Ljava/lang/String;

    :cond_a
    invoke-virtual {v7, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_6

    .line 176
    :cond_b
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

    .line 178
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_c

    move-object/from16 v9, p9

    .line 180
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/flurry/sdk/de;

    .line 181
    invoke-virtual {v10}, Lcom/flurry/sdk/de;->a()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 185
    :cond_c
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 188
    invoke-virtual {v6, v8}, Ljava/security/DigestOutputStream;->on(Z)V

    .line 189
    invoke-virtual {v4}, Lcom/flurry/sdk/ea;->a()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 191
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 192
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    invoke-static {v7}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    .line 194
    :goto_9
    :try_start_3
    sget-object v2, Lcom/flurry/sdk/cz;->a:Ljava/lang/String;

    const-string v4, "Error when generating report"

    invoke-static {v3, v2, v4, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 196
    invoke-static {v7}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    .line 199
    :goto_a
    iput-object v2, v1, Lcom/flurry/sdk/cz;->b:[B

    return-void

    :catchall_2
    move-exception v0

    .line 196
    invoke-static {v7}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/flurry/sdk/cz;->b:[B

    return-object v0
.end method
