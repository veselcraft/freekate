.class Lcom/perm/kate/MessageThreadFragment$58$1;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$58;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$58;Landroid/app/Activity;)V
    .locals 0

    .line 3074
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$58$1;->this$1:Lcom/perm/kate/MessageThreadFragment$58;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 3077
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3078
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3079
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$58$1;->this$1:Lcom/perm/kate/MessageThreadFragment$58;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment$58;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v0, 0x7f0f0565

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    :cond_0
    return-void
.end method
