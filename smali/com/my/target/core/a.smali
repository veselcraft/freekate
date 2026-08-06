.class public final Lcom/my/target/core/a;
.super Ljava/lang/Object;
.source "AdParams.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/my/target/ads/CustomParams;

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/a;->a:I

    .line 26
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/my/target/core/a;->d:J

    .line 28
    iput-boolean v2, p0, Lcom/my/target/core/a;->f:Z

    .line 29
    iput-boolean v2, p0, Lcom/my/target/core/a;->g:Z

    .line 99
    iput p1, p0, Lcom/my/target/core/a;->a:I

    .line 100
    iput-object p2, p0, Lcom/my/target/core/a;->b:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/my/target/core/a;->d:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/my/target/core/a;->d:J

    .line 72
    return-void
.end method

.method public final a(Lcom/my/target/ads/CustomParams;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/my/target/core/a;->c:Lcom/my/target/ads/CustomParams;

    .line 82
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/my/target/core/a;->g:Z

    .line 87
    return-void
.end method

.method public final b()Lcom/my/target/ads/CustomParams;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/my/target/core/a;->c:Lcom/my/target/ads/CustomParams;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/my/target/core/a;->a:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/my/target/core/a;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/my/target/core/a;->g:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/my/target/core/a;->f:Z

    return v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/a;->e:Z

    .line 77
    return-void
.end method
