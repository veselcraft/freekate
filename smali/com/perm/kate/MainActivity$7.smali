.class Lcom/perm/kate/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity;->showOpenLinkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/perm/kate/MainActivity$7;->this$0:Lcom/perm/kate/MainActivity;

    iput-object p2, p0, Lcom/perm/kate/MainActivity$7;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 605
    iget-object p1, p0, Lcom/perm/kate/MainActivity$7;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 606
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 608
    :cond_0
    .line 609
    invoke-static {p1}, Lcom/perm/kate/links/VkLinkParser;->qualify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 611
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/MainActivity$7;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->openVK_COMlink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 613
    iget-object p1, p0, Lcom/perm/kate/MainActivity$7;->this$0:Lcom/perm/kate/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f03ac

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
