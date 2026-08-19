.class Lcom/perm/kate/MessageThreadFragment$64;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 3390
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$64;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3393
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/BotButton;

    if-eqz p1, :cond_0

    .line 3395
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$64;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->access$7400(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/BotButton;)V

    :cond_0
    return-void
.end method
