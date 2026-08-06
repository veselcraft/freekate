.class final Lcom/my/target/core/facades/a$1;
.super Ljava/lang/Object;
.source "AbstractAd.java"

# interfaces
.implements Lcom/my/target/core/async/commands/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/facades/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/my/target/core/async/commands/b$a",
        "<",
        "Lcom/my/target/core/models/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/facades/a;


# direct methods
.method constructor <init>(Lcom/my/target/core/facades/a;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/my/target/core/facades/a$1;->a:Lcom/my/target/core/facades/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onExecute(Lcom/my/target/core/async/commands/b;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 81
    check-cast p2, Lcom/my/target/core/models/c;

    .line 1085
    if-eqz p2, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/my/target/core/facades/a$1;->a:Lcom/my/target/core/facades/a;

    iput-object p2, v0, Lcom/my/target/core/facades/a;->adData:Lcom/my/target/core/models/c;

    .line 1088
    iget-object v0, p0, Lcom/my/target/core/facades/a$1;->a:Lcom/my/target/core/facades/a;

    invoke-virtual {v0, p2}, Lcom/my/target/core/facades/a;->onLoad(Lcom/my/target/core/models/c;)V

    :goto_0
    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/a$1;->a:Lcom/my/target/core/facades/a;

    invoke-interface {p1}, Lcom/my/target/core/async/commands/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/a;->onLoadError(Ljava/lang/String;)V

    goto :goto_0
.end method
