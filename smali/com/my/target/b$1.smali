.class Lcom/my/target/b$1;
.super Ljava/lang/Object;
.source "AdFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic e:Lcom/my/target/b;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/my/target/b;Landroid/content/Context;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/my/target/b$1;->e:Lcom/my/target/b;

    iput-object p2, p0, Lcom/my/target/b$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/my/target/b$1;->e:Lcom/my/target/b;

    iget-object v1, p0, Lcom/my/target/b$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/my/target/b;->b(Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/my/target/b$1;->e:Lcom/my/target/b;

    iget-object v2, v1, Lcom/my/target/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/my/target/b;->a(Lcom/my/target/cv;Ljava/lang/String;)V

    return-void
.end method
