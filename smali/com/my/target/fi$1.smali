.class Lcom/my/target/fi$1;
.super Ljava/lang/Object;
.source "EnvironmentParamsDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hb:Lcom/my/target/fi;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/my/target/fi;Landroid/content/Context;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/my/target/fi$1;->hb:Lcom/my/target/fi;

    iput-object p2, p0, Lcom/my/target/fi$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/my/target/fi$1;->hb:Lcom/my/target/fi;

    iget-object v1, p0, Lcom/my/target/fi$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/fi;->a(Lcom/my/target/fi;Landroid/content/Context;)V

    return-void
.end method
