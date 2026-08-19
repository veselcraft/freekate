.class Lcom/perm/kate/MessageThreadFragment$27;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 1753
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$27;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1757
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$27;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Lcom/perm/kate/MessageThreadFragment;->markAllAsRead()V

    :cond_0
    return-void
.end method
