.class Lcom/perm/kate/AddStickersActivity$3;
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

    .line 124
    iput-object p1, p0, Lcom/perm/kate/AddStickersActivity$3;->this$0:Lcom/perm/kate/AddStickersActivity;

    iput-object p2, p0, Lcom/perm/kate/AddStickersActivity$3;->val$x:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/perm/kate/AddStickersActivity$3;->val$x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Product;

    .line 129
    iget-object v2, p0, Lcom/perm/kate/AddStickersActivity$3;->this$0:Lcom/perm/kate/AddStickersActivity;

    iget-object v2, v2, Lcom/perm/kate/AddStickersActivity;->skip:Ljava/util/HashSet;

    iget v3, v1, Lcom/perm/kate/api/Product;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/perm/kate/AddStickersActivity$3;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {v2}, Lcom/perm/kate/AddStickersActivity;->access$200(Lcom/perm/kate/AddStickersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, p0, Lcom/perm/kate/AddStickersActivity$3;->this$0:Lcom/perm/kate/AddStickersActivity;

    iget-object v2, v2, Lcom/perm/kate/AddStickersActivity;->skip:Ljava/util/HashSet;

    iget v1, v1, Lcom/perm/kate/api/Product;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AddStickersActivity$3;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {v0}, Lcom/perm/kate/AddStickersActivity;->access$300(Lcom/perm/kate/AddStickersActivity;)V

    return-void
.end method
