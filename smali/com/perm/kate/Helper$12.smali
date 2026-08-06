.class final Lcom/perm/kate/Helper$12;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->showPhotoLinkDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$et_message:Landroid/widget/EditText;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/perm/kate/Helper$12;->val$et_message:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/perm/kate/Helper$12;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/perm/kate/Helper$12;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/perm/kate/Helper$12;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/Helper$12;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/perm/kate/Helper$12;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->access$200(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 1448
    return-void
.end method
