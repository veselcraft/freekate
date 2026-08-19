.class Lcom/perm/kate/MessageThreadFragment$46;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V
    .locals 0

    .line 2547
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$46;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 2550
    check-cast p1, Lcom/perm/kate/api/BotKeyboard;

    if-eqz p1, :cond_0

    .line 2552
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$46;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->access$5002(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/BotKeyboard;)Lcom/perm/kate/api/BotKeyboard;

    .line 2553
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$46;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$5100(Lcom/perm/kate/MessageThreadFragment;)V

    :cond_0
    return-void
.end method
