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

    .line 98
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 101
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$100(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/PollCreateActivity;->access$002(Lcom/perm/kate/PollCreateActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$300(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/perm/kate/PollCreateActivity;->access$202(Lcom/perm/kate/PollCreateActivity;Z)Z

    .line 103
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$500(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/perm/kate/PollCreateActivity;->access$402(Lcom/perm/kate/PollCreateActivity;Z)Z

    .line 104
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$000(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    const v1, 0x7f0f037d

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/perm/kate/PollCreateActivity;->access$002(Lcom/perm/kate/PollCreateActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$600(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$700(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$800(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 110
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 114
    new-instance v3, Lcom/perm/kate/api/StrPair;

    invoke-direct {v3}, Lcom/perm/kate/api/StrPair;-><init>()V

    .line 115
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/StrPair;->id:Ljava/lang/String;

    .line 116
    iput-object v2, v3, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$700(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$600(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$000(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$600(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$700(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 128
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 129
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$900(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    new-instance p1, Lcom/perm/kate/PollCreateActivity$1$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/PollCreateActivity$1$1;-><init>(Lcom/perm/kate/PollCreateActivity$1;)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 124
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f054f

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
