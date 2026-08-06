.class public final Lcom/my/target/core/models/l;
.super Ljava/lang/Object;
.source "VideoParams.java"


# instance fields
.field private a:Z

.field private b:F

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/models/l;->a:Z

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/models/l;->b:F

    .line 12
    const/16 v0, 0xa

    iput v0, p0, Lcom/my/target/core/models/l;->c:I

    .line 27
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/my/target/core/models/l;->b:F

    .line 23
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/my/target/core/models/l;->c:I

    .line 42
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/my/target/core/models/l;->a:Z

    .line 18
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/my/target/core/models/l;->a:Z

    return v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/my/target/core/models/l;->b:F

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/my/target/core/models/l;->d:I

    .line 57
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/my/target/core/models/l;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/my/target/core/models/l;->d:I

    return v0
.end method
