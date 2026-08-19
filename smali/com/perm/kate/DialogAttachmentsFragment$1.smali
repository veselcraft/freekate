.class Lcom/perm/kate/DialogAttachmentsFragment$1;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$1;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$1;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->clearSelectedMessages()V

    return-void
.end method
