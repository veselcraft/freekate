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

    .line 94
    iput-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 97
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    const v0, 0x7f0900a6

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    iget-object v0, v0, Lcom/perm/kate/PhotoUploadOptionsActivity;->resizeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/PhotoUploadOptionsActivity;->access$000(Lcom/perm/kate/PhotoUploadOptionsActivity;I)V

    .line 102
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 103
    iget-object v2, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    iget-object v2, v2, Lcom/perm/kate/PhotoUploadOptionsActivity;->uris:Ljava/util/ArrayList;

    const-string v3, "uris"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "caption"

    .line 104
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "resize_option"

    .line 105
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    iget p1, p1, Lcom/perm/kate/PhotoUploadOptionsActivity;->rotate:I

    const-string v0, "rotate"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 108
    iget-object p1, p0, Lcom/perm/kate/PhotoUploadOptionsActivity$1;->this$0:Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
