.class Lcom/perm/kate/MessageSaveActivity$4;
.super Ljava/lang/Object;
.source "MessageSaveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSaveActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSaveActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageSaveActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$4;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iput-object p2, p0, Lcom/perm/kate/MessageSaveActivity$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$4;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v3, v0, Lcom/perm/kate/MessageSaveActivity;->view1:Landroid/view/View;

    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$4;->val$view:Landroid/view/View;

    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity$4;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v4, v4, Lcom/perm/kate/MessageSaveActivity;->view1:Landroid/view/View;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$4;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v3, v0, Lcom/perm/kate/MessageSaveActivity;->view2:Landroid/view/View;

    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$4;->val$view:Landroid/view/View;

    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity$4;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v4, v4, Lcom/perm/kate/MessageSaveActivity;->view2:Landroid/view/View;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$4;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v0, v0, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity$4;->val$view:Landroid/view/View;

    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity$4;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v4, v4, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    return-void

    :cond_0
    move v0, v2

    .line 179
    goto :goto_0

    :cond_1
    move v0, v2

    .line 180
    goto :goto_1

    :cond_2
    move v1, v2

    .line 181
    goto :goto_2
.end method
