.class public final Lcom/my/target/core/utils/n;
.super Ljava/lang/Object;
.source "VideoUtils.java"


# direct methods
.method public static a(Ljava/util/List;I)Lcom/my/target/nativeads/models/VideoData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/VideoData;",
            ">;I)",
            "Lcom/my/target/nativeads/models/VideoData;"
        }
    .end annotation

    .prologue
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v1, 0x0

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/models/VideoData;

    .line 26
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/VideoData;->getHeight()I

    move-result v2

    .line 27
    if-eqz v3, :cond_2

    if-gt v2, p1, :cond_0

    if-gt v1, p1, :cond_2

    :cond_0
    if-gt v2, p1, :cond_1

    if-gt v2, v1, :cond_2

    :cond_1
    if-le v2, p1, :cond_4

    if-ge v2, v1, :cond_4

    :cond_2
    move-object v1, v0

    move v0, v2

    :goto_1
    move-object v3, v1

    move v1, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Accepted videoData quality = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 38
    return-object v3

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public static a(Lcom/my/target/core/models/sections/c;[FF)[F
    .locals 13

    .prologue
    const/high16 v12, 0x42c80000    # 100.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v9, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    .line 45
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 47
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 49
    invoke-static {p1}, Ljava/util/Arrays;->sort([F)V

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/my/target/core/models/sections/c;->g()Ljava/util/ArrayList;

    move-result-object v4

    .line 54
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/c;

    .line 57
    if-nez p1, :cond_3

    .line 59
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/c;->c()F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/c;->c()F

    move-result v2

    div-float/2addr v2, v12

    mul-float/2addr v2, p2

    .line 69
    :goto_1
    mul-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    .line 70
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/c;->b(F)V

    move v0, v1

    move v1, v2

    .line 91
    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 92
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/c;->b()F

    move-result v2

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/c;->b()F

    move-result v2

    cmpg-float v2, v2, p2

    if-gtz v2, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/c;->b()F

    move-result v2

    goto :goto_1

    .line 67
    :cond_2
    div-float v2, p2, v11

    goto :goto_1

    .line 73
    :cond_3
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 75
    aget v2, p1, v1

    .line 76
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/c;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "statistics"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 77
    :cond_4
    cmpl-float v6, v2, p2

    if-lez v6, :cond_5

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot set midroll position "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": out of duration"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v8}, Lcom/my/target/core/models/banners/c;->b(F)V

    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/c;->b(F)V

    move v0, v1

    move v1, v2

    goto :goto_2

    .line 86
    :cond_6
    invoke-virtual {v0, v8}, Lcom/my/target/core/models/banners/c;->b(F)V

    goto/16 :goto_0

    .line 94
    :cond_7
    if-eqz p1, :cond_8

    array-length v0, p1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_e

    .line 96
    :cond_8
    invoke-virtual {p0}, Lcom/my/target/core/models/sections/c;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/d;

    .line 101
    if-eqz p1, :cond_b

    .line 103
    array-length v2, p1

    if-ge v1, v2, :cond_a

    .line 105
    add-int/lit8 v2, v1, 0x1

    aget v1, p1, v1

    .line 106
    cmpl-float v5, v1, p2

    if-lez v5, :cond_9

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot set midroll position "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": out of duration"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v8}, Lcom/my/target/core/models/d;->a(F)V

    move v1, v2

    .line 110
    goto :goto_3

    .line 112
    :cond_9
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/d;->a(F)V

    move v0, v1

    move v1, v2

    .line 133
    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 115
    :cond_a
    invoke-virtual {v0, v8}, Lcom/my/target/core/models/d;->a(F)V

    goto :goto_3

    .line 120
    :cond_b
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->g()F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_c

    .line 122
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->g()F

    move-result v2

    div-float/2addr v2, v12

    mul-float/2addr v2, p2

    .line 130
    :goto_5
    mul-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    .line 131
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/d;->a(F)V

    move v0, v2

    goto :goto_4

    .line 123
    :cond_c
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->f()F

    move-result v2

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_d

    invoke-virtual {v0}, Lcom/my/target/core/models/d;->f()F

    move-result v2

    cmpg-float v2, v2, p2

    if-gtz v2, :cond_d

    .line 125
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->f()F

    move-result v2

    goto :goto_5

    .line 128
    :cond_d
    div-float v2, p2, v11

    goto :goto_5

    .line 137
    :cond_e
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v4, v0, [F

    .line 139
    const/4 v0, 0x0

    .line 140
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 142
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v1

    move v1, v2

    .line 143
    goto :goto_6

    .line 145
    :cond_f
    invoke-static {v4}, Ljava/util/Arrays;->sort([F)V

    .line 147
    return-object v4
.end method

.method public static a(Lcom/my/target/core/models/sections/k;[FF)[F
    .locals 13

    .prologue
    const/high16 v12, 0x42c80000    # 100.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v9, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    .line 154
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 156
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 158
    invoke-static {p1}, Ljava/util/Arrays;->sort([F)V

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/my/target/core/models/sections/k;->g()Ljava/util/ArrayList;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/m;

    .line 166
    if-nez p1, :cond_3

    .line 168
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->b()F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->b()F

    move-result v2

    div-float/2addr v2, v12

    mul-float/2addr v2, p2

    .line 178
    :goto_1
    mul-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    .line 179
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/m;->a(F)V

    move v0, v1

    move v1, v2

    .line 200
    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 201
    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->a()F

    move-result v2

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->a()F

    move-result v2

    cmpg-float v2, v2, p2

    if-gtz v2, :cond_2

    .line 173
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->a()F

    move-result v2

    goto :goto_1

    .line 176
    :cond_2
    div-float v2, p2, v11

    goto :goto_1

    .line 182
    :cond_3
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 184
    aget v2, p1, v1

    .line 185
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "statistics"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 186
    :cond_4
    cmpl-float v6, v2, p2

    if-lez v6, :cond_5

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot set midroll position "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": out of duration"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, v8}, Lcom/my/target/core/models/banners/m;->a(F)V

    goto :goto_0

    .line 192
    :cond_5
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/m;->a(F)V

    move v0, v1

    move v1, v2

    goto :goto_2

    .line 195
    :cond_6
    invoke-virtual {v0, v8}, Lcom/my/target/core/models/banners/m;->a(F)V

    goto/16 :goto_0

    .line 203
    :cond_7
    if-eqz p1, :cond_8

    array-length v0, p1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_e

    .line 205
    :cond_8
    invoke-virtual {p0}, Lcom/my/target/core/models/sections/k;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/d;

    .line 210
    if-eqz p1, :cond_b

    .line 212
    array-length v2, p1

    if-ge v1, v2, :cond_a

    .line 214
    add-int/lit8 v2, v1, 0x1

    aget v1, p1, v1

    .line 215
    cmpl-float v5, v1, p2

    if-lez v5, :cond_9

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot set midroll position "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": out of duration"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v8}, Lcom/my/target/core/models/d;->a(F)V

    move v1, v2

    .line 219
    goto :goto_3

    .line 221
    :cond_9
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/d;->a(F)V

    move v0, v1

    move v1, v2

    .line 242
    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 224
    :cond_a
    invoke-virtual {v0, v8}, Lcom/my/target/core/models/d;->a(F)V

    goto :goto_3

    .line 229
    :cond_b
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->g()F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_c

    .line 231
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->g()F

    move-result v2

    div-float/2addr v2, v12

    mul-float/2addr v2, p2

    .line 239
    :goto_5
    mul-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    .line 240
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/d;->a(F)V

    move v0, v2

    goto :goto_4

    .line 232
    :cond_c
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->f()F

    move-result v2

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_d

    invoke-virtual {v0}, Lcom/my/target/core/models/d;->f()F

    move-result v2

    cmpg-float v2, v2, p2

    if-gtz v2, :cond_d

    .line 234
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->f()F

    move-result v2

    goto :goto_5

    .line 237
    :cond_d
    div-float v2, p2, v11

    goto :goto_5

    .line 246
    :cond_e
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v4, v0, [F

    .line 248
    const/4 v0, 0x0

    .line 249
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 251
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v1

    move v1, v2

    .line 252
    goto :goto_6

    .line 254
    :cond_f
    invoke-static {v4}, Ljava/util/Arrays;->sort([F)V

    .line 256
    return-object v4
.end method
