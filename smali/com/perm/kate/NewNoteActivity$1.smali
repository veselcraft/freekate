.class Lcom/perm/kate/NewNoteActivity$1;
.super Ljava/lang/Object;
.source "NewNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewNoteActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewNoteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewNoteActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 49
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    iget-object v1, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-static {v1}, Lcom/perm/kate/NewNoteActivity;->access$000(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/NewNoteActivity;->text:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    iget-object v1, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-static {v1}, Lcom/perm/kate/NewNoteActivity;->access$100(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/NewNoteActivity;->title:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    iget-object v0, v0, Lcom/perm/kate/NewNoteActivity;->text:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-virtual {v0}, Lcom/perm/kate/NewNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0702df

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    iget-object v0, v0, Lcom/perm/kate/NewNoteActivity;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    iget-object v1, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    const v2, 0x7f07031c

    invoke-virtual {v1, v2}, Lcom/perm/kate/NewNoteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/NewNoteActivity;->title:Ljava/lang/String;

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-virtual {v0, v3}, Lcom/perm/kate/NewNoteActivity;->showProgressBar(Z)V

    .line 58
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-static {v0}, Lcom/perm/kate/NewNoteActivity;->access$200(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 59
    new-instance v0, Lcom/perm/kate/NewNoteActivity$1$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewNoteActivity$1$1;-><init>(Lcom/perm/kate/NewNoteActivity$1;)V

    .line 64
    invoke-virtual {v0}, Lcom/perm/kate/NewNoteActivity$1$1;->start()V

    goto :goto_0
.end method
