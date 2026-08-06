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
    .param p1, "this$0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "chat_members":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v3}, Lcom/perm/kate/CheckMembersActivity;->access$700(Lcom/perm/kate/CheckMembersActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 133
    .local v2, "member_id":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v2    # "member_id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    iget-object v4, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    const v5, 0x7f0704c9

    invoke-virtual {v4, v5}, Lcom/perm/kate/CheckMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 146
    :goto_1
    return-void

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-virtual {v3}, Lcom/perm/kate/CheckMembersActivity;->finish()V

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 140
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->showMessages(Ljava/lang/Long;Landroid/content/Context;)V

    goto :goto_1

    .line 142
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    const-class v4, Lcom/perm/kate/CreateChatActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.perm.kate.chat_members"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 144
    iget-object v3, p0, Lcom/perm/kate/CheckMembersActivity$5;->this$0:Lcom/perm/kate/CheckMembersActivity;

    invoke-virtual {v3, v1}, Lcom/perm/kate/CheckMembersActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
