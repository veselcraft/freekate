.class Lcom/perm/kate/MessageThreadFragment$40;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment;->leaveConversation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$40;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 2030
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$40$1;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$40;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MessageThreadFragment$40$1;-><init>(Lcom/perm/kate/MessageThreadFragment$40;Landroid/app/Activity;)V

    .line 2038
    .local v0, "remove_member_callback":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/MessageThreadFragment$40$2;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/MessageThreadFragment$40$2;-><init>(Lcom/perm/kate/MessageThreadFragment$40;Lcom/perm/kate/session/Callback;)V

    .line 2043
    invoke-virtual {v1}, Lcom/perm/kate/MessageThreadFragment$40$2;->start()V

    .line 2044
    return-void
.end method
