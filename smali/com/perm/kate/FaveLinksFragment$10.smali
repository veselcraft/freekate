.class Lcom/perm/kate/FaveLinksFragment$10;
.super Ljava/lang/Object;
.source "FaveLinksFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;

.field final synthetic val$et_link:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$10;->this$0:Lcom/perm/kate/FaveLinksFragment;

    iput-object p2, p0, Lcom/perm/kate/FaveLinksFragment$10;->val$et_link:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$10;->this$0:Lcom/perm/kate/FaveLinksFragment;

    iget-object p2, p0, Lcom/perm/kate/FaveLinksFragment$10;->val$et_link:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/FaveLinksFragment;->access$500(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;)V

    return-void
.end method
