.class Lcom/perm/kate/MessageThreadFragment$4;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$4;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 307
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$4;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Lcom/perm/kate/MessageThreadFragment;->hideBotKeyboard()V

    .line 308
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$4;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {p1}, Lcom/perm/kate/MessageThreadActivity;->onSmileButton()V

    return-void
.end method
