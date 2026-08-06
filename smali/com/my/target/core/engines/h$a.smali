.class final Lcom/my/target/core/engines/h$a;
.super Ljava/lang/Object;
.source "StandardJSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/h;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .prologue
    .line 569
    iput-boolean p1, p0, Lcom/my/target/core/engines/h$a;->a:Z

    .line 570
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/my/target/core/engines/h$a;->a:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/my/target/core/engines/h$a;->b:Z

    .line 580
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/my/target/core/engines/h$a;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/my/target/core/engines/h$a;->c:Z

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->c:Z

    .line 590
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->c:Z

    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->b:Z

    iput-boolean v0, p0, Lcom/my/target/core/engines/h$a;->a:Z

    .line 605
    return-void
.end method
