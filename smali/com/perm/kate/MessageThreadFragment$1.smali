.class Lcom/perm/kate/MessageThreadFragment$1;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$1;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 263
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/perm/kate/NewMessageActivity;->allowSendTypingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$1;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$000(Lcom/perm/kate/MessageThreadFragment;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$1;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$100(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$1;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$200(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$1;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->setVoiceButtonVisibility()V

    .line 268
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$1;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$300(Lcom/perm/kate/MessageThreadFragment;)V

    .line 269
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$1;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->access$400(Lcom/perm/kate/MessageThreadFragment;Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 259
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$1;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Lcom/perm/kate/MessageThreadFragment;->markAllAsRead()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
