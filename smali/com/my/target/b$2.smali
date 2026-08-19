.class Lcom/my/target/b$2;
.super Ljava/lang/Object;
.source "AdFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic e:Lcom/my/target/b;

.field final synthetic f:Lcom/my/target/cv;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/my/target/b;Lcom/my/target/cv;Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/my/target/b$2;->e:Lcom/my/target/b;

    iput-object p2, p0, Lcom/my/target/b$2;->f:Lcom/my/target/cv;

    iput-object p3, p0, Lcom/my/target/b$2;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/my/target/b$2;->e:Lcom/my/target/b;

    invoke-static {v0}, Lcom/my/target/b;->a(Lcom/my/target/b;)Lcom/my/target/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/my/target/b$2;->e:Lcom/my/target/b;

    invoke-static {v0}, Lcom/my/target/b;->a(Lcom/my/target/b;)Lcom/my/target/b$b;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/b$2;->f:Lcom/my/target/cv;

    iget-object v2, p0, Lcom/my/target/b$2;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/my/target/b$b;->onResult(Lcom/my/target/cv;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/my/target/b$2;->e:Lcom/my/target/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/b;->a(Lcom/my/target/b;Lcom/my/target/b$b;)Lcom/my/target/b$b;

    :cond_0
    return-void
.end method
