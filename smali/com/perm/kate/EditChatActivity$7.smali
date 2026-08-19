.class Lcom/perm/kate/EditChatActivity$7;
.super Ljava/lang/Object;
.source "EditChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditChatActivity;->showEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;

.field final synthetic val$et_message:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$7;->this$0:Lcom/perm/kate/EditChatActivity;

    iput-object p2, p0, Lcom/perm/kate/EditChatActivity$7;->val$et_message:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$7;->this$0:Lcom/perm/kate/EditChatActivity;

    iget-object p2, p0, Lcom/perm/kate/EditChatActivity$7;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/EditChatActivity;->access$1102(Lcom/perm/kate/EditChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$7;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$1200(Lcom/perm/kate/EditChatActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/EditChatActivity$7;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p2}, Lcom/perm/kate/EditChatActivity;->access$1100(Lcom/perm/kate/EditChatActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$7;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$1300(Lcom/perm/kate/EditChatActivity;)V

    return-void
.end method
