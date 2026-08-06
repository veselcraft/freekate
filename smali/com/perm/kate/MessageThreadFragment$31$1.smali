.class Lcom/perm/kate/MessageThreadFragment$31$1;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment$31;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$31;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$31;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/MessageThreadFragment$31;

    .prologue
    .line 1622
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$31$1;->this$1:Lcom/perm/kate/MessageThreadFragment$31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$31$1;->this$1:Lcom/perm/kate/MessageThreadFragment$31;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$31;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1629
    :goto_0
    return-void

    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$31$1;->this$1:Lcom/perm/kate/MessageThreadFragment$31;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$31;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$3000(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1628
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$31$1;->this$1:Lcom/perm/kate/MessageThreadFragment$31;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$31;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MessageThreadActivity;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$31$1;->this$1:Lcom/perm/kate/MessageThreadFragment$31;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$31;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageThreadActivity;->displayOnlineState(Lcom/perm/kate/api/User;)V

    goto :goto_0
.end method
