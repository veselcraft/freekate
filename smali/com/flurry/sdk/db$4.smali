.class Lcom/flurry/sdk/db$4;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/db;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/db;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/db;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/flurry/sdk/db$4;->c:Lcom/flurry/sdk/db;

    iput-object p2, p0, Lcom/flurry/sdk/db$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/db$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/flurry/sdk/db$4;->c:Lcom/flurry/sdk/db;

    iget-object v0, v0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    iget-object v1, p0, Lcom/flurry/sdk/db$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/db$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/flurry/sdk/db$4;->c:Lcom/flurry/sdk/db;

    iget-object v0, v0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error. Block wasn\'t deleted with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flurry/sdk/db$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/db$4;->c:Lcom/flurry/sdk/db;

    iget-object v0, v0, Lcom/flurry/sdk/db;->e:Ljava/util/Set;

    iget-object v2, p0, Lcom/flurry/sdk/db$4;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/flurry/sdk/db$4;->c:Lcom/flurry/sdk/db;

    iget-object v0, v0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error. Block with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flurry/sdk/db$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was not in progress state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
