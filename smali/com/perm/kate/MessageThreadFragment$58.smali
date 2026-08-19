.class Lcom/perm/kate/MessageThreadFragment$58;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 3071
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$58;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3074
    new-instance p1, Lcom/perm/kate/MessageThreadFragment$58$1;

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$58;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/perm/kate/MessageThreadFragment$58$1;-><init>(Lcom/perm/kate/MessageThreadFragment$58;Landroid/app/Activity;)V

    .line 3082
    new-instance p2, Lcom/perm/kate/MessageThreadFragment$58$2;

    invoke-direct {p2, p0, p1}, Lcom/perm/kate/MessageThreadFragment$58$2;-><init>(Lcom/perm/kate/MessageThreadFragment$58;Lcom/perm/kate/session/Callback;)V

    .line 3087
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
