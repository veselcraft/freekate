.class Lcom/perm/kate/Helper$13;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$et_message:Landroid/widget/EditText;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1586
    iput-object p1, p0, Lcom/perm/kate/Helper$13;->val$et_message:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/perm/kate/Helper$13;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/perm/kate/Helper$13;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1588
    iget-object p1, p0, Lcom/perm/kate/Helper$13;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/Helper$13;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/perm/kate/Helper$13;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->access$200(Ljava/lang/String;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
