.class Lcom/perm/kate/FaveLinksFragment$10;
.super Ljava/lang/Object;
.source "FaveLinksFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveLinksFragment;->showAddLinkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;

.field final synthetic val$et_description:Landroid/widget/EditText;

.field final synthetic val$et_link:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveLinksFragment;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$10;->this$0:Lcom/perm/kate/FaveLinksFragment;

    iput-object p2, p0, Lcom/perm/kate/FaveLinksFragment$10;->val$et_link:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/perm/kate/FaveLinksFragment$10;->val$et_description:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 239
    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment$10;->val$et_link:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "link_text":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment$10;->val$et_description:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "description_text":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment$10;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {v2, v1, v0}, Lcom/perm/kate/FaveLinksFragment;->access$600(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method
