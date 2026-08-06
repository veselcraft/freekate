.class Lcom/perm/kate/Settings$63$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$63;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$63;

.field final synthetic val$edittext1:Landroid/widget/EditText;

.field final synthetic val$edittext2:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$63;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/Settings$63;

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/perm/kate/Settings$63$1;->this$1:Lcom/perm/kate/Settings$63;

    iput-object p2, p0, Lcom/perm/kate/Settings$63$1;->val$edittext1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/perm/kate/Settings$63$1;->val$edittext2:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const v3, 0x7f0700e6

    const/4 v4, 0x1

    .line 1473
    iget-object v2, p0, Lcom/perm/kate/Settings$63$1;->val$edittext1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1474
    .local v1, "old_pin":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/Settings$63$1;->val$edittext2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1475
    .local v0, "new_pin":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/HiddenChats;->getPin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1476
    iget-object v2, p0, Lcom/perm/kate/Settings$63$1;->this$1:Lcom/perm/kate/Settings$63;

    iget-object v2, v2, Lcom/perm/kate/Settings$63;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1485
    :goto_0
    return-void

    .line 1479
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1480
    iget-object v2, p0, Lcom/perm/kate/Settings$63$1;->this$1:Lcom/perm/kate/Settings$63;

    iget-object v2, v2, Lcom/perm/kate/Settings$63;->this$0:Lcom/perm/kate/Settings;

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1483
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/HiddenChats;->setPin(Ljava/lang/String;)V

    .line 1484
    iget-object v2, p0, Lcom/perm/kate/Settings$63$1;->this$1:Lcom/perm/kate/Settings$63;

    iget-object v2, v2, Lcom/perm/kate/Settings$63;->this$0:Lcom/perm/kate/Settings;

    const v3, 0x7f070091

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
