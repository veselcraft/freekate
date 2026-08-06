.class Lcom/inmobi/ads/ah$a;
.super Lcom/inmobi/ads/t;
.source "NativeStrandTextAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ah$a$a;
    }
.end annotation


# instance fields
.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected i:[Lcom/inmobi/ads/ah$a$a;


# direct methods
.method public constructor <init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 69
    const/16 v9, 0xc

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/inmobi/ads/ah$a;-><init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .prologue
    .line 78
    const-string v10, "#ff000000"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/inmobi/ads/ah$a;-><init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[Lcom/inmobi/ads/ah$a$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct/range {p0 .. p8}, Lcom/inmobi/ads/t;-><init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput p9, p0, Lcom/inmobi/ads/ah$a;->f:I

    .line 110
    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p11, "#ff000000"

    :cond_0
    iput-object p11, p0, Lcom/inmobi/ads/ah$a;->g:Ljava/lang/String;

    .line 111
    iput p10, p0, Lcom/inmobi/ads/ah$a;->h:I

    .line 112
    array-length v0, p12

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 113
    new-array v1, v0, [Lcom/inmobi/ads/ah$a$a;

    iput-object v1, p0, Lcom/inmobi/ads/ah$a;->i:[Lcom/inmobi/ads/ah$a$a;

    .line 114
    iget-object v1, p0, Lcom/inmobi/ads/ah$a;->i:[Lcom/inmobi/ads/ah$a$a;

    invoke-static {p12, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    return-void
.end method

.method public constructor <init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    .prologue
    .line 87
    const/4 v0, 0x1

    new-array v11, v0, [Lcom/inmobi/ads/ah$a$a;

    const/4 v0, 0x0

    sget-object v1, Lcom/inmobi/ads/ah$a$a;->a:Lcom/inmobi/ads/ah$a$a;

    aput-object v1, v11, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/inmobi/ads/ah$a;-><init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lcom/inmobi/ads/ah$a$a;)V

    .line 89
    return-void
.end method

.method public constructor <init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lcom/inmobi/ads/ah$a$a;)V
    .locals 13

    .prologue
    .line 97
    const v10, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/inmobi/ads/ah$a;-><init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[Lcom/inmobi/ads/ah$a$a;)V

    .line 99
    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/inmobi/ads/ah$a;->e:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/inmobi/ads/ah$a;->f:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/inmobi/ads/ah$a;->g:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/inmobi/ads/ah$a;->h:I

    return v0
.end method

.method public k()[Lcom/inmobi/ads/ah$a$a;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/inmobi/ads/ah$a;->i:[Lcom/inmobi/ads/ah$a$a;

    return-object v0
.end method
