.class Lcom/perm/kate/MessageThreadFragment$40$1;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment$40;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$40;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$40;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/MessageThreadFragment$40;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2030
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$40$1;->this$1:Lcom/perm/kate/MessageThreadFragment$40;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 2033
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 2034
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2035
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$40$1;->this$1:Lcom/perm/kate/MessageThreadFragment$40;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$40;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v2, 0x7f0704e2

    invoke-virtual {v1, v2}, Lcom/perm/kate/MessageThreadFragment;->displayToast(I)V

    .line 2036
    :cond_0
    return-void
.end method
