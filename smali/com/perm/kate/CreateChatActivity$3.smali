.class Lcom/perm/kate/CreateChatActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "CreateChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CreateChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CreateChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CreateChatActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CreateChatActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/CreateChatActivity;->showProgressBar(Z)V

    .line 87
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v0}, Lcom/perm/kate/CreateChatActivity;->access$500(Lcom/perm/kate/CreateChatActivity;)V

    .line 88
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 12
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 65
    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-virtual {v1, v8}, Lcom/perm/kate/CreateChatActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 66
    check-cast v0, Ljava/lang/Long;

    .line 67
    .local v0, "chat_id":Ljava/lang/Long;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v9

    if-lez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v1}, Lcom/perm/kate/CreateChatActivity;->access$200(Lcom/perm/kate/CreateChatActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v1}, Lcom/perm/kate/CreateChatActivity;->access$400(Lcom/perm/kate/CreateChatActivity;)V

    .line 71
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 72
    .local v6, "account_id":J
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v4}, Lcom/perm/kate/CreateChatActivity;->access$200(Lcom/perm/kate/CreateChatActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/db/DataHelper;->createChat(JLjava/lang/String;Ljava/lang/String;JIJ)V

    .line 73
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v2}, Lcom/perm/kate/CreateChatActivity;->access$100(Lcom/perm/kate/CreateChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/db/DataHelper;->createChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 75
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v11, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    const-class v2, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    const-string v1, "com.perm.kate.chat_id"

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-virtual {v1, v11}, Lcom/perm/kate/CreateChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-virtual {v1}, Lcom/perm/kate/CreateChatActivity;->finish()V

    .line 82
    .end local v6    # "account_id":J
    .end local v11    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v1}, Lcom/perm/kate/CreateChatActivity;->access$500(Lcom/perm/kate/CreateChatActivity;)V

    goto :goto_0
.end method
