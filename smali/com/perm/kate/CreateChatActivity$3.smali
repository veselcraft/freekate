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

    .line 62
    iput-object p1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 86
    iget-object p1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 87
    iget-object p1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {p1}, Lcom/perm/kate/CreateChatActivity;->access$500(Lcom/perm/kate/CreateChatActivity;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 11

    .line 65
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 66
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 69
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v0}, Lcom/perm/kate/CreateChatActivity;->access$200(Lcom/perm/kate/CreateChatActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v0}, Lcom/perm/kate/CreateChatActivity;->access$400(Lcom/perm/kate/CreateChatActivity;)V

    .line 71
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 72
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v0}, Lcom/perm/kate/CreateChatActivity;->access$200(Lcom/perm/kate/CreateChatActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/db/DataHelper;->createChat(JLjava/lang/String;Ljava/lang/String;JIJ)V

    .line 73
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v1}, Lcom/perm/kate/CreateChatActivity;->access$100(Lcom/perm/kate/CreateChatActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/perm/kate/db/DataHelper;->createChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    const-class v2, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.chat_id"

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    iget-object p1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object p1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/CreateChatActivity$3;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {p1}, Lcom/perm/kate/CreateChatActivity;->access$500(Lcom/perm/kate/CreateChatActivity;)V

    :goto_0
    return-void
.end method
