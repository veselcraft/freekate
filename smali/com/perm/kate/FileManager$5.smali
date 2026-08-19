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

    .line 304
    iput-object p1, p0, Lcom/perm/kate/FileManager$5;->this$0:Lcom/perm/kate/FileManager;

    iput-object p2, p0, Lcom/perm/kate/FileManager$5;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 306
    iget-object p1, p0, Lcom/perm/kate/FileManager$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 309
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/perm/kate/FileManager$5;->this$0:Lcom/perm/kate/FileManager;

    iget-object v0, v0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 310
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 312
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 313
    iget-object p1, p0, Lcom/perm/kate/FileManager$5;->this$0:Lcom/perm/kate/FileManager;

    invoke-static {p1}, Lcom/perm/kate/FileManager;->access$000(Lcom/perm/kate/FileManager;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/FileManager$5;->this$0:Lcom/perm/kate/FileManager;

    const p2, 0x7f0f0130

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :goto_0
    return-void
.end method
