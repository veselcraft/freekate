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

    .line 161
    iput-object p1, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    invoke-static {p1}, Lcom/perm/kate/FileManager;->access$100(Lcom/perm/kate/FileManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    invoke-static {p1}, Lcom/perm/kate/FileManager;->access$200(Lcom/perm/kate/FileManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 171
    iget-object v0, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    iget-object v0, v0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v0, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 173
    iget-object p1, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 175
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/FileManager$3;->this$0:Lcom/perm/kate/FileManager;

    const v0, 0x7f0f0130

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :goto_0
    return-void
.end method
