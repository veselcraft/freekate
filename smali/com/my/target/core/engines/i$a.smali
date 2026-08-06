.class final Lcom/my/target/core/engines/i$a;
.super Ljava/lang/Object;
.source "StandardNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/my/target/core/engines/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/my/target/core/engines/i$a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/my/target/core/engines/i$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/my/target/core/engines/i$a;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/my/target/core/engines/i$a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/my/target/core/engines/i$a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/my/target/core/engines/i$a;->a:Z

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/i$a;->a:Z

    .line 720
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/i$a;->c:Z

    .line 725
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/i$a;->c:Z

    .line 730
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/i$a;->b:Z

    .line 735
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 739
    iput-boolean v0, p0, Lcom/my/target/core/engines/i$a;->b:Z

    .line 740
    iput-boolean v0, p0, Lcom/my/target/core/engines/i$a;->c:Z

    .line 741
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 745
    iput-boolean v0, p0, Lcom/my/target/core/engines/i$a;->b:Z

    .line 746
    iput-boolean v0, p0, Lcom/my/target/core/engines/i$a;->c:Z

    .line 747
    iput-boolean v0, p0, Lcom/my/target/core/engines/i$a;->a:Z

    .line 748
    return-void
.end method
