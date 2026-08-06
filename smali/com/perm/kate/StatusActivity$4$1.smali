.class Lcom/perm/kate/StatusActivity$4$1;
.super Ljava/lang/Object;
.source "StatusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StatusActivity$4;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/StatusActivity$4;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatusActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/StatusActivity$4;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$4$1;->this$1:Lcom/perm/kate/StatusActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "new_status"

    iget-object v2, p0, Lcom/perm/kate/StatusActivity$4$1;->this$1:Lcom/perm/kate/StatusActivity$4;

    iget-object v2, v2, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v2}, Lcom/perm/kate/StatusActivity;->access$300(Lcom/perm/kate/StatusActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$4$1;->this$1:Lcom/perm/kate/StatusActivity$4;

    iget-object v1, v1, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/perm/kate/StatusActivity;->setResult(ILandroid/content/Intent;)V

    .line 130
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$4$1;->this$1:Lcom/perm/kate/StatusActivity$4;

    iget-object v1, v1, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-virtual {v1}, Lcom/perm/kate/StatusActivity;->finish()V

    .line 131
    return-void
.end method
