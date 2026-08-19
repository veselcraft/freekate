.class Lcom/perm/kate/DialogAttachmentsFragment$2;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$2;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$2;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$000(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$2;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$100(Lcom/perm/kate/DialogAttachmentsFragment;)V

    :cond_0
    return-void
.end method
