.class Lcom/perm/kate/StatusActivity$2$1;
.super Ljava/lang/Object;
.source "StatusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StatusActivity$2;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/StatusActivity$2;

.field final synthetic val$vk_status:Lcom/perm/kate/api/VkStatus;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatusActivity$2;Lcom/perm/kate/api/VkStatus;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/StatusActivity$2;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iput-object p2, p0, Lcom/perm/kate/StatusActivity$2$1;->val$vk_status:Lcom/perm/kate/api/VkStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iget-object v1, v1, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-virtual {v1, v3}, Lcom/perm/kate/StatusActivity;->showProgressBar(Z)V

    .line 86
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iget-object v1, v1, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$200(Lcom/perm/kate/StatusActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/StatusActivity$2$1;->val$vk_status:Lcom/perm/kate/api/VkStatus;

    iget-object v2, v2, Lcom/perm/kate/api/VkStatus;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iget-object v1, v1, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$200(Lcom/perm/kate/StatusActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/StatusActivity$2$1;->val$vk_status:Lcom/perm/kate/api/VkStatus;

    iget-object v2, v2, Lcom/perm/kate/api/VkStatus;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 88
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iget-object v1, v1, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$200(Lcom/perm/kate/StatusActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 89
    .local v0, "text":Landroid/text/Editable;
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iget-object v1, v1, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v3}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 90
    return-void
.end method
