.class final Lcom/my/target/core/utils/a$1;
.super Ljava/lang/Object;
.source "AdShowHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/utils/a;


# direct methods
.method constructor <init>(Lcom/my/target/core/utils/a;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/my/target/core/utils/a$1;->a:Lcom/my/target/core/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/my/target/core/utils/a$1;->a:Lcom/my/target/core/utils/a;

    invoke-static {v0}, Lcom/my/target/core/utils/a;->a(Lcom/my/target/core/utils/a;)V

    .line 89
    return-void
.end method
