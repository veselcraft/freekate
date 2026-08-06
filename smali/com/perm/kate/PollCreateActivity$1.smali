.class Lcom/perm/kate/PollCreateActivity$1;
.super Ljava/lang/Object;
.source "PollCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollCreateActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 70
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v3}, Lcom/perm/kate/PollCreateActivity;->access$100(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/PollCreateActivity;->access$002(Lcom/perm/kate/PollCreateActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v3}, Lcom/perm/kate/PollCreateActivity;->access$300(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/PollCreateActivity;->access$202(Lcom/perm/kate/PollCreateActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v3}, Lcom/perm/kate/PollCreateActivity;->access$500(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/PollCreateActivity;->access$402(Lcom/perm/kate/PollCreateActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v3}, Lcom/perm/kate/PollCreateActivity;->access$700(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/perm/kate/PollCreateActivity;->access$602(Lcom/perm/kate/PollCreateActivity;Z)Z

    .line 74
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$000(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    const v4, 0x7f07031c

    invoke-virtual {v3, v4}, Lcom/perm/kate/PollCreateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/PollCreateActivity;->access$002(Lcom/perm/kate/PollCreateActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$800(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 78
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$200(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$800(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v3}, Lcom/perm/kate/PollCreateActivity;->access$200(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$400(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$800(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v3}, Lcom/perm/kate/PollCreateActivity;->access$400(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$900(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 83
    .local v1, "et":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "a":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 85
    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v3}, Lcom/perm/kate/PollCreateActivity;->access$800(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "et":Landroid/widget/EditText;
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$000(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$800(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 89
    :cond_5
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {v2}, Lcom/perm/kate/PollCreateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0704ca

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 101
    :goto_1
    return-void

    .line 93
    :cond_6
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {v2, v5}, Lcom/perm/kate/PollCreateActivity;->showProgressBar(Z)V

    .line 94
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$1000(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    new-instance v2, Lcom/perm/kate/PollCreateActivity$1$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/PollCreateActivity$1$1;-><init>(Lcom/perm/kate/PollCreateActivity$1;)V

    .line 100
    invoke-virtual {v2}, Lcom/perm/kate/PollCreateActivity$1$1;->start()V

    goto :goto_1
.end method
