.class Lcom/perm/kate/MessagesFragment$20;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$20;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$20;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$20;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$20;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment;->typing_users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 877
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$20;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$900(Lcom/perm/kate/MessagesFragment;)Lcom/perm/kate/DialogsAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$20;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$900(Lcom/perm/kate/MessagesFragment;)Lcom/perm/kate/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/DialogsAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
