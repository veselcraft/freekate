.class public final Lcom/my/target/core/ui/views/fspromo/a;
.super Ljava/lang/Object;
.source "FSHeaderAnimationProcessor.java"


# instance fields
.field private a:I

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/TextView;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    .line 36
    iput-object p2, p0, Lcom/my/target/core/ui/views/fspromo/a;->c:Landroid/view/View;

    .line 37
    iput-object p3, p0, Lcom/my/target/core/ui/views/fspromo/a;->d:Landroid/view/View;

    .line 38
    iput-object p4, p0, Lcom/my/target/core/ui/views/fspromo/a;->e:Landroid/widget/TextView;

    .line 39
    iput-object p5, p0, Lcom/my/target/core/ui/views/fspromo/a;->f:Landroid/view/View;

    .line 40
    iput-object p6, p0, Lcom/my/target/core/ui/views/fspromo/a;->g:Landroid/view/View;

    .line 41
    iput-object p7, p0, Lcom/my/target/core/ui/views/fspromo/a;->h:Landroid/view/View;

    .line 42
    iput-object p8, p0, Lcom/my/target/core/ui/views/fspromo/a;->i:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private varargs a(I[Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f333333    # 0.7f

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 52
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->j:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    sub-float v3, v0, v1

    .line 55
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setPivotX(F)V

    .line 56
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setPivotY(F)V

    .line 57
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 58
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setPivotY(F)V

    .line 61
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 69
    :goto_1
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/a;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sub-int v0, v1, v0

    iget v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->a:I

    sub-int v1, v0, v1

    .line 71
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 73
    if-gt v1, v0, :cond_6

    .line 75
    :goto_2
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iget v4, p0, Lcom/my/target/core/ui/views/fspromo/a;->a:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 77
    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/a;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iget v5, p0, Lcom/my/target/core/ui/views/fspromo/a;->a:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 80
    iget-object v5, p0, Lcom/my/target/core/ui/views/fspromo/a;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    if-le v0, v5, :cond_4

    .line 82
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    .line 88
    :cond_2
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->c:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->c:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->d:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v8, v6, v2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->e:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v8, v6, v2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->f:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->g:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    const v7, 0x3f19999a    # 0.6f

    aput v7, v6, v2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->h:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v9, [F

    neg-float v3, v3

    aput v3, v6, v2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->g:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v9, [F

    int-to-float v6, v0

    aput v6, v5, v2

    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    array-length v3, p2

    move v1, v2

    :goto_4
    if-ge v1, v3, :cond_5

    aget-object v5, p2, v1

    .line 103
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    int-to-float v8, v0

    aput v8, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    goto/16 :goto_1

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/a;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    goto/16 :goto_3

    .line 106
    :cond_5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 107
    new-instance v1, Lcom/my/target/core/ui/views/fspromo/a$1;

    invoke-direct {v1, p0}, Lcom/my/target/core/ui/views/fspromo/a$1;-><init>(Lcom/my/target/core/ui/views/fspromo/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 146
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 147
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 148
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/fspromo/a;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/my/target/core/ui/views/fspromo/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->j:Z

    .line 223
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/my/target/core/ui/views/fspromo/a;->a:I

    .line 218
    return-void
.end method

.method public final varargs a([Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x12c

    invoke-direct {p0, v0, p1}, Lcom/my/target/core/ui/views/fspromo/a;->a(I[Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->k:Z

    .line 233
    return-void
.end method

.method public final varargs b([Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 153
    .line 1158
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->j:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->c:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->c:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->b:Landroid/view/View;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->d:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->e:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->f:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v8, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->g:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->h:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v7, [F

    aput v8, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/a;->g:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v7, [F

    aput v8, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    array-length v3, p1

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, p1, v0

    .line 1175
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v7, [F

    aput v8, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1178
    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1179
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1180
    new-instance v1, Lcom/my/target/core/ui/views/fspromo/a$2;

    invoke-direct {v1, p0}, Lcom/my/target/core/ui/views/fspromo/a$2;-><init>(Lcom/my/target/core/ui/views/fspromo/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1211
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1212
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public final varargs c([Landroid/view/View;)V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/my/target/core/ui/views/fspromo/a;->a(I[Landroid/view/View;)V

    .line 228
    return-void
.end method
