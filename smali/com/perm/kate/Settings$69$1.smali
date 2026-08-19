.class Lcom/perm/kate/Settings$69$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$69;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$69;

.field final synthetic val$edittext1:Landroid/widget/EditText;

.field final synthetic val$edittext2:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$69;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 1624
    iput-object p1, p0, Lcom/perm/kate/Settings$69$1;->this$1:Lcom/perm/kate/Settings$69;

    iput-object p2, p0, Lcom/perm/kate/Settings$69$1;->val$edittext1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/perm/kate/Settings$69$1;->val$edittext2:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1626
    iget-object p1, p0, Lcom/perm/kate/Settings$69$1;->val$edittext1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1627
    iget-object p2, p0, Lcom/perm/kate/Settings$69$1;->val$edittext2:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1628
    invoke-static {}, Lcom/perm/kate/HiddenChats;->getPin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0f0131

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1629
    iget-object p1, p0, Lcom/perm/kate/Settings$69$1;->this$1:Lcom/perm/kate/Settings$69;

    iget-object p1, p1, Lcom/perm/kate/Settings$69;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1632
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1633
    iget-object p1, p0, Lcom/perm/kate/Settings$69$1;->this$1:Lcom/perm/kate/Settings$69;

    iget-object p1, p1, Lcom/perm/kate/Settings$69;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1636
    :cond_1
    invoke-static {p2}, Lcom/perm/kate/HiddenChats;->setPin(Ljava/lang/String;)V

    .line 1637
    iget-object p1, p0, Lcom/perm/kate/Settings$69$1;->this$1:Lcom/perm/kate/Settings$69;

    iget-object p1, p1, Lcom/perm/kate/Settings$69;->this$0:Lcom/perm/kate/Settings;

    const p2, 0x7f0f00c9

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
