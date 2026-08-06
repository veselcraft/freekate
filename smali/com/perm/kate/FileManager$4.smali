.class Lcom/perm/kate/FileManager$4;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FileManager;->showExtSdAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FileManager;

.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/FileManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FileManager;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    iput-object p2, p0, Lcom/perm/kate/FileManager$4;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 209
    iget-object v2, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/perm/kate/FileManager;->getExternalFilesDirsWithReflect(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    .line 211
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    invoke-virtual {v2}, Lcom/perm/kate/FileManager;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "default_dir_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "default_dir_name":Ljava/lang/String;
    const-string v2, "path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/FileManager$4;->val$prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    invoke-virtual {v4}, Lcom/perm/kate/FileManager;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/files/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v2, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/perm/kate/FileManager;->setResult(ILandroid/content/Intent;)V

    .line 215
    iget-object v2, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    invoke-virtual {v2}, Lcom/perm/kate/FileManager;->finish()V

    .line 216
    return-void
.end method
