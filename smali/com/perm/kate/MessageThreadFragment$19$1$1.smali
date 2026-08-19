.class Lcom/perm/kate/MessageThreadFragment$19$1$1;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/perm/kate/MessageThreadFragment$19$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$19$1;)V
    .locals 0

    .line 1365
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$19$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$19$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1369
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$19$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$19$1;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$19$1;->this$1:Lcom/perm/kate/MessageThreadFragment$19;

    iget v1, v0, Lcom/perm/kate/MessageThreadFragment$19;->val$position:I

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$19$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$19$1;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$19$1;->this$1:Lcom/perm/kate/MessageThreadFragment$19;

    iget-object v1, v0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    iget v0, v0, Lcom/perm/kate/MessageThreadFragment$19;->val$position:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$19$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$19$1;

    iget-boolean v1, v1, Lcom/perm/kate/MessageThreadFragment$19$1;->val$new_important:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    .line 1372
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$19$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$19$1;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$19$1;->this$1:Lcom/perm/kate/MessageThreadFragment$19;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
