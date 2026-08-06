.class Lcom/perm/kate/MessagesFragment$12;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment;->askPin(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;

.field final synthetic val$edittext:Landroid/widget/EditText;

.field final synthetic val$thread_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;Landroid/widget/EditText;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$12;->this$0:Lcom/perm/kate/MessagesFragment;

    iput-object p2, p0, Lcom/perm/kate/MessagesFragment$12;->val$edittext:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/perm/kate/MessagesFragment$12;->val$thread_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 504
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$12;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "new_pin":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/HiddenChats;->setPin(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$12;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment$12;->val$thread_id:J

    invoke-static {v1, v2, v3}, Lcom/perm/kate/MessagesFragment;->access$1400(Lcom/perm/kate/MessagesFragment;J)V

    goto :goto_0
.end method
