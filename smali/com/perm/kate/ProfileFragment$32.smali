.class Lcom/perm/kate/ProfileFragment$32;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileFragment;->showAddDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;

.field final synthetic val$et_message:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$32;->this$0:Lcom/perm/kate/ProfileFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileFragment$32;->val$et_message:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$32;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$32;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileFragment;->access$3500(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    .line 1453
    return-void
.end method
