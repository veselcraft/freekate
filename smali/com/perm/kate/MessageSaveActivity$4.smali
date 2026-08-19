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

    .line 205
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$4;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iput-object p2, p0, Lcom/perm/kate/MessageSaveActivity$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$4;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v0, v0, Lcom/perm/kate/MessageSaveActivity;->view1:Landroid/view/View;

    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$4;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$4;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v0, v0, Lcom/perm/kate/MessageSaveActivity;->view2:Landroid/view/View;

    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$4;->val$view:Landroid/view/View;

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$4;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v0, v0, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$4;->val$view:Landroid/view/View;

    if-ne v1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
