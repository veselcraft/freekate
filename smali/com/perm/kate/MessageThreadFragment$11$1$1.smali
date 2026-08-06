.class Lcom/perm/kate/MessageThreadFragment$11$1$1;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment$11$1;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/perm/kate/MessageThreadFragment$11$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$11$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/perm/kate/MessageThreadFragment$11$1;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$11$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$11$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$11$1;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iget v0, v0, Lcom/perm/kate/MessageThreadFragment$11;->val$position:I

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$11$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$11$1;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 805
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$11$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$11$1;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$11$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$11$1;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iget v1, v1, Lcom/perm/kate/MessageThreadFragment$11;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$11$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$11$1;

    iget-boolean v1, v1, Lcom/perm/kate/MessageThreadFragment$11$1;->val$new_important:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    .line 804
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$11$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$11$1;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
