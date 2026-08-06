.class Lcom/perm/kate/AddStickersActivity$4;
.super Ljava/lang/Object;
.source "AddStickersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AddStickersActivity;->displayDataInUI(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AddStickersActivity;

.field final synthetic val$x:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AddStickersActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AddStickersActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/perm/kate/AddStickersActivity$4;->this$0:Lcom/perm/kate/AddStickersActivity;

    iput-object p2, p0, Lcom/perm/kate/AddStickersActivity$4;->val$x:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 118
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity$4;->val$x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Product;

    .line 119
    .local v0, "p":Lcom/perm/kate/api/Product;
    iget-object v2, p0, Lcom/perm/kate/AddStickersActivity$4;->this$0:Lcom/perm/kate/AddStickersActivity;

    iget-object v2, v2, Lcom/perm/kate/AddStickersActivity;->skip:Ljava/util/HashSet;

    iget v3, v0, Lcom/perm/kate/api/Product;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/perm/kate/AddStickersActivity$4;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {v2}, Lcom/perm/kate/AddStickersActivity;->access$400(Lcom/perm/kate/AddStickersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p0, Lcom/perm/kate/AddStickersActivity$4;->this$0:Lcom/perm/kate/AddStickersActivity;

    iget-object v2, v2, Lcom/perm/kate/AddStickersActivity;->skip:Ljava/util/HashSet;

    iget v3, v0, Lcom/perm/kate/api/Product;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v0    # "p":Lcom/perm/kate/api/Product;
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity$4;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {v1}, Lcom/perm/kate/AddStickersActivity;->access$500(Lcom/perm/kate/AddStickersActivity;)V

    .line 124
    return-void
.end method
