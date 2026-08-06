.class Lcom/perm/kate/FileManager$5;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FileManager;->showNewFolderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FileManager;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/FileManager;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FileManager;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/perm/kate/FileManager$5;->this$0:Lcom/perm/kate/FileManager;

    iput-object p2, p0, Lcom/perm/kate/FileManager$5;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 296
    iget-object v3, p0, Lcom/perm/kate/FileManager$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "input_text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 306
    :goto_0
    return-void

    .line 299
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/FileManager$5;->this$0:Lcom/perm/kate/FileManager;

    iget-object v4, v4, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "value":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    iget-object v3, p0, Lcom/perm/kate/FileManager$5;->this$0:Lcom/perm/kate/FileManager;

    invoke-static {v3}, Lcom/perm/kate/FileManager;->access$000(Lcom/perm/kate/FileManager;)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/FileManager$5;->this$0:Lcom/perm/kate/FileManager;

    const v4, 0x7f0700e5

    invoke-virtual {v3, v4}, Lcom/perm/kate/FileManager;->displayToast(I)V

    goto :goto_0
.end method
