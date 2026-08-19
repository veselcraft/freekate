.class Lcom/perm/kate/NewCommentActivity$16;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewCommentActivity;->disableFieldAndButtonsInUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;

.field final synthetic val$disable:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;Z)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$16;->this$0:Lcom/perm/kate/NewCommentActivity;

    iput-boolean p2, p0, Lcom/perm/kate/NewCommentActivity$16;->val$disable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$16;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$2400(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/NewCommentActivity$16;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 647
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$16;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$2500(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/NewCommentActivity$16;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 648
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$16;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$2600(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/NewCommentActivity$16;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 649
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$16;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$2700(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/NewCommentActivity$16;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 650
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$16;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$100(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/NewCommentActivity$16;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 651
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$16;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$2800(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/NewCommentActivity$16;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method
