.class Lcom/perm/kate/GroupTopicsActivity$13;
.super Ljava/lang/Object;
.source "GroupTopicsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->showEditTitleDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;

.field final synthetic val$et_message:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$13;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$13;->val$et_message:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$13;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 373
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$13;->val$et_message:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
