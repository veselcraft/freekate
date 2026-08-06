.class Lcom/perm/kate/MessageSaveActivity$1;
.super Ljava/lang/Object;
.source "MessageSaveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageSaveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSaveActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSaveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageSaveActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$1;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$1;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-virtual {v0}, Lcom/perm/kate/MessageSaveActivity;->start()V

    .line 95
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$1;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$1;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v1, v1, Lcom/perm/kate/MessageSaveActivity;->view2:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V

    .line 96
    return-void
.end method
