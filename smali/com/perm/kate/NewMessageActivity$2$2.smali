.class Lcom/perm/kate/NewMessageActivity$2$2;
.super Ljava/lang/Thread;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMessageActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewMessageActivity$2;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity$2;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$2$2;->this$1:Lcom/perm/kate/NewMessageActivity$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 300
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$2$2;->this$1:Lcom/perm/kate/NewMessageActivity$2;

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 302
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$2$2;->this$1:Lcom/perm/kate/NewMessageActivity$2;

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    iget-object v1, v0, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    iget-wide v3, v1, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$200(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$2$2;->this$1:Lcom/perm/kate/NewMessageActivity$2;

    iget-object v10, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    iget-wide v6, v10, Lcom/perm/kate/NewMessageActivity;->peer_id:J

    sget-object v8, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    iget-object v9, v10, Lcom/perm/kate/NewMessageActivity;->editCallback:Lcom/perm/kate/session/Callback;

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/session/Session;->editMessage(JLjava/lang/String;JLjava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 303
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$2$2;->this$1:Lcom/perm/kate/NewMessageActivity$2;

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
