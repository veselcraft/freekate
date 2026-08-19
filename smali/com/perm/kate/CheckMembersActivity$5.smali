.class Lcom/perm/kate/CheckMembersActivity$5;
.super Ljava/lang/Object;
.source "CheckMembersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CheckMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CheckMembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CheckMembersActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/CheckMembersActivity;->access$800(Lcom/perm/kate/CheckMembersActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/CheckMembersActivity;->access$500(Lcom/perm/kate/CheckMembersActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.user_ids"

    .line 146
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 147
    iget-object p1, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 148
    iget-object p1, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 152
    iget-object p1, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    const v0, 0x7f0f054e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 156
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 157
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->showMessages(Ljava/lang/Long;Landroid/content/Context;)V

    goto :goto_0

    .line 159
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    const-class v2, Lcom/perm/kate/CreateChatActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.chat_members"

    .line 160
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 161
    iget-object p1, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
