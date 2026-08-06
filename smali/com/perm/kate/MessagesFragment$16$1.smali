.class Lcom/perm/kate/MessagesFragment$16$1;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment$16;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessagesFragment$16;

.field final synthetic val$messages1:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment$16;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/MessagesFragment$16;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$16$1;->this$1:Lcom/perm/kate/MessagesFragment$16;

    iput-object p2, p0, Lcom/perm/kate/MessagesFragment$16$1;->val$messages1:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$16$1;->val$messages1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$16$1;->this$1:Lcom/perm/kate/MessagesFragment$16;

    iget-object v1, v1, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    iget v1, v1, Lcom/perm/kate/MessagesFragment;->page_size:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 678
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$16$1;->this$1:Lcom/perm/kate/MessagesFragment$16;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    .line 681
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$16$1;->this$1:Lcom/perm/kate/MessagesFragment$16;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    goto :goto_0
.end method
