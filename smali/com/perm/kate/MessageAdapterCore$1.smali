.class Lcom/perm/kate/MessageAdapterCore$1;
.super Ljava/lang/Object;
.source "MessageAdapterCore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageAdapterCore;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageAdapterCore;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/perm/kate/MessageAdapterCore$1;->this$0:Lcom/perm/kate/MessageAdapterCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/BotButton;

    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/perm/kate/MessageAdapterCore$1;->this$0:Lcom/perm/kate/MessageAdapterCore;

    invoke-static {v0}, Lcom/perm/kate/MessageAdapterCore;->access$000(Lcom/perm/kate/MessageAdapterCore;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/perm/kate/MessageAdapterCore$1;->this$0:Lcom/perm/kate/MessageAdapterCore;

    invoke-static {v0}, Lcom/perm/kate/MessageAdapterCore;->access$000(Lcom/perm/kate/MessageAdapterCore;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    iget-object v1, p1, Lcom/perm/kate/api/BotButton;->action_label:Ljava/lang/String;

    iget-object p1, p1, Lcom/perm/kate/api/BotButton;->action_payload:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/perm/kate/MessageThreadFragment;->sendBotCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method
