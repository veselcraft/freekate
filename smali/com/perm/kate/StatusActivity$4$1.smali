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

    .line 124
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$4$1;->this$1:Lcom/perm/kate/StatusActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$4$1;->this$1:Lcom/perm/kate/StatusActivity$4;

    iget-object v1, v1, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$300(Lcom/perm/kate/StatusActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "new_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$4$1;->this$1:Lcom/perm/kate/StatusActivity$4;

    iget-object v1, v1, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 130
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$4$1;->this$1:Lcom/perm/kate/StatusActivity$4;

    iget-object v0, v0, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
