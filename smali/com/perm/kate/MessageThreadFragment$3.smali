.class Lcom/perm/kate/MessageThreadFragment$3;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$3;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 286
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$3;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$500(Lcom/perm/kate/MessageThreadFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$3;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$600(Lcom/perm/kate/MessageThreadFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object p1, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    .line 288
    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    sget-object v0, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$3;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$700(Lcom/perm/kate/MessageThreadFragment;)V

    .line 291
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$3;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Lcom/perm/kate/MessageThreadFragment;->clearSelectedMessages()V

    .line 293
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$3;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Lcom/perm/kate/MessageThreadFragment;->showKeyboard()V

    goto :goto_0

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$3;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$800(Lcom/perm/kate/MessageThreadFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$3;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$900(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$3;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1000(Lcom/perm/kate/MessageThreadFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 297
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$3;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1100(Lcom/perm/kate/MessageThreadFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
