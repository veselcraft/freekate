.class Lcom/perm/kate/NewGroupTopicActivity$1;
.super Ljava/lang/Object;
.source "NewGroupTopicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewGroupTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewGroupTopicActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewGroupTopicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 51
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    iget-object v1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v1}, Lcom/perm/kate/NewGroupTopicActivity;->access$100(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/NewGroupTopicActivity;->access$002(Lcom/perm/kate/NewGroupTopicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    iget-object v1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v1}, Lcom/perm/kate/NewGroupTopicActivity;->access$300(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/NewGroupTopicActivity;->access$202(Lcom/perm/kate/NewGroupTopicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$000(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual {v0}, Lcom/perm/kate/NewGroupTopicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0702df

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$200(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    iget-object v1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    const v2, 0x7f07031c

    invoke-virtual {v1, v2}, Lcom/perm/kate/NewGroupTopicActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/NewGroupTopicActivity;->access$202(Lcom/perm/kate/NewGroupTopicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual {v0, v3}, Lcom/perm/kate/NewGroupTopicActivity;->showProgressBar(Z)V

    .line 60
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$400(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    new-instance v0, Lcom/perm/kate/NewGroupTopicActivity$1$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupTopicActivity$1$1;-><init>(Lcom/perm/kate/NewGroupTopicActivity$1;)V

    .line 66
    invoke-virtual {v0}, Lcom/perm/kate/NewGroupTopicActivity$1$1;->start()V

    goto :goto_0
.end method
