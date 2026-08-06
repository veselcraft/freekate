.class Lcom/perm/kate/CommentsActivity$24;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->reply(Lcom/perm/kate/CommentTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$24;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 863
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$24;->this$0:Lcom/perm/kate/CommentsActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/perm/kate/CommentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 864
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$24;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v1, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 865
    return-void
.end method
