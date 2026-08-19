.class Lcom/perm/kate/CommentsActivity$29;
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

    .line 1131
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$29;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1134
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$29;->this$0:Lcom/perm/kate/CommentsActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1135
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity$29;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v1, v1, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
