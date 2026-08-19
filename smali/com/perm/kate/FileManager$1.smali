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

    .line 74
    iput-object p1, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 78
    iget-object p1, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    iget-object p1, p1, Lcom/perm/kate/FileManager;->files:[Ljava/io/File;

    aget-object p1, p1, p3

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    iput-object p1, p2, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    invoke-static {p1}, Lcom/perm/kate/FileManager;->access$000(Lcom/perm/kate/FileManager;)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 86
    iget-object p2, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    iget-object p2, p2, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "path"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object p2, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 88
    iget-object p1, p0, Lcom/perm/kate/FileManager$1;->this$0:Lcom/perm/kate/FileManager;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
