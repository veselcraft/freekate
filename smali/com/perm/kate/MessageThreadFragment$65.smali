.class Lcom/perm/kate/MessageThreadFragment$65;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 3442
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$65;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3445
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$65;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->hideBotKeyboard()V

    .line 3446
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$65;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$5002(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/BotKeyboard;)Lcom/perm/kate/api/BotKeyboard;

    .line 3447
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$65;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$7500(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3448
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$65;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$7500(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3449
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$65;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$7600(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3450
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$65;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$7600(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    return-void
.end method
