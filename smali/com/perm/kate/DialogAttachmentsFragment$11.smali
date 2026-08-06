.class Lcom/perm/kate/DialogAttachmentsFragment$11;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DialogAttachmentsFragment;->showConfirmDeleteDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;

.field final synthetic val$mid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$11;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iput-wide p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$11;->val$mid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$11;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$11;->val$mid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$2200(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    .line 480
    return-void
.end method
