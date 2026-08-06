.class Lcom/perm/kate/AddStickersActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "AddStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AddStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AddStickersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AddStickersActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AddStickersActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/perm/kate/AddStickersActivity$3;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 90
    iget-object v0, p0, Lcom/perm/kate/AddStickersActivity$3;->this$0:Lcom/perm/kate/AddStickersActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AddStickersActivity;->showProgressBar(Z)V

    .line 91
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity$3;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-virtual {v1}, Lcom/perm/kate/AddStickersActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 81
    check-cast v0, Ljava/util/ArrayList;

    .line 82
    .local v0, "x":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity$3;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/AddStickersActivity;->access$300(Lcom/perm/kate/AddStickersActivity;Ljava/util/ArrayList;)V

    .line 83
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity$3;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/AddStickersActivity;->access$200(Lcom/perm/kate/AddStickersActivity;Ljava/util/ArrayList;)V

    .line 84
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity$3;->this$0:Lcom/perm/kate/AddStickersActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/AddStickersActivity;->showProgressBar(Z)V

    goto :goto_0
.end method
