.class Lcom/perm/kate/MessageThreadFragment$60;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 3298
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$60;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3301
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$60;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$7000(Lcom/perm/kate/MessageThreadFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3302
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$60;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Lcom/perm/kate/MessageThreadFragment;->hideBotKeyboard()V

    goto :goto_0

    .line 3304
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$60;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/MessageThreadFragment;->access$5200(Lcom/perm/kate/MessageThreadFragment;Z)V

    :goto_0
    return-void
.end method
