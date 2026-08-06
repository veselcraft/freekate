.class Lcom/perm/kate/FileManager$1;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 66
    iput-object p1, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    iget-object v2, v2, Lcom/perm/kate/FileManager;->files:[Ljava/io/File;

    aget-object v1, v2, p3

    .line 71
    .local v1, "selected_file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    iput-object v1, v2, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    .line 74
    iget-object v2, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    iget-object v2, v2, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    invoke-static {v2}, Lcom/perm/kate/FileManager;->access$000(Lcom/perm/kate/FileManager;)V

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "path"

    iget-object v3, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    iget-object v3, v3, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v2, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/perm/kate/FileManager;->setResult(ILandroid/content/Intent;)V

    .line 80
    iget-object v2, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    invoke-virtual {v2}, Lcom/perm/kate/FileManager;->finish()V

    goto :goto_0
.end method
