.class Lcom/my/target/dq$1;
.super Ljava/lang/Object;
.source "LogMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic es:Lcom/my/target/dq;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/my/target/dq;Landroid/content/Context;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/my/target/dq$1;->es:Lcom/my/target/dq;

    iput-object p2, p0, Lcom/my/target/dq$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/my/target/dq$1;->es:Lcom/my/target/dq;

    invoke-virtual {v0}, Lcom/my/target/dq;->cL()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send message to log:\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 90
    sget-boolean v1, Lcom/my/target/dq;->eo:Z

    if-eqz v1, :cond_0

    const-string v1, "UTF-8"

    .line 92
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/my/target/dm;->cG()Lcom/my/target/dm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/my/target/dm;->O(Ljava/lang/String;)Lcom/my/target/dm;

    move-result-object v0

    invoke-static {}, Lcom/my/target/dq;->cM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/dq$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/dn;->f(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
