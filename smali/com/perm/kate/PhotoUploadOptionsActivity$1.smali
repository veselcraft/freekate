.class Lcom/perm/kate/PhotoUploadOptionsActivity$1;
.super Ljava/lang/Object;
.source "PhotoUploadOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoUploadOptionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoUploadOptionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoUploadOptionsActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v3, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    const v4, 0x7f0e0291

    invoke-virtual {v3, v4}, Lcom/perm/kate/PhotoUploadOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "caption":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    iget-object v3, v3, Lcom/perm/kate/PhotoUploadOptionsActivity;->resizeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 91
    .local v2, "resize":I
    iget-object v3, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-static {v3, v2}, Lcom/perm/kate/PhotoUploadOptionsActivity;->access$000(Lcom/perm/kate/PhotoUploadOptionsActivity;I)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, "b":Landroid/content/Intent;
    const-string v3, "uris"

    iget-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    iget-object v4, v4, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 95
    const-string v3, "caption"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v3, "resize_option"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v3, "rotate"

    iget-object v4, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    iget v4, v4, Lcom/perm/kate/PhotoUploadOptionsActivity;->rotate:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object v3, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lcom/perm/kate/PhotoUploadOptionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    iget-object v3, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-virtual {v3}, Lcom/perm/kate/PhotoUploadOptionsActivity;->finish()V

    .line 100
    return-void
.end method
