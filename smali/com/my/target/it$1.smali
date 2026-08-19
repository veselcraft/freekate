.class Lcom/my/target/it$1;
.super Ljava/lang/Object;
.source "StatResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic pG:Lcom/my/target/dh;

.field final synthetic pH:Lcom/my/target/it;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/my/target/it;Lcom/my/target/dh;Landroid/content/Context;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/my/target/it$1;->pH:Lcom/my/target/it;

    iput-object p2, p0, Lcom/my/target/it$1;->pG:Lcom/my/target/dh;

    iput-object p3, p0, Lcom/my/target/it$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/my/target/it$1;->pH:Lcom/my/target/it;

    iget-object v1, p0, Lcom/my/target/it$1;->pG:Lcom/my/target/dh;

    invoke-static {v0, v1}, Lcom/my/target/it;->a(Lcom/my/target/it;Lcom/my/target/dh;)V

    .line 66
    iget-object v0, p0, Lcom/my/target/it$1;->pH:Lcom/my/target/it;

    iget-object v1, p0, Lcom/my/target/it$1;->pG:Lcom/my/target/dh;

    invoke-virtual {v1}, Lcom/my/target/dh;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/it;->a(Lcom/my/target/it;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/my/target/do;->cJ()Lcom/my/target/do;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/it$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/my/target/dn;->f(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
