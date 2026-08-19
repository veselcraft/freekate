.class public abstract Lcom/my/target/io;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# direct methods
.method public static a(Lcom/my/target/da;[FF)[F
    .locals 16

    move-object/from16 v0, p1

    .line 42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_0

    .line 44
    array-length v2, v0

    if-lez v2, :cond_0

    .line 46
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([F)V

    .line 50
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/my/target/da;->bX()Ljava/util/List;

    move-result-object v2

    .line 51
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ": out of duration"

    const-string v8, "Cannot set midroll position "

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/my/target/co;

    if-nez v0, :cond_3

    .line 56
    invoke-virtual {v6}, Lcom/my/target/co;->getPointP()F

    move-result v7

    cmpl-float v7, v7, v13

    if-lez v7, :cond_1

    .line 58
    invoke-virtual {v6}, Lcom/my/target/co;->getPointP()F

    move-result v7

    div-float/2addr v7, v10

    mul-float v7, v7, p2

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v6}, Lcom/my/target/co;->getPoint()F

    move-result v7

    cmpl-float v7, v7, v13

    if-ltz v7, :cond_2

    invoke-virtual {v6}, Lcom/my/target/co;->getPoint()F

    move-result v7

    cmpg-float v7, v7, p2

    if-gtz v7, :cond_2

    .line 62
    invoke-virtual {v6}, Lcom/my/target/co;->getPoint()F

    move-result v7

    goto :goto_1

    :cond_2
    div-float v7, p2, v9

    :goto_1
    mul-float v7, v7, v11

    .line 68
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    .line 69
    invoke-virtual {v6, v7}, Lcom/my/target/co;->setPoint(F)V

    goto :goto_2

    .line 73
    :cond_3
    array-length v9, v0

    if-ge v5, v9, :cond_6

    .line 75
    aget v9, v0, v5

    .line 76
    invoke-virtual {v6}, Lcom/my/target/ch;->getType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "statistics"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    cmpl-float v10, v9, p2

    if-lez v10, :cond_5

    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v6, v12}, Lcom/my/target/co;->setPoint(F)V

    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {v6, v9}, Lcom/my/target/co;->setPoint(F)V

    move v7, v9

    .line 95
    :goto_2
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 90
    :cond_6
    invoke-virtual {v6, v12}, Lcom/my/target/co;->setPoint(F)V

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_8

    .line 98
    array-length v3, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v3, v2, :cond_e

    .line 100
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/my/target/da;->ca()Ljava/util/ArrayList;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/my/target/bz;

    if-eqz v0, :cond_b

    .line 107
    array-length v6, v0

    if-ge v5, v6, :cond_a

    add-int/lit8 v6, v5, 0x1

    .line 109
    aget v5, v0, v5

    cmpl-float v14, v5, p2

    if-lez v14, :cond_9

    .line 112
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3, v12}, Lcom/my/target/bz;->setPoint(F)V

    :goto_4
    move v5, v6

    goto :goto_3

    .line 116
    :cond_9
    invoke-virtual {v3, v5}, Lcom/my/target/bz;->setPoint(F)V

    goto :goto_6

    .line 120
    :cond_a
    invoke-virtual {v3, v12}, Lcom/my/target/bz;->setPoint(F)V

    goto :goto_3

    .line 126
    :cond_b
    invoke-virtual {v3}, Lcom/my/target/bz;->getPointP()F

    move-result v6

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_c

    .line 128
    invoke-virtual {v3}, Lcom/my/target/bz;->getPointP()F

    move-result v6

    div-float/2addr v6, v10

    mul-float v6, v6, p2

    goto :goto_5

    .line 130
    :cond_c
    invoke-virtual {v3}, Lcom/my/target/bz;->getPoint()F

    move-result v6

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_d

    invoke-virtual {v3}, Lcom/my/target/bz;->getPoint()F

    move-result v6

    cmpg-float v6, v6, p2

    if-gtz v6, :cond_d

    .line 132
    invoke-virtual {v3}, Lcom/my/target/bz;->getPoint()F

    move-result v6

    goto :goto_5

    :cond_d
    div-float v6, p2, v9

    :goto_5
    mul-float v6, v6, v11

    .line 138
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    .line 139
    invoke-virtual {v3, v6}, Lcom/my/target/bz;->setPoint(F)V

    move v15, v6

    move v6, v5

    move v5, v15

    .line 141
    :goto_6
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 145
    :cond_e
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 148
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    add-int/lit8 v3, v4, 0x1

    .line 150
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v4

    move v4, v3

    goto :goto_7

    .line 153
    :cond_f
    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    return-object v0
.end method
