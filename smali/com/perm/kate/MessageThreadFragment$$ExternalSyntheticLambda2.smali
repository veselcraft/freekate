.class public final synthetic Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/perm/kate/MessageThreadFragment;

.field public final synthetic f$1:Lcom/perm/kate/api/Message;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/Message;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda2;->f$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda2;->f$1:Lcom/perm/kate/api/Message;

    iput-object p3, p0, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda2;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda2;->f$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda2;->f$1:Lcom/perm/kate/api/Message;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda2;->f$2:Landroid/widget/EditText;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->$r8$lambda$QVTcZVfv_3AMUT_zEpQ4uIJC8J0(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/Message;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
