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

    .line 212
    iput-object p1, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    iput-object p2, p0, Lcom/perm/kate/FileManager$4;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 217
    iget-object p1, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perm/kate/FileManager;->getExternalFilesDirsWithReflect(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    .line 219
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 220
    iget-object p2, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "default_dir_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/FileManager$4;->val$prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "path"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object p2, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 223
    iget-object p1, p0, Lcom/perm/kate/FileManager$4;->this$0:Lcom/perm/kate/FileManager;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
