.class Lcom/perm/kate/MessagesFragment$14;
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
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$14;->this$0:Lcom/perm/kate/MessagesFragment;

    iput-object p2, p0, Lcom/perm/kate/MessagesFragment$14;->val$edittext:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/perm/kate/MessagesFragment$14;->val$thread_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 634
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$14;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 635
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 637
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/HiddenChats;->setPin(Ljava/lang/String;)V

    .line 638
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$14;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v0, p0, Lcom/perm/kate/MessagesFragment$14;->val$thread_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/MessagesFragment;->access$1500(Lcom/perm/kate/MessagesFragment;J)V

    return-void
.end method
