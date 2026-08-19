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

    .line 48
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 51
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {p1}, Lcom/perm/kate/NewGroupTopicActivity;->access$100(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$002(Lcom/perm/kate/NewGroupTopicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {p1}, Lcom/perm/kate/NewGroupTopicActivity;->access$300(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$202(Lcom/perm/kate/NewGroupTopicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {p1}, Lcom/perm/kate/NewGroupTopicActivity;->access$000(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f033c

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {p1}, Lcom/perm/kate/NewGroupTopicActivity;->access$200(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    const v0, 0x7f0f037d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$202(Lcom/perm/kate/NewGroupTopicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 60
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {p1}, Lcom/perm/kate/NewGroupTopicActivity;->access$400(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    new-instance p1, Lcom/perm/kate/NewGroupTopicActivity$1$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/NewGroupTopicActivity$1$1;-><init>(Lcom/perm/kate/NewGroupTopicActivity$1;)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
