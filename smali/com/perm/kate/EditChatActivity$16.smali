.class Lcom/perm/kate/EditChatActivity$16;
.super Ljava/lang/Object;
.source "EditChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditChatActivity;->showYouAreLeftTheConversation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;

.field final synthetic val$left:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;Z)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$16;->this$0:Lcom/perm/kate/EditChatActivity;

    iput-boolean p2, p0, Lcom/perm/kate/EditChatActivity$16;->val$left:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 406
    iget-boolean v0, p0, Lcom/perm/kate/EditChatActivity$16;->val$left:Z

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$16;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$1900(Lcom/perm/kate/EditChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/EditChatActivity$16;->this$0:Lcom/perm/kate/EditChatActivity;

    const v2, 0x7f0f0565

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$16;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$2000(Lcom/perm/kate/EditChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/EditChatActivity$16;->val$left:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$16;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$2100(Lcom/perm/kate/EditChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/EditChatActivity$16;->val$left:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$16;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$2200(Lcom/perm/kate/EditChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/EditChatActivity$16;->val$left:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
