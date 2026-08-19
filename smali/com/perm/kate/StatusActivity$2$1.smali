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

    .line 82
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iput-object p2, p0, Lcom/perm/kate/StatusActivity$2$1;->val$vk_status:Lcom/perm/kate/api/VkStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iget-object v0, v0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 86
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iget-object v0, v0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v0}, Lcom/perm/kate/StatusActivity;->access$200(Lcom/perm/kate/StatusActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/StatusActivity$2$1;->val$vk_status:Lcom/perm/kate/api/VkStatus;

    iget-object v2, v2, Lcom/perm/kate/api/VkStatus;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iget-object v0, v0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v0}, Lcom/perm/kate/StatusActivity;->access$200(Lcom/perm/kate/StatusActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/StatusActivity$2$1;->val$vk_status:Lcom/perm/kate/api/VkStatus;

    iget-object v2, v2, Lcom/perm/kate/api/VkStatus;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 88
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iget-object v0, v0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v0}, Lcom/perm/kate/StatusActivity;->access$200(Lcom/perm/kate/StatusActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 89
    iget-object v2, p0, Lcom/perm/kate/StatusActivity$2$1;->this$1:Lcom/perm/kate/StatusActivity$2;

    iget-object v2, v2, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    return-void
.end method
