.class Lcom/perm/kate/FileManager$3;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FileManager;


# direct methods
.method constructor <init>(Lcom/perm/kate/FileManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FileManager;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v2, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    invoke-static {v2}, Lcom/perm/kate/FileManager;->access$100(Lcom/perm/kate/FileManager;)Z

    move-result v0

    .line 158
    .local v0, "alert_displayed":Z
    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    invoke-static {v2}, Lcom/perm/kate/FileManager;->access$200(Lcom/perm/kate/FileManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "path"

    iget-object v3, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    iget-object v3, v3, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v2, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/perm/kate/FileManager;->setResult(ILandroid/content/Intent;)V

    .line 165
    iget-object v2, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    invoke-virtual {v2}, Lcom/perm/kate/FileManager;->finish()V

    goto :goto_0

    .line 167
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    const v3, 0x7f0700e5

    invoke-virtual {v2, v3}, Lcom/perm/kate/FileManager;->displayToast(I)V

    goto :goto_0
.end method
