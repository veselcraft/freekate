.class Lcom/my/target/it$2;
.super Ljava/lang/Object;
.source "StatResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic pH:Lcom/my/target/it;

.field final synthetic pI:Ljava/util/List;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/my/target/it;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/my/target/it$2;->pH:Lcom/my/target/it;

    iput-object p2, p0, Lcom/my/target/it$2;->pI:Ljava/util/List;

    iput-object p3, p0, Lcom/my/target/it$2;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 86
    invoke-static {}, Lcom/my/target/do;->cJ()Lcom/my/target/do;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/my/target/it$2;->pI:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/dh;

    .line 89
    iget-object v3, p0, Lcom/my/target/it$2;->pH:Lcom/my/target/it;

    invoke-static {v3, v2}, Lcom/my/target/it;->a(Lcom/my/target/it;Lcom/my/target/dh;)V

    .line 90
    iget-object v3, p0, Lcom/my/target/it$2;->pH:Lcom/my/target/it;

    invoke-virtual {v2}, Lcom/my/target/dh;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/my/target/it;->a(Lcom/my/target/it;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v3, p0, Lcom/my/target/it$2;->val$appContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcom/my/target/dn;->f(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
