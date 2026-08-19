.class Lcom/perm/kate/MessagesFragment$8$1;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment$8;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessagesFragment$8;

.field final synthetic val$messages1:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment$8;Ljava/util/ArrayList;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$8$1;->this$1:Lcom/perm/kate/MessagesFragment$8;

    iput-object p2, p0, Lcom/perm/kate/MessagesFragment$8$1;->val$messages1:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8$1;->val$messages1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$8$1;->this$1:Lcom/perm/kate/MessagesFragment$8;

    iget-object v1, v1, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    iget v2, v1, Lcom/perm/kate/MessagesFragment;->page_size:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    .line 319
    invoke-static {v1, v0}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 321
    invoke-static {v1, v0}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    :goto_0
    return-void
.end method
