.class Lcom/my/target/fm$1;
.super Ljava/lang/Object;
.source "HuaweiOAIdDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hH:Lcom/my/target/fm;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/my/target/fm;Landroid/content/Context;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/my/target/fm$1;->hH:Lcom/my/target/fm;

    iput-object p2, p0, Lcom/my/target/fm$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/my/target/fm$1;->hH:Lcom/my/target/fm;

    iget-object v1, p0, Lcom/my/target/fm$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/fm;->a(Lcom/my/target/fm;Landroid/content/Context;)V

    return-void
.end method
